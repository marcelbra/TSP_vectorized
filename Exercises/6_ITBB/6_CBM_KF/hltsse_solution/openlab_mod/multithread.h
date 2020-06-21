#include <map>
using std::map;

#include "tbb/blocked_range.h"
#include "tbb/task_scheduler_observer.h"
#include "tbb/spin_mutex.h"

using namespace tbb;

class ApplyFit{

public:

  TrackV *_track_vectors;
  Station *_vStations;
  int _NStations;
  int _NFits;

  void operator()(const blocked_range<int> &range, int cpuId = -1) const {

    for(int i = range.begin(); i != range.end(); ++i){
      for(int j = 0; j < _NFits; j++){
        Fit(_track_vectors[i], _vStations, _NStations);
      }
    }
  }

  ApplyFit(TrackV *track_vectors, Station *vStations, int NStations, int NFits){
    _track_vectors = track_vectors;
    _vStations = vStations;
    _NStations = NStations;
    _NFits = NFits;
  }

  ~ApplyFit(){
  }
};

