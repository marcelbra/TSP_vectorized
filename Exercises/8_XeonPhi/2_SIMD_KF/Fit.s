# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Unknown, Version .017 Alpha Build 20111021";
# mark_description "-Iopenlab_mod -I/home/mkretz/include -platform=x86_64-linux -mmic -O3 -Wno-long-long -lrt -S -fsource-asm -L";
# mark_description "/home/mkretz/lib -lVcMIC";
	.file "Fit.cxx"
	.text
..TXTST0:
# -- Begin  main
# mark_begin;
# Threads 2
..___tag_value_main.9:                                          #
        .align    16,0x90
	.globl main
main:
# parameter 1: %edi
# parameter 2: %rsi
..B1.1:                         # Preds ..B1.0 Latency 10

### int main(int argc, char *argv[]){

..___tag_value_main.10:                                         #456.33
        pushq     %rbp                                          #456.33
..___tag_value_main.12:                                         #
        movq      %rsp, %rbp                                    #456.33
..___tag_value_main.13:                                         #
        andq      $-128, %rsp                                   #456.33
        pushq     %r12                                          #456.33 c1
..___tag_value_main.15:                                         #
        pushq     %r13                                          #456.33 c2
..___tag_value_main.16:                                         #
        pushq     %r14                                          #456.33 c3
..___tag_value_main.17:                                         #
        pushq     %r15                                          #456.33 c4
..___tag_value_main.18:                                         #
        pushq     %rbx                                          #456.33 c5
..___tag_value_main.19:                                         #
        subq      $1368, %rsp                                   #456.33 c6
        movl      %edi, %r12d                                   #456.33 c6
        xorl      %edi, %edi                                    #456.33 c8
        movq      %rsi, %r13                                    #456.33 c8
..___tag_value_main.20:                                         #456.33
        call      __intel_new_proc_init_R                       #456.33
..___tag_value_main.22:                                         #
                                # LOE r13 r12d
..B1.224:                       # Preds ..B1.1 Latency 3

### 
### //   time_t seconds;
### //   seconds = time (NULL);
### //   cout << "Begin NowIs(h:m:s) " << seconds/3600 << ":"  << (seconds/60)%60 << ":" << seconds%60 << endl;
### 
###   // RRMOD
###   vStations = new Station[8];

        movl      $19968, %edi                                  #463.3 c1
..___tag_value_main.24:                                         #463.3
        call      _Znam                                         #463.3
..___tag_value_main.26:                                         #
                                # LOE rax r13 r12d
..B1.2:                         # Preds ..B1.224 Latency 1
        testq     %rax, %rax                                    #463.3 c1
        je        ..B1.8        # Prob 4%                       #463.3 c1
..___tag_value_main.28:                                         #
                                # LOE rax r13 r12d
..B1.3:                         # Preds ..B1.2 Latency 5
        xorl      %edi, %edi                                    #463.3 c1
        xorl      %esi, %esi                                    #463.3 c1
        movl      $990057071, %ebx                              #463.3 c3
        xorl      %ecx, %ecx                                    # c3
        movl      $4, %edx                                      # c5
..___tag_value_main.29:                                         #
                                # LOE rax rdx rcx rdi r13 ebx esi r12d
..B1.4:                         # Preds ..B1.6 ..B1.3 Latency 134
        movl      %esi, (%rsp)                                  #463.3 c1
        vloadd    (%rsp){1to16}, %v0                            #463.3 c3
        nop                                                     #463.3 c5
        lea       1856(%rcx,%rax), %r10                         #463.3 c7
        vpackstoreld %v0, 1856(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L30         # Prob 50%                      #463.3
        vpackstorehd %v0, 1920(%rcx,%rax)                       #463.3
..L30:                                                          #
        movb      %dl, %dl                                      #463.3 c7
        lea       1216(%rcx,%rax), %r10                         #463.3 c9
        vpackstoreld %v0, 1216(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L31         # Prob 50%                      #463.3
        vpackstorehd %v0, 1280(%rcx,%rax)                       #463.3
..L31:                                                          #
        movb      %dl, %dl                                      #463.3 c9
        lea       576(%rcx,%rax), %r10                          #463.3 c11
        vpackstoreld %v0, 576(%rcx,%rax)                        #463.3
        testq     $63, %r10                                     #463.3
        je        ..L32         # Prob 50%                      #463.3
        vpackstorehd %v0, 640(%rcx,%rax)                        #463.3
..L32:                                                          #
        movb      %dl, %dl                                      #463.3 c11
        movl      %esi, (%rsp)                                  #463.3 c13
        vloadd    (%rsp){1to16}, %v1                            #463.3 c15
        nop                                                     #463.3 c17
        lea       1920(%rcx,%rax), %r10                         #463.3 c19
        vpackstoreld %v1, 1920(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L33         # Prob 50%                      #463.3
        vpackstorehd %v1, 1984(%rcx,%rax)                       #463.3
..L33:                                                          #
        movb      %dl, %dl                                      #463.3 c19
        lea       1280(%rcx,%rax), %r10                         #463.3 c21
        vpackstoreld %v1, 1280(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L34         # Prob 50%                      #463.3
        vpackstorehd %v1, 1344(%rcx,%rax)                       #463.3
..L34:                                                          #
        movb      %dl, %dl                                      #463.3 c21
        lea       640(%rcx,%rax), %r10                          #463.3 c23
        vpackstoreld %v1, 640(%rcx,%rax)                        #463.3
        testq     $63, %r10                                     #463.3
        je        ..L35         # Prob 50%                      #463.3
        vpackstorehd %v1, 704(%rcx,%rax)                        #463.3
..L35:                                                          #
        movb      %dl, %dl                                      #463.3 c23
        movl      %esi, (%rsp)                                  #463.3 c25
        vloadd    (%rsp){1to16}, %v2                            #463.3 c27
        nop                                                     #463.3 c29
        lea       1984(%rcx,%rax), %r10                         #463.3 c31
        vpackstoreld %v2, 1984(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L36         # Prob 50%                      #463.3
        vpackstorehd %v2, 2048(%rcx,%rax)                       #463.3
..L36:                                                          #
        movb      %dl, %dl                                      #463.3 c31
        lea       1344(%rcx,%rax), %r10                         #463.3 c33
        vpackstoreld %v2, 1344(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L37         # Prob 50%                      #463.3
        vpackstorehd %v2, 1408(%rcx,%rax)                       #463.3
..L37:                                                          #
        movb      %dl, %dl                                      #463.3 c33
        lea       704(%rcx,%rax), %r10                          #463.3 c35
        vpackstoreld %v2, 704(%rcx,%rax)                        #463.3
        testq     $63, %r10                                     #463.3
        je        ..L38         # Prob 50%                      #463.3
        vpackstorehd %v2, 768(%rcx,%rax)                        #463.3
..L38:                                                          #
        movb      %dl, %dl                                      #463.3 c35
        movl      %esi, (%rsp)                                  #463.3 c37
        vloadd    (%rsp){1to16}, %v3                            #463.3 c39
        nop                                                     #463.3 c41
        lea       2048(%rcx,%rax), %r10                         #463.3 c43
        vpackstoreld %v3, 2048(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L39         # Prob 50%                      #463.3
        vpackstorehd %v3, 2112(%rcx,%rax)                       #463.3
..L39:                                                          #
        movb      %dl, %dl                                      #463.3 c43
        lea       1408(%rcx,%rax), %r10                         #463.3 c45
        vpackstoreld %v3, 1408(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L40         # Prob 50%                      #463.3
        vpackstorehd %v3, 1472(%rcx,%rax)                       #463.3
..L40:                                                          #
        movb      %dl, %dl                                      #463.3 c45
        lea       768(%rcx,%rax), %r10                          #463.3 c47
        vpackstoreld %v3, 768(%rcx,%rax)                        #463.3
        testq     $63, %r10                                     #463.3
        je        ..L41         # Prob 50%                      #463.3
        vpackstorehd %v3, 832(%rcx,%rax)                        #463.3
..L41:                                                          #
        movb      %dl, %dl                                      #463.3 c47
        movl      %esi, (%rsp)                                  #463.3 c49
        vloadd    (%rsp){1to16}, %v4                            #463.3 c51
        nop                                                     #463.3 c53
        lea       2112(%rcx,%rax), %r10                         #463.3 c55
        vpackstoreld %v4, 2112(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L42         # Prob 50%                      #463.3
        vpackstorehd %v4, 2176(%rcx,%rax)                       #463.3
..L42:                                                          #
        movb      %dl, %dl                                      #463.3 c55
        lea       1472(%rcx,%rax), %r10                         #463.3 c57
        vpackstoreld %v4, 1472(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L43         # Prob 50%                      #463.3
        vpackstorehd %v4, 1536(%rcx,%rax)                       #463.3
..L43:                                                          #
        movb      %dl, %dl                                      #463.3 c57
        lea       832(%rcx,%rax), %r10                          #463.3 c59
        vpackstoreld %v4, 832(%rcx,%rax)                        #463.3
        testq     $63, %r10                                     #463.3
        je        ..L44         # Prob 50%                      #463.3
        vpackstorehd %v4, 896(%rcx,%rax)                        #463.3
..L44:                                                          #
        movb      %dl, %dl                                      #463.3 c59
        movl      %esi, (%rsp)                                  #463.3 c61
        vloadd    (%rsp){1to16}, %v5                            #463.3 c63
        nop                                                     #463.3 c65
        lea       2176(%rcx,%rax), %r10                         #463.3 c67
        vpackstoreld %v5, 2176(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L45         # Prob 50%                      #463.3
        vpackstorehd %v5, 2240(%rcx,%rax)                       #463.3
..L45:                                                          #
        movb      %dl, %dl                                      #463.3 c67
        lea       1536(%rcx,%rax), %r10                         #463.3 c69
        vpackstoreld %v5, 1536(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L46         # Prob 50%                      #463.3
        vpackstorehd %v5, 1600(%rcx,%rax)                       #463.3
..L46:                                                          #
        movb      %dl, %dl                                      #463.3 c69
        lea       896(%rcx,%rax), %r10                          #463.3 c71
        vpackstoreld %v5, 896(%rcx,%rax)                        #463.3
        testq     $63, %r10                                     #463.3
        je        ..L47         # Prob 50%                      #463.3
        vpackstorehd %v5, 960(%rcx,%rax)                        #463.3
..L47:                                                          #
        movb      %dl, %dl                                      #463.3 c71
        movl      %esi, (%rsp)                                  #463.3 c73
        vloadd    (%rsp){1to16}, %v6                            #463.3 c75
        nop                                                     #463.3 c77
        lea       2240(%rcx,%rax), %r10                         #463.3 c79
        vpackstoreld %v6, 2240(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L48         # Prob 50%                      #463.3
        vpackstorehd %v6, 2304(%rcx,%rax)                       #463.3
..L48:                                                          #
        movb      %dl, %dl                                      #463.3 c79
        lea       1600(%rcx,%rax), %r10                         #463.3 c81
        vpackstoreld %v6, 1600(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L49         # Prob 50%                      #463.3
        vpackstorehd %v6, 1664(%rcx,%rax)                       #463.3
..L49:                                                          #
        movb      %dl, %dl                                      #463.3 c81
        lea       960(%rcx,%rax), %r10                          #463.3 c83
        vpackstoreld %v6, 960(%rcx,%rax)                        #463.3
        testq     $63, %r10                                     #463.3
        je        ..L50         # Prob 50%                      #463.3
        vpackstorehd %v6, 1024(%rcx,%rax)                       #463.3
..L50:                                                          #
        movb      %dl, %dl                                      #463.3 c83
        movl      %esi, (%rsp)                                  #463.3 c85
        vloadd    (%rsp){1to16}, %v7                            #463.3 c87
        nop                                                     #463.3 c89
        lea       2304(%rcx,%rax), %r10                         #463.3 c91
        vpackstoreld %v7, 2304(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L51         # Prob 50%                      #463.3
        vpackstorehd %v7, 2368(%rcx,%rax)                       #463.3
..L51:                                                          #
        movb      %dl, %dl                                      #463.3 c91
        lea       1664(%rcx,%rax), %r10                         #463.3 c93
        vpackstoreld %v7, 1664(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L52         # Prob 50%                      #463.3
        vpackstorehd %v7, 1728(%rcx,%rax)                       #463.3
..L52:                                                          #
        movb      %dl, %dl                                      #463.3 c93
        lea       1024(%rcx,%rax), %r10                         #463.3 c95
        vpackstoreld %v7, 1024(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L53         # Prob 50%                      #463.3
        vpackstorehd %v7, 1088(%rcx,%rax)                       #463.3
..L53:                                                          #
        movb      %dl, %dl                                      #463.3 c95
        movl      %esi, (%rsp)                                  #463.3 c97
        vloadd    (%rsp){1to16}, %v8                            #463.3 c99
        nop                                                     #463.3 c101
        lea       2368(%rcx,%rax), %r10                         #463.3 c103
        vpackstoreld %v8, 2368(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L54         # Prob 50%                      #463.3
        vpackstorehd %v8, 2432(%rcx,%rax)                       #463.3
..L54:                                                          #
        movb      %dl, %dl                                      #463.3 c103
        lea       1728(%rcx,%rax), %r10                         #463.3 c105
        vpackstoreld %v8, 1728(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L55         # Prob 50%                      #463.3
        vpackstorehd %v8, 1792(%rcx,%rax)                       #463.3
..L55:                                                          #
        movb      %dl, %dl                                      #463.3 c105
        lea       1088(%rcx,%rax), %r10                         #463.3 c107
        vpackstoreld %v8, 1088(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L56         # Prob 50%                      #463.3
        vpackstorehd %v8, 1152(%rcx,%rax)                       #463.3
..L56:                                                          #
        movb      %dl, %dl                                      #463.3 c107
        movl      %esi, (%rsp)                                  #463.3 c109
        vloadd    (%rsp){1to16}, %v9                            #463.3 c111
        nop                                                     #463.3 c113
        lea       2432(%rcx,%rax), %r10                         #463.3 c115
        vpackstoreld %v9, 2432(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L57         # Prob 50%                      #463.3
        vpackstorehd %v9, 2496(%rcx,%rax)                       #463.3
..L57:                                                          #
        movb      %dl, %dl                                      #463.3 c115
        lea       1792(%rcx,%rax), %r10                         #463.3 c117
        vpackstoreld %v9, 1792(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L58         # Prob 50%                      #463.3
        vpackstorehd %v9, 1856(%rcx,%rax)                       #463.3
..L58:                                                          #
        movb      %dl, %dl                                      #463.3 c117
        lea       1152(%rcx,%rax), %r10                         #463.3 c119
        vpackstoreld %v9, 1152(%rcx,%rax)                       #463.3
        testq     $63, %r10                                     #463.3
        je        ..L59         # Prob 50%                      #463.3
        vpackstorehd %v9, 1216(%rcx,%rax)                       #463.3
..L59:                                                          #
        movb      %bpl, %bpl                                    #463.3 c119
        movl      %ebx, 8(%rsp)                                 #463.3 c121
        cmpq      $8, %rdx                                      #463.3 c121
        vloadd    8(%rsp){1to16}, %v10                          #463.3 c123
        nop                                                     #463.3 c125
        vmulps    %v10, %v10, %v11                              #463.3 c127
        vstored   %v10, 384(%rcx,%rax)                          #463.3 c130 stall 1
        nop                                                     #463.3 c132
        vstored   %v11, 448(%rcx,%rax)                          #463.3 c134
        jg        ..B1.6        # Prob 13%                      #463.3 c134
..___tag_value_main.60:                                         #
                                # LOE rax rdx rcx rdi r13 ebx esi r12d
..B1.5:                         # Preds ..B1.4 Latency 7
        vprefetch2 $0, 7872(%rcx,%rax)                          # c1
        movb      %dl, %dl                                      # c1
        vprefetch1 $0, 5376(%rcx,%rax)                          # c3
        movb      %dl, %dl                                      # c3
        vprefetch2 $0, 7936(%rcx,%rax)                          # c5
        movb      %dl, %dl                                      # c5
        vprefetch1 $0, 5440(%rcx,%rax)                          # c7
..___tag_value_main.61:                                         #
                                # LOE rax rdx rcx rdi r13 ebx esi r12d
..B1.6:                         # Preds ..B1.4 ..B1.5 Latency 5
        incq      %rdi                                          #463.3 c1
        addq      $2496, %rcx                                   #463.3 c1
        incq      %rdx                                          #463.3 c3
        cmpq      $8, %rdi                                      #463.3 c5
        jb        ..B1.4        # Prob 87%                      #463.3 c5
..___tag_value_main.62:                                         #
                                # LOE rax rdx rcx rdi r13 ebx esi r12d
..B1.8:                         # Preds ..B1.2 ..B1.6           # Infreq Latency 7
        movq      %rax, vStations(%rip)                         #463.3 c1

### 
### 
###   // parse cmdline and set #tasks if TBB or OpenMP
###   if(string(argv[0]).find("omp") != string::npos || string(argv[0]).find("tbb") != string::npos){

        xorl      %eax, %eax                                    #467.3 c1
        lea       33(%rsp), %rdi                                #467.13 c3
        movl      %eax, 16(%rsp)                                #467.3 c3
        movl      %eax, 20(%rsp)                                #467.3 c5
        call      _ZNSaIcEC1Ev                                  #467.13 c7
..___tag_value_main.63:                                         #
                                # LOE r13 r12d
..B1.9:                         # Preds ..B1.8                  # Infreq Latency 5
        movq      (%r13), %rsi                                  #467.13 c1
        lea       24(%rsp), %rdi                                #467.13 c1
        lea       33(%rsp), %rdx                                #467.13 c3
..___tag_value_main.64:                                         #467.13
        call      _ZNSsC1EPKcRKSaIcE                            #467.13
..___tag_value_main.66:                                         #
                                # LOE r13 r12d
..B1.10:                        # Preds ..B1.9                  # Infreq Latency 5
        lea       24(%rsp), %rdi                                #467.22 c1
        movl      $.L_2__STRING.21, %esi                        #467.22 c1
        xorl      %edx, %edx                                    #467.22 c3
..___tag_value_main.68:                                         #467.22
        call      _ZNKSs4findEPKcm                              #467.22
..___tag_value_main.70:                                         #
                                # LOE rax r13 r12d
..B1.11:                        # Preds ..B1.10                 # Infreq Latency 1
        cmpq      $-1, %rax                                     #467.37 c1
        je        ..B1.13       # Prob 22%                      #467.37 c1
..___tag_value_main.72:                                         #
                                # LOE r13 r12d
..B1.12:                        # Preds ..B1.11                 # Infreq Latency 2
        movl      $1, %ebx                                      #467.3 c1
        jmp       ..B1.17       # Prob 100%                     #467.3 c1
..___tag_value_main.73:                                         #
                                # LOE r13 ebx r12d
..B1.13:                        # Preds ..B1.11                 # Infreq Latency 3
        lea       32(%rsp), %rdi                                #467.60 c1
        call      _ZNSaIcEC1Ev                                  #467.60 c3
..___tag_value_main.74:                                         #
                                # LOE r13 r12d
..B1.14:                        # Preds ..B1.13                 # Infreq Latency 7
        movq      (%r13), %rsi                                  #467.60 c1
        lea       8(%rsp), %rdi                                 #467.60 c1
        lea       32(%rsp), %rdx                                #467.60 c3
        movl      $1, 20(%rsp)                                  #467.60 c5
..___tag_value_main.75:                                         #467.60
        call      _ZNSsC1EPKcRKSaIcE                            #467.60
..___tag_value_main.77:                                         #
                                # LOE r13 r12d
..B1.15:                        # Preds ..B1.14                 # Infreq Latency 7
        lea       8(%rsp), %rdi                                 #467.69 c1
        movl      $.L_2__STRING.20, %esi                        #467.69 c1
        xorl      %edx, %edx                                    #467.69 c3
        movl      $1, 16(%rsp)                                  #467.60 c5
..___tag_value_main.79:                                         #467.69
        call      _ZNKSs4findEPKcm                              #467.69
..___tag_value_main.81:                                         #
                                # LOE rax r13 r12d
..B1.16:                        # Preds ..B1.15                 # Infreq Latency 3
        xorl      %ebx, %ebx                                    #467.84 c1
        cmpq      $-1, %rax                                     #467.84 c1
        setne     %bl                                           #467.84 c3
..___tag_value_main.83:                                         #
                                # LOE r13 ebx r12d
..B1.17:                        # Preds ..B1.12 ..B1.16         # Infreq Latency 3
        movl      16(%rsp), %eax                                #467.37 c1
        testl     %eax, %eax                                    #467.37 c3
        je        ..B1.19       # Prob 69%                      #467.37 c3
..___tag_value_main.84:                                         #
                                # LOE r13 ebx r12d
..B1.18:                        # Preds ..B1.17                 # Infreq Latency 5
        lea       8(%rsp), %rdi                                 #467.37 c1
        movl      $0, 16(%rsp)                                  #467.37 c3
..___tag_value_main.85:                                         #467.37
        call      _ZNSsD1Ev                                     #467.37
..___tag_value_main.87:                                         #
                                # LOE r13 ebx r12d
..B1.19:                        # Preds ..B1.17 ..B1.18         # Infreq Latency 3
        movl      20(%rsp), %eax                                #467.37 c1
        testl     %eax, %eax                                    #467.37 c3
        je        ..B1.21       # Prob 69%                      #467.37 c3
..___tag_value_main.89:                                         #
                                # LOE r13 ebx r12d
..B1.20:                        # Preds ..B1.19                 # Infreq Latency 5
        lea       32(%rsp), %rdi                                #467.37 c1
        movl      $0, 20(%rsp)                                  #467.37 c3
        call      _ZNSaIcED1Ev                                  #467.37 c5
..___tag_value_main.90:                                         #
                                # LOE r13 ebx r12d
..B1.21:                        # Preds ..B1.20 ..B1.19         # Infreq Latency 3
        lea       24(%rsp), %rdi                                #467.37 c1
..___tag_value_main.91:                                         #467.37
        call      _ZNSsD1Ev                                     #467.37
..___tag_value_main.93:                                         #
                                # LOE r13 ebx r12d
..B1.22:                        # Preds ..B1.21                 # Infreq Latency 3
        lea       33(%rsp), %rdi                                #467.37 c1
        call      _ZNSaIcED1Ev                                  #467.37 c3
..___tag_value_main.95:                                         #
                                # LOE r13 ebx r12d
..B1.23:                        # Preds ..B1.22                 # Infreq Latency 1
        testl     %ebx, %ebx                                    #467.37 c1
        je        ..B1.30       # Prob 22%                      #467.37 c1
..___tag_value_main.96:                                         #
                                # LOE r13 r12d
..B1.24:                        # Preds ..B1.23                 # Infreq Latency 1

###       if(argc != 2){

        cmpl      $2, %r12d                                     #468.18 c1
        je        ..B1.28       # Prob 33%                      #468.18 c1
..___tag_value_main.97:                                         #
                                # LOE r13
..B1.25:                        # Preds ..B1.24                 # Infreq Latency 3

###       cout << "Please specify #parallel tasks" << endl;

        movl      $_ZSt4cout, %edi                              #469.12 c1
        movl      $.L_2__STRING.19, %esi                        #469.12 c1
..___tag_value_main.98:                                         #469.12
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #469.12
..___tag_value_main.100:                                        #
                                # LOE rax
..B1.26:                        # Preds ..B1.25                 # Infreq Latency 3
        movq      %rax, %rdi                                    #469.48 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #469.48 c1
..___tag_value_main.102:                                        #469.48
        call      _ZNSolsEPFRSoS_E                              #469.48
..___tag_value_main.104:                                        #
                                # LOE
..B1.27:                        # Preds ..B1.26                 # Infreq Latency 8

###     return 1;

        movl      $1, %eax                                      #470.12 c1
        addq      $1368, %rsp                                   #470.12 c1
..___tag_value_main.106:                                        #
        popq      %rbx                                          #470.12
..___tag_value_main.108:                                        #470.12
        popq      %r15                                          #470.12
..___tag_value_main.109:                                        #470.12
        popq      %r14                                          #470.12
..___tag_value_main.110:                                        #470.12
        popq      %r13                                          #470.12
..___tag_value_main.111:                                        #470.12
        popq      %r12                                          #470.12
        movq      %rbp, %rsp                                    #470.12 c8
        popq      %rbp                                          #470.12
..___tag_value_main.112:                                        #
        ret                                                     #470.12
..___tag_value_main.114:                                        #
                                # LOE
..B1.28:                        # Preds ..B1.24                 # Infreq Latency 5

###     }
###     tasks = atoi( argv[1] );

        movq      8(%r13), %rdi                                 #472.13 c1
        xorl      %esi, %esi                                    #472.13 c1
        movl      $10, %edx                                     #472.13 c3
        call      strtol                                        #472.13 c5
..___tag_value_main.122:                                        #
                                # LOE rax
..B1.29:                        # Preds ..B1.28                 # Infreq Latency 1
        movl      %eax, tasks(%rip)                             #472.5 c1
..___tag_value_main.123:                                        #
                                # LOE
..B1.30:                        # Preds ..B1.23 ..B1.29         # Infreq Latency 1

###   }
### 
### #ifdef TBB
###   task_scheduler_init init(tasks);
###   TMyObserver obs;
###   obs.FInit();    // set cpu-threads correspondence
###   obs.observe(useObserver); // Turn on observer. It's turn off by default.
### #endif
### 
###   ReadInput();

..___tag_value_main.124:                                        #482.3
        call      _Z9ReadInputv                                 #482.3
..___tag_value_main.126:                                        #
                                # LOE
..B1.31:                        # Preds ..B1.30                 # Infreq Latency 1

###   FitTracksV();

..___tag_value_main.128:                                        #483.3
        call      _Z10FitTracksVv                               #483.3
..___tag_value_main.130:                                        #
                                # LOE
..B1.32:                        # Preds ..B1.31                 # Infreq Latency 3

###   WriteOutput();

        lea       40(%rsp), %rdi                                #484.3 c1
..___tag_value_main.132:                                        #484.3
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEEC1Ev #484.3
..___tag_value_main.134:                                        #
                                # LOE
..B1.33:                        # Preds ..B1.32                 # Infreq Latency 3
        lea       568(%rsp), %rdi                               #484.3 c1
..___tag_value_main.136:                                        #484.3
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEEC1Ev #484.3
..___tag_value_main.138:                                        #
                                # LOE
..B1.34:                        # Preds ..B1.33                 # Infreq Latency 3
        lea       16(%rsp), %rdi                                #484.3 c1
        movl      $dataDir, %esi                                #484.3 c1
..___tag_value_main.140:                                        #484.3
        call      _ZNSsC1ERKSs                                  #484.3
..___tag_value_main.142:                                        #
                                # LOE
..B1.35:                        # Preds ..B1.34                 # Infreq Latency 3
        lea       16(%rsp), %rdi                                #484.3 c1
        movl      $.L_2__STRING.9, %esi                         #484.3 c1
..___tag_value_main.144:                                        #484.3
        call      _ZNSs6appendEPKc                              #484.3
..___tag_value_main.146:                                        #
                                # LOE
..B1.36:                        # Preds ..B1.35                 # Infreq Latency 3
        lea       16(%rsp), %rdi                                #484.3 c1
..___tag_value_main.148:                                        #484.3
        call      _ZNKSs5c_strEv                                #484.3
..___tag_value_main.150:                                        #
                                # LOE rax
..B1.37:                        # Preds ..B1.36                 # Infreq Latency 5
        lea       40(%rsp), %rdi                                #484.3 c1
        movq      %rax, %rsi                                    #484.3 c1
        movl      $16, %edx                                     #484.3 c3
..___tag_value_main.152:                                        #484.3
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode #484.3
..___tag_value_main.154:                                        #
                                # LOE
..B1.38:                        # Preds ..B1.37                 # Infreq Latency 3
        lea       16(%rsp), %rdi                                #484.3 c1
..___tag_value_main.156:                                        #484.3
        call      _ZNSsD1Ev                                     #484.3
..___tag_value_main.158:                                        #
                                # LOE
..B1.39:                        # Preds ..B1.38                 # Infreq Latency 3
        lea       16(%rsp), %rdi                                #484.3 c1
        movl      $dataDir, %esi                                #484.3 c1
..___tag_value_main.160:                                        #484.3
        call      _ZNSsC1ERKSs                                  #484.3
..___tag_value_main.162:                                        #
                                # LOE
..B1.40:                        # Preds ..B1.39                 # Infreq Latency 3
        lea       16(%rsp), %rdi                                #484.3 c1
        movl      $.L_2__STRING.10, %esi                        #484.3 c1
..___tag_value_main.164:                                        #484.3
        call      _ZNSs6appendEPKc                              #484.3
..___tag_value_main.166:                                        #
                                # LOE
..B1.41:                        # Preds ..B1.40                 # Infreq Latency 3
        lea       16(%rsp), %rdi                                #484.3 c1
..___tag_value_main.168:                                        #484.3
        call      _ZNKSs5c_strEv                                #484.3
..___tag_value_main.170:                                        #
                                # LOE rax
..B1.42:                        # Preds ..B1.41                 # Infreq Latency 5
        lea       568(%rsp), %rdi                               #484.3 c1
        movq      %rax, %rsi                                    #484.3 c1
        movl      $16, %edx                                     #484.3 c3
..___tag_value_main.172:                                        #484.3
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode #484.3
..___tag_value_main.174:                                        #
                                # LOE
..B1.43:                        # Preds ..B1.42                 # Infreq Latency 3
        lea       16(%rsp), %rdi                                #484.3 c1
..___tag_value_main.176:                                        #484.3
        call      _ZNSsD1Ev                                     #484.3
..___tag_value_main.178:                                        #
                                # LOE
..B1.44:                        # Preds ..B1.43                 # Infreq Latency 9
        movl      NTracks(%rip), %eax                           #484.3 c1
        xorl      %r13d, %r13d                                  #484.3 c1
        movl      $0, 1096(%rsp)                                #484.3 c3
        movq      %r13, 1128(%rsp)                              #484.3 c5
        xorl      %ebx, %ebx                                    # c5
        xorl      %r12d, %r12d                                  # c7
        testl     %eax, %eax                                    #484.3 c7
        jle       ..B1.96       # Prob 4%                       #484.3 c9
..___tag_value_main.180:                                        #
                                # LOE rbx r12 r13 r13d r13b
..B1.46:                        # Preds ..B1.44 ..B1.94         # Infreq Latency 1
        xorl      %r11d, %r11d                                  #484.3 c1
        xorl      %eax, %eax                                    #484.3 c1
..___tag_value_main.181:                                        #
                                # LOE rbx r12 r13 eax r11d
..B1.47:                        # Preds ..B1.53 ..B1.46         # Infreq Latency 7
        movl      %r11d, %r9d                                   #484.3 c1
        lea       1(%rax), %r8d                                 #484.3 c1
        shlq      $32, %r9                                      #484.3 c3
        sarq      $32, %r9                                      #484.3 c5
        testl     %eax, %eax                                    #484.3 c7
        jl        ..B1.53       # Prob 50%                      #484.3 c7
..___tag_value_main.182:                                        #
                                # LOE rbx r9 r12 r13 r8d r11d
..B1.48:                        # Preds ..B1.47                 # Infreq Latency 1
        cmpl      $32, %r8d                                     #484.3 c1
        jl        ..B1.149      # Prob 10%                      #484.3 c1
..___tag_value_main.183:                                        #
                                # LOE rbx r9 r12 r13 r8d r11d
..B1.49:                        # Preds ..B1.48                 # Infreq Latency 18
        lea       1152(%rsp,%r9,8), %rsi                        #484.3 c1
        xorl      %ecx, %ecx                                    #484.3 c1
        movq      %rsi, %rax                                    #484.3 c3
        movq      %rsi, %rdi                                    #484.3 c3
        andq      $63, %rax                                     #484.3 c5
        subl      %eax, %ecx                                    #484.3 c7
        addl      $64, %ecx                                     #484.3 c9
        shrl      $3, %ecx                                      #484.3 c11
        testl     %eax, %eax                                    #484.3 c11
        jne       ..L184        # Prob 50%                      #484.3 c13
        movl      %eax, %ecx                                    #484.3
..L184:                                                         #
        lea       32(%rcx), %edx                                #484.3 c16 stall 1
        cmpl      %edx, %r8d                                    #484.3 c18
        jl        ..B1.149      # Prob 10%                      #484.3 c18
..___tag_value_main.185:                                        #
                                # LOE rbx rsi rdi r9 r12 r13 ecx r8d r11d
..B1.50:                        # Preds ..B1.49                 # Infreq Latency 11
        movl      %r8d, %eax                                    #484.3 c1
        movl      %ecx, %r14d                                   #484.3 c1
        subl      %ecx, %eax                                    #484.3 c3
        movq      %r13, %r10                                    #484.3 c3
        andl      $31, %eax                                     #484.3 c5
        lea       856+vTracks(%rbx,%r9,4), %rdx                 #484.3 c5
        negl      %eax                                          #484.3 c7
        addl      %r8d, %eax                                    #484.3 c9
        testq     %r14, %r14                                    #484.3 c11
        jbe       ..B1.132      # Prob 10%                      #484.3 c11
..___tag_value_main.186:                                        #
                                # LOE rdx rbx rsi rdi r9 r10 r12 r13 r14 eax ecx r8d r11d
..B1.52:                        # Preds ..B1.50 ..B1.52         # Infreq Latency 15
        movl      $1, %r15d                                     #484.3 c1
        movq      %r13, (%rsi)                                  #484.3 c1
        vkmov     %r15d, %k1                                    #484.3 c3
        vcvtps2pd $0, (%rdx,%r10,4){1to16}, %v0{%k1}            #484.3 c5
        incq      %r10                                          #484.3 c5
        nop                                                     #484.3 c7
        nop                                                     #484.3 c9
        vstoreq   %v0{a}, (%rsi)                                #484.3 c12 stall 1
        addq      $8, %rsi                                      #484.3 c12
        cmpq      %r14, %r10                                    #484.3 c14
        jb        ..B1.52       # Prob 82%                      #484.3 c14
        jmp       ..B1.132      # Prob 100%                     #484.3 c14
..___tag_value_main.187:                                        #
                                # LOE rdx rbx rsi rdi r9 r10 r12 r13 r14 eax ecx r8d r11d
..B1.53:                        # Preds ..B1.47 ..B1.221 ..B1.142 # Infreq Latency 3
        movl      %r8d, %eax                                    #484.3 c1
        cmpl      $5, %r8d                                      #484.3 c1
        jb        ..B1.47       # Prob 80%                      #484.3 c3
..___tag_value_main.188:                                        #
                                # LOE rbx r12 r13 eax r11d
..B1.54:                        # Preds ..B1.53                 # Infreq Latency 7
        movl      $1, %edx                                      #484.3 c1
        vkmov     %edx, %k1                                     #484.3 c3
        vcvtps2pd $0, 832+vTracks(%rbx){1to16}, %v0{%k1}        #484.3 c5
..___tag_value_main.189:                                        #484.3
        call      finite                                        #484.3
..___tag_value_main.191:                                        #
                                # LOE rbx r12 r13 eax
..B1.227:                       # Preds ..B1.54                 # Infreq Latency 1
        testl     %eax, %eax                                    #484.3 c1
        je        ..B1.60       # Prob 50%                      #484.3 c1
..___tag_value_main.193:                                        #
                                # LOE rbx r12 r13
..B1.55:                        # Preds ..B1.227                # Infreq Latency 7
        movl      $1, %edx                                      #484.3 c1
        vkmov     %edx, %k1                                     #484.3 c3
        vcvtps2pd $0, 836+vTracks(%rbx){1to16}, %v0{%k1}        #484.3 c5
..___tag_value_main.194:                                        #484.3
        call      finite                                        #484.3
..___tag_value_main.196:                                        #
                                # LOE rbx r12 r13 eax
..B1.228:                       # Preds ..B1.55                 # Infreq Latency 1
        testl     %eax, %eax                                    #484.3 c1
        je        ..B1.60       # Prob 50%                      #484.3 c1
..___tag_value_main.198:                                        #
                                # LOE rbx r12 r13
..B1.56:                        # Preds ..B1.228                # Infreq Latency 7
        movl      $1, %edx                                      #484.3 c1
        vkmov     %edx, %k1                                     #484.3 c3
        vcvtps2pd $0, 840+vTracks(%rbx){1to16}, %v0{%k1}        #484.3 c5
..___tag_value_main.199:                                        #484.3
        call      finite                                        #484.3
..___tag_value_main.201:                                        #
                                # LOE rbx r12 r13 eax
..B1.229:                       # Preds ..B1.56                 # Infreq Latency 1
        testl     %eax, %eax                                    #484.3 c1
        je        ..B1.60       # Prob 50%                      #484.3 c1
..___tag_value_main.203:                                        #
                                # LOE rbx r12 r13
..B1.57:                        # Preds ..B1.229                # Infreq Latency 7
        movl      $1, %edx                                      #484.3 c1
        vkmov     %edx, %k1                                     #484.3 c3
        vcvtps2pd $0, 844+vTracks(%rbx){1to16}, %v0{%k1}        #484.3 c5
..___tag_value_main.204:                                        #484.3
        call      finite                                        #484.3
..___tag_value_main.206:                                        #
                                # LOE rbx r12 r13 eax
..B1.230:                       # Preds ..B1.57                 # Infreq Latency 1
        testl     %eax, %eax                                    #484.3 c1
        je        ..B1.60       # Prob 50%                      #484.3 c1
..___tag_value_main.208:                                        #
                                # LOE rbx r12 r13
..B1.58:                        # Preds ..B1.230                # Infreq Latency 7
        movl      $1, %edx                                      #484.3 c1
        vkmov     %edx, %k1                                     #484.3 c3
        vcvtps2pd $0, 848+vTracks(%rbx){1to16}, %v0{%k1}        #484.3 c5
..___tag_value_main.209:                                        #484.3
        call      finite                                        #484.3
..___tag_value_main.211:                                        #
                                # LOE rbx r12 r13 eax
..B1.231:                       # Preds ..B1.58                 # Infreq Latency 1
        testl     %eax, %eax                                    #484.3 c1
        je        ..B1.60       # Prob 50%                      #484.3 c1
..___tag_value_main.213:                                        #
                                # LOE rbx r12 r13
..B1.59:                        # Preds ..B1.231                # Infreq Latency 7
        movl      $1, %edx                                      #484.3 c1
        vkmov     %edx, %k1                                     #484.3 c3
        vcvtps2pd $0, 852+vTracks(%rbx){1to16}, %v0{%k1}        #484.3 c5
..___tag_value_main.214:                                        #484.3
        call      finite                                        #484.3
..___tag_value_main.216:                                        #
                                # LOE rbx r12 r13 eax
..B1.232:                       # Preds ..B1.59                 # Infreq Latency 4
        xorl      %edx, %edx                                    #484.3 c1
        testl     %eax, %eax                                    #484.3 c1
        setne     %dl                                           #484.3 c3
        jmp       ..B1.61       # Prob 100%                     #484.3 c3
..___tag_value_main.218:                                        #
                                # LOE rbx r12 r13 edx
..B1.60:                        # Preds ..B1.227 ..B1.228 ..B1.229 ..B1.230 ..B1.231
                                #                               # Infreq Latency 1
        xorl      %edx, %edx                                    #484.3 c1
..___tag_value_main.219:                                        #
                                # LOE rbx r12 r13 edx
..B1.61:                        # Preds ..B1.232 ..B1.60        # Infreq Latency 3
        movq      %r13, %r15                                    #484.3 c1
        movq      %r15, %r14                                    # c3
..___tag_value_main.220:                                        #
                                # LOE rbx r12 r13 r14 r15 edx
..B1.62:                        # Preds ..B1.66 ..B1.61         # Infreq Latency 1
        testl     %edx, %edx                                    #484.3 c1
        je        ..B1.65       # Prob 50%                      #484.3 c1
..___tag_value_main.221:                                        #
                                # LOE rbx r12 r13 r14 r15
..B1.63:                        # Preds ..B1.62                 # Infreq Latency 3
        vloadq    1152(%rsp,%r14){1to8}, %v0                    #484.3 c1
..___tag_value_main.222:                                        #484.3
        call      finite                                        #484.3
..___tag_value_main.224:                                        #
                                # LOE rbx r12 r13 r14 r15 eax
..B1.233:                       # Preds ..B1.63                 # Infreq Latency 1
        testl     %eax, %eax                                    #484.3 c1
        je        ..B1.65       # Prob 50%                      #484.3 c1
..___tag_value_main.226:                                        #
                                # LOE rbx r12 r13 r14 r15
..B1.64:                        # Preds ..B1.233                # Infreq Latency 3
        vloadq    1160(%rsp,%r14){1to8}, %v0                    #484.3 c1
..___tag_value_main.227:                                        #484.3
        call      finite                                        #484.3
..___tag_value_main.229:                                        #
                                # LOE rbx r12 r13 r14 r15 eax
..B1.234:                       # Preds ..B1.64                 # Infreq Latency 4
        xorl      %edx, %edx                                    #484.3 c1
        testl     %eax, %eax                                    #484.3 c1
        setne     %dl                                           #484.3 c3
        jmp       ..B1.66       # Prob 100%                     #484.3 c3
..___tag_value_main.231:                                        #
                                # LOE rbx r12 r13 r14 r15 edx
..B1.65:                        # Preds ..B1.62 ..B1.233        # Infreq Latency 1
        xorl      %edx, %edx                                    #484.3 c1
..___tag_value_main.232:                                        #
                                # LOE rbx r12 r13 r14 r15 edx
..B1.66:                        # Preds ..B1.234 ..B1.65        # Infreq Latency 3
        incq      %r15                                          #484.3 c1
        addq      $16, %r14                                     #484.3 c1
        cmpq      $7, %r15                                      #484.3 c3
        jb        ..B1.62       # Prob 86%                      #484.3 c3
..___tag_value_main.233:                                        #
                                # LOE rbx r12 r13 r14 r15 edx
..B1.67:                        # Preds ..B1.66                 # Infreq Latency 1
        testl     %edx, %edx                                    #484.3 c1
        je        ..B1.92       # Prob 50%                      #484.3 c1
..___tag_value_main.234:                                        #
                                # LOE rbx r12 r13
..B1.68:                        # Preds ..B1.67                 # Infreq Latency 3
        vloadq    1264(%rsp){1to8}, %v0                         #484.3 c1
..___tag_value_main.235:                                        #484.3
        call      finite                                        #484.3
..___tag_value_main.237:                                        #
                                # LOE rbx r12 r13 eax
..B1.235:                       # Preds ..B1.68                 # Infreq Latency 1
        testl     %eax, %eax                                    #484.3 c1
        je        ..B1.92       # Prob 50%                      #484.3 c1
..___tag_value_main.239:                                        #
                                # LOE rbx r12 r13
..B1.69:                        # Preds ..B1.235                # Infreq Latency 3
        lea       56(%rsp), %rdi                                #484.3 c1
        movl      1096(%rsp), %esi                              #484.3 c1
..___tag_value_main.240:                                        #484.3
        call      _ZNSolsEi                                     #484.3
..___tag_value_main.242:                                        #
                                # LOE rax rbx r12 r13
..B1.70:                        # Preds ..B1.69                 # Infreq Latency 3
        movq      %rax, %rdi                                    #484.3 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #484.3 c1
..___tag_value_main.244:                                        #484.3
        call      _ZNSolsEPFRSoS_E                              #484.3
..___tag_value_main.246:                                        #
                                # LOE rax rbx r12 r13
..B1.71:                        # Preds ..B1.70                 # Infreq Latency 3
        movq      %rax, %rdi                                    #484.3 c1
        movl      $.L_2__STRING.12, %esi                        #484.3 c1
..___tag_value_main.248:                                        #484.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #484.3
..___tag_value_main.250:                                        #
                                # LOE rax rbx r12 r13
..B1.72:                        # Preds ..B1.71                 # Infreq Latency 3
        movq      %rax, %rdi                                    #484.3 c1
        movl      $.L_2__STRING.13, %esi                        #484.3 c1
..___tag_value_main.252:                                        #484.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #484.3
..___tag_value_main.254:                                        #
                                # LOE rax rbx r12 r13
..B1.73:                        # Preds ..B1.72                 # Infreq Latency 5
        vloadd    vMCTracks(%r12){1to16}, %v0                   #484.3 c1
        movq      %rax, %rdi                                    #484.3 c3
..___tag_value_main.256:                                        #484.3
        call      _ZNSolsEf                                     #484.3
..___tag_value_main.258:                                        #
                                # LOE rax rbx r12 r13
..B1.74:                        # Preds ..B1.73                 # Infreq Latency 3
        movq      %rax, %rdi                                    #484.3 c1
        movl      $.L_2__STRING.13, %esi                        #484.3 c1
..___tag_value_main.260:                                        #484.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #484.3
..___tag_value_main.262:                                        #
                                # LOE rax rbx r12 r13
..B1.75:                        # Preds ..B1.74                 # Infreq Latency 5
        vloadd    4+vMCTracks(%r12){1to16}, %v0                 #484.3 c1
        movq      %rax, %rdi                                    #484.3 c3
..___tag_value_main.264:                                        #484.3
        call      _ZNSolsEf                                     #484.3
..___tag_value_main.266:                                        #
                                # LOE rax rbx r12 r13
..B1.76:                        # Preds ..B1.75                 # Infreq Latency 3
        movq      %rax, %rdi                                    #484.3 c1
        movl      $.L_2__STRING.13, %esi                        #484.3 c1
..___tag_value_main.268:                                        #484.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #484.3
..___tag_value_main.270:                                        #
                                # LOE rax rbx r12 r13
..B1.77:                        # Preds ..B1.76                 # Infreq Latency 5
        vloadd    8+vMCTracks(%r12){1to16}, %v0                 #484.3 c1
        movq      %rax, %rdi                                    #484.3 c3
..___tag_value_main.272:                                        #484.3
        call      _ZNSolsEf                                     #484.3
..___tag_value_main.274:                                        #
                                # LOE rax rbx r12 r13
..B1.78:                        # Preds ..B1.77                 # Infreq Latency 3
        movq      %rax, %rdi                                    #484.3 c1
        movl      $.L_2__STRING.13, %esi                        #484.3 c1
..___tag_value_main.276:                                        #484.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #484.3
..___tag_value_main.278:                                        #
                                # LOE rax rbx r12 r13
..B1.79:                        # Preds ..B1.78                 # Infreq Latency 5
        vloadd    12+vMCTracks(%r12){1to16}, %v0                #484.3 c1
        movq      %rax, %rdi                                    #484.3 c3
..___tag_value_main.280:                                        #484.3
        call      _ZNSolsEf                                     #484.3
..___tag_value_main.282:                                        #
                                # LOE rax rbx r12 r13
..B1.80:                        # Preds ..B1.79                 # Infreq Latency 3
        movq      %rax, %rdi                                    #484.3 c1
        movl      $.L_2__STRING.13, %esi                        #484.3 c1
..___tag_value_main.284:                                        #484.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #484.3
..___tag_value_main.286:                                        #
                                # LOE rax rbx r12 r13
..B1.81:                        # Preds ..B1.80                 # Infreq Latency 5
        vloadd    16+vMCTracks(%r12){1to16}, %v0                #484.3 c1
        movq      %rax, %rdi                                    #484.3 c3
..___tag_value_main.288:                                        #484.3
        call      _ZNSolsEf                                     #484.3
..___tag_value_main.290:                                        #
                                # LOE rax rbx r12 r13
..B1.82:                        # Preds ..B1.81                 # Infreq Latency 3
        movq      %rax, %rdi                                    #484.3 c1
        movl      $.L_2__STRING.13, %esi                        #484.3 c1
..___tag_value_main.292:                                        #484.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #484.3
..___tag_value_main.294:                                        #
                                # LOE rax rbx r12 r13
..B1.83:                        # Preds ..B1.82                 # Infreq Latency 5
        vloadd    20+vMCTracks(%r12){1to16}, %v0                #484.3 c1
        movq      %rax, %rdi                                    #484.3 c3
..___tag_value_main.296:                                        #484.3
        call      _ZNSolsEf                                     #484.3
..___tag_value_main.298:                                        #
                                # LOE rax rbx r12 r13
..B1.84:                        # Preds ..B1.83                 # Infreq Latency 3
        movq      %rax, %rdi                                    #484.3 c1
        movl      $.L_2__STRING.13, %esi                        #484.3 c1
..___tag_value_main.300:                                        #484.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #484.3
..___tag_value_main.302:                                        #
                                # LOE rax rbx r12 r13
..B1.85:                        # Preds ..B1.84                 # Infreq Latency 5
        vloadd    24+vMCTracks(%r12){1to16}, %v0                #484.3 c1
        movq      %rax, %rdi                                    #484.3 c3
..___tag_value_main.304:                                        #484.3
        call      _ZNSolsEf                                     #484.3
..___tag_value_main.306:                                        #
                                # LOE rax rbx r12 r13
..B1.86:                        # Preds ..B1.85                 # Infreq Latency 3
        movq      %rax, %rdi                                    #484.3 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #484.3 c1
..___tag_value_main.308:                                        #484.3
        call      _ZNSolsEPFRSoS_E                              #484.3
..___tag_value_main.310:                                        #
                                # LOE rbx r12 r13
..B1.87:                        # Preds ..B1.86                 # Infreq Latency 3
        lea       56(%rsp), %rdi                                #484.3 c1
        movl      $.L_2__STRING.12, %esi                        #484.3 c1
..___tag_value_main.312:                                        #484.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #484.3
..___tag_value_main.314:                                        #
                                # LOE rbx r12 r13
..B1.88:                        # Preds ..B1.87                 # Infreq Latency 1
        movq      %r13, %r15                                    #484.3 c1
        movq      %rbx, %r14                                    # c1
..___tag_value_main.316:                                        #
                                # LOE rbx r12 r13 r14 r15
..B1.89:                        # Preds ..B1.91 ..B1.88         # Infreq Latency 3
        lea       56(%rsp), %rdi                                #484.3 c1
        movl      $.L_2__STRING.13, %esi                        #484.3 c1
..___tag_value_main.317:                                        #484.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #484.3
..___tag_value_main.319:                                        #
                                # LOE rax rbx r12 r13 r14 r15
..B1.90:                        # Preds ..B1.89                 # Infreq Latency 5
        vloadd    832+vTracks(%r14){1to16}, %v0                 #484.3 c1
        movq      %rax, %rdi                                    #484.3 c3
..___tag_value_main.321:                                        #484.3
        call      _ZNSolsEf                                     #484.3
..___tag_value_main.323:                                        #
                                # LOE rbx r12 r13 r14 r15
..B1.91:                        # Preds ..B1.90                 # Infreq Latency 4
        incq      %r15                                          #484.3 c1
        addq      $4, %r14                                      #484.3 c1
        cmpq      $6, %r15                                      #484.3 c3
        jl        ..B1.89       # Prob 83%                      #484.3 c3
        jmp       ..B1.109      # Prob 100%                     #484.3 c3
..___tag_value_main.325:                                        #
                                # LOE rbx r12 r13 r14 r15
..B1.92:                        # Preds ..B1.67 ..B1.235        # Infreq Latency 3
        movl      $_ZSt4cout, %edi                              #484.3 c1
        movl      $.L_2__STRING.11, %esi                        #484.3 c1
..___tag_value_main.326:                                        #484.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #484.3
..___tag_value_main.328:                                        #
                                # LOE rax rbx r12 r13
..B1.93:                        # Preds ..B1.92                 # Infreq Latency 3
        movq      %rax, %rdi                                    #484.3 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #484.3 c1
..___tag_value_main.330:                                        #484.3
        call      _ZNSolsEPFRSoS_E                              #484.3
..___tag_value_main.332:                                        #
                                # LOE rbx r12 r13
..B1.94:                        # Preds ..B1.93 ..B1.130        # Infreq Latency 9
        movl      NTracks(%rip), %eax                           #484.3 c1
        addq      $960, %rbx                                    #484.3 c1
        shlq      $32, %rax                                     #484.3 c3
        movq      1128(%rsp), %rdx                              #484.3 c3
        sarq      $32, %rax                                     #484.3 c5
        incq      %rdx                                          #484.3 c5
        addq      $64, %r12                                     #484.3 c7
        movq      %rdx, 1128(%rsp)                              #484.3 c7
        cmpq      %rax, %rdx                                    #484.3 c9
        jl        ..B1.46       # Prob 99%                      #484.3 c9
..___tag_value_main.334:                                        #
                                # LOE rbx r12 r13
..B1.96:                        # Preds ..B1.94 ..B1.44         # Infreq Latency 3
        lea       40(%rsp), %rdi                                #484.3 c1
..___tag_value_main.335:                                        #484.3
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv #484.3
..___tag_value_main.337:                                        #
                                # LOE
..B1.97:                        # Preds ..B1.96                 # Infreq Latency 3
        lea       568(%rsp), %rdi                               #484.3 c1
..___tag_value_main.339:                                        #484.3
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv #484.3
..___tag_value_main.341:                                        #
                                # LOE
..B1.98:                        # Preds ..B1.97                 # Infreq Latency 3
        lea       568(%rsp), %rdi                               #484.3 c1
..___tag_value_main.343:                                        #484.3
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev #484.3
..___tag_value_main.345:                                        #
                                # LOE
..B1.99:                        # Preds ..B1.98                 # Infreq Latency 3
        lea       40(%rsp), %rdi                                #484.3 c1
..___tag_value_main.347:                                        #484.3
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev #484.3
..___tag_value_main.349:                                        #
                                # LOE
..B1.100:                       # Preds ..B1.99                 # Infreq Latency 3

### #ifndef MUTE
###   cout<<"track size = "<<sizeof(TrackV)<<endl;
###   cout<<"char size = "<<sizeof(char)<<endl;
### #endif
### 
###   // RRMOD
###   delete[] vStations;

        movq      vStations(%rip), %rdi                         #491.12 c1
        testq     %rdi, %rdi                                    #491.12 c3
        je        ..B1.102      # Prob 33%                      #491.12 c3
..___tag_value_main.351:                                        #
                                # LOE rdi
..B1.101:                       # Preds ..B1.100                # Infreq Latency 1
        call      _ZdaPv                                        #491.3 c1
..___tag_value_main.352:                                        #
                                # LOE
..B1.102:                       # Preds ..B1.100 ..B1.101       # Infreq Latency 8

### 
### //   seconds = time (NULL);
### //   cout << "End NowIs(h:m:s) " << seconds/3600 << ":"  << (seconds/60)%60 << ":" << seconds%60 << endl;
###   return 0;

        xorl      %eax, %eax                                    #495.10 c1
        addq      $1368, %rsp                                   #495.10 c1
..___tag_value_main.353:                                        #
        popq      %rbx                                          #495.10
..___tag_value_main.355:                                        #495.10
        popq      %r15                                          #495.10
..___tag_value_main.356:                                        #495.10
        popq      %r14                                          #495.10
..___tag_value_main.357:                                        #495.10
        popq      %r13                                          #495.10
..___tag_value_main.358:                                        #495.10
        popq      %r12                                          #495.10
        movq      %rbp, %rsp                                    #495.10 c8
        popq      %rbp                                          #495.10
..___tag_value_main.359:                                        #
        ret                                                     #495.10
..___tag_value_main.361:                                        #
                                # LOE
..___tag_value_main.3:
..B1.103:                       # Preds ..B1.98 ..B1.33         # Infreq Latency 1
        movq      %rax, (%rsp)                                  #484.3 c1
..___tag_value_main.369:                                        #
                                # LOE
..B1.104:                       # Preds ..B1.107 ..B1.103       # Infreq Latency 3
        lea       40(%rsp), %rdi                                #484.3 c1
..___tag_value_main.370:                                        #484.3
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev #484.3
..___tag_value_main.372:                                        #
                                # LOE
..B1.105:                       # Preds ..B1.158 ..B1.157 ..B1.104 # Infreq Latency 3
        movq      (%rsp), %rdi                                  #484.3 c1
        xorl      %eax, %eax                                    #484.3 c1
..___tag_value_main.374:                                        #484.3
        call      _Unwind_Resume                                #484.3
..___tag_value_main.376:                                        #
                                # LOE
..___tag_value_main.4:
..B1.106:                       # Preds ..B1.129 ..B1.127 ..B1.126 ..B1.124 ..B1.123
                                #       ..B1.121 ..B1.120 ..B1.118 ..B1.117 ..B1.116
                                #       ..B1.115 ..B1.113 ..B1.112 ..B1.110 ..B1.109
                                #       ..B1.90 ..B1.89 ..B1.87 ..B1.86 ..B1.85
                                #       ..B1.84 ..B1.83 ..B1.82 ..B1.81 ..B1.80
                                #       ..B1.79 ..B1.78 ..B1.77 ..B1.76 ..B1.75
                                #       ..B1.74 ..B1.73 ..B1.72 ..B1.71 ..B1.70
                                #       ..B1.69 ..B1.97 ..B1.96 ..B1.93 ..B1.92
                                #       ..B1.43 ..B1.39 ..B1.38 ..B1.34 # Infreq Latency 1
        movq      %rax, (%rsp)                                  #484.3 c1
..___tag_value_main.378:                                        #
                                # LOE
..B1.107:                       # Preds ..B1.170 ..B1.164 ..B1.161 ..B1.106 # Infreq Latency 3
        lea       568(%rsp), %rdi                               #484.3 c1
..___tag_value_main.379:                                        #484.3
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev #484.3
..___tag_value_main.381:                                        #
        jmp       ..B1.104      # Prob 100%                     #484.3 c3
..___tag_value_main.382:                                        #
                                # LOE
..B1.109:                       # Preds ..B1.91                 # Infreq Latency 3
        lea       56(%rsp), %rdi                                #484.3 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #484.3 c1
..___tag_value_main.383:                                        #484.3
        call      _ZNSolsEPFRSoS_E                              #484.3
..___tag_value_main.385:                                        #
                                # LOE rax rbx r12 r13
..B1.110:                       # Preds ..B1.109                # Infreq Latency 3
        movq      %rax, %rdi                                    #484.3 c1
        movl      $.L_2__STRING.12, %esi                        #484.3 c1
..___tag_value_main.387:                                        #484.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #484.3
..___tag_value_main.389:                                        #
                                # LOE rbx r12 r13
..B1.111:                       # Preds ..B1.110                # Infreq Latency 1
        movq      %r13, %r14                                    #484.3 c1
..___tag_value_main.391:                                        #
                                # LOE rbx r12 r13 r14
..B1.112:                       # Preds ..B1.114 ..B1.111       # Infreq Latency 3
        lea       56(%rsp), %rdi                                #484.3 c1
        movl      $.L_2__STRING.13, %esi                        #484.3 c1
..___tag_value_main.392:                                        #484.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #484.3
..___tag_value_main.394:                                        #
                                # LOE rax rbx r12 r13 r14
..B1.113:                       # Preds ..B1.112                # Infreq Latency 5
        vloadq    1152(%rsp,%r14,8){1to8}, %v0                  #484.3 c1
        movq      %rax, %rdi                                    #484.3 c3
..___tag_value_main.396:                                        #484.3
        call      _ZNSolsEd                                     #484.3
..___tag_value_main.398:                                        #
                                # LOE rbx r12 r13 r14
..B1.114:                       # Preds ..B1.113                # Infreq Latency 3
        incq      %r14                                          #484.3 c1
        cmpq      $15, %r14                                     #484.3 c3
        jl        ..B1.112      # Prob 93%                      #484.3 c3
..___tag_value_main.400:                                        #
                                # LOE rbx r12 r13 r14
..B1.115:                       # Preds ..B1.114                # Infreq Latency 3
        lea       56(%rsp), %rdi                                #484.3 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #484.3 c1
..___tag_value_main.401:                                        #484.3
        call      _ZNSolsEPFRSoS_E                              #484.3
..___tag_value_main.403:                                        #
                                # LOE rbx r12 r13
..B1.116:                       # Preds ..B1.115                # Infreq Latency 252
        vloadd    20+vMCTracks(%r12){1to16}, %v6                #484.3 c1
        vloadd    16+vMCTracks(%r12){1to16}, %v5                #484.3 c3
        vloadd    12+vMCTracks(%r12){1to16}, %v1                #484.3 c5
        vloadd    .L_2il0floatpacket.273(%rip){4to16}, %v14     #484.3 c7
        vloadq    .L_2il0floatpacket.270(%rip){4to8}, %v18      #484.3 c9
        vloadq    .L_2il0floatpacket.272(%rip){4to8}, %v24      #484.3 c11
        vloadq    .L_2il0floatpacket.271(%rip){4to8}, %v26      #484.3 c13
        vloadq    .L_2il0floatpacket.275(%rip){4to8}, %v31      #484.3 c15
        movl      vMCTracks(%r12), %eax                         #484.3 c17
        movl      8+vMCTracks(%r12), %ecx                       #484.3 c17
        movl      %eax, 1104(%rsp)                              #484.3 c19
        movl      $1, %eax                                      #484.3 c19
        vkmov     %eax, %k5                                     #484.3 c21
        movl      4+vMCTracks(%r12), %edx                       #484.3 c21
        vrcpresps %v6, %v2{%k5}                                 #484.3 c23
        lea       584(%rsp), %rdi                               #484.3 c23
        vrcpresps %v6, %v7{%k5}                                 #484.3 c25
        movl      1096(%rsp), %esi                              #484.3 c25
        vrcprefineps %v6, %v2, %v4{%k5}                         #484.3 c27
        movl      %edx, 1108(%rsp)                              #484.3 c27
        vrcprefineps %v6, %v7, %v9{%k5}                         #484.3 c29
        movl      %ecx, 1124(%rsp)                              #484.3 c29
        vmsubr23c1ps %v6, %v4, %v2{%k5}                         #484.3 c31
        vmsubr23c1ps %v6, %v9, %v7{%k5}                         #484.3 c33
        vmadd231ps %v2, %v4, %v4{%k5}                           #484.3 c35
        vmadd231ps %v7, %v9, %v9{%k5}                           #484.3 c37
        vmsubr23c1ps %v6, %v4, %v2{%k5}                         #484.3 c39
        vmsubr23c1ps %v6, %v9, %v7{%k5}                         #484.3 c41
        vmadd231ps %v2, %v4, %v4{%k5}                           #484.3 c43
        vmadd231ps %v7, %v9, %v9{%k5}                           #484.3 c45
        vfixupps  $100418, %v6, %v4{%k5}                        #484.3 c47
        vfixupps  $100418, %v6, %v9{%k5}                        #484.3 c49
        vmulps    %v5, %v5, %v10{%k5}                           #484.3 c51
        vorpi     %v1, %v1, %v2{%k5}                            #484.3 c53
        vmulps    %v4, %v1, %v3{%k5}                            #484.3 c55
        vorpi     %v5, %v5, %v7{%k5}                            #484.3 c57
        vmulps    %v9, %v5, %v8{%k5}                            #484.3 c59
        vmadd213ps %v10, %v1, %v1{%k5}                          #484.3 c61
        vmsubr231ps %v3, %v6, %v2{%k5}                          #484.3 c63
        vmsubr231ps %v8, %v6, %v7{%k5}                          #484.3 c65
        vmadd213ps %v1, %v6, %v6{%k5}                           #484.3 c67
        vmadd132ps %v2, %v3, %v4{%k5}                           #484.3 c69
        vxorpi    %v2, %v2, %v2                                 #484.3 c71
        vfixupps  $132737, %v3, %v4{%k5}                        #484.3 c73
        vcvtps2pd $0, %v6, %v11{%k5}                            #484.3 c75
        vorpi     %v2, %v2, %v29                                #484.3 c77
        vorpq     %v11, %v11, %v29{%k5}                         #484.3 c79
        vstored   %v4{a}, 1112(%rsp)                            #484.3 c81
        vaddpi    %v14{aaaa}, %v29, %v13                        #484.3 c83
        vandpq    %v18{aaaa}, %v29, %v12                        #484.3 c85
        vsrlpi    %v14{bbbb}, %v13, %v15                        #484.3 c87
        vorpq     %v18{bbbb}, %v12, %v19                        #484.3 c89
        vorpi     %v15, %v15, %v16                              #484.3 c91
        vandpq    %v18{cccc}, %v15, %v22                        #484.3 c93
        vcmppd    {eq}, %v18{cccc}, %v29, %k1                   #484.3 c95
        vcmppd    {eq}, %v18{dddd}, %v29, %k0                   #484.3 c97
        vloadq    .L_2il0floatpacket.274(%rip){4to8}, %v12      #484.3 c99
        vcvtpd2ps $0, {rz}, %v19, %v16                          #484.3 c101
        vcvtps2pd $0, 24+vMCTracks(%r12){1to16}, %v0{%k5}       #484.3 c103
        vmadd132ps %v7, %v8, %v9{%k5}                           #484.3 c105
        movb      %al, %al                                      #484.3 c105
        vkxor     %k0, %k1                                      #484.3 c107
        vfixupps  $132737, %v8, %v9{%k5}                        #484.3 c109
        vrsqrtlutps %v16, %v17                                  #484.3 c111
        nop                                                     #484.3 c113
        vstored   %v9{a}, 1116(%rsp)                            #484.3 c116 stall 1
        vcvtps2pd $0, %v17, %v20                                #484.3 c118
        nop                                                     #484.3 c120
        nop                                                     #484.3 c122
        vmulpd    %v20, %v19, %v21                              #484.3 c125 stall 1
        nop                                                     #484.3 c127
        vmsubr23c1pd %v20, %v21, %v25                           #484.3 c129
        vmulpd    %v22, %v21, %v30                              #484.3 c131
        vmulpd    %v24{bbbb}, %v25, %v23                        #484.3 c133
        vmulpd    %v25, %v30, %v27                              #484.3 c135
        vaddpd    %v24{aaaa}, %v23, %v28                        #484.3 c137
        nop                                                     #484.3 c139
        vmadd213pd %v26{dddd}, %v25, %v28                       #484.3 c141
        nop                                                     #484.3 c143
        vmadd213pd %v26{cccc}, %v25, %v28                       #484.3 c145
        nop                                                     #484.3 c147
        vmadd213pd %v26{bbbb}, %v25, %v28                       #484.3 c149
        nop                                                     #484.3 c151
        vmadd213pd %v26{aaaa}, %v25, %v28                       #484.3 c153
        nop                                                     #484.3 c155
        vmadd231pd %v28, %v27, %v30                             #484.3 c157
        vorpq     %v29, %v29, %v30{%k1}                         #484.3 c159
        nop                                                     #484.3 c161
        vorpq     %v30, %v30, %v1{%k5}                          #484.3 c163
        nop                                                     #484.3 c165
        vandpq    %v12{aaaa}, %v1, %v5{%k5}                     #484.3 c167
        vandpq    %v12{cccc}, %v1, %v11{%k5}                    #484.3 c169
        vorpq     %v12{bbbb}, %v5, %v5{%k5}                     #484.3 c171
        vsubrpi   %v31, %v11, %v4                               #484.3 c173
        vcmppd    {eq}, %v12{cccc}, %v11, %k4{%k5}              #484.3 c176 stall 1
        vcmppd    {eq}, %v2, %v11, %k2{%k5}                     #484.3 c178
        vcmppd    {unord}, %v2, %v1, %k3{%k4}                   #484.3 c180
        vcvtpd2ps $0, {rz}, %v5, %v3{%k5}                       #484.3 c182
        nop                                                     #484.3 c184
        nop                                                     #484.3 c186
        vorpq     %v12{cccc}, %v2, %v4{%k2}                     #484.3 c188
        vorpq     %v1, %v1, %v4{%k3}                            #484.3 c190
        vkxor     %k3, %k4                                      #484.3 c190
        vrcprefineps %v3, %v2, %v3{%k5}                         #484.3 c192
        vorpq     %v2, %v2, %v4{%k4}                            #484.3 c194
        nop                                                     #484.3 c196
        vcvtps2pd $0, %v3, %v3{%k5}                             #484.3 c199 stall 1
        nop                                                     #484.3 c201
        nop                                                     #484.3 c203
        vmsubr23c1pd %v5, %v3, %v5{%k5}                         #484.3 c206 stall 1
        nop                                                     #484.3 c208
        vmadd231pd %v5, %v3, %v3{%k5}                           #484.3 c210
        vmulpd    %v5, %v5, %v5{%k5}                            #484.3 c212
        nop                                                     #484.3 c214
        vmadd231pd %v5, %v3, %v3{%k5}                           #484.3 c216
        vmulpd    %v5, %v5, %v5{%k5}                            #484.3 c218
        nop                                                     #484.3 c220
        vmadd231pd %v5, %v3, %v3{%k5}                           #484.3 c222
        nop                                                     #484.3 c224
        vmulpd    %v4, %v3, %v5{%k5}                            #484.3 c226
        nop                                                     #484.3 c228
        vmulpd    %v5, %v0, %v0{%k5}                            #484.3 c230
        nop                                                     #484.3 c232
        nop                                                     #484.3 c234
        nop                                                     #484.3 c236
        nop                                                     #484.3 c238
        vcvtpd2ps $0, {rn}, %v0, %v6{%k5}                       #484.3 c240
        nop                                                     #484.3 c242
        nop                                                     #484.3 c244
        nop                                                     #484.3 c246
        nop                                                     #484.3 c248
        vstored   %v6{a}, 1120(%rsp)                            #484.3 c250
..___tag_value_main.405:                                        #484.3
        call      _ZNSolsEi                                     #484.3
..___tag_value_main.407:                                        #
                                # LOE rax rbx r12 r13
..B1.117:                       # Preds ..B1.116                # Infreq Latency 3
        movq      %rax, %rdi                                    #484.3 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #484.3 c1
..___tag_value_main.409:                                        #484.3
        call      _ZNSolsEPFRSoS_E                              #484.3
..___tag_value_main.411:                                        #
                                # LOE rbx r12 r13
..B1.118:                       # Preds ..B1.117                # Infreq Latency 3
        lea       584(%rsp), %rdi                               #484.3 c1
        movl      $.L_2__STRING.12, %esi                        #484.3 c1
..___tag_value_main.413:                                        #484.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #484.3
..___tag_value_main.415:                                        #
                                # LOE rbx r12 r13
..B1.119:                       # Preds ..B1.118                # Infreq Latency 1
        movq      %r13, %r14                                    #484.3 c1
..___tag_value_main.417:                                        #
                                # LOE rbx r12 r13 r14
..B1.120:                       # Preds ..B1.122 ..B1.119       # Infreq Latency 3
        lea       584(%rsp), %rdi                               #484.3 c1
        movl      $.L_2__STRING.13, %esi                        #484.3 c1
..___tag_value_main.418:                                        #484.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #484.3
..___tag_value_main.420:                                        #
                                # LOE rax rbx r12 r13 r14
..B1.121:                       # Preds ..B1.120                # Infreq Latency 9
        vloadd    832+vTracks(%rbx,%r14,4){1to16}, %v1          #484.3 c1
        movl      $1, %edx                                      #484.3 c3
        movq      %rax, %rdi                                    #484.3 c3
        vkmov     %edx, %k1                                     #484.3 c5
        vsubps    1104(%rsp,%r14,4){1to16}, %v1, %v0{%k1}       #484.3 c7
..___tag_value_main.422:                                        #484.3
        call      _ZNSolsEf                                     #484.3
..___tag_value_main.424:                                        #
                                # LOE rbx r12 r13 r14
..B1.122:                       # Preds ..B1.121                # Infreq Latency 3
        incq      %r14                                          #484.3 c1
        cmpq      $6, %r14                                      #484.3 c3
        jl        ..B1.120      # Prob 83%                      #484.3 c3
..___tag_value_main.426:                                        #
                                # LOE rbx r12 r13 r14
..B1.123:                       # Preds ..B1.122                # Infreq Latency 3
        lea       584(%rsp), %rdi                               #484.3 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #484.3 c1
..___tag_value_main.427:                                        #484.3
        call      _ZNSolsEPFRSoS_E                              #484.3
..___tag_value_main.429:                                        #
                                # LOE rax rbx r12 r13
..B1.124:                       # Preds ..B1.123                # Infreq Latency 3
        movq      %rax, %rdi                                    #484.3 c1
        movl      $.L_2__STRING.12, %esi                        #484.3 c1
..___tag_value_main.431:                                        #484.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #484.3
..___tag_value_main.433:                                        #
                                # LOE rbx r12 r13
..B1.125:                       # Preds ..B1.124                # Infreq Latency 1
        movq      %r13, %r14                                    #484.3 c1
..___tag_value_main.435:                                        #
                                # LOE rbx r12 r13 r14
..B1.126:                       # Preds ..B1.128 ..B1.125       # Infreq Latency 3
        lea       584(%rsp), %rdi                               #484.3 c1
        movl      $.L_2__STRING.13, %esi                        #484.3 c1
..___tag_value_main.436:                                        #484.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #484.3
..___tag_value_main.438:                                        #
                                # LOE rax rbx r12 r13 r14
..B1.127:                       # Preds ..B1.126                # Infreq Latency 5
        vloadq    1152(%rsp,%r14,8){1to8}, %v0                  #484.3 c1
        movq      %rax, %rdi                                    #484.3 c3
..___tag_value_main.440:                                        #484.3
        call      _ZNSolsEd                                     #484.3
..___tag_value_main.442:                                        #
                                # LOE rbx r12 r13 r14
..B1.128:                       # Preds ..B1.127                # Infreq Latency 3
        incq      %r14                                          #484.3 c1
        cmpq      $15, %r14                                     #484.3 c3
        jl        ..B1.126      # Prob 93%                      #484.3 c3
..___tag_value_main.444:                                        #
                                # LOE rbx r12 r13 r14
..B1.129:                       # Preds ..B1.128                # Infreq Latency 3
        lea       584(%rsp), %rdi                               #484.3 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #484.3 c1
..___tag_value_main.445:                                        #484.3
        call      _ZNSolsEPFRSoS_E                              #484.3
..___tag_value_main.447:                                        #
                                # LOE rbx r12 r13
..B1.130:                       # Preds ..B1.129                # Infreq Latency 6
        movl      1096(%rsp), %eax                              #484.3 c1
        incl      %eax                                          #484.3 c3
        movl      %eax, 1096(%rsp)                              #484.3 c5
        jmp       ..B1.94       # Prob 100%                     #484.3 c5
..___tag_value_main.449:                                        #
                                # LOE rbx r12 r13
..B1.132:                       # Preds ..B1.52 ..B1.50         # Infreq Latency 6
        addq      %r9, %r14                                     #484.3 c1
        lea       856+vTracks(%rbx,%r14,4), %rsi                #484.3 c4 stall 1
        testq     $63, %rsi                                     #484.3 c6
        jne       ..B1.138      # Prob 40%                      #484.3 c6
..___tag_value_main.450:                                        #
                                # LOE rdx rbx rdi r9 r12 r13 eax ecx r8d r11d
..B1.134:                       # Preds ..B1.132 ..B1.136       # Infreq Latency 34
        vxorpi    %v2, %v2, %v2                                 #484.3 c1
        movl      %ecx, %r10d                                   #484.3 c1
        shlq      $32, %r10                                     #484.3 c3
        lea       257(%rcx), %esi                               #484.3 c3
        sarq      $32, %r10                                     #484.3 c5
        cmpl      %esi, %eax                                    #484.3 c7
        vstored   %v2, (%rdi,%r10,8)                            #484.3 c9
        vstored   %v2, 64(%rdi,%r10,8)                          #484.3 c11
        vcvtps2pd $0, (%rdx,%r10,4), %v0                        #484.3 c13
        vcvtps2pd $1, (%rdx,%r10,4), %v1                        #484.3 c15
        movb      %al, %al                                      #484.3 c15
        vstored   %v2, 128(%rdi,%r10,8)                         #484.3 c17
        vstored   %v2, 192(%rdi,%r10,8)                         #484.3 c19
        vstored   %v0, (%rdi,%r10,8)                            #484.3 c21
        vstored   %v1, 64(%rdi,%r10,8)                          #484.3 c23
        vcvtps2pd $0, 64(%rdx,%r10,4), %v3                      #484.3 c25
        vcvtps2pd $1, 64(%rdx,%r10,4), %v4                      #484.3 c27
        nop                                                     #484.3 c29
        vstored   %v3, 128(%rdi,%r10,8)                         #484.3 c32 stall 1
        vstored   %v4, 192(%rdi,%r10,8)                         #484.3 c34
        jl        ..B1.136      # Prob 18%                      #484.3 c34
..___tag_value_main.451:                                        #
                                # LOE rdx rbx rdi r9 r10 r12 r13 eax ecx r8d r11d
..B1.135:                       # Preds ..B1.134                # Infreq Latency 23
        vprefetch2 $0, 2048(%rdi,%r10,8)                        #484.3 c1
        movb      %al, %al                                      #484.3 c1
        vprefetch1 $0, 1024(%rdi,%r10,8)                        #484.3 c3
        movb      %al, %al                                      #484.3 c3
        vprefetch2 $0, 2112(%rdi,%r10,8)                        #484.3 c5
        movb      %al, %al                                      #484.3 c5
        vprefetch1 $0, 1088(%rdi,%r10,8)                        #484.3 c7
        movb      %al, %al                                      #484.3 c7
        vprefetch2 $0, 1024(%rdx,%r10,4)                        #484.3 c9
        movb      %al, %al                                      #484.3 c9
        vprefetch1 $0, 512(%rdx,%r10,4)                         #484.3 c11
        movb      %al, %al                                      #484.3 c11
        vprefetch2 $0, 2176(%rdi,%r10,8)                        #484.3 c13
        movb      %al, %al                                      #484.3 c13
        vprefetch1 $0, 1152(%rdi,%r10,8)                        #484.3 c15
        movb      %al, %al                                      #484.3 c15
        vprefetch2 $0, 2240(%rdi,%r10,8)                        #484.3 c17
        movb      %al, %al                                      #484.3 c17
        vprefetch1 $0, 1216(%rdi,%r10,8)                        #484.3 c19
        movb      %al, %al                                      #484.3 c19
        vprefetch2 $0, 1088(%rdx,%r10,4)                        #484.3 c21
        movb      %al, %al                                      #484.3 c21
        vprefetch1 $0, 576(%rdx,%r10,4)                         #484.3 c23
..___tag_value_main.452:                                        #
                                # LOE rdx rbx rdi r9 r12 r13 eax ecx r8d r11d
..B1.136:                       # Preds ..B1.134 ..B1.135       # Infreq Latency 4
        addl      $32, %ecx                                     #484.3 c1
        cmpl      %eax, %ecx                                    #484.3 c3
        jb        ..B1.134      # Prob 82%                      #484.3 c3
        jmp       ..B1.141      # Prob 100%                     #484.3 c3
..___tag_value_main.453:                                        #
                                # LOE rdx rbx rdi r9 r12 r13 eax ecx r8d r11d
..B1.138:                       # Preds ..B1.132 ..B1.140       # Infreq Latency 46
        vxorpi    %v3, %v3, %v3                                 #484.3 c1
        movl      %ecx, %r14d                                   #484.3 c1
        shlq      $32, %r14                                     #484.3 c3
        lea       257(%rcx), %esi                               #484.3 c3
        sarq      $32, %r14                                     #484.3 c5
        vstored   %v3, (%rdi,%r14,8)                            #484.3 c8 stall 1
        vstored   %v3, 64(%rdi,%r14,8)                          #484.3 c10
        lea       (%rdx,%r14,4), %r10                           #484.3 c12
        testq     $3, %r10                                      #484.3
        je        ..L455        # Prob 50%                      #484.3
        movq      (%rdx,%r14,4), %r10                           #484.3
        movq      %r10, 1280(%rsp)                              #484.3
        movq      8(%rdx,%r14,4), %r10                          #484.3
        movq      %r10, 1288(%rsp)                              #484.3
        movq      16(%rdx,%r14,4), %r10                         #484.3
        movq      %r10, 1296(%rsp)                              #484.3
        movq      24(%rdx,%r14,4), %r10                         #484.3
        movq      %r10, 1304(%rsp)                              #484.3
        movq      32(%rdx,%r14,4), %r10                         #484.3
        movq      %r10, 1312(%rsp)                              #484.3
        movq      40(%rdx,%r14,4), %r10                         #484.3
        movq      %r10, 1320(%rsp)                              #484.3
        movq      48(%rdx,%r14,4), %r10                         #484.3
        movq      %r10, 1328(%rsp)                              #484.3
        movq      56(%rdx,%r14,4), %r10                         #484.3
        movq      %r10, 1336(%rsp)                              #484.3
        vloadd    1280(%rsp), %v0                               #484.3
        jmp       ..L454        # Prob 100%                     #484.3
..L455:                                                         #
        vloadunpackld (%rdx,%r14,4), %v0                        #484.3
        testq     $63, %r10                                     #484.3
        je        ..L454        # Prob 50%                      #484.3
        vloadunpackhd 64(%rdx,%r14,4), %v0                      #484.3
..L454:                                                         #
        movb      %al, %al                                      #484.3 c12
        vstored   %v3, 128(%rdi,%r14,8)                         #484.3 c14
        vstored   %v3, 192(%rdi,%r14,8)                         #484.3 c16
        vcvtps2pd $0, %v0, %v1                                  #484.3 c19 stall 1
        vcvtps2pd $1, %v0, %v2                                  #484.3 c21
        nop                                                     #484.3 c23
        vstored   %v1, (%rdi,%r14,8)                            #484.3 c26 stall 1
        vstored   %v2, 64(%rdi,%r14,8)                          #484.3 c28
        lea       64(%rdx,%r14,4), %r10                         #484.3 c30
        testq     $3, %r10                                      #484.3
        je        ..L457        # Prob 50%                      #484.3
        movq      64(%rdx,%r14,4), %r10                         #484.3
        movq      %r10, 1280(%rsp)                              #484.3
        movq      72(%rdx,%r14,4), %r10                         #484.3
        movq      %r10, 1288(%rsp)                              #484.3
        movq      80(%rdx,%r14,4), %r10                         #484.3
        movq      %r10, 1296(%rsp)                              #484.3
        movq      88(%rdx,%r14,4), %r10                         #484.3
        movq      %r10, 1304(%rsp)                              #484.3
        movq      96(%rdx,%r14,4), %r10                         #484.3
        movq      %r10, 1312(%rsp)                              #484.3
        movq      104(%rdx,%r14,4), %r10                        #484.3
        movq      %r10, 1320(%rsp)                              #484.3
        movq      112(%rdx,%r14,4), %r10                        #484.3
        movq      %r10, 1328(%rsp)                              #484.3
        movq      120(%rdx,%r14,4), %r10                        #484.3
        movq      %r10, 1336(%rsp)                              #484.3
        vloadd    1280(%rsp), %v4                               #484.3
        jmp       ..L456        # Prob 100%                     #484.3
..L457:                                                         #
        vloadunpackld 64(%rdx,%r14,4), %v4                      #484.3
        testq     $63, %r10                                     #484.3
        je        ..L456        # Prob 50%                      #484.3
        vloadunpackhd 128(%rdx,%r14,4), %v4                     #484.3
..L456:                                                         #
        cmpl      %esi, %eax                                    #484.3 c32
        nop                                                     #484.3 c34
        vcvtps2pd $0, %v4, %v5                                  #484.3 c37 stall 1
        vcvtps2pd $1, %v4, %v6                                  #484.3 c39
        nop                                                     #484.3 c41
        vstored   %v5, 128(%rdi,%r14,8)                         #484.3 c44 stall 1
        vstored   %v6, 192(%rdi,%r14,8)                         #484.3 c46
        jl        ..B1.140      # Prob 18%                      #484.3 c46
..___tag_value_main.458:                                        #
                                # LOE rdx rbx rdi r9 r12 r13 r14 eax ecx r8d r11d
..B1.139:                       # Preds ..B1.138                # Infreq Latency 23
        vprefetch2 $0, 2048(%rdi,%r14,8)                        #484.3 c1
        movb      %al, %al                                      #484.3 c1
        vprefetch1 $0, 1024(%rdi,%r14,8)                        #484.3 c3
        movb      %al, %al                                      #484.3 c3
        vprefetch2 $0, 2112(%rdi,%r14,8)                        #484.3 c5
        movb      %al, %al                                      #484.3 c5
        vprefetch1 $0, 1088(%rdi,%r14,8)                        #484.3 c7
        movb      %al, %al                                      #484.3 c7
        vprefetch2 $0, 1024(%rdx,%r14,4)                        #484.3 c9
        movb      %al, %al                                      #484.3 c9
        vprefetch1 $0, 512(%rdx,%r14,4)                         #484.3 c11
        movb      %al, %al                                      #484.3 c11
        vprefetch2 $0, 2176(%rdi,%r14,8)                        #484.3 c13
        movb      %al, %al                                      #484.3 c13
        vprefetch1 $0, 1152(%rdi,%r14,8)                        #484.3 c15
        movb      %al, %al                                      #484.3 c15
        vprefetch2 $0, 2240(%rdi,%r14,8)                        #484.3 c17
        movb      %al, %al                                      #484.3 c17
        vprefetch1 $0, 1216(%rdi,%r14,8)                        #484.3 c19
        movb      %al, %al                                      #484.3 c19
        vprefetch2 $0, 1088(%rdx,%r14,4)                        #484.3 c21
        movb      %al, %al                                      #484.3 c21
        vprefetch1 $0, 576(%rdx,%r14,4)                         #484.3 c23
..___tag_value_main.459:                                        #
                                # LOE rdx rbx rdi r9 r12 r13 eax ecx r8d r11d
..B1.140:                       # Preds ..B1.138 ..B1.139       # Infreq Latency 3
        addl      $32, %ecx                                     #484.3 c1
        cmpl      %eax, %ecx                                    #484.3 c3
        jb        ..B1.138      # Prob 82%                      #484.3 c3
..___tag_value_main.460:                                        #
                                # LOE rdx rbx rdi r9 r12 r13 eax ecx r8d r11d
..B1.141:                       # Preds ..B1.136 ..B1.140       # Infreq Latency 1
        addl      %ecx, %r11d                                   #484.3 c1
..___tag_value_main.461:                                        #
                                # LOE rbx r9 r12 r13 eax r8d r11d
..B1.142:                       # Preds ..B1.141 ..B1.149       # Infreq Latency 3
        lea       1(%rax), %edx                                 #484.3 c1
        cmpl      %edx, %r8d                                    #484.3 c3
        jb        ..B1.53       # Prob 50%                      #484.3 c3
..___tag_value_main.462:                                        #
                                # LOE rbx r9 r12 r13 eax edx r8d r11d
..B1.143:                       # Preds ..B1.142                # Infreq Latency 23
        movl      %edx, (%rsp)                                  #484.3 c1
        movl      $65280, %edx                                  #484.3 c1
        vloadd    (%rsp){1to16}, %v0                            #484.3 c3
        vkmov     %edx, %k1                                     #484.3 c3
        movl      %eax, %edx                                    #484.3 c5
        movl      %r8d, %r10d                                   #484.3 c5
        shlq      $32, %rdx                                     #484.3 c7
        movl      %r8d, (%rsp)                                  #484.3 c7
        shlq      $32, %r10                                     #484.3 c9
        movq      %r13, %r14                                    #484.3 c9
        sarq      $32, %rdx                                     #484.3 c11
        sarq      $32, %r10                                     #484.3 c13
        vaddpi    .L_2il0floatpacket.267(%rip), %v0, %v4        #484.3 c15
        subq      %rdx, %r10                                    #484.3 c17
        addq      %r9, %rdx                                     #484.3 c17
        vxorpi    %v4, %v4, %v4{%k1}                            #484.3 c19
        vloadd    (%rsp){1to16}, %v3                            #484.3 c21
        lea       1152(%rsp,%rdx,8), %rdi                       # c21
        lea       856+vTracks(%rbx,%rdx,4), %rsi                #484.3 c23
..___tag_value_main.463:                                        #
                                # LOE rbx rsi rdi r9 r10 r12 r13 r14 eax r8d v3 v4
..B1.144:                       # Preds ..B1.146 ..B1.143       # Infreq Latency 16
        vcmppi    {nle}, %v3, %v4, %k0                          #484.3 c1
        nop                                                     #484.3 c3
        nop                                                     #484.3 c5
        vkmov     %k0, %edx                                     #484.3 c8 stall 1
        xorl      $-1, %edx                                     #484.3 c10
        andl      $255, %edx                                    #484.3 c12
        vkmov     %edx, %k2                                     #484.3 c14
        vkortest  %k2, %k2                                      #484.3 c16
        je        ..B1.146      # Prob 20%                      #484.3 c16
..___tag_value_main.464:                                        #
                                # LOE rbx rsi rdi r9 r10 r12 r13 r14 eax edx r8d v3 v4 k2
..B1.145:                       # Preds ..B1.144                # Infreq Latency 30
        vloadd    .L_2il0floatpacket.268(%rip), %v1             #484.3 c1
        vxorpi    %v0, %v0, %v0                                 #484.3 c3
        bitinterleave11 %edx, %edx                              #484.3 c3
        lea       (%rdi,%r14,8), %rcx                           #484.3 c5
        vkmov     %edx, %k3                                     #484.3 c5
        vkmov     %k3, %k1                                      #484.3 c7
..L465:                                                         #484.3
        vscatterd %v0, (%rcx,%v1,4){%k1}                        #484.3 c10 stall 1
        vkortest  %k1, %k1                                      #484.3 c12
        jne       ..L465        # Prob 50%                      #484.3 c12
        nop                                                     #484.3 c12
..L466:                                                         #484.3
        vgatherd  (%rsi,%v1,4), %v0{%k2}                        #484.3 c16
        vkortest  %k2, %k2                                      #484.3 c18
        jne       ..L466        # Prob 50%                      #484.3 c18
        nop                                                     #484.3 c18
        vcvtps2pd $0, %v0, %v2                                  #484.3 c23 stall 1
        nop                                                     #484.3 c25
        nop                                                     #484.3 c27
..L467:                                                         #484.3
        vscatterd %v2, (%rcx,%v1,4){%k3}                        #484.3 c30 stall 1
        vkortest  %k3, %k3                                      #484.3 c32
        jne       ..L467        # Prob 50%                      #484.3 c32
..___tag_value_main.468:                                        #
                                # LOE rbx rsi rdi r9 r10 r12 r13 r14 eax r8d v3 v4
..B1.146:                       # Preds ..B1.145 ..B1.144       # Infreq Latency 5
        addq      $8, %r14                                      #484.3 c1
        addq      $32, %rsi                                     #484.3 c1
        vaddpi    .L_2il0floatpacket.266(%rip){1to16}, %v4, %v4 #484.3 c3
        cmpq      %r10, %r14                                    #484.3 c5
        jb        ..B1.144      # Prob 82%                      #484.3 c5
..___tag_value_main.469:                                        #
                                # LOE rbx rsi rdi r9 r10 r12 r13 r14 eax r8d v3 v4
..B1.147:                       # Preds ..B1.146                # Infreq Latency 9
        movl      %r9d, %r11d                                   #484.3 c1
        addl      %eax, %r11d                                   #484.3 c3
        negl      %eax                                          #484.3 c5
        addl      %r8d, %eax                                    #484.3 c7
        addl      %r14d, %r11d                                  #484.3 c7
        andl      $-2147483641, %eax                            #484.3 c9
        jge       ..B1.219      # Prob 50%                      #484.3 c9
..___tag_value_main.470:                                        #
                                # LOE rbx r12 r13 eax r8d r11d
..B1.220:                       # Preds ..B1.147                # Infreq Latency 5
        subl      $1, %eax                                      #484.3 c1
        orl       $-8, %eax                                     #484.3 c3
        incl      %eax                                          #484.3 c5
..___tag_value_main.471:                                        #
                                # LOE rbx r12 r13 eax r8d r11d
..B1.219:                       # Preds ..B1.147 ..B1.220       # Infreq Latency 5
        negl      %eax                                          #484.3 c1
        addl      $8, %eax                                      #484.3 c3
        andl      $-2147483641, %eax                            #484.3 c5
        jge       ..B1.221      # Prob 50%                      #484.3 c5
..___tag_value_main.472:                                        #
                                # LOE rbx r12 r13 eax r8d r11d
..B1.222:                       # Preds ..B1.219                # Infreq Latency 5
        subl      $1, %eax                                      #484.3 c1
        orl       $-8, %eax                                     #484.3 c3
        incl      %eax                                          #484.3 c5
..___tag_value_main.473:                                        #
                                # LOE rbx r12 r13 eax r8d r11d
..B1.221:                       # Preds ..B1.219 ..B1.222       # Infreq Latency 2
        subl      %eax, %r11d                                   #484.3 c1
        jmp       ..B1.53       # Prob 100%                     #484.3 c1
..___tag_value_main.474:                                        #
                                # LOE rbx r12 r13 r8d r11d
..B1.149:                       # Preds ..B1.48 ..B1.49         # Infreq Latency 2
        xorl      %eax, %eax                                    #484.3 c1
        jmp       ..B1.142      # Prob 100%                     #484.3 c1
..___tag_value_main.475:                                        #
                                # LOE rbx r9 r12 r13 eax r8d r11d
..___tag_value_main.2:
..B1.151:                       # Preds ..B1.15 ..B1.14 ..B1.18 ..B1.10 # Infreq Latency 1
        movq      %rax, (%rsp)                                  #467.13 c1
..___tag_value_main.476:                                        #
                                # LOE
..B1.152:                       # Preds ..B1.151                # Infreq Latency 3
        lea       24(%rsp), %rdi                                #467.13 c1
..___tag_value_main.477:                                        #467.13
        call      _ZNSsD1Ev                                     #467.13
..___tag_value_main.479:                                        #
                                # LOE
..B1.154:                       # Preds ..B1.152 ..B1.172       # Infreq Latency 3
        lea       33(%rsp), %rdi                                #467.13 c1
        call      _ZNSaIcED1Ev                                  #467.13 c3
..___tag_value_main.481:                                        #
                                # LOE
..B1.155:                       # Preds ..B1.154                # Infreq Latency 3
        movl      16(%rsp), %eax                                #467.3 c1
        testl     %eax, %eax                                    #467.3 c3
        je        ..B1.157      # Prob 78%                      #467.3 c3
..___tag_value_main.482:                                        #
                                # LOE
..B1.156:                       # Preds ..B1.155                # Infreq Latency 3
        lea       8(%rsp), %rdi                                 #467.3 c1
..___tag_value_main.483:                                        #467.3
        call      _ZNSsD1Ev                                     #467.3
..___tag_value_main.485:                                        #
                                # LOE
..B1.157:                       # Preds ..B1.155 ..B1.156       # Infreq Latency 3
        movl      20(%rsp), %eax                                #467.3 c1
        testl     %eax, %eax                                    #467.3 c3
        je        ..B1.105      # Prob 78%                      #467.3 c3
..___tag_value_main.487:                                        #
                                # LOE
..B1.158:                       # Preds ..B1.157                # Infreq Latency 3
        lea       32(%rsp), %rdi                                #467.3 c1
        call      _ZNSaIcED1Ev                                  #467.3 c3
        jmp       ..B1.105      # Prob 100%                     #467.3 c3
..___tag_value_main.488:                                        #
                                # LOE
..___tag_value_main.8:
..___tag_value_main.6:
..B1.160:                       # Preds ..B1.36 ..B1.37 ..B1.42 ..B1.41 # Infreq Latency 1
        movq      %rax, (%rsp)                                  #484.3 c1
..___tag_value_main.489:                                        #
                                # LOE
..B1.161:                       # Preds ..B1.160                # Infreq Latency 3
        lea       16(%rsp), %rdi                                #484.3 c1
..___tag_value_main.490:                                        #484.3
        call      _ZNSsD1Ev                                     #484.3
..___tag_value_main.492:                                        #
        jmp       ..B1.107      # Prob 100%                     #484.3 c3
..___tag_value_main.493:                                        #
                                # LOE
..___tag_value_main.7:
..B1.163:                       # Preds ..B1.40                 # Infreq Latency 1
        movq      %rax, (%rsp)                                  #484.3 c1
..___tag_value_main.494:                                        #
                                # LOE
..B1.164:                       # Preds ..B1.163                # Infreq Latency 3
        lea       16(%rsp), %rdi                                #484.3 c1
..___tag_value_main.495:                                        #484.3
        call      _ZNSsD1Ev                                     #484.3
..___tag_value_main.497:                                        #
        jmp       ..B1.107      # Prob 100%                     #484.3 c3
..___tag_value_main.498:                                        #
                                # LOE
..___tag_value_main.5:
..B1.169:                       # Preds ..B1.35                 # Infreq Latency 1
        movq      %rax, (%rsp)                                  #484.3 c1
..___tag_value_main.499:                                        #
                                # LOE
..B1.170:                       # Preds ..B1.169                # Infreq Latency 3
        lea       16(%rsp), %rdi                                #484.3 c1
..___tag_value_main.500:                                        #484.3
        call      _ZNSsD1Ev                                     #484.3
..___tag_value_main.502:                                        #
        jmp       ..B1.107      # Prob 100%                     #484.3 c3
..___tag_value_main.503:                                        #
                                # LOE
..___tag_value_main.1:
..B1.172:                       # Preds ..B1.21 ..B1.9          # Infreq Latency 2
        movq      %rax, (%rsp)                                  #467.13 c1
        jmp       ..B1.154      # Prob 100%                     #467.13 c1
        .align    16,0x90
..___tag_value_main.504:                                        #
                                # LOE
# mark_end;
	.type	main,@function
	.size	main,.-main
	.section .gcc_except_table, "a"
	.align 4
main$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value_main.508 - ..___tag_value_main.507
..___tag_value_main.507:
	.byte	1
	.uleb128	..___tag_value_main.506 - ..___tag_value_main.505
..___tag_value_main.505:
	.uleb128	..___tag_value_main.20 - ..___tag_value_main.10
	.uleb128	..___tag_value_main.26 - ..___tag_value_main.20
	.byte	0
	.byte	0
	.uleb128	..___tag_value_main.64 - ..___tag_value_main.10
	.uleb128	..___tag_value_main.66 - ..___tag_value_main.64
	.uleb128	..___tag_value_main.1 - ..___tag_value_main.10
	.byte	0
	.uleb128	..___tag_value_main.68 - ..___tag_value_main.10
	.uleb128	..___tag_value_main.87 - ..___tag_value_main.68
	.uleb128	..___tag_value_main.2 - ..___tag_value_main.10
	.byte	0
	.uleb128	..___tag_value_main.91 - ..___tag_value_main.10
	.uleb128	..___tag_value_main.93 - ..___tag_value_main.91
	.uleb128	..___tag_value_main.1 - ..___tag_value_main.10
	.byte	0
	.uleb128	..___tag_value_main.98 - ..___tag_value_main.10
	.uleb128	..___tag_value_main.134 - ..___tag_value_main.98
	.byte	0
	.byte	0
	.uleb128	..___tag_value_main.136 - ..___tag_value_main.10
	.uleb128	..___tag_value_main.138 - ..___tag_value_main.136
	.uleb128	..___tag_value_main.3 - ..___tag_value_main.10
	.byte	0
	.uleb128	..___tag_value_main.140 - ..___tag_value_main.10
	.uleb128	..___tag_value_main.142 - ..___tag_value_main.140
	.uleb128	..___tag_value_main.4 - ..___tag_value_main.10
	.byte	0
	.uleb128	..___tag_value_main.144 - ..___tag_value_main.10
	.uleb128	..___tag_value_main.146 - ..___tag_value_main.144
	.uleb128	..___tag_value_main.5 - ..___tag_value_main.10
	.byte	0
	.uleb128	..___tag_value_main.148 - ..___tag_value_main.10
	.uleb128	..___tag_value_main.154 - ..___tag_value_main.148
	.uleb128	..___tag_value_main.6 - ..___tag_value_main.10
	.byte	0
	.uleb128	..___tag_value_main.156 - ..___tag_value_main.10
	.uleb128	..___tag_value_main.162 - ..___tag_value_main.156
	.uleb128	..___tag_value_main.4 - ..___tag_value_main.10
	.byte	0
	.uleb128	..___tag_value_main.164 - ..___tag_value_main.10
	.uleb128	..___tag_value_main.166 - ..___tag_value_main.164
	.uleb128	..___tag_value_main.7 - ..___tag_value_main.10
	.byte	0
	.uleb128	..___tag_value_main.168 - ..___tag_value_main.10
	.uleb128	..___tag_value_main.174 - ..___tag_value_main.168
	.uleb128	..___tag_value_main.8 - ..___tag_value_main.10
	.byte	0
	.uleb128	..___tag_value_main.176 - ..___tag_value_main.10
	.uleb128	..___tag_value_main.341 - ..___tag_value_main.176
	.uleb128	..___tag_value_main.4 - ..___tag_value_main.10
	.byte	0
	.uleb128	..___tag_value_main.343 - ..___tag_value_main.10
	.uleb128	..___tag_value_main.345 - ..___tag_value_main.343
	.uleb128	..___tag_value_main.3 - ..___tag_value_main.10
	.byte	0
	.uleb128	..___tag_value_main.347 - ..___tag_value_main.10
	.uleb128	..___tag_value_main.349 - ..___tag_value_main.347
	.byte	0
	.byte	0
	.uleb128	..___tag_value_main.374 - ..___tag_value_main.10
	.uleb128	..___tag_value_main.376 - ..___tag_value_main.374
	.byte	0
	.byte	0
	.uleb128	..___tag_value_main.383 - ..___tag_value_main.10
	.uleb128	..___tag_value_main.447 - ..___tag_value_main.383
	.uleb128	..___tag_value_main.4 - ..___tag_value_main.10
	.byte	0
..___tag_value_main.506:
	.byte	1
	.byte	0
	.long	0x00000000,0x00000000
..___tag_value_main.508:
	.data
# -- End  main
	.text
# -- Begin  _Z9ReadInputv
# mark_begin;
# Threads 2
..___tag_value__Z9ReadInputv.515:                               #
        .align    16,0x90
	.globl _Z9ReadInputv
_Z9ReadInputv:
..B2.1:                         # Preds ..B2.0 Latency 10

### void ReadInput(){

..___tag_value__Z9ReadInputv.516:                               #72.17
        pushq     %rbp                                          #72.17
..___tag_value__Z9ReadInputv.518:                               #
        movq      %rsp, %rbp                                    #72.17
..___tag_value__Z9ReadInputv.519:                               #
        andq      $-64, %rsp                                    #72.17
        pushq     %r12                                          #72.17 c1
..___tag_value__Z9ReadInputv.521:                               #
        pushq     %r13                                          #72.17 c2
..___tag_value__Z9ReadInputv.522:                               #
        pushq     %r14                                          #72.17 c3
..___tag_value__Z9ReadInputv.523:                               #
        pushq     %r15                                          #72.17 c4
..___tag_value__Z9ReadInputv.524:                               #
        pushq     %rbx                                          #72.17 c5
..___tag_value__Z9ReadInputv.525:                               #
        subq      $1944, %rsp                                   #72.17 c6

### 
###   fstream FileGeo, FileTracks;

        lea       832(%rsp), %rdi                               #74.11 c8
..___tag_value__Z9ReadInputv.526:                               #74.11
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEEC1Ev #74.11
..___tag_value__Z9ReadInputv.528:                               #
                                # LOE
..B2.2:                         # Preds ..B2.1 Latency 3
        lea       1360(%rsp), %rdi                              #74.20 c1
..___tag_value__Z9ReadInputv.530:                               #74.20
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEEC1Ev #74.20
..___tag_value__Z9ReadInputv.532:                               #
                                # LOE
..B2.3:                         # Preds ..B2.2 Latency 3

### 
###   FileGeo.open( (dataDir+"geo.dat").c_str(), ios::in );

        lea       8(%rsp), %rdi                                 #76.25 c1
        movl      $dataDir, %esi                                #76.25 c1
..___tag_value__Z9ReadInputv.534:                               #76.25
        call      _ZNSsC1ERKSs                                  #76.25
..___tag_value__Z9ReadInputv.536:                               #
                                # LOE
..B2.4:                         # Preds ..B2.3 Latency 3
        lea       8(%rsp), %rdi                                 #76.25 c1
        movl      $.L_2__STRING.7, %esi                         #76.25 c1
..___tag_value__Z9ReadInputv.538:                               #76.25
        call      _ZNSs6appendEPKc                              #76.25
..___tag_value__Z9ReadInputv.540:                               #
                                # LOE
..B2.5:                         # Preds ..B2.4 Latency 3
        lea       8(%rsp), %rdi                                 #76.37 c1
..___tag_value__Z9ReadInputv.542:                               #76.37
        call      _ZNKSs5c_strEv                                #76.37
..___tag_value__Z9ReadInputv.544:                               #
                                # LOE rax
..B2.6:                         # Preds ..B2.5 Latency 5
        lea       832(%rsp), %rdi                               #76.11 c1
        movq      %rax, %rsi                                    #76.11 c1
        movl      $8, %edx                                      #76.11 c3
..___tag_value__Z9ReadInputv.546:                               #76.11
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode #76.11
..___tag_value__Z9ReadInputv.548:                               #
                                # LOE
..B2.7:                         # Preds ..B2.6 Latency 3
        lea       8(%rsp), %rdi                                 #76.11 c1
..___tag_value__Z9ReadInputv.550:                               #76.11
        call      _ZNSsD1Ev                                     #76.11
..___tag_value__Z9ReadInputv.552:                               #
                                # LOE
..B2.8:                         # Preds ..B2.7 Latency 3

###   FileTracks.open( (dataDir+"tracks.dat").c_str(), ios::in );

        lea       8(%rsp), %rdi                                 #77.28 c1
        movl      $dataDir, %esi                                #77.28 c1
..___tag_value__Z9ReadInputv.554:                               #77.28
        call      _ZNSsC1ERKSs                                  #77.28
..___tag_value__Z9ReadInputv.556:                               #
                                # LOE
..B2.9:                         # Preds ..B2.8 Latency 3
        lea       8(%rsp), %rdi                                 #77.28 c1
        movl      $.L_2__STRING.8, %esi                         #77.28 c1
..___tag_value__Z9ReadInputv.558:                               #77.28
        call      _ZNSs6appendEPKc                              #77.28
..___tag_value__Z9ReadInputv.560:                               #
                                # LOE
..B2.10:                        # Preds ..B2.9 Latency 3
        lea       8(%rsp), %rdi                                 #77.43 c1
..___tag_value__Z9ReadInputv.562:                               #77.43
        call      _ZNKSs5c_strEv                                #77.43
..___tag_value__Z9ReadInputv.564:                               #
                                # LOE rax
..B2.11:                        # Preds ..B2.10 Latency 5
        lea       1360(%rsp), %rdi                              #77.14 c1
        movq      %rax, %rsi                                    #77.14 c1
        movl      $8, %edx                                      #77.14 c3
..___tag_value__Z9ReadInputv.566:                               #77.14
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode #77.14
..___tag_value__Z9ReadInputv.568:                               #
                                # LOE
..B2.12:                        # Preds ..B2.11 Latency 3
        lea       8(%rsp), %rdi                                 #77.14 c1
..___tag_value__Z9ReadInputv.570:                               #77.14
        call      _ZNSsD1Ev                                     #77.14
..___tag_value__Z9ReadInputv.572:                               #
                                # LOE
..B2.13:                        # Preds ..B2.12 Latency 3

###   {
###     FieldVector H[3];
###     Fvec_t Hz[3];
###     for( int i=0; i<3; i++){

        xorl      %r13d, %r13d                                  #81.15 c1
        xorl      %r12d, %r12d                                  # c1
        xorl      %ebx, %ebx                                    # c3
..___tag_value__Z9ReadInputv.574:                               #
                                # LOE rbx r12 r13
..B2.14:                        # Preds ..B2.18 ..B2.13 Latency 3

###       float Bx, By, Bz, z;
###       FileGeo >> z >> Bx >> By >> Bz;

        lea       832(%rsp), %rdi                               #83.15 c1
        lea       36(%rsp), %rsi                                #83.15 c1
..___tag_value__Z9ReadInputv.575:                               #83.15
        call      _ZNSirsERf                                    #83.15
..___tag_value__Z9ReadInputv.577:                               #
                                # LOE rax rbx r12 r13
..B2.15:                        # Preds ..B2.14 Latency 3
        movq      %rax, %rdi                                    #83.20 c1
        lea       40(%rsp), %rsi                                #83.20 c1
..___tag_value__Z9ReadInputv.579:                               #83.20
        call      _ZNSirsERf                                    #83.20
..___tag_value__Z9ReadInputv.581:                               #
                                # LOE rax rbx r12 r13
..B2.16:                        # Preds ..B2.15 Latency 3
        movq      %rax, %rdi                                    #83.26 c1
        lea       44(%rsp), %rsi                                #83.26 c1
..___tag_value__Z9ReadInputv.583:                               #83.26
        call      _ZNSirsERf                                    #83.26
..___tag_value__Z9ReadInputv.585:                               #
                                # LOE rax rbx r12 r13
..B2.17:                        # Preds ..B2.16 Latency 3
        movq      %rax, %rdi                                    #83.32 c1
        lea       48(%rsp), %rsi                                #83.32 c1
..___tag_value__Z9ReadInputv.587:                               #83.32
        call      _ZNSirsERf                                    #83.32
..___tag_value__Z9ReadInputv.589:                               #
                                # LOE rbx r12 r13
..B2.18:                        # Preds ..B2.17 Latency 17

###       Hz[i] = z; H[i].X = Bx;   H[i].Y = By; H[i].Z = Bz; 

        vloadd    36(%rsp){1to16}, %v0                          #84.15 c1
        incq      %r13                                          #81.24 c1
        vloadd    40(%rsp){1to16}, %v1                          #84.27 c3
        vloadd    44(%rsp){1to16}, %v2                          #84.42 c5
        vloadd    48(%rsp){1to16}, %v3                          #84.55 c7
        movb      %al, %al                                      #84.7 c7
        vstored   %v0, 640(%rsp,%r12)                           #84.7 c9
        addq      $64, %r12                                     #81.24 c9
        vstored   %v1, 64(%rsp,%rbx)                            #84.18 c11
        vstored   %v2, 128(%rsp,%rbx)                           #84.33 c13
        vstored   %v3, 192(%rsp,%rbx)                           #84.46 c15
        addq      $192, %rbx                                    #81.24 c15
        cmpq      $3, %r13                                      #81.21 c17
        jl        ..B2.14       # Prob 66%                      #81.21 c17
..___tag_value__Z9ReadInputv.591:                               #
                                # LOE rbx r12 r13
..B2.19:                        # Preds ..B2.18 Latency 11

### #ifndef MUTE
###       cout<<"Input Magnetic field:"<<z<<" "<<Bx<<" "<<By<<" "<<Bz<<endl;
### #endif
###     }
###     field0.Set(H[0],Hz[0], H[1],Hz[1], H[2],Hz[2] );

        addq      $-16, %rsp                                    #89.12 c1
..___tag_value__Z9ReadInputv.592:                               #
        movl      $field0, %edi                                 #89.12 c1
        lea       784(%rsp), %rax                               #89.12 c3
        lea       80(%rsp), %rsi                                #89.12 c3
        lea       656(%rsp), %rdx                               #89.12 c5
        lea       272(%rsp), %rcx                               #89.12 c5
        lea       720(%rsp), %r8                                #89.12 c7
        lea       464(%rsp), %r9                                #89.12 c7
        movq      %rax, (%rsp)                                  #89.12 c9
..___tag_value__Z9ReadInputv.593:                               #89.12
        call      _ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_ #89.12
..___tag_value__Z9ReadInputv.595:                               #
                                # LOE
..B2.135:                       # Preds ..B2.19 Latency 1
        addq      $16, %rsp                                     #89.12 c1
..___tag_value__Z9ReadInputv.597:                               #
                                # LOE
..B2.20:                        # Preds ..B2.135 Latency 3

###   }
###   FileGeo >> NStations;

        lea       832(%rsp), %rdi                               #91.11 c1
        movl      $NStations, %esi                              #91.11 c1
..___tag_value__Z9ReadInputv.599:                               #91.11
        call      _ZNSirsERi                                    #91.11
..___tag_value__Z9ReadInputv.601:                               #
                                # LOE
..B2.21:                        # Preds ..B2.20 Latency 3

### #ifndef MUTE
###   cout<<"Input "<<NStations<<" Stations:"<<endl;
### #endif
###   for( int i=0; i<NStations; i++ ){

        movl      NStations(%rip), %r9d                         #95.19 c1
        xorl      %r13d, %r13d                                  #95.13 c1
        testl     %r9d, %r9d                                    #95.19 c3
        jle       ..B2.46       # Prob 10%                      #95.19 c3
..___tag_value__Z9ReadInputv.603:                               #
                                # LOE r9d r13d
..B2.22:                        # Preds ..B2.21 Latency 1

###     int ist;    
###     FileGeo >> ist;
###     if( ist!=i ) break;
###     Station &st = vStations[i];
###     FileGeo >> st.z >> st.thick>> st.RL;
### #ifndef MUTE
### #ifdef X87
###     cout<<"    "<<st.z <<" "<<st.thick<<" "<<st.RL<<", ";
### #else
###     cout<<"    "<<st.z[0] <<" "<<st.thick[0]<<" "<<st.RL[0]<<", ";
### #endif
### #endif
###     st.zhit = st.z - st.thick/2.;

        movl      $1073741824, %r12d                            #108.31 c1
..___tag_value__Z9ReadInputv.604:                               #
                                # LOE r12d r13d
..B2.23:                        # Preds ..B2.44 ..B2.22 Latency 3
        lea       832(%rsp), %rdi                               #97.13 c1
        lea       32(%rsp), %rsi                                #97.13 c1
..___tag_value__Z9ReadInputv.605:                               #97.13
        call      _ZNSirsERi                                    #97.13
..___tag_value__Z9ReadInputv.607:                               #
                                # LOE r12d r13d
..B2.24:                        # Preds ..B2.23 Latency 3
        cmpl      32(%rsp), %r13d                               #98.14 c1
        jne       ..B2.89       # Prob 20%                      #98.14 c3
..___tag_value__Z9ReadInputv.609:                               #
                                # LOE r12d r13d
..B2.25:                        # Preds ..B2.24 Latency 25
        movl      %r13d, %ebx                                   #99.19 c1
        lea       832(%rsp), %rdi                               #100.13 c1
        shlq      $32, %rbx                                     #99.19 c3
        lea       20(%rsp), %rsi                                #100.13 c3
        sarq      $32, %rbx                                     #99.19 c5
        imulq     $2496, %rbx, %rax                             #99.19 c7
        movq      vStations(%rip), %rbx                         #99.19 c21
        addq      %rax, %rbx                                    #99.19 c23
..___tag_value__Z9ReadInputv.610:                               #100.13
        call      _ZNSirsERf                                    #100.13
..___tag_value__Z9ReadInputv.612:                               #
                                # LOE rbx r12d r13d
..B2.26:                        # Preds ..B2.25 Latency 10
        vloadd    20(%rsp){1to16}, %v0                          #100.13 c1
        lea       832(%rsp), %rdi                               #100.21 c1
        lea       24(%rsp), %rsi                                #100.21 c3
        nop                                                     #100.13 c5
        vstored   %v0, (%rbx)                                   #100.13 c8 stall 1
..___tag_value__Z9ReadInputv.614:                               #100.21
        call      _ZNSirsERf                                    #100.21
..___tag_value__Z9ReadInputv.616:                               #
                                # LOE rbx r12d r13d
..B2.27:                        # Preds ..B2.26 Latency 10
        vloadd    24(%rsp){1to16}, %v0                          #100.21 c1
        lea       832(%rsp), %rdi                               #100.32 c1
        lea       28(%rsp), %rsi                                #100.32 c3
        nop                                                     #100.21 c5
        vstored   %v0, 64(%rbx)                                 #100.21 c8 stall 1
..___tag_value__Z9ReadInputv.618:                               #100.32
        call      _ZNSirsERf                                    #100.32
..___tag_value__Z9ReadInputv.620:                               #
                                # LOE rbx r12d r13d
..B2.28:                        # Preds ..B2.27 Latency 69
        vloadd    28(%rsp){1to16}, %v1                          #100.32 c1
        nop                                                     #100.32 c3
        nop                                                     #100.32 c5
        vstored   %v1, 192(%rbx)                                #100.32 c8 stall 1
        movb      %al, %al                                      #108.31 c8
        movl      %r12d, (%rsp)                                 #108.31 c10
        vloadd    (%rsp){1to16}, %v5                            #108.31 c12

###     st.RadThick = st.thick/st.RL;

        vrcpresps 192(%rbx), %v9                                #109.28 c14
        vrcpresps %v5, %v2                                      #108.31 c16
        vrcprefineps 192(%rbx), %v9, %v0                        #109.28 c18
        vrcprefineps %v5, %v2, %v7                              #108.31 c20
        vmsubr23c1ps 192(%rbx), %v0, %v10                       #109.28 c22
        vmsubr23c1ps (%rsp){1to16}, %v7, %v3                    #108.31 c24
        vmadd231ps %v10, %v0, %v0                               #109.28 c26
        vmadd231ps %v3, %v7, %v7                                #108.31 c28
        vmsubr23c1ps 192(%rbx), %v0, %v11                       #109.28 c30
        vmsubr23c1ps (%rsp){1to16}, %v7, %v4                    #108.31 c32
        vmadd231ps %v11, %v0, %v0                               #109.28 c34
        vmadd231ps %v4, %v7, %v7                                #108.31 c36
        vfixupps  $100418, 192(%rbx), %v0                       #109.28 c38
        vfixupps  $100418, (%rsp){1to16}, %v7                   #108.31 c40
        vloadd    64(%rbx), %v12                                #108.31 c42
        vmulps    64(%rbx), %v7, %v6                            #108.31 c44
        vmulps    64(%rbx), %v0, %v13                           #109.28 c46
        vmsubr213ps 64(%rbx), %v6, %v5                          #108.31 c48
        vmsubr231ps 192(%rbx), %v13, %v12                       #109.28 c50
        vmadd132ps %v5, %v6, %v7                                #108.31 c52
        vmadd132ps %v12, %v13, %v0                              #109.28 c54
        vfixupps  $132737, %v6, %v7                             #108.31 c56
        vfixupps  $132737, %v13, %v0                            #109.28 c58
        vsubrps   (%rbx), %v7, %v8                              #108.31 c60
        nop                                                     #109.5 c62
        vstored   %v0, 256(%rbx)                                #109.5 c65 stall 1
        vstored   %v8, 128(%rbx)                                #108.5 c67

###     st.logRadThick = log(st.RadThick);

        call      __svml_logf16                                 #110.26 c69
..___tag_value__Z9ReadInputv.622:                               #
                                # LOE rbx r12d r13d v0
..B2.136:                       # Preds ..B2.28 Latency 7

###     int N=0;
###     FileGeo >> N;

        lea       832(%rsp), %rdi                               #112.13 c1
        vstored   %v0, 320(%rbx)                                #110.5 c1
        lea       52(%rsp), %rsi                                #112.13 c3
        movl      $0, 52(%rsp)                                  #111.10 c5
..___tag_value__Z9ReadInputv.623:                               #112.13
        call      _ZNSirsERi                                    #112.13
..___tag_value__Z9ReadInputv.625:                               #
                                # LOE rbx r12d r13d
..B2.29:                        # Preds ..B2.136 Latency 5

### #ifndef MUTE
###     cout<<N<<" field coeff."<<endl;
### #endif
###     for( int i=0; i<N; i++ ) FileGeo >> st.Map.X[i];

        movl      52(%rsp), %eax                                #116.21 c1
        xorl      %r15d, %r15d                                  #116.15 c1
        xorl      %r14d, %r14d                                  # c3
        testl     %eax, %eax                                    #116.21 c3
        jle       ..B2.34       # Prob 10%                      #116.21 c5
..___tag_value__Z9ReadInputv.627:                               #
                                # LOE rbx r14 r15 eax r12d r13d
..B2.31:                        # Preds ..B2.29 ..B2.32 Latency 3
        lea       832(%rsp), %rdi                               #116.38 c1
        lea       56(%rsp), %rsi                                #116.38 c1
..___tag_value__Z9ReadInputv.628:                               #116.38
        call      _ZNSirsERf                                    #116.38
..___tag_value__Z9ReadInputv.630:                               #
                                # LOE rbx r14 r15 r12d r13d
..B2.32:                        # Preds ..B2.31 Latency 18
        vloadd    56(%rsp){1to16}, %v0                          #116.38 c1
        incq      %r15                                          #116.24 c1
        nop                                                     #116.38 c3
        nop                                                     #116.38 c5
        vstored   %v0, 576(%r14,%rbx)                           #116.38 c8 stall 1
        addq      $64, %r14                                     #116.24 c8
        movl      52(%rsp), %eax                                #116.21 c10
        movl      %eax, %edx                                    #116.5 c12
        shlq      $32, %rdx                                     #116.5 c14
        sarq      $32, %rdx                                     #116.5 c16
        cmpq      %rdx, %r15                                    #116.21 c18
        jl        ..B2.31       # Prob 82%                      #116.21 c18
..___tag_value__Z9ReadInputv.632:                               #
                                # LOE rbx r14 r15 eax r12d r13d
..B2.34:                        # Preds ..B2.32 ..B2.29         # Infreq Latency 3

###     for( int i=0; i<N; i++ ) FileGeo >> st.Map.Y[i];

        xorl      %r15d, %r15d                                  #117.15 c1
        xorl      %r14d, %r14d                                  # c1
        testl     %eax, %eax                                    #117.21 c3
        jle       ..B2.39       # Prob 10%                      #117.21 c3
..___tag_value__Z9ReadInputv.633:                               #
                                # LOE rbx r14 r15 eax r12d r13d
..B2.36:                        # Preds ..B2.34 ..B2.37         # Infreq Latency 3
        lea       832(%rsp), %rdi                               #117.38 c1
        lea       60(%rsp), %rsi                                #117.38 c1
..___tag_value__Z9ReadInputv.634:                               #117.38
        call      _ZNSirsERf                                    #117.38
..___tag_value__Z9ReadInputv.636:                               #
                                # LOE rbx r14 r15 r12d r13d
..B2.37:                        # Preds ..B2.36                 # Infreq Latency 18
        vloadd    60(%rsp){1to16}, %v0                          #117.38 c1
        incq      %r15                                          #117.24 c1
        nop                                                     #117.38 c3
        nop                                                     #117.38 c5
        vstored   %v0, 1216(%r14,%rbx)                          #117.38 c8 stall 1
        addq      $64, %r14                                     #117.24 c8
        movl      52(%rsp), %eax                                #117.21 c10
        movl      %eax, %edx                                    #117.5 c12
        shlq      $32, %rdx                                     #117.5 c14
        sarq      $32, %rdx                                     #117.5 c16
        cmpq      %rdx, %r15                                    #117.21 c18
        jl        ..B2.36       # Prob 82%                      #117.21 c18
..___tag_value__Z9ReadInputv.638:                               #
                                # LOE rbx r14 r15 eax r12d r13d
..B2.39:                        # Preds ..B2.37 ..B2.34         # Infreq Latency 3

###     for( int i=0; i<N; i++ ) FileGeo >> st.Map.Z[i];

        xorl      %r14d, %r14d                                  #118.15 c1
        xorl      %r15d, %r15d                                  # c1
        testl     %eax, %eax                                    #118.21 c3
        jle       ..B2.44       # Prob 10%                      #118.21 c3
..___tag_value__Z9ReadInputv.639:                               #
                                # LOE rbx r14 r15 r12d r13d
..B2.41:                        # Preds ..B2.39 ..B2.42         # Infreq Latency 3
        lea       832(%rsp), %rdi                               #118.38 c1
        lea       1888(%rsp), %rsi                              #118.38 c1
..___tag_value__Z9ReadInputv.640:                               #118.38
        call      _ZNSirsERf                                    #118.38
..___tag_value__Z9ReadInputv.642:                               #
                                # LOE rbx r14 r15 r12d r13d
..B2.42:                        # Preds ..B2.41                 # Infreq Latency 16
        vloadd    1888(%rsp){1to16}, %v0                        #118.38 c1
        incq      %r14                                          #118.24 c3
        nop                                                     #118.38 c5
        vstored   %v0, 1856(%r15,%rbx)                          #118.38 c8 stall 1
        addq      $64, %r15                                     #118.24 c8
        movl      52(%rsp), %edx                                #118.21 c10
        shlq      $32, %rdx                                     #118.5 c12
        sarq      $32, %rdx                                     #118.5 c14
        cmpq      %rdx, %r14                                    #118.21 c16
        jl        ..B2.41       # Prob 82%                      #118.21 c16
..___tag_value__Z9ReadInputv.644:                               #
                                # LOE rbx r14 r15 r12d r13d
..B2.44:                        # Preds ..B2.42 ..B2.39         # Infreq Latency 5
        incl      %r13d                                         #95.30 c1
        movl      NStations(%rip), %r9d                         #95.19 c1
        cmpl      NStations(%rip), %r13d                        #95.19 c3
        jl        ..B2.23       # Prob 82%                      #95.19 c5
..___tag_value__Z9ReadInputv.645:                               #
                                # LOE r9d r12d r13d
..B2.46:                        # Preds ..B2.44 ..B2.89 ..B2.21 # Infreq Latency 31

###     //for( int i=0; i<10; i++ ){ st.Map.X[i] = st.Map.Y[i] = st.Map.Z[i] = 0.;}
###     //st.Map.X[0]=Bx;
###     //st.Map.Y[0]=By;
###     //st.Map.Z[0]=Bz;
###   }
###   {
###     Fvec_t Hy0 = vStations[NStations-1].Map.Y[0];
###     Fvec_t z0  = vStations[NStations-1].z;

        movl      %r9d, %r11d                                   #126.18 c1
        movq      vStations(%rip), %r8                          #126.18 c1
        shlq      $32, %r11                                     #126.18 c3

###     Fvec_t sy = 0., Sy = 0.;

        xorl      %esi, %esi                                    #127.17 c3
        sarq      $32, %r11                                     #126.18 c5

###     for( int i=NStations-1; i>=0; i-- ){

        movl      %r9d, %r10d                                   #128.15 c5
        imulq     $2496, %r11, %rdi                             #126.18 c7
        vloadd    -2496(%r8,%rdi), %v0                          #126.18 c21
        xorl      %eax, %eax                                    # c21
        movl      %esi, (%rsp)                                  #127.17 c23
        xorl      %edx, %edx                                    # c23
        movl      %esi, 16(%rsp)                                #127.26 c25
        xorl      %ecx, %ecx                                    # c25
        vloadd    (%rsp){1to16}, %v11                           #127.17 c27
        movl      $5, %ebx                                      # c27
        vloadd    16(%rsp){1to16}, %v10                         #127.26 c29
        decl      %r10d                                         #128.15 c29
        js        ..B2.52       # Prob 1%                       #128.32 c31
..___tag_value__Z9ReadInputv.646:                               #
                                # LOE rdx rcx rdi r8 r11 eax ebx esi r9d v0 v10 v11
..B2.47:                        # Preds ..B2.46                 # Infreq Latency 27

###       Station &st = vStations[i];
###       Fvec_t dz = st.z-z0;
###       Fvec_t Hy = vStations[i].Map.Y[0];

        imulq     $2496, %r11, %r13                             #131.19 c1
        imull     $39, %r9d, %r11d                              # c15
        addq      %r8, %rdi                                     #129.21 c25
        addq      %r8, %r13                                     # c25

###       Sy += dz*sy + dz*dz*Hy/2.;

        movl      $1073741824, %r12d                            #132.30 c27
..___tag_value__Z9ReadInputv.647:                               #
                                # LOE rdx rcx rdi r8 r13 eax ebx esi r9d r11d r12d v0 v10 v11
..B2.48:                        # Preds ..B2.50 ..B2.47         # Infreq Latency 66

###       sy += dz*Hy;
###       st.Sy = Sy;

        vsubrps   -2496(%rdx,%rdi), %v0, %v9                    #130.24 c1
        lea       -1280(%rcx,%r13), %r10                        #131.19 c3
        vloadunpackld -1280(%rcx,%r13), %v8                     #131.19
        testq     $63, %r10                                     #131.19
        je        ..L648        # Prob 50%                      #131.19
        vloadunpackhd -1216(%rcx,%r13), %v8                     #131.19
..L648:                                                         #
        vmulps    %v9, %v9, %v0                                 #132.27 c5
        movl      %r12d, (%rsp)                                 #132.30 c5
        vloadd    (%rsp){1to16}, %v2                            #132.30 c7
        lea       (%r11,%rax), %r10d                            #134.15 c7
        vmulps    %v8, %v0, %v5                                 #132.30 c9
        vrcpresps %v2, %v1                                      #132.30 c11
        shlq      $32, %r10                                     #134.15 c13
        vrcprefineps %v2, %v1, %v7                              #132.30 c15
        sarq      $32, %r10                                     #134.15 c17
        vmsubr23c1ps (%rsp){1to16}, %v7, %v3                    #132.30 c19
        shlq      $6, %r10                                      #134.15 c21
        vmadd231ps %v3, %v7, %v7                                #132.30 c23

###       z0 = st.z;

        cmpl      %ebx, %r9d                                    #135.12 c23
        vloadd    -2496(%r8,%r10), %v0                          #135.12 c25
        vmsubr23c1ps (%rsp){1to16}, %v7, %v4                    #132.30 c27
        nop                                                     #132.30 c29
        vmadd231ps %v4, %v7, %v7                                #132.30 c31
        nop                                                     #132.30 c33
        vfixupps  $100418, (%rsp){1to16}, %v7                   #132.30 c35
        nop                                                     #132.30 c37
        vmulps    %v7, %v5, %v6                                 #132.30 c39
        nop                                                     #132.30 c41
        vmsubr231ps (%rsp){1to16}, %v6, %v5                     #132.30 c43
        nop                                                     #132.30 c45
        vmadd132ps %v5, %v6, %v7                                #132.30 c47
        nop                                                     #132.30 c49
        vfixupps  $132737, %v6, %v7                             #132.30 c51
        nop                                                     #132.30 c53
        vmadd231ps %v11, %v9, %v7                               #132.30 c55
        vmadd231ps %v9, %v8, %v11                               #133.10 c57
        vaddps    %v7, %v10, %v10                               #132.10 c59
        nop                                                     #134.15 c61
        nop                                                     #134.15 c63
        vstored   %v10, -1984(%r8,%r10)                         #134.15 c66 stall 1
        jl        ..B2.50       # Prob 18%                      #135.12 c66
..___tag_value__Z9ReadInputv.649:                               #
                                # LOE rdx rcx rdi r8 r10 r13 eax ebx esi r9d r11d r12d v0 v10 v11
..B2.49:                        # Preds ..B2.48                 # Infreq Latency 7
        vprefetch2 $0, -11968(%r10,%r8)                         # c1
        movb      %al, %al                                      # c1
        vprefetch1 $0, -6976(%r10,%r8)                          # c3
        movb      %al, %al                                      # c3
        vprefetch2 $0, -12480(%r10,%r8)                         # c5
        movb      %al, %al                                      # c5
        vprefetch1 $0, -7488(%r10,%r8)                          # c7
..___tag_value__Z9ReadInputv.650:                               #
                                # LOE rdx rcx rdi r8 r13 eax ebx esi r9d r11d r12d v0 v10 v11
..B2.50:                        # Preds ..B2.48 ..B2.49         # Infreq Latency 7
        incl      %esi                                          #128.5 c1
        addl      $-39, %eax                                    #128.5 c1
        addq      $-2496, %rdx                                  #128.5 c3
        addq      $-2496, %rcx                                  #128.5 c3
        incl      %ebx                                          #128.5 c5
        cmpl      %r9d, %esi                                    #128.5 c7
        jb        ..B2.48       # Prob 82%                      #128.5 c7
..___tag_value__Z9ReadInputv.651:                               #
                                # LOE rdx rcx rdi r8 r13 eax ebx esi r9d r11d r12d v0 v10 v11
..B2.52:                        # Preds ..B2.50 ..B2.46         # Infreq Latency 3

###     }
###   }
### 
###   FileGeo.close();

        lea       832(%rsp), %rdi                               #139.11 c1
..___tag_value__Z9ReadInputv.652:                               #139.11
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv #139.11
..___tag_value__Z9ReadInputv.654:                               #
                                # LOE
..B2.53:                        # Preds ..B2.52                 # Infreq Latency 9

### 
###   NTracks = 0;
###   while( !FileTracks.eof() ){

        movq      1360(%rsp), %rax                              #142.22 c1
        lea       1360(%rsp), %rdx                              #142.22 c1
        movl      $0, NTracks(%rip)                             #141.3 c3
        movq      -24(%rax), %rdi                               #142.22 c5
        addq      %rdx, %rdi                                    #142.22 c7
..___tag_value__Z9ReadInputv.656:                               #142.22
        call      _ZNKSt9basic_iosIcSt11char_traitsIcEE3eofEv   #142.22
..___tag_value__Z9ReadInputv.658:                               #
                                # LOE eax
..B2.54:                        # Preds ..B2.53                 # Infreq Latency 1
        testl     $255, %eax                                    #142.22 c1
        jne       ..B2.78       # Prob 10%                      #142.22 c1
..___tag_value__Z9ReadInputv.660:                               #
                                # LOE
..B2.56:                        # Preds ..B2.54 ..B2.76         # Infreq Latency 3

###     
###     int itr;
###     FileTracks>>itr;

        lea       1360(%rsp), %rdi                              #145.15 c1
        lea       16(%rsp), %rsi                                #145.15 c1
..___tag_value__Z9ReadInputv.661:                               #145.15
        call      _ZNSirsERi                                    #145.15
..___tag_value__Z9ReadInputv.663:                               #
                                # LOE
..B2.57:                        # Preds ..B2.56                 # Infreq Latency 5

###     //if( itr!=NTracks ) break;
###     if( NTracks>=MaxNTracks ) break;

        movl      NTracks(%rip), %ebx                           #147.9 c1
        cmpl      $20000, NTracks(%rip)                         #147.18 c3
        jge       ..B2.78       # Prob 1%                       #147.18 c5
..___tag_value__Z9ReadInputv.665:                               #
                                # LOE ebx
..B2.58:                        # Preds ..B2.57                 # Infreq Latency 19

### 
###     Track &t = vTracks[NTracks];

        shlq      $32, %rbx                                     #149.24 c1

###     MCTrack &mc = vMCTracks[NTracks];
###     FileTracks >> mc.MC_x   >> mc.MC_y  >> mc.MC_z 

        lea       1360(%rsp), %rdi                              #151.16 c1
        sarq      $32, %rbx                                     #149.24 c3
        movq      %rbx, %r13                                    #149.24 c5
        shlq      $4, %r13                                      #149.24 c7
        subq      %rbx, %r13                                    #149.24 c9
        shlq      $6, %rbx                                      #150.29 c11
        shlq      $6, %r13                                      #149.24 c13
        lea       vMCTracks(%rbx), %rbx                         #150.29 c15
        movq      %rbx, %rsi                                    #151.16 c17
        lea       vTracks(%r13), %r13                           #149.24 c17
..___tag_value__Z9ReadInputv.666:                               #151.16
        call      _ZNSirsERf                                    #151.16
..___tag_value__Z9ReadInputv.668:                               #
                                # LOE rax rbx r13
..B2.59:                        # Preds ..B2.58                 # Infreq Latency 3
        lea       4(%rbx), %rsi                                 #151.29 c1
        movq      %rax, %rdi                                    #151.29 c1
..___tag_value__Z9ReadInputv.670:                               #151.29
        call      _ZNSirsERf                                    #151.29
..___tag_value__Z9ReadInputv.672:                               #
                                # LOE rax rbx r13
..B2.60:                        # Preds ..B2.59                 # Infreq Latency 3
        lea       8(%rbx), %rsi                                 #151.41 c1
        movq      %rax, %rdi                                    #151.41 c1
..___tag_value__Z9ReadInputv.674:                               #151.41
        call      _ZNSirsERf                                    #151.41
..___tag_value__Z9ReadInputv.676:                               #
                                # LOE rax rbx r13
..B2.61:                        # Preds ..B2.60                 # Infreq Latency 3

###          >> mc.MC_px >> mc.MC_py >> mc.MC_pz >> mc.MC_q

        lea       12(%rbx), %rsi                                #152.10 c1
        movq      %rax, %rdi                                    #152.10 c1
..___tag_value__Z9ReadInputv.678:                               #152.10
        call      _ZNSirsERf                                    #152.10
..___tag_value__Z9ReadInputv.680:                               #
                                # LOE rax rbx r13
..B2.62:                        # Preds ..B2.61                 # Infreq Latency 3
        lea       16(%rbx), %rsi                                #152.22 c1
        movq      %rax, %rdi                                    #152.22 c1
..___tag_value__Z9ReadInputv.682:                               #152.22
        call      _ZNSirsERf                                    #152.22
..___tag_value__Z9ReadInputv.684:                               #
                                # LOE rax rbx r13
..B2.63:                        # Preds ..B2.62                 # Infreq Latency 3
        lea       20(%rbx), %rsi                                #152.34 c1
        movq      %rax, %rdi                                    #152.34 c1
..___tag_value__Z9ReadInputv.686:                               #152.34
        call      _ZNSirsERf                                    #152.34
..___tag_value__Z9ReadInputv.688:                               #
                                # LOE rax rbx r13
..B2.64:                        # Preds ..B2.63                 # Infreq Latency 5
        addq      $24, %rbx                                     #152.46 c1
        movq      %rax, %rdi                                    #152.46 c1
        movq      %rbx, %rsi                                    #152.46 c3
..___tag_value__Z9ReadInputv.690:                               #152.46
        call      _ZNSirsERf                                    #152.46
..___tag_value__Z9ReadInputv.692:                               #
                                # LOE rax r13
..B2.65:                        # Preds ..B2.64                 # Infreq Latency 3

###          >> t.NHits;

        movq      %rax, %rdi                                    #153.10 c1
        movq      %r13, %rsi                                    #153.10 c1
..___tag_value__Z9ReadInputv.694:                               #153.10
        call      _ZNSirsERi                                    #153.10
..___tag_value__Z9ReadInputv.696:                               #
                                # LOE r13
..B2.66:                        # Preds ..B2.65                 # Infreq Latency 5

###     for( int i=0; i<t.NHits; i++ ){

        movl      (%r13), %edx                                  #154.21 c1
        xorl      %r12d, %r12d                                  #154.15 c1
        xorl      %ebx, %ebx                                    # c3
        testl     %edx, %edx                                    #154.21 c3
        jle       ..B2.73       # Prob 10%                      #154.21 c5
..___tag_value__Z9ReadInputv.698:                               #
                                # LOE rbx r12 r13 edx
..B2.68:                        # Preds ..B2.66 ..B2.71         # Infreq Latency 3

###       int ist;
###       FileTracks >> ist;

        lea       1360(%rsp), %rdi                              #156.18 c1
        lea       1892(%rsp), %rsi                              #156.18 c1
..___tag_value__Z9ReadInputv.699:                               #156.18
        call      _ZNSirsERi                                    #156.18
..___tag_value__Z9ReadInputv.701:                               #
                                # LOE rbx r12 r13
..B2.69:                        # Preds ..B2.68                 # Infreq Latency 5

###       t.vHits[i].ista = ist;

        movl      1892(%rsp), %eax                              #157.25 c1

###       FileTracks >> t.vHits[i].x >> t.vHits[i].y;

        lea       64(%r13,%rbx), %rsi                           #158.18 c1
        lea       1360(%rsp), %rdi                              #158.18 c3
        movl      %eax, 72(%rbx,%r13)                           #157.7 c3
..___tag_value__Z9ReadInputv.703:                               #158.18
        call      _ZNSirsERf                                    #158.18
..___tag_value__Z9ReadInputv.705:                               #
                                # LOE rax rbx r12 r13
..B2.70:                        # Preds ..B2.69                 # Infreq Latency 3
        lea       68(%r13,%rbx), %rsi                           #158.34 c1
        movq      %rax, %rdi                                    #158.34 c1
..___tag_value__Z9ReadInputv.707:                               #158.34
        call      _ZNSirsERf                                    #158.34
..___tag_value__Z9ReadInputv.709:                               #
                                # LOE rbx r12 r13
..B2.71:                        # Preds ..B2.70                 # Infreq Latency 9
        movl      (%r13), %edx                                  #154.21 c1
        incq      %r12                                          #154.30 c1
        movl      %edx, %eax                                    #154.5 c3
        addq      $64, %rbx                                     #154.30 c3
        shlq      $32, %rax                                     #154.5 c5
        sarq      $32, %rax                                     #154.5 c7
        cmpq      %rax, %r12                                    #154.21 c9
        jl        ..B2.68       # Prob 82%                      #154.21 c9
..___tag_value__Z9ReadInputv.711:                               #
                                # LOE rbx r12 r13 edx
..B2.73:                        # Preds ..B2.71 ..B2.66         # Infreq Latency 3

###     }
###     if( t.NHits==NStations )   NTracks++;

        cmpl      NStations(%rip), %edx                         #160.18 c1
        jne       ..B2.75       # Prob 50%                      #160.18 c3
..___tag_value__Z9ReadInputv.712:                               #
                                # LOE
..B2.74:                        # Preds ..B2.73                 # Infreq Latency 5
        movl      NTracks(%rip), %eax                           #160.32 c1
        incl      %eax                                          #160.32 c3
        movl      %eax, NTracks(%rip)                           #160.32 c5
..___tag_value__Z9ReadInputv.713:                               #
                                # LOE
..B2.75:                        # Preds ..B2.73 ..B2.74         # Infreq Latency 8
        movq      1360(%rsp), %rax                              #142.22 c1
        lea       1360(%rsp), %rdx                              #142.22 c1
        movq      -24(%rax), %rdi                               #142.22 c4 stall 1
        addq      %rdx, %rdi                                    #142.22 c6
..___tag_value__Z9ReadInputv.714:                               #142.22
        call      _ZNKSt9basic_iosIcSt11char_traitsIcEE3eofEv   #142.22
..___tag_value__Z9ReadInputv.716:                               #
                                # LOE eax
..B2.76:                        # Preds ..B2.75                 # Infreq Latency 1
        testl     $255, %eax                                    #142.22 c1
        je        ..B2.56       # Prob 82%                      #142.22 c1
..___tag_value__Z9ReadInputv.718:                               #
                                # LOE
..B2.78:                        # Preds ..B2.57 ..B2.76 ..B2.54 # Infreq Latency 3

###   }
### // 	cout << NTracks << " tracks have been read" << endl;
###   FileTracks.close();

        lea       1360(%rsp), %rdi                              #163.14 c1
..___tag_value__Z9ReadInputv.719:                               #163.14
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv #163.14
..___tag_value__Z9ReadInputv.721:                               #
                                # LOE
..B2.79:                        # Preds ..B2.78                 # Infreq Latency 18

### 
### #ifdef TBB
###   for ( int i = 0; i < 1000; ++i ) {
###     for ( int j = 0; j < MaxNTracks/1000; ++j ) {
###       vTracks[j*1000+i] = vTracks[i];
###       vMCTracks[j*1000+i] = vMCTracks[i];
###      }
###   
###   }
###   NTracks = MaxNTracks;
### #endif
###   NTracksV = NTracks/vecN;

        movl      NTracks(%rip), %eax                           #175.14 c1

###   NTracks =  NTracksV*vecN;

        lea       1360(%rsp), %rdi                              #176.3 c1
        sarl      $3, %eax                                      #175.22 c3
        shrl      $28, %eax                                     #175.22 c5
        addl      NTracks(%rip), %eax                           #175.22 c7
        sarl      $4, %eax                                      #175.22 c10 stall 1
        movl      %eax, NTracksV(%rip)                          #175.3 c12
        shll      $4, %eax                                      #176.23 c14
        movl      %eax, NTracks(%rip)                           #176.3 c16
..___tag_value__Z9ReadInputv.723:                               #176.3
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev #176.3
..___tag_value__Z9ReadInputv.725:                               #
                                # LOE
..B2.80:                        # Preds ..B2.79                 # Infreq Latency 3
        lea       832(%rsp), %rdi                               #176.3 c1
..___tag_value__Z9ReadInputv.727:                               #176.3
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev #176.3
..___tag_value__Z9ReadInputv.729:                               #
                                # LOE
..B2.81:                        # Preds ..B2.80                 # Infreq Latency 8

### }

        addq      $1944, %rsp                                   #177.1 c1
..___tag_value__Z9ReadInputv.731:                               #
        popq      %rbx                                          #177.1
..___tag_value__Z9ReadInputv.733:                               #177.1
        popq      %r15                                          #177.1
..___tag_value__Z9ReadInputv.734:                               #177.1
        popq      %r14                                          #177.1
..___tag_value__Z9ReadInputv.735:                               #177.1
        popq      %r13                                          #177.1
..___tag_value__Z9ReadInputv.736:                               #177.1
        popq      %r12                                          #177.1
        movq      %rbp, %rsp                                    #177.1 c8
        popq      %rbp                                          #177.1
..___tag_value__Z9ReadInputv.737:                               #
        ret                                                     #177.1
..___tag_value__Z9ReadInputv.739:                               #
                                # LOE
..___tag_value__Z9ReadInputv.509:
..B2.82:                        # Preds ..B2.79 ..B2.2          # Infreq Latency 1
        movq      %rax, (%rsp)                                  #74.11 c1
..___tag_value__Z9ReadInputv.747:                               #
                                # LOE
..B2.83:                        # Preds ..B2.86 ..B2.82         # Infreq Latency 3
        lea       832(%rsp), %rdi                               #74.11 c1
..___tag_value__Z9ReadInputv.748:                               #74.11
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev #74.11
..___tag_value__Z9ReadInputv.750:                               #
                                # LOE
..B2.84:                        # Preds ..B2.83                 # Infreq Latency 3
        movq      (%rsp), %rdi                                  #74.11 c1
        xorl      %eax, %eax                                    #74.11 c1
..___tag_value__Z9ReadInputv.752:                               #74.11
        call      _Unwind_Resume                                #74.11
..___tag_value__Z9ReadInputv.754:                               #
                                # LOE
..___tag_value__Z9ReadInputv.510:
..B2.85:                        # Preds ..B2.41 ..B2.36 ..B2.31 ..B2.136 ..B2.27
                                #       ..B2.26 ..B2.25 ..B2.75 ..B2.70 ..B2.69
                                #       ..B2.68 ..B2.65 ..B2.64 ..B2.63 ..B2.62
                                #       ..B2.61 ..B2.60 ..B2.59 ..B2.58 ..B2.78
                                #       ..B2.56 ..B2.53 ..B2.52 ..B2.23 ..B2.20
                                #       ..B2.17 ..B2.16 ..B2.15 ..B2.14 ..B2.12
                                #       ..B2.8 ..B2.7 ..B2.3    # Infreq Latency 1
        movq      %rax, (%rsp)                                  #74.20 c1
..___tag_value__Z9ReadInputv.756:                               #
                                # LOE
..B2.86:                        # Preds ..B2.100 ..B2.94 ..B2.91 ..B2.85 # Infreq Latency 3
        lea       1360(%rsp), %rdi                              #74.20 c1
..___tag_value__Z9ReadInputv.757:                               #74.20
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev #74.20
..___tag_value__Z9ReadInputv.759:                               #
        jmp       ..B2.83       # Prob 100%                     #74.20 c3
..___tag_value__Z9ReadInputv.760:                               #
                                # LOE
..B2.89:                        # Preds ..B2.24                 # Infreq Latency 2
        movl      NStations(%rip), %r9d                         #126.28 c1
        jmp       ..B2.46       # Prob 100%                     #126.28 c1
..___tag_value__Z9ReadInputv.761:                               #
                                # LOE r9d
..___tag_value__Z9ReadInputv.514:
..___tag_value__Z9ReadInputv.512:
..B2.90:                        # Preds ..B2.5 ..B2.6 ..B2.11 ..B2.10 # Infreq Latency 1
        movq      %rax, (%rsp)                                  #77.28 c1
..___tag_value__Z9ReadInputv.762:                               #
                                # LOE
..B2.91:                        # Preds ..B2.90                 # Infreq Latency 3
        lea       8(%rsp), %rdi                                 #77.28 c1
..___tag_value__Z9ReadInputv.763:                               #77.28
        call      _ZNSsD1Ev                                     #77.28
..___tag_value__Z9ReadInputv.765:                               #
        jmp       ..B2.86       # Prob 100%                     #77.28 c3
..___tag_value__Z9ReadInputv.766:                               #
                                # LOE
..___tag_value__Z9ReadInputv.513:
..B2.93:                        # Preds ..B2.9                  # Infreq Latency 1
        movq      %rax, (%rsp)                                  #77.28 c1
..___tag_value__Z9ReadInputv.767:                               #
                                # LOE
..B2.94:                        # Preds ..B2.93                 # Infreq Latency 3
        lea       8(%rsp), %rdi                                 #77.28 c1
..___tag_value__Z9ReadInputv.768:                               #77.28
        call      _ZNSsD1Ev                                     #77.28
..___tag_value__Z9ReadInputv.770:                               #
        jmp       ..B2.86       # Prob 100%                     #77.28 c3
..___tag_value__Z9ReadInputv.771:                               #
                                # LOE
..___tag_value__Z9ReadInputv.511:
..B2.99:                        # Preds ..B2.4                  # Infreq Latency 1
        movq      %rax, (%rsp)                                  #76.25 c1
..___tag_value__Z9ReadInputv.772:                               #
                                # LOE
..B2.100:                       # Preds ..B2.99                 # Infreq Latency 3
        lea       8(%rsp), %rdi                                 #76.25 c1
..___tag_value__Z9ReadInputv.773:                               #76.25
        call      _ZNSsD1Ev                                     #76.25
..___tag_value__Z9ReadInputv.775:                               #
        jmp       ..B2.86       # Prob 100%                     #76.25 c3
        .align    16,0x90
..___tag_value__Z9ReadInputv.776:                               #
                                # LOE
# mark_end;
	.type	_Z9ReadInputv,@function
	.size	_Z9ReadInputv,.-_Z9ReadInputv
	.section .gcc_except_table, "a"
	.align 4
_Z9ReadInputv$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__Z9ReadInputv.780 - ..___tag_value__Z9ReadInputv.779
..___tag_value__Z9ReadInputv.779:
	.byte	1
	.uleb128	..___tag_value__Z9ReadInputv.778 - ..___tag_value__Z9ReadInputv.777
..___tag_value__Z9ReadInputv.777:
	.uleb128	..___tag_value__Z9ReadInputv.526 - ..___tag_value__Z9ReadInputv.516
	.uleb128	..___tag_value__Z9ReadInputv.528 - ..___tag_value__Z9ReadInputv.526
	.byte	0
	.byte	0
	.uleb128	..___tag_value__Z9ReadInputv.530 - ..___tag_value__Z9ReadInputv.516
	.uleb128	..___tag_value__Z9ReadInputv.532 - ..___tag_value__Z9ReadInputv.530
	.uleb128	..___tag_value__Z9ReadInputv.509 - ..___tag_value__Z9ReadInputv.516
	.byte	0
	.uleb128	..___tag_value__Z9ReadInputv.534 - ..___tag_value__Z9ReadInputv.516
	.uleb128	..___tag_value__Z9ReadInputv.536 - ..___tag_value__Z9ReadInputv.534
	.uleb128	..___tag_value__Z9ReadInputv.510 - ..___tag_value__Z9ReadInputv.516
	.byte	0
	.uleb128	..___tag_value__Z9ReadInputv.538 - ..___tag_value__Z9ReadInputv.516
	.uleb128	..___tag_value__Z9ReadInputv.540 - ..___tag_value__Z9ReadInputv.538
	.uleb128	..___tag_value__Z9ReadInputv.511 - ..___tag_value__Z9ReadInputv.516
	.byte	0
	.uleb128	..___tag_value__Z9ReadInputv.542 - ..___tag_value__Z9ReadInputv.516
	.uleb128	..___tag_value__Z9ReadInputv.548 - ..___tag_value__Z9ReadInputv.542
	.uleb128	..___tag_value__Z9ReadInputv.512 - ..___tag_value__Z9ReadInputv.516
	.byte	0
	.uleb128	..___tag_value__Z9ReadInputv.550 - ..___tag_value__Z9ReadInputv.516
	.uleb128	..___tag_value__Z9ReadInputv.556 - ..___tag_value__Z9ReadInputv.550
	.uleb128	..___tag_value__Z9ReadInputv.510 - ..___tag_value__Z9ReadInputv.516
	.byte	0
	.uleb128	..___tag_value__Z9ReadInputv.558 - ..___tag_value__Z9ReadInputv.516
	.uleb128	..___tag_value__Z9ReadInputv.560 - ..___tag_value__Z9ReadInputv.558
	.uleb128	..___tag_value__Z9ReadInputv.513 - ..___tag_value__Z9ReadInputv.516
	.byte	0
	.uleb128	..___tag_value__Z9ReadInputv.562 - ..___tag_value__Z9ReadInputv.516
	.uleb128	..___tag_value__Z9ReadInputv.568 - ..___tag_value__Z9ReadInputv.562
	.uleb128	..___tag_value__Z9ReadInputv.514 - ..___tag_value__Z9ReadInputv.516
	.byte	0
	.uleb128	..___tag_value__Z9ReadInputv.570 - ..___tag_value__Z9ReadInputv.516
	.uleb128	..___tag_value__Z9ReadInputv.721 - ..___tag_value__Z9ReadInputv.570
	.uleb128	..___tag_value__Z9ReadInputv.510 - ..___tag_value__Z9ReadInputv.516
	.byte	0
	.uleb128	..___tag_value__Z9ReadInputv.723 - ..___tag_value__Z9ReadInputv.516
	.uleb128	..___tag_value__Z9ReadInputv.725 - ..___tag_value__Z9ReadInputv.723
	.uleb128	..___tag_value__Z9ReadInputv.509 - ..___tag_value__Z9ReadInputv.516
	.byte	0
	.uleb128	..___tag_value__Z9ReadInputv.727 - ..___tag_value__Z9ReadInputv.516
	.uleb128	..___tag_value__Z9ReadInputv.729 - ..___tag_value__Z9ReadInputv.727
	.byte	0
	.byte	0
	.uleb128	..___tag_value__Z9ReadInputv.752 - ..___tag_value__Z9ReadInputv.516
	.uleb128	..___tag_value__Z9ReadInputv.754 - ..___tag_value__Z9ReadInputv.752
	.byte	0
	.byte	0
..___tag_value__Z9ReadInputv.778:
	.long	0x00000000,0x00000000
..___tag_value__Z9ReadInputv.780:
	.data
# -- End  _Z9ReadInputv
	.text
# -- Begin  _Z10FitTracksVv
# mark_begin;
# Threads 2
..___tag_value__Z10FitTracksVv.784:                             #
        .align    16,0x90
	.globl _Z10FitTracksVv
_Z10FitTracksVv:
..B3.1:                         # Preds ..B3.0 Latency 7

### void FitTracksV(){

..___tag_value__Z10FitTracksVv.785:                             #235.18
        pushq     %rbx                                          #235.18
..___tag_value__Z10FitTracksVv.787:                             #
        movq      %rsp, %rbx                                    #235.18
..___tag_value__Z10FitTracksVv.788:                             #
        andq      $-64, %rsp                                    #235.18
        subq      $56, %rsp                                     #235.18
        pushq     %rbp                                          #235.18
        movq      8(%rbx), %rbp                                 #235.18
        movq      %rbp, 8(%rsp)                                 #235.18
        movq      %rsp, %rbp                                    #235.18
..___tag_value__Z10FitTracksVv.790:                             #
        subq      $2048, %rsp                                   #235.18 c1

### 
###   double TimeTable[Ntimes];
### 
###   TrackV *TracksV = new TrackV[MaxNTracks / vecN + 1];

        movl      $7606080, %edi                                #239.19 c1
        movq      %r15, -1520(%rbp)                             #235.18 c3
..___tag_value__Z10FitTracksVv.791:                             #
        movq      %r14, -1512(%rbp)                             #235.18 c3
..___tag_value__Z10FitTracksVv.792:                             #
        movq      %r13, -1800(%rbp)                             #235.18 c5
..___tag_value__Z10FitTracksVv.793:                             #
        movq      %r12, -1528(%rbp)                             #235.18 c5
..___tag_value__Z10FitTracksVv.794:                             #
        call      _Znam                                         #239.19
..___tag_value__Z10FitTracksVv.797:                             #
                                # LOE rax
..B3.173:                       # Preds ..B3.1 Latency 1
        movq      %rax, -56(%rbp)                               #239.19 c1
..___tag_value__Z10FitTracksVv.799:                             #
                                # LOE
..B3.2:                         # Preds ..B3.173 Latency 3

###   Fvec_t *Z0      = new Fvec_t[MaxNTracks/vecN+1];

        movl      $80064, %edi                                  #240.19 c1
..___tag_value__Z10FitTracksVv.800:                             #240.19
        call      _Znam                                         #240.19
..___tag_value__Z10FitTracksVv.802:                             #
                                # LOE rax
..B3.174:                       # Preds ..B3.2 Latency 1
        movq      %rax, -48(%rbp)                               #240.19 c1
..___tag_value__Z10FitTracksVv.804:                             #
                                # LOE
..B3.3:                         # Preds ..B3.174 Latency 22

### 
### #ifdef VC
###   Fvec_t::Memory Z0mem;
### #endif
### #ifndef MUTE
###   cout<<"Prepare data..."<<endl;
### #endif
###   Stopwatch timer1;

        vxorpi    %v1, %v1, %v1                                 #248.13 c1
        movl      $1, %eax                                      #248.13 c1
        vloadq    gTicks(%rip){1to8}, %v0                       #248.13 c3
        vkmov     %eax, %k1                                     #248.13 c5
        vstoreq   %v1{a}, -1504(%rbp)                           #248.13 c8 stall 1
        vstoreq   %v0{a}, -2040(%rbp)                           #248.13 c10
        vcmppd    {eq}, gTicks(%rip){1to8}, %v1, %k0{%k1}       #248.13 c12
        nop                                                     #248.13 c14
        nop                                                     #248.13 c16
        nop                                                     #248.13 c18
        nop                                                     #248.13 c20
        vkortest  %k0, %k0                                      #248.13 c22
        jne       ..B3.154      # Prob 5%                       #248.13 c22
..___tag_value__Z10FitTracksVv.805:                             #
                                # LOE
..B3.4:                         # Preds ..B3.155 ..B3.3 Latency 3
        lea       -1608(%rbp), %rdi                             #248.13 c1
        xorl      %esi, %esi                                    #248.13 c1
        call      gettimeofday                                  #248.13 c3
..___tag_value__Z10FitTracksVv.806:                             #
                                # LOE
..B3.5:                         # Preds ..B3.4 Latency 3
        lea       -1896(%rbp), %rdi                             #248.13 c1
        call      times                                         #248.13 c3
..___tag_value__Z10FitTracksVv.807:                             #
                                # LOE
..B3.6:                         # Preds ..B3.5 Latency 90
        vloadq    .L_2il0floatpacket.1524(%rip){4to8}, %v9      #248.13 c1
        vloadq    -2040(%rbp){1to8}, %v2                        #248.13 c3
        vloadd    .L_2il0floatpacket.1525(%rip){4to16}, %v4     #248.13 c5
        movq      -1896(%rbp), %rdx                             #248.13 c7
        movq      -1888(%rbp), %rax                             #248.13 c7
        addq      %rax, %rdx                                    #248.13 c9
        movl      $1, %eax                                      #248.13 c9
        vaddpi    %v4{aaaa}, %v2, %v3                           #248.13 c11
        vkmov     %eax, %k2                                     #248.13 c11
        vandpq    %v9{dddd}, %v2, %v12{%k2}                     #248.13 c13
        movq      %rdx, -2048(%rbp)                             #248.13 c13
        vandpq    %v9{aaaa}, %v2, %v8{%k2}                      #248.13 c15

### 
###   for( int iV=0; iV<NTracksV; iV++ ){ // loop on set of 4 tracks

        xorl      %ecx, %ecx                                    #250.14 c15
        vorpq     %v9{bbbb}, %v12, %v12{%k2}                    #248.13 c17
        movl      NTracksV(%rip), %esi                          #250.21 c17
        vcvtpi2pd $0, -2044(%rbp){1to16}, %v1{%k2}              #248.13 c19
        vcvtpu2pd $0, -2048(%rbp){1to16}, %v0{%k2}              #248.13 c21
        vandpq    %v9{cccc}, %v3, %v3{%k2}                      #248.13 c23
        movq      %rcx, -2032(%rbp)                             #250.14 c23
        vcmppd    {neq}, %v2, %v2, %k1{%k2}                     #248.13 c25
        testl     %esi, %esi                                    #250.21 c25
        vcvtpd2ps $0, {rz}, %v12, %v10{%k2}                     #248.13 c27
        vsubrpi   .L_2il0floatpacket.1526(%rip){4to16}, %v8, %v6 #248.13 c29
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v0, %v1{%k2} #248.13 c31
        vcmppd    {eq}, %v4{bbbb}, %v3, %k3{%k2}                #248.13 c33
        vsrlpi    %v4{bbbb}, %v6, %v11                          #248.13 c35
        vrcpresps %v10, %v5{%k2}                                #248.13 c37
        vandpq    %v9{aaaa}, %v11, %v11{%k2}                    #248.13 c39
        vrcprefineps %v10, %v5, %v10{%k2}                       #248.13 c41
        vsubpi    %v11, %v6, %v7                                #248.13 c43
        vxorpq    %v9{aaaa}, %v8, %v7{%k3}                      #248.13 c45
        vandpq    %v9{aaaa}, %v1, %v8{%k2}                      #248.13 c47
        vcvtps2pd $0, %v10, %v10{%k2}                           #248.13 c49
        vorpq     %v2, %v2, %v7{%k1}                            #248.13 c51
        vcmppd    {eq}, %v9{aaaa}, %v8, %k0{%k2}                #248.13 c54 stall 1
        vmulpd    %v11, %v10, %v11{%k2}                         #248.13 c56
        vmsubr23c1pd %v10, %v12, %v12{%k2}                      #248.13 c58
        vmulpd    %v7, %v11, %v11{%k2}                          #248.13 c60
        vmadd231pd %v12, %v12, %v12{%k2}                        #248.13 c62
        vorpq     %v1, %v1, %v10{%k2}                           #248.13 c64
        vkor      %k0, %k3                                      #248.13 c64
        vmadd231pd %v12, %v11, %v11{%k2}                        #248.13 c66
        vkandn    %k2, %k3                                      #248.13 c66
        nop                                                     #248.13 c68
        vmulpd    %v11, %v1, %v12{%k2}                          #248.13 c70
        nop                                                     #248.13 c72
        vmsubr231pd %v12, %v2, %v10{%k2}                        #248.13 c74
        nop                                                     #248.13 c76
        vmadd231pd %v11, %v10, %v12{%k3}                        #248.13 c78
        nop                                                     #248.13 c80
        nop                                                     #248.13 c82
        nop                                                     #248.13 c84
        nop                                                     #248.13 c86
        vstoreq   %v12{a}, -1984(%rbp)                          #248.13 c88
        jle       ..B3.39       # Prob 1%                       #250.21 c90
..___tag_value__Z10FitTracksVv.808:                             #
                                # LOE
..B3.7:                         # Preds ..B3.6 Latency 9
        movq      -56(%rbp), %rdx                               # c1
        xorl      %eax, %eax                                    #250.3 c1
        movq      %rax, -1968(%rbp)                             #250.3 c3
        lea       -6080(%rdx), %rcx                             # c5
        movq      %rax, -1976(%rbp)                             # c5
        movq      %rax, -2000(%rbp)                             # c7
        movq      %rax, -2008(%rbp)                             # c7
        movq      %rcx, -1992(%rbp)                             # c9
..___tag_value__Z10FitTracksVv.809:                             #
                                # LOE
..B3.8:                         # Preds ..B3.37 ..B3.7 Latency 21

### #ifndef MUTE
###     if( iV*vecN%100==0 ) cout<<iV*vecN<<endl;
### #endif
###     TrackV &t = TracksV[iV];
###     for( int ist=0; ist<NStations; ist++ ){

        movq      -1976(%rbp), %rax                             #250.3 c1
        xorl      %r8d, %r8d                                    #255.5 c1
        addq      $64, %rax                                     #250.3 c3
        movq      -1992(%rbp), %rdx                             #250.3 c3
        movq      %rax, -1976(%rbp)                             #250.3 c5
        addq      $6080, %rdx                                   #250.3 c5
        movl      NStations(%rip), %eax                         #255.25 c7
        movq      -2000(%rbp), %rcx                             #250.3 c7
        shlq      $32, %rax                                     #255.5 c9
        movq      -2008(%rbp), %rsi                             #250.3 c9
        sarq      $32, %rax                                     #255.5 c11
        movq      -1968(%rbp), %rdi                             #250.3 c11
        addq      $1024, %rcx                                   #250.3 c13
        addq      $15360, %rsi                                  #250.3 c13
        incq      %rdi                                          #250.3 c15
        movq      %rdx, -1992(%rbp)                             #250.3 c15
        movq      %rcx, -2000(%rbp)                             #250.3 c17
        testq     %rax, %rax                                    #255.25 c17
        movq      %rsi, -2008(%rbp)                             #250.3 c19
        movq      %rdi, -1968(%rbp)                             #250.3 c19
        movl      $0, %edi                                      # c21
        jle       ..B3.12       # Prob 10%                      #255.25 c21
..___tag_value__Z10FitTracksVv.810:                             #
                                # LOE rax rdi r8
..B3.9:                         # Preds ..B3.8 Latency 17
        movq      -2032(%rbp), %rdx                             # c1
        movq      -56(%rbp), %rcx                               # c1
        imulq     $6080, %rdx, %rsi                             # c3
        addq      %rcx, %rsi                                    # c17
..___tag_value__Z10FitTracksVv.811:                             #
                                # LOE rax rsi rdi r8
..B3.10:                        # Preds ..B3.10 ..B3.9 Latency 69

###       HitV &h = t.vHits[ist];
###     
###       h.x = 0.;

        xorl      %edx, %edx                                    #258.13 c1
        incq      %r8                                           #255.5 c1
        movl      %edx, -1960(%rbp)                             #258.13 c3
        vloadd    -1960(%rbp){1to16}, %v0                       #258.13 c5
        nop                                                     #258.7 c7
        nop                                                     #258.7 c9
        vstored   %v0, (%rdi,%rsi)                              #258.7 c12 stall 1

###       h.y = 0.;

        movb      %al, %al                                      #259.13 c12
        movl      %edx, -1952(%rbp)                             #259.13 c14
        vloadd    -1952(%rbp){1to16}, %v1                       #259.13 c16
        nop                                                     #259.7 c18
        nop                                                     #259.7 c20
        vstored   %v1, 64(%rdi,%rsi)                            #259.7 c23 stall 1

###       h.w = 0.;

        movb      %al, %al                                      #260.13 c23
        movl      %edx, -1944(%rbp)                             #260.13 c25
        vloadd    -1944(%rbp){1to16}, %v2                       #260.13 c27
        nop                                                     #260.7 c29
        nop                                                     #260.7 c31
        vstored   %v2, 128(%rdi,%rsi)                           #260.7 c34 stall 1

###       h.H.X = 0.;

        movb      %al, %al                                      #261.15 c34
        movl      %edx, -1936(%rbp)                             #261.15 c36
        vloadd    -1936(%rbp){1to16}, %v3                       #261.15 c38
        nop                                                     #261.7 c40
        nop                                                     #261.7 c42
        vstored   %v3, 192(%rdi,%rsi)                           #261.7 c45 stall 1

###       h.H.Y = 0.;

        movb      %al, %al                                      #262.15 c45
        movl      %edx, -1928(%rbp)                             #262.15 c47
        vloadd    -1928(%rbp){1to16}, %v4                       #262.15 c49
        nop                                                     #262.7 c51
        nop                                                     #262.7 c53
        vstored   %v4, 256(%rdi,%rsi)                           #262.7 c56 stall 1

###       h.H.Z = 0.;

        movb      %al, %al                                      #263.15 c56
        movl      %edx, -1920(%rbp)                             #263.15 c58
        vloadd    -1920(%rbp){1to16}, %v5                       #263.15 c60
        nop                                                     #263.7 c62
        nop                                                     #263.7 c64
        vstored   %v5, 320(%rdi,%rsi)                           #263.7 c67 stall 1
        addq      $384, %rdi                                    #255.5 c67
        cmpq      %rax, %r8                                     #255.5 c69
        jb        ..B3.10       # Prob 82%                      #255.5 c69
..___tag_value__Z10FitTracksVv.812:                             #
                                # LOE rax rsi rdi r8
..B3.12:                        # Preds ..B3.10 ..B3.8          # Infreq Latency 5

###     }
### 
### #ifdef VC
###     Fvec_t::Memory hxmem[NStations],hymem[NStations],hwmem[NStations];

        movq      %rax, -2048(%rbp)                             #267.35 c1
        shlq      $6, %rax                                      #267.20 c3
        addq      $63, %rax                                     #267.20 c5
        andq      $-64, %rax                                    #267.20
        subq      %rax, %rsp                                    #267.20
        movq      %rsp, %rax                                    #267.20
..___tag_value__Z10FitTracksVv.813:                             #
                                # LOE rax
..B3.175:                       # Preds ..B3.12                 # Infreq Latency 1
        movq      %rax, -1904(%rbp)                             #267.20 c1
..___tag_value__Z10FitTracksVv.814:                             #
                                # LOE
..B3.13:                        # Preds ..B3.175                # Infreq Latency 11
        movl      NStations(%rip), %eax                         #267.52 c1
        shlq      $32, %rax                                     #267.52 c3
        sarq      $32, %rax                                     #267.52 c5
        movq      %rax, -2024(%rbp)                             #267.52 c7
        shlq      $6, %rax                                      #267.37 c9
        addq      $63, %rax                                     #267.37 c11
        andq      $-64, %rax                                    #267.37
        subq      %rax, %rsp                                    #267.37
        movq      %rsp, %rax                                    #267.37
..___tag_value__Z10FitTracksVv.815:                             #
                                # LOE rax
..B3.176:                       # Preds ..B3.13                 # Infreq Latency 1
        movq      %rax, -1912(%rbp)                             #267.37 c1
..___tag_value__Z10FitTracksVv.816:                             #
                                # LOE
..B3.14:                        # Preds ..B3.176                # Infreq Latency 11
        movl      NStations(%rip), %eax                         #267.69 c1
        shlq      $32, %rax                                     #267.69 c3
        sarq      $32, %rax                                     #267.69 c5
        movq      %rax, -2016(%rbp)                             #267.69 c7
        shlq      $6, %rax                                      #267.54 c9
        addq      $63, %rax                                     #267.54 c11
        andq      $-64, %rax                                    #267.54
        subq      %rax, %rsp                                    #267.54
        movq      %rsp, %rax                                    #267.54
..___tag_value__Z10FitTracksVv.817:                             #
                                # LOE rax
..B3.177:                       # Preds ..B3.14                 # Infreq Latency 1
        movq      %rax, -1864(%rbp)                             #267.54 c1
..___tag_value__Z10FitTracksVv.818:                             #
                                # LOE
..B3.15:                        # Preds ..B3.177                # Infreq Latency 5

###     for( int it=0; it<vecN; it++ ){

        xorl      %r14d, %r14d                                  #268.5 c1
        movq      -2008(%rbp), %r13                             # c1
        xorl      %r12d, %r12d                                  # c3
        movl      $7, %r11d                                     # c3
        movq      -2000(%rbp), %r10                             # c5
..___tag_value__Z10FitTracksVv.819:                             #
                                # LOE r10 r12 r13 r11d r14d
..B3.16:                        # Preds ..B3.24 ..B3.15         # Infreq Latency 5

###       Track &ts = vTracks[iV*vecN+it];
### 
###       Z0mem[it] = vMCTracks[iV*vecN+it].MC_z;

        movl      -1016+vMCTracks(%r10), %eax                   #271.19 c1
        movl      %eax, -1792(%rbp,%r12,4)                      #271.7 c3

### 
###       for( int ista=0, ih=0; ista<NStations; ista++ ){

        movl      NStations(%rip), %eax                         #273.35 c3
        testl     %eax, %eax                                    #273.35 c5
        jle       ..B3.22       # Prob 10%                      #273.35 c5
..___tag_value__Z10FitTracksVv.820:                             #
                                # LOE r10 r12 r13 eax r11d r14d
..B3.17:                        # Preds ..B3.16                 # Infreq Latency 9
        movq      -1864(%rbp), %r8                              # c1
        xorl      %r9d, %r9d                                    #273.7 c1
        movq      -1912(%rbp), %rcx                             # c3
        orl       $-1, %edi                                     # c3
        movq      -1904(%rbp), %rsi                             # c5
        lea       (%r8,%r12,4), %rdx                            # c5
        movq      %rdx, -1856(%rbp)                             # c7
        lea       (%rcx,%r12,4), %r8                            # c7
        lea       (%rsi,%r12,4), %rsi                           # c9
        lea       -15296(%r13), %rcx                            # c9
..___tag_value__Z10FitTracksVv.821:                             #
                                # LOE rcx rsi r8 r10 r12 r13 eax edi r9d r11d r14d
..B3.18:                        # Preds ..B3.20 ..B3.17         # Infreq Latency 7

###         Hit &hs = ts.vHits[ih];

        lea       vTracks(%rcx), %rdx                           #274.19 c1
        incl      %edi                                          #273.7 c1
        incl      %r9d                                          #273.7 c3

###         if (hs.ista != ista) continue;

        cmpl      8(%rdx), %edi                                 #275.24 c5
        jne       ..B3.20       # Prob 78%                      #275.24 c7
..___tag_value__Z10FitTracksVv.822:                             #
                                # LOE rdx rcx rsi r8 r10 r12 r13 eax edi r9d r11d r14d
..B3.19:                        # Preds ..B3.18                 # Infreq Latency 17

###         ih++;
###         HitV &h = t.vHits[hs.ista];
### 
###         hxmem[ista][it] = hs.x;

        movl      %r9d, %eax                                    #279.9 c1
        movl      (%rdx), %r15d                                 #279.27 c1
        shlq      $32, %rax                                     #279.9 c3
        addq      $64, %rcx                                     #276.9 c3
        sarq      $32, %rax                                     #279.9 c5
        shlq      $6, %rax                                      #279.9 c7
        movl      %r15d, -64(%rax,%rsi)                         #279.9 c10 stall 1

###         hymem[ista][it] = hs.y;

        movl      4(%rdx), %edx                                 #280.27 c10
        movl      %edx, -64(%r8,%rax)                           #280.9 c12

###         hwmem[ista][it] = 1.;

        movq      -1856(%rbp), %rdx                             #281.9 c12
        movl      $1065353216, -64(%rdx,%rax)                   #281.9 c15 stall 1
        movl      NStations(%rip), %eax                         #273.35 c17
..___tag_value__Z10FitTracksVv.823:                             #
                                # LOE rcx rsi r8 r10 r12 r13 eax edi r9d r11d r14d
..B3.20:                        # Preds ..B3.19 ..B3.18         # Infreq Latency 1
        cmpl      %eax, %r9d                                    #273.35 c1
        jl        ..B3.18       # Prob 82%                      #273.35 c1
..___tag_value__Z10FitTracksVv.824:                             #
                                # LOE rcx rsi r8 r10 r12 r13 eax edi r9d r11d r14d
..B3.22:                        # Preds ..B3.20 ..B3.16         # Infreq Latency 1
        cmpl      $16, %r11d                                    #271.19 c1
        jg        ..B3.24       # Prob 7%                       #271.19 c1
..___tag_value__Z10FitTracksVv.825:                             #
                                # LOE r10 r12 r13 eax r11d r14d
..B3.23:                        # Preds ..B3.22                 # Infreq Latency 7
        vprefetch2 $0, -632+vMCTracks(%r10)                     #271.19 c1
        movb      %al, %al                                      #271.19 c1
        vprefetch1 $0, -824+vMCTracks(%r10)                     #271.19 c3
        movb      %al, %al                                      #271.7 c3
        vprefetch2 $0, -1768(%rbp,%r12,4)                       #271.7 c5
        movb      %al, %al                                      #271.7 c5
        vprefetch1 $0, -1780(%rbp,%r12,4)                       #271.7 c7
..___tag_value__Z10FitTracksVv.826:                             #
                                # LOE r10 r12 r13 eax r11d r14d
..B3.24:                        # Preds ..B3.22 ..B3.23         # Infreq Latency 7
        incl      %r14d                                         #268.5 c1
        addq      $64, %r10                                     #268.5 c1
        addq      $960, %r13                                    #268.5 c3
        incq      %r12                                          #268.5 c3
        incl      %r11d                                         #268.5 c5
        cmpl      $16, %r14d                                    #268.5 c7
        jb        ..B3.16       # Prob 93%                      #268.5 c7
..___tag_value__Z10FitTracksVv.827:                             #
                                # LOE r10 r12 r13 eax r11d r14d
..B3.25:                        # Preds ..B3.24                 # Infreq Latency 5

###       }
### 
###     }
###     for( int ista=0; ista<NStations; ista++ ){

        xorl      %edx, %edx                                    #285.5 c1
        xorl      %r12d, %r12d                                  # c1
        xorl      %r11d, %r11d                                  # c3
        testl     %eax, %eax                                    #285.27 c3
        jle       ..B3.29       # Prob 4%                       #285.27 c5
..___tag_value__Z10FitTracksVv.828:                             #
                                # LOE rdx r11 r12 eax
..B3.26:                        # Preds ..B3.25                 # Infreq Latency 19
        movq      -2032(%rbp), %rcx                             # c1
        movl      %eax, %r8d                                    #285.5 c1
        imulq     $6080, %rcx, %r9                              # c3
        shlq      $32, %r8                                      #285.5 c17
        movq      -56(%rbp), %rsi                               # c17
        sarq      $32, %r8                                      #285.5 c19
        addq      %rsi, %r9                                     # c19
..___tag_value__Z10FitTracksVv.829:                             #
                                # LOE rdx r8 r9 r11 r12 eax
..B3.27:                        # Preds ..B3.27 ..B3.26         # Infreq Latency 17

###       Fvec_t hxtemp( hxmem[ista] );

        movq      -1904(%rbp), %rcx                             #286.22 c1
        incq      %rdx                                          #285.5 c1

###       Fvec_t hytemp( hymem[ista] );

        movq      -1912(%rbp), %rsi                             #287.22 c3

###       Fvec_t hwtemp( hwmem[ista] );

        movq      -1864(%rbp), %rdi                             #288.22 c3
        vloadd    (%r12,%rcx), %v0                              #286.22 c5
        vloadd    (%r12,%rsi), %v1                              #287.22 c7
        vloadd    (%r12,%rdi), %v2                              #288.22 c9
        addq      $64, %r12                                     #285.5 c9

###       t.vHits[ista].x = hxtemp;

        lea       (%r11,%r9), %r10                              #289.25 c11
        vpackstoreld %v0, (%r11,%r9)                            #289.25
        testq     $63, %r10                                     #289.25
        je        ..L830        # Prob 50%                      #289.25
        vpackstorehd %v0, 64(%r11,%r9)                          #289.25
..L830:                                                         #

###       t.vHits[ista].y = hytemp;

        movb      %al, %al                                      #290.25 c11
        lea       64(%r11,%r9), %r10                            #290.25 c13
        vpackstoreld %v1, 64(%r11,%r9)                          #290.25
        testq     $63, %r10                                     #290.25
        je        ..L831        # Prob 50%                      #290.25
        vpackstorehd %v1, 128(%r11,%r9)                         #290.25
..L831:                                                         #

###       t.vHits[ista].w = hwtemp;

        movb      %al, %al                                      #291.25 c13
        lea       128(%r11,%r9), %r10                           #291.25 c15
        vpackstoreld %v2, 128(%r11,%r9)                         #291.25
        testq     $63, %r10                                     #291.25
        je        ..L832        # Prob 50%                      #291.25
        vpackstorehd %v2, 192(%r11,%r9)                         #291.25
..L832:                                                         #
        addq      $384, %r11                                    #285.5 c15
        cmpq      %r8, %rdx                                     #285.5 c17
        jb        ..B3.27       # Prob 82%                      #285.5 c17
..___tag_value__Z10FitTracksVv.833:                             #
                                # LOE rdx r8 r9 r11 r12 eax
..B3.29:                        # Preds ..B3.27 ..B3.25         # Infreq Latency 8

###     }
### 
### 
###     Fvec_t Z0temp(Z0mem);

        vloadd    -1792(%rbp), %v0                              #295.19 c1

###     Z0[iV] = Z0temp;
### #else // VC
###     
###     for( int it=0; it<vecN; it++ ){
###       Track &ts = vTracks[iV*vecN+it];
### #ifdef X87
###       Z0[iV] = vMCTracks[iV*vecN+it].MC_z;
### #else
###       Z0[iV][it] = vMCTracks[iV*vecN+it].MC_z;
### #endif
###       for( int ih=0; ih<ts.NHits; ih++ ){
###         Hit &hs = ts.vHits[ih];
###         HitV &h = t.vHits[hs.ista];
###     #ifdef X87
###         h.x = hs.x;
###         h.y = hs.y;
###         h.w = 1.;
###     #else
###         h.x[it] = hs.x;
###         h.y[it] = hs.y;
###         h.w[it] = 1.;
###     #endif
###       }
###     }
### #endif // else VC
### 
### 
###     if (0){    // output for check
###       cout << "track " << iV << "  ";
###       for( int ista=0, ih=0; ista<NStations; ista++ )
###         cout << t.vHits[ista].x << " ";
###       cout << endl;
###     }
### 
### 
###     for( int ist=0; ist<NStations; ist++ ){

        testl     %eax, %eax                                    #331.25 c1
        movq      -48(%rbp), %rcx                               #296.14 c3
        movq      -1976(%rbp), %rdx                             #296.14 c3
        nop                                                     #296.14 c5
        vstored   %v0, -64(%rdx,%rcx)                           #296.14 c8 stall 1
        jle       ..B3.34       # Prob 4%                       #331.25 c8
..___tag_value__Z10FitTracksVv.834:                             #
                                # LOE
..B3.30:                        # Preds ..B3.29                 # Infreq Latency 5
        movq      -1992(%rbp), %rax                             # c1
        xorl      %r14d, %r14d                                  #331.5 c1
        xorl      %r13d, %r13d                                  # c3
        lea       -384(%rax), %r12                              # c5
..___tag_value__Z10FitTracksVv.835:                             #
                                # LOE r12 r13 r14
..B3.31:                        # Preds ..B3.32 ..B3.30         # Infreq Latency 11
        addq      $384, %r12                                    #331.5 c1
        addq      $2496, %r13                                   #331.5 c1

###       HitV &h = t.vHits[ist];
###       vStations[ist].Map.GetField(h.x, h.y, h.H);

        movq      vStations(%rip), %rax                         #333.26 c3
        movq      %r12, %rsi                                    #333.26 c3
        lea       192(%r12), %rcx                               #333.45 c5
        lea       64(%r12), %rdx                                #333.26 c5
        lea       -1920(%r13,%rax), %rdi                        #333.26 c7
        lea       256(%r12), %r8                                #333.26 c7
        lea       320(%r12), %r9                                #333.26 c9
        incq      %r14                                          #331.5 c9
..___tag_value__Z10FitTracksVv.836:                             #333.26
        call      _ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_ #333.26
..___tag_value__Z10FitTracksVv.838:                             #
                                # LOE r12 r13 r14
..B3.32:                        # Preds ..B3.31                 # Infreq Latency 7
        movl      NStations(%rip), %eax                         #331.25 c1
        shlq      $32, %rax                                     #331.5 c3
        sarq      $32, %rax                                     #331.5 c5
        cmpq      %rax, %r14                                    #331.25 c7
        jl        ..B3.31       # Prob 82%                      #331.25 c7
..___tag_value__Z10FitTracksVv.840:                             #
                                # LOE r12 r13 r14
..B3.34:                        # Preds ..B3.32 ..B3.29         # Infreq Latency 5

###     }

        movq      -2016(%rbp), %rax                             #334.5 c1
        shlq      $6, %rax                                      #334.5 c3
        movq      -1864(%rbp), %rdx                             #334.5 c3
        addq      $63, %rax                                     #334.5 c5
        andq      $-64, %rax                                    #334.5
        addq      %rax, %rsp                                    #334.5
..___tag_value__Z10FitTracksVv.841:                             #
                                # LOE
..B3.35:                        # Preds ..B3.34                 # Infreq Latency 5
        movq      -2024(%rbp), %rax                             #334.5 c1
        shlq      $6, %rax                                      #334.5 c3
        movq      -1912(%rbp), %rdx                             #334.5 c3
        addq      $63, %rax                                     #334.5 c5
        andq      $-64, %rax                                    #334.5
        addq      %rax, %rsp                                    #334.5
..___tag_value__Z10FitTracksVv.842:                             #
                                # LOE
..B3.36:                        # Preds ..B3.35                 # Infreq Latency 5
        movq      -2048(%rbp), %rax                             #334.5 c1
        shlq      $6, %rax                                      #334.5 c3
        movq      -1904(%rbp), %rdx                             #334.5 c3
        addq      $63, %rax                                     #334.5 c5
        andq      $-64, %rax                                    #334.5
        addq      %rax, %rsp                                    #334.5
..___tag_value__Z10FitTracksVv.843:                             #
                                # LOE
..B3.37:                        # Preds ..B3.36                 # Infreq Latency 13
        movq      -1968(%rbp), %rcx                             #250.31 c1
        movl      NTracksV(%rip), %edx                          #250.21 c1
        shlq      $32, %rdx                                     #250.3 c3
        movq      %rcx, %rax                                    #250.31 c3
        shlq      $32, %rax                                     #250.31 c5
        sarq      $32, %rdx                                     #250.3 c7
        sarq      $32, %rax                                     #250.31 c9
        movq      %rax, -2032(%rbp)                             #250.31 c11
        cmpq      %rdx, %rcx                                    #250.21 c11
        jl        ..B3.8        # Prob 99%                      #250.21 c13
..___tag_value__Z10FitTracksVv.844:                             #
                                # LOE
..B3.38:                        # Preds ..B3.37                 # Infreq Latency 8

###   }
###   timer1.Stop();

        vloadq    gTicks(%rip){1to8}, %v0                       #336.10 c1
        nop                                                     #336.10 c3
        nop                                                     #336.10 c5
        vstoreq   %v0{a}, -2040(%rbp)                           #336.10 c8 stall 1
..___tag_value__Z10FitTracksVv.845:                             #
                                # LOE
..B3.39:                        # Preds ..B3.6 ..B3.38          # Infreq Latency 3
        lea       -1592(%rbp), %rdi                             #336.10 c1
        xorl      %esi, %esi                                    #336.10 c1
        call      gettimeofday                                  #336.10 c3
..___tag_value__Z10FitTracksVv.846:                             #
                                # LOE
..B3.40:                        # Preds ..B3.39                 # Infreq Latency 3
        lea       -1672(%rbp), %rdi                             #336.10 c1
        call      times                                         #336.10 c3
..___tag_value__Z10FitTracksVv.847:                             #
                                # LOE
..B3.41:                        # Preds ..B3.40                 # Infreq Latency 91
        vloadq    .L_2il0floatpacket.1524(%rip){4to8}, %v8      #336.10 c1
        vloadq    -2040(%rbp){1to8}, %v9                        #336.10 c3
        vloadd    .L_2il0floatpacket.1525(%rip){4to16}, %v3     #336.10 c5
        movq      -1672(%rbp), %rdx                             #336.10 c7
        movq      -1664(%rbp), %rax                             #336.10 c7
        addq      %rax, %rdx                                    #336.10 c9
        movl      $1, %eax                                      #336.10 c9
        vaddpi    %v3{aaaa}, %v9, %v2                           #336.10 c11
        vkmov     %eax, %k3                                     #336.10 c11
        vandpq    %v8{dddd}, %v9, %v12{%k3}                     #336.10 c13
        movq      %rdx, -2048(%rbp)                             #336.10 c13
        vandpq    %v8{aaaa}, %v9, %v7{%k3}                      #336.10 c15
        vorpq     %v8{bbbb}, %v12, %v12{%k3}                    #336.10 c17
        vcvtpi2pd $0, -2044(%rbp){1to16}, %v1{%k3}              #336.10 c19
        vcvtpu2pd $0, -2048(%rbp){1to16}, %v0{%k3}              #336.10 c21
        vandpq    %v8{cccc}, %v2, %v2{%k3}                      #336.10 c23
        vsubrpi   .L_2il0floatpacket.1526(%rip){4to16}, %v7, %v5 #336.10 c25
        vcvtpd2ps $0, {rz}, %v12, %v10{%k3}                     #336.10 c27
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v0, %v1{%k3} #336.10 c29
        vcmppd    {eq}, %v3{bbbb}, %v2, %k2{%k3}                #336.10 c31
        vsrlpi    %v3{bbbb}, %v5, %v11                          #336.10 c33
        vcmppd    {neq}, %v9, %v9, %k1{%k3}                     #336.10 c35
        vrcpresps %v10, %v4{%k3}                                #336.10 c37
        vandpq    %v8{aaaa}, %v11, %v11{%k3}                    #336.10 c39
        vrcprefineps %v10, %v4, %v10{%k3}                       #336.10 c41
        vsubpi    %v11, %v5, %v6                                #336.10 c43
        vxorpq    %v8{aaaa}, %v7, %v6{%k2}                      #336.10 c45
        vandpq    %v8{aaaa}, %v1, %v7{%k3}                      #336.10 c47
        vcvtps2pd $0, %v10, %v10{%k3}                           #336.10 c49
        vorpq     %v9, %v9, %v6{%k1}                            #336.10 c51

### #ifndef MUTE
###   cout<<"Start fit..."<<endl;
### #endif
###   Stopwatch timer;

        vcmppd    {eq}, -1504(%rbp){1to8}, %v9, %k4{%k3}        #340.13 c53
        vcmppd    {eq}, %v8{aaaa}, %v7, %k0{%k3}                #336.10 c55
        vmulpd    %v11, %v10, %v11{%k3}                         #336.10 c57
        vmsubr23c1pd %v10, %v12, %v12{%k3}                      #336.10 c59
        vmulpd    %v6, %v11, %v11{%k3}                          #336.10 c61
        vmadd231pd %v12, %v12, %v12{%k3}                        #336.10 c63
        vkortest  %k4, %k4                                      #340.13 c63
        vorpq     %v1, %v1, %v10{%k3}                           #336.10 c65
        vkor      %k0, %k2                                      #336.10 c65
        vmadd231pd %v12, %v11, %v11{%k3}                        #336.10 c67
        vkandn    %k3, %k2                                      #336.10 c67
        nop                                                     #336.10 c69
        vmulpd    %v11, %v1, %v12{%k3}                          #336.10 c71
        nop                                                     #336.10 c73
        vmsubr231pd %v12, %v9, %v10{%k3}                        #336.10 c75
        nop                                                     #336.10 c77
        vmadd231pd %v11, %v10, %v12{%k2}                        #336.10 c79
        nop                                                     #336.10 c81
        nop                                                     #336.10 c83
        nop                                                     #336.10 c85
        nop                                                     #336.10 c87
        vstoreq   %v12{a}, -1976(%rbp)                          #336.10 c89
        jne       ..B3.152      # Prob 5%                       #340.13 c91
..___tag_value__Z10FitTracksVv.848:                             #
                                # LOE
..B3.42:                        # Preds ..B3.153 ..B3.41        # Infreq Latency 9
        xorl      %edx, %edx                                    #340.13 c1
        xorl      %eax, %eax                                    #340.13 c1
        lea       -1576(%rbp), %rdi                             #340.13 c3
        xorl      %esi, %esi                                    #340.13 c3
        movl      %edx, -1680(%rbp)                             #340.13 c5
        movq      %rax, -1696(%rbp)                             #340.13 c5
        movq      %rax, -1688(%rbp)                             #340.13 c7
        movl      %edx, -1676(%rbp)                             #340.13 c7
        call      gettimeofday                                  #340.13 c9
..___tag_value__Z10FitTracksVv.849:                             #
                                # LOE
..B3.43:                        # Preds ..B3.42                 # Infreq Latency 34
        movl      $1, %edx                                      #340.13 c1
        lea       -1864(%rbp), %rdi                             #340.13 c1
        vkmov     %edx, %k1                                     #340.13 c3
        vcvtpu2pd $0, -1568(%rbp){1to16}, %v0{%k1}              #340.13 c5
        vcvtpi2pd $0, -1564(%rbp){1to16}, %v2{%k1}              #340.13 c7
        vcvtpu2pd $0, -1576(%rbp){1to16}, %v1{%k1}              #340.13 c9
        vcvtpi2pd $0, -1572(%rbp){1to16}, %v3{%k1}              #340.13 c11
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v0, %v2{%k1} #340.13 c14 stall 1
        nop                                                     #340.13 c16
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v1, %v3{%k1} #340.13 c18
        nop                                                     #340.13 c20
        vmadd231pd .L_2il0floatpacket.1517(%rip){1to8}, %v2, %v3{%k1} #340.13 c22
        nop                                                     #340.13 c24
        nop                                                     #340.13 c26
        nop                                                     #340.13 c28
        nop                                                     #340.13 c30
        vstoreq   %v3{a}, -1728(%rbp)                           #340.13 c32
        call      times                                         #340.13 c34
..___tag_value__Z10FitTracksVv.850:                             #
                                # LOE
..B3.44:                        # Preds ..B3.43                 # Infreq Latency 91
        vloadq    .L_2il0floatpacket.1524(%rip){4to8}, %v8      #340.13 c1
        vloadq    -2040(%rbp){1to8}, %v9                        #340.13 c3
        vloadd    .L_2il0floatpacket.1525(%rip){4to16}, %v3     #340.13 c5
        movq      -1864(%rbp), %rdx                             #340.13 c7
        movq      -1856(%rbp), %rax                             #340.13 c7
        addq      %rax, %rdx                                    #340.13 c9
        movl      $1, %eax                                      #340.13 c9
        vaddpi    %v3{aaaa}, %v9, %v2                           #340.13 c11
        vkmov     %eax, %k3                                     #340.13 c11
        vandpq    %v8{dddd}, %v9, %v12{%k3}                     #340.13 c13
        movq      %rdx, -2048(%rbp)                             #340.13 c13
        vandpq    %v8{aaaa}, %v9, %v7{%k3}                      #340.13 c15
        movl      -1676(%rbp), %ecx                             #340.13 c15
        vorpq     %v8{bbbb}, %v12, %v12{%k3}                    #340.13 c17
        incl      %ecx                                          #340.13 c17
        vcvtpi2pd $0, -2044(%rbp){1to16}, %v1{%k3}              #340.13 c19
        vcvtpu2pd $0, -2048(%rbp){1to16}, %v0{%k3}              #340.13 c21
        vandpq    %v8{cccc}, %v2, %v2{%k3}                      #340.13 c23
        movl      %ecx, -1676(%rbp)                             #340.13 c23
        vcmppd    {neq}, %v9, %v9, %k1{%k3}                     #340.13 c25
        vcvtpd2ps $0, {rz}, %v12, %v10{%k3}                     #340.13 c27
        vsubrpi   .L_2il0floatpacket.1526(%rip){4to16}, %v7, %v5 #340.13 c29
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v0, %v1{%k3} #340.13 c31
        vcmppd    {eq}, %v3{bbbb}, %v2, %k2{%k3}                #340.13 c33
        vsrlpi    %v3{bbbb}, %v5, %v11                          #340.13 c35
        vrcpresps %v10, %v4{%k3}                                #340.13 c37
        vandpq    %v8{aaaa}, %v11, %v11{%k3}                    #340.13 c39
        vrcprefineps %v10, %v4, %v10{%k3}                       #340.13 c41
        vsubpi    %v11, %v5, %v6                                #340.13 c43
        vxorpq    %v8{aaaa}, %v7, %v6{%k2}                      #340.13 c45
        vandpq    %v8{aaaa}, %v1, %v7{%k3}                      #340.13 c47
        vcvtps2pd $0, %v10, %v10{%k3}                           #340.13 c49
        vorpq     %v9, %v9, %v6{%k1}                            #340.13 c51

###   Stopwatch timer2;

        vcmppd    {eq}, -1504(%rbp){1to8}, %v9, %k4{%k3}        #341.13 c53
        vcmppd    {eq}, %v8{aaaa}, %v7, %k0{%k3}                #340.13 c55
        vmulpd    %v11, %v10, %v11{%k3}                         #340.13 c57
        vmsubr23c1pd %v10, %v12, %v12{%k3}                      #340.13 c59
        vmulpd    %v6, %v11, %v11{%k3}                          #340.13 c61
        vmadd231pd %v12, %v12, %v12{%k3}                        #340.13 c63
        vkortest  %k4, %k4                                      #341.13 c63
        vorpq     %v1, %v1, %v10{%k3}                           #340.13 c65
        vkor      %k0, %k2                                      #340.13 c65
        vmadd231pd %v12, %v11, %v11{%k3}                        #340.13 c67
        vkandn    %k3, %k2                                      #340.13 c67
        movl      $2, -1680(%rbp)                               #340.13 c69
        vmulpd    %v11, %v1, %v12{%k3}                          #340.13 c71
        nop                                                     #340.13 c73
        vmsubr231pd %v12, %v9, %v10{%k3}                        #340.13 c75
        nop                                                     #340.13 c77
        vmadd231pd %v11, %v10, %v12{%k2}                        #340.13 c79
        nop                                                     #340.13 c81
        nop                                                     #340.13 c83
        nop                                                     #340.13 c85
        nop                                                     #340.13 c87
        vstoreq   %v12{a}, -1712(%rbp)                          #340.13 c89
        jne       ..B3.150      # Prob 5%                       #341.13 c91
..___tag_value__Z10FitTracksVv.851:                             #
                                # LOE
..B3.45:                        # Preds ..B3.151 ..B3.44        # Infreq Latency 9
        xorl      %edx, %edx                                    #341.13 c1
        xorl      %eax, %eax                                    #341.13 c1
        lea       -1560(%rbp), %rdi                             #341.13 c3
        xorl      %esi, %esi                                    #341.13 c3
        movl      %edx, -112(%rbp)                              #341.13 c5
        movq      %rax, -128(%rbp)                              #341.13 c5
        movq      %rax, -120(%rbp)                              #341.13 c7
        movl      %edx, -108(%rbp)                              #341.13 c7
        call      gettimeofday                                  #341.13 c9
..___tag_value__Z10FitTracksVv.852:                             #
                                # LOE
..B3.46:                        # Preds ..B3.45                 # Infreq Latency 34
        movl      $1, %edx                                      #341.13 c1
        lea       -1832(%rbp), %rdi                             #341.13 c1
        vkmov     %edx, %k1                                     #341.13 c3
        vcvtpu2pd $0, -1552(%rbp){1to16}, %v0{%k1}              #341.13 c5
        vcvtpi2pd $0, -1548(%rbp){1to16}, %v2{%k1}              #341.13 c7
        vcvtpu2pd $0, -1560(%rbp){1to16}, %v1{%k1}              #341.13 c9
        vcvtpi2pd $0, -1556(%rbp){1to16}, %v3{%k1}              #341.13 c11
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v0, %v2{%k1} #341.13 c14 stall 1
        nop                                                     #341.13 c16
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v1, %v3{%k1} #341.13 c18
        nop                                                     #341.13 c20
        vmadd231pd .L_2il0floatpacket.1517(%rip){1to8}, %v2, %v3{%k1} #341.13 c22
        nop                                                     #341.13 c24
        nop                                                     #341.13 c26
        nop                                                     #341.13 c28
        nop                                                     #341.13 c30
        vstoreq   %v3{a}, -160(%rbp)                            #341.13 c32
        call      times                                         #341.13 c34
..___tag_value__Z10FitTracksVv.853:                             #
                                # LOE
..B3.47:                        # Preds ..B3.46                 # Infreq Latency 91
        vloadq    .L_2il0floatpacket.1524(%rip){4to8}, %v9      #341.13 c1
        vloadq    -2040(%rbp){1to8}, %v2                        #341.13 c3
        vloadd    .L_2il0floatpacket.1525(%rip){4to16}, %v4     #341.13 c5
        movq      -1832(%rbp), %rdx                             #341.13 c7
        movq      -1824(%rbp), %rax                             #341.13 c7
        addq      %rax, %rdx                                    #341.13 c9
        movl      $1, %eax                                      #341.13 c9
        vaddpi    %v4{aaaa}, %v2, %v3                           #341.13 c11
        vkmov     %eax, %k2                                     #341.13 c11
        vandpq    %v9{dddd}, %v2, %v12{%k2}                     #341.13 c13
        movq      %rdx, -2048(%rbp)                             #341.13 c13
        vandpq    %v9{aaaa}, %v2, %v8{%k2}                      #341.13 c15

### //   Stopwatch timer_test;
###   timer.Start();

        lea       -1728(%rbp), %rdi                             #343.9 c15
        vorpq     %v9{bbbb}, %v12, %v12{%k2}                    #341.13 c17
        movl      -108(%rbp), %ecx                              #341.13 c17
        vcvtpi2pd $0, -2044(%rbp){1to16}, %v1{%k2}              #341.13 c19
        vcvtpu2pd $0, -2048(%rbp){1to16}, %v0{%k2}              #341.13 c21
        vandpq    %v9{cccc}, %v3, %v3{%k2}                      #341.13 c23
        incl      %ecx                                          #341.13 c23
        vsubrpi   .L_2il0floatpacket.1526(%rip){4to16}, %v8, %v6 #341.13 c25
        vcvtpd2ps $0, {rz}, %v12, %v10{%k2}                     #341.13 c27
        movl      %eax, %esi                                    #343.9 c27
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v0, %v1{%k2} #341.13 c29
        vcmppd    {eq}, %v4{bbbb}, %v3, %k3{%k2}                #341.13 c31
        movl      %ecx, -108(%rbp)                              #341.13 c31
        vsrlpi    %v4{bbbb}, %v6, %v11                          #341.13 c33
        vcmppd    {neq}, %v2, %v2, %k1{%k2}                     #341.13 c35
        vrcpresps %v10, %v5{%k2}                                #341.13 c37
        vandpq    %v9{aaaa}, %v11, %v11{%k2}                    #341.13 c39
        vrcprefineps %v10, %v5, %v10{%k2}                       #341.13 c41
        vsubpi    %v11, %v6, %v7                                #341.13 c43
        vxorpq    %v9{aaaa}, %v8, %v7{%k3}                      #341.13 c45
        vandpq    %v9{aaaa}, %v1, %v8{%k2}                      #341.13 c47
        vcvtps2pd $0, %v10, %v10{%k2}                           #341.13 c49
        vorpq     %v2, %v2, %v7{%k1}                            #341.13 c51
        movl      $2, -112(%rbp)                                #341.13 c53
        vcmppd    {eq}, %v9{aaaa}, %v8, %k0{%k2}                #341.13 c55
        vmulpd    %v11, %v10, %v11{%k2}                         #341.13 c57
        vmsubr23c1pd %v10, %v12, %v12{%k2}                      #341.13 c59
        vmulpd    %v7, %v11, %v11{%k2}                          #341.13 c61
        vmadd231pd %v12, %v12, %v12{%k2}                        #341.13 c63
        vorpq     %v1, %v1, %v10{%k2}                           #341.13 c65
        vkor      %k0, %k3                                      #341.13 c65
        vmadd231pd %v12, %v11, %v11{%k2}                        #341.13 c67
        vkandn    %k2, %k3                                      #341.13 c67
        nop                                                     #341.13 c69
        vmulpd    %v11, %v1, %v12{%k2}                          #341.13 c71
        nop                                                     #341.13 c73
        vmsubr231pd %v12, %v2, %v10{%k2}                        #341.13 c75
        nop                                                     #341.13 c77
        vmadd231pd %v11, %v10, %v12{%k3}                        #341.13 c79
        nop                                                     #341.13 c81
        nop                                                     #341.13 c83
        nop                                                     #341.13 c85
        nop                                                     #341.13 c87
        vstoreq   %v12{a}, -144(%rbp)                           #341.13 c89
..___tag_value__Z10FitTracksVv.854:                             #343.9
        call      _ZN9Stopwatch5StartEi                         #343.9
..___tag_value__Z10FitTracksVv.856:                             #
                                # LOE
..B3.48:                        # Preds ..B3.47                 # Infreq Latency 3

###   for( int times=0; times<Ntimes; times++){

        xorl      %eax, %eax                                    #344.3 c1
        xorl      %r15d, %r15d                                  # c1
        movl      %eax, -2040(%rbp)                             #344.3 c3
        movl      $13, %r14d                                    # c3
..___tag_value__Z10FitTracksVv.858:                             #
                                # LOE r15 r14d
..B3.49:                        # Preds ..B3.61 ..B3.48         # Infreq Latency 3

###     timer2.Start();

        lea       -160(%rbp), %rdi                              #345.12 c1
        movl      $1, %esi                                      #345.12 c1
..___tag_value__Z10FitTracksVv.859:                             #345.12
        call      _ZN9Stopwatch5StartEi                         #345.12
..___tag_value__Z10FitTracksVv.861:                             #
                                # LOE r15 r14d
..B3.50:                        # Preds ..B3.49                 # Infreq Latency 3

### #ifdef TBB
### #ifdef DEBUG_THREADS
###   cout << NTracksV << " tracks by " << NTracksV / tasks << " tracks in group are run." << endl;
### #endif // DEBUG_THREADS
### 
###   // FIXME: using affinity_partitioner only gives performance gain with #CPUs > 2
###     // use affinity_partitioner
### //   static simple_partitioner ap;
### //   static affinity_partitioner ap;  // standart
### //   parallel_for(blocked_range<int>(0, NTracksV, NTracksV / tasks), ApplyFit(TracksV, vStations, NStations, NFits), ap);
###     // use auto partitioning. Good then tasks != 2^N
### //   static auto_partitioner ap;
### //   parallel_for(blocked_range<int>(0, NTracksV), ApplyFit(TracksV, vStations, NStations, NFits), ap);
###   {      // use special partitioning.  Good used with fixed thread-cpu correspondent by observer
### //     if (speedUpHT >= 0){
### //       parallel_for_simpleHT(NTracksV, tasks, ApplyFit(TracksV, vStations, NStations, NFits),speedUpHT);
### //     }
### //     else{
### //       parallel_for_simple(NTracksV, 10, tasks, ApplyFit(TracksV, vStations, NStations, NFits));
### //     };
### 
###     {   // fix nTask on thread
###       int nTracksVOnThread = 1000/4*1000/Ntimes;
###       parallel_for_simpleEqNThr(nTracksVOnThread, tasks, ApplyFit(TracksV, vStations, NStations, NFits));
###       NTracks = nTracksVOnThread*4*tasks; // for time counters
###     }
###   }
### #else 
###   int ifit;
###   int iV;
### #pragma omp parallel num_threads(tasks)
###   {
###     #pragma omp for 
###       for( iV=0; iV<NTracksV; iV++ ){ // loop on set of 4 tracks

        movl      NTracksV(%rip), %eax                          #379.21 c1
        testl     %eax, %eax                                    #379.21 c3
        jle       ..B3.55       # Prob 10%                      #379.21 c3
..___tag_value__Z10FitTracksVv.863:                             #
                                # LOE r15 r14d
..B3.51:                        # Preds ..B3.50                 # Infreq Latency 4
        movq      -56(%rbp), %rax                               # c1
        xorl      %r13d, %r13d                                  #379.7 c1
        lea       -6080(%rax), %r12                             # c4 stall 1
..___tag_value__Z10FitTracksVv.864:                             #
                                # LOE r12 r15 r13d r14d
..B3.52:                        # Preds ..B3.53 ..B3.51         # Infreq Latency 7
        addq      $6080, %r12                                   #379.7 c1

### // timer_test.Start();
###         for( ifit=0; ifit<NFits; ifit++){
###            Fit( TracksV[iV], vStations, NStations );      

        movq      vStations(%rip), %rsi                         #382.12 c1
        movl      NStations(%rip), %edx                         #382.12 c3
        movq      %r12, %rdi                                    #382.12 c3
        incl      %r13d                                         #379.7 c5
..___tag_value__Z10FitTracksVv.865:                             #382.12
        call      _Z3FitR6TrackVP7Stationi                      #382.12
..___tag_value__Z10FitTracksVv.867:                             #
                                # LOE r12 r15 r13d r14d
..B3.53:                        # Preds ..B3.52                 # Infreq Latency 3
        cmpl      NTracksV(%rip), %r13d                         #379.21 c1
        jl        ..B3.52       # Prob 82%                      #379.21 c3
..___tag_value__Z10FitTracksVv.869:                             #
                                # LOE r12 r15 r13d r14d
..B3.55:                        # Preds ..B3.53 ..B3.50         # Infreq Latency 3

###          }
### // timer_test.Stop();
### // cout<<"test time = "<<timer_test.RealTime()*1.e6<<" [us]"<<endl;
###       }
###   }
### #endif
###     timer2.Stop();

        lea       -72(%rbp), %rdi                               #389.12 c1
        xorl      %esi, %esi                                    #389.12 c1
        call      gettimeofday                                  #389.12 c3
..___tag_value__Z10FitTracksVv.870:                             #
                                # LOE r15 r14d
..B3.56:                        # Preds ..B3.55                 # Infreq Latency 34
        movl      $1, %edx                                      #389.12 c1
        lea       -104(%rbp), %rdi                              #389.12 c1
        vkmov     %edx, %k1                                     #389.12 c3
        vcvtpu2pd $0, -64(%rbp){1to16}, %v0{%k1}                #389.12 c5
        vcvtpi2pd $0, -60(%rbp){1to16}, %v2{%k1}                #389.12 c7
        vcvtpu2pd $0, -72(%rbp){1to16}, %v1{%k1}                #389.12 c9
        vcvtpi2pd $0, -68(%rbp){1to16}, %v3{%k1}                #389.12 c11
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v0, %v2{%k1} #389.12 c14 stall 1
        nop                                                     #389.12 c16
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v1, %v3{%k1} #389.12 c18
        nop                                                     #389.12 c20
        vmadd231pd .L_2il0floatpacket.1517(%rip){1to8}, %v2, %v3{%k1} #389.12 c22
        nop                                                     #389.5 c24
        nop                                                     #389.5 c26
        nop                                                     #389.5 c28
        nop                                                     #389.5 c30
        vstoreq   %v3{a}, -152(%rbp)                            #389.5 c32
        call      times                                         #389.12 c34
..___tag_value__Z10FitTracksVv.871:                             #
                                # LOE r15 r14d
..B3.57:                        # Preds ..B3.56                 # Infreq Latency 88
        vloadq    .L_2il0floatpacket.1524(%rip){4to8}, %v9      #389.12 c1
        vloadq    gTicks(%rip){1to8}, %v0                       #389.12 c3
        vloadd    .L_2il0floatpacket.1525(%rip){4to16}, %v4     #389.12 c5
        movq      -104(%rbp), %rdx                              #389.12 c7
        movq      -96(%rbp), %rax                               #389.12 c7
        addq      %rax, %rdx                                    #389.12 c9
        movl      $1, %eax                                      #389.12 c9
        vaddpi    %v4{aaaa}, %v0, %v3                           #389.12 c11
        vkmov     %eax, %k2                                     #389.12 c11
        vandpq    %v9{dddd}, %v0, %v12{%k2}                     #389.12 c13
        movq      %rdx, -2048(%rbp)                             #389.12 c13
        vandpq    %v9{aaaa}, %v0, %v8{%k2}                      #389.12 c15
        cmpl      $2, -112(%rbp)                                #389.12 c15
        vorpq     %v9{bbbb}, %v12, %v12{%k2}                    #389.12 c17
        vcvtpi2pd $0, -2044(%rbp){1to16}, %v2{%k2}              #389.12 c19
        vcvtpu2pd $0, -2048(%rbp){1to16}, %v1{%k2}              #389.12 c21
        vandpq    %v9{cccc}, %v3, %v3{%k2}                      #389.12 c23
        vsubrpi   .L_2il0floatpacket.1526(%rip){4to16}, %v8, %v6 #389.12 c25
        vcvtpd2ps $0, {rz}, %v12, %v10{%k2}                     #389.12 c27
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v1, %v2{%k2} #389.12 c29
        vcmppd    {eq}, %v4{bbbb}, %v3, %k3{%k2}                #389.12 c31
        vsrlpi    %v4{bbbb}, %v6, %v11                          #389.12 c33
        vcmppd    {neq}, %v0, %v0, %k1{%k2}                     #389.12 c35
        vrcpresps %v10, %v5{%k2}                                #389.12 c37
        vandpq    %v9{aaaa}, %v11, %v11{%k2}                    #389.12 c39
        vrcprefineps %v10, %v5, %v10{%k2}                       #389.12 c41
        vsubpi    %v11, %v6, %v7                                #389.12 c43
        vxorpq    %v9{aaaa}, %v8, %v7{%k3}                      #389.12 c45
        vandpq    %v9{aaaa}, %v2, %v8{%k2}                      #389.12 c47
        vcvtps2pd $0, %v10, %v10{%k2}                           #389.12 c49
        vorpq     %v0, %v0, %v7{%k1}                            #389.12 c51
        vcmppd    {eq}, %v9{aaaa}, %v8, %k0{%k2}                #389.12 c54 stall 1
        vmulpd    %v11, %v10, %v11{%k2}                         #389.12 c56
        vmsubr23c1pd %v10, %v12, %v12{%k2}                      #389.12 c58
        vmulpd    %v7, %v11, %v11{%k2}                          #389.12 c60
        vmadd231pd %v12, %v12, %v12{%k2}                        #389.12 c62
        vorpq     %v2, %v2, %v10{%k2}                           #389.12 c64
        vkor      %k0, %k3                                      #389.12 c64
        vmadd231pd %v12, %v11, %v11{%k2}                        #389.12 c66
        vkandn    %k2, %k3                                      #389.12 c66
        nop                                                     #389.12 c68
        vmulpd    %v11, %v2, %v12{%k2}                          #389.12 c70
        nop                                                     #389.12 c72
        vmsubr231pd %v12, %v0, %v10{%k2}                        #389.12 c74
        nop                                                     #389.12 c76
        vmadd231pd %v11, %v10, %v12{%k3}                        #389.12 c78
        nop                                                     #389.5 c80
        nop                                                     #389.5 c82
        nop                                                     #389.5 c84
        nop                                                     #389.5 c86
        vstoreq   %v12{a}, -136(%rbp)                           #389.5 c88
        je        ..B3.149      # Prob 16%                      #389.12 c88
..___tag_value__Z10FitTracksVv.872:                             #
                                # LOE r15 r14d v0 v12
..B3.58:                        # Preds ..B3.57                 # Infreq Latency 1

###     TimeTable[times]=timer2.RealTime();

        vloadq    -120(%rbp){1to8}, %v1                         #390.22 c1
..___tag_value__Z10FitTracksVv.873:                             #
                                # LOE r15 r14d v0 v1
..B3.59:                        # Preds ..B3.149 ..B3.58        # Infreq Latency 5
        movl      $1, -112(%rbp)                                #389.5 c1
        vstoreq   %v1{a}, -1488(%rbp,%r15,8)                    #390.5 c3
        cmpl      $100, %r14d                                   #390.5 c5
        jg        ..B3.61       # Prob 1%                       #390.5 c5
..___tag_value__Z10FitTracksVv.874:                             #
                                # LOE r15 r14d v0
..B3.60:                        # Preds ..B3.59                 # Infreq Latency 3
        vprefetch2 $0, -1392(%rbp,%r15,8)                       #390.5 c1
        movb      %al, %al                                      #390.5 c1
        vprefetch1 $0, -1472(%rbp,%r15,8)                       #390.5 c3
..___tag_value__Z10FitTracksVv.875:                             #
                                # LOE r15 r14d v0
..B3.61:                        # Preds ..B3.59 ..B3.60         # Infreq Latency 7
        movl      -2040(%rbp), %eax                             #344.3 c1
        incq      %r15                                          #344.3 c1
        incl      %eax                                          #344.3 c3
        incl      %r14d                                         #344.3 c3
        movl      %eax, -2040(%rbp)                             #344.3 c5
        cmpl      $100, %eax                                    #344.3 c5
        jb        ..B3.49       # Prob 99%                      #344.3 c7
..___tag_value__Z10FitTracksVv.876:                             #
                                # LOE r15 r14d v0
..B3.62:                        # Preds ..B3.61                 # Infreq Latency 5

###   }
###   timer.Stop();

        lea       -1544(%rbp), %rdi                             #392.9 c1
        xorl      %esi, %esi                                    #392.9 c1
        vstored   %v0, -2048(%rbp)                              #392.9 c3
        call      gettimeofday                                  #392.9 c5
..___tag_value__Z10FitTracksVv.877:                             #
                                # LOE
..B3.63:                        # Preds ..B3.62                 # Infreq Latency 34
        vloadd    -2048(%rbp), %v0                              # c1
        movl      $1, %edx                                      #392.9 c1
        vkmov     %edx, %k1                                     #392.9 c3
        lea       -1640(%rbp), %rdi                             #392.9 c3
        vcvtpu2pd $0, -1536(%rbp){1to16}, %v1{%k1}              #392.9 c5
        vcvtpi2pd $0, -1532(%rbp){1to16}, %v3{%k1}              #392.9 c7
        vcvtpu2pd $0, -1544(%rbp){1to16}, %v2{%k1}              #392.9 c9
        vcvtpi2pd $0, -1540(%rbp){1to16}, %v4{%k1}              #392.9 c11
        vstored   %v0, -2048(%rbp)                              #392.9 c13
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v1, %v3{%k1} #392.9 c15
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v2, %v4{%k1} #392.9 c18 stall 1
        nop                                                     #392.9 c20
        vmadd231pd .L_2il0floatpacket.1517(%rip){1to8}, %v3, %v4{%k1} #392.9 c22
        nop                                                     #392.3 c24
        nop                                                     #392.3 c26
        nop                                                     #392.3 c28
        nop                                                     #392.3 c30
        vstoreq   %v4{a}, -1720(%rbp)                           #392.3 c32
        call      times                                         #392.9 c34
..___tag_value__Z10FitTracksVv.878:                             #
                                # LOE
..B3.64:                        # Preds ..B3.63                 # Infreq Latency 91
        vloadq    .L_2il0floatpacket.1524(%rip){4to8}, %v9      #392.9 c1
        vloadd    -2048(%rbp), %v0                              # c3
        vloadd    .L_2il0floatpacket.1525(%rip){4to16}, %v4     #392.9 c5
        movq      -1640(%rbp), %rdx                             #392.9 c7
        movq      -1632(%rbp), %rax                             #392.9 c7
        addq      %rax, %rdx                                    #392.9 c9
        movl      $1, %eax                                      #392.9 c9
        vaddpi    %v4{aaaa}, %v0, %v3                           #392.9 c11
        vkmov     %eax, %k2                                     #392.9 c11
        vandpq    %v9{dddd}, %v0, %v12{%k2}                     #392.9 c13
        movq      %rdx, -1968(%rbp)                             #392.9 c13
        vandpq    %v9{aaaa}, %v0, %v8{%k2}                      #392.9 c15
        vorpq     %v9{bbbb}, %v12, %v12{%k2}                    #392.9 c17
        vcvtpi2pd $0, -1964(%rbp){1to16}, %v2{%k2}              #392.9 c19
        vcvtpu2pd $0, -1968(%rbp){1to16}, %v1{%k2}              #392.9 c21
        vandpq    %v9{cccc}, %v3, %v3{%k2}                      #392.9 c23
        vsubrpi   .L_2il0floatpacket.1526(%rip){4to16}, %v8, %v6 #392.9 c25
        vcvtpd2ps $0, {rz}, %v12, %v10{%k2}                     #392.9 c27
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v1, %v2{%k2} #392.9 c29
        vcmppd    {eq}, %v4{bbbb}, %v3, %k3{%k2}                #392.9 c31
        vsrlpi    %v4{bbbb}, %v6, %v11                          #392.9 c33
        vcmppd    {neq}, %v0, %v0, %k1{%k2}                     #392.9 c35
        vrcpresps %v10, %v5{%k2}                                #392.9 c37
        vandpq    %v9{aaaa}, %v11, %v11{%k2}                    #392.9 c39
        vrcprefineps %v10, %v5, %v10{%k2}                       #392.9 c41
        vsubpi    %v11, %v6, %v7                                #392.9 c43
        vxorpq    %v9{aaaa}, %v8, %v7{%k3}                      #392.9 c45
        vandpq    %v9{aaaa}, %v2, %v8{%k2}                      #392.9 c47
        vcvtps2pd $0, %v10, %v10{%k2}                           #392.9 c49
        vorpq     %v0, %v0, %v7{%k1}                            #392.9 c51
        cmpl      $2, -1680(%rbp)                               #392.9 c53
        vcmppd    {eq}, %v9{aaaa}, %v8, %k0{%k2}                #392.9 c55
        vmulpd    %v11, %v10, %v11{%k2}                         #392.9 c57
        vmsubr23c1pd %v10, %v12, %v12{%k2}                      #392.9 c59
        vmulpd    %v7, %v11, %v11{%k2}                          #392.9 c61
        vmadd231pd %v12, %v12, %v12{%k2}                        #392.9 c63
        vorpq     %v2, %v2, %v10{%k2}                           #392.9 c65
        vkor      %k0, %k3                                      #392.9 c65
        vmadd231pd %v12, %v11, %v11{%k2}                        #392.9 c67
        vkandn    %k2, %k3                                      #392.9 c67
        nop                                                     #392.9 c69
        vmulpd    %v11, %v2, %v12{%k2}                          #392.9 c71
        nop                                                     #392.9 c73
        vmsubr231pd %v12, %v0, %v10{%k2}                        #392.9 c75
        nop                                                     #392.9 c77
        vmadd231pd %v11, %v10, %v12{%k3}                        #392.9 c79
        nop                                                     #392.3 c81
        nop                                                     #392.3 c83
        nop                                                     #392.3 c85
        nop                                                     #392.3 c87
        vstoreq   %v12{a}, -1704(%rbp)                          #392.3 c89
        jne       ..B3.66       # Prob 84%                      #392.9 c91
..___tag_value__Z10FitTracksVv.879:                             #
                                # LOE v12
..B3.65:                        # Preds ..B3.64                 # Infreq Latency 30
        vloadq    -1696(%rbp){1to8}, %v0                        #392.3 c1
        vloadq    -1688(%rbp){1to8}, %v3                        #392.3 c3
        movl      $1, %eax                                      #392.9 c5
        vkmov     %eax, %k1                                     #392.9 c7
        nop                                                     #392.9 c9
        nop                                                     #392.9 c11
        vsubpd    -1712(%rbp){1to8}, %v0, %v1{%k1}              #392.9 c14 stall 1
        vaddpd    -1720(%rbp){1to8}, %v3, %v4{%k1}              #392.9 c16
        vaddpd    %v12, %v1, %v2{%k1}                           #392.9 c18
        vsubpd    -1728(%rbp){1to8}, %v4, %v5{%k1}              #392.9 c20
        nop                                                     #392.3 c22
        nop                                                     #392.3 c24
        nop                                                     #392.3 c26
        vstoreq   %v2{a}, -1696(%rbp)                           #392.3 c28
        vstoreq   %v5{a}, -1688(%rbp)                           #392.3 c30
..___tag_value__Z10FitTracksVv.880:                             #
                                # LOE
..B3.66:                        # Preds ..B3.64 ..B3.65         # Infreq Latency 7

###         
###   
###   for( int iV=0; iV<NTracksV; iV++ ){ // loop on set of 4 tracks

        movl      NTracksV(%rip), %eax                          #395.21 c1
        xorl      %r14d, %r14d                                  #395.14 c1
        movl      $1, -1680(%rbp)                               #392.3 c3
        xorl      %r13d, %r13d                                  # c5
        xorl      %r12d, %r12d                                  # c5
        testl     %eax, %eax                                    #395.21 c7
        jle       ..B3.70       # Prob 68%                      #395.21 c7
..___tag_value__Z10FitTracksVv.881:                             #
                                # LOE r12 r13 r14
..B3.68:                        # Preds ..B3.66 ..B3.69         # Infreq Latency 9

###     TrackV &t = TracksV[iV];
###     ExtrapolateALight( t.T, t.C, Z0[iV], TracksV[iV].T[4], field0 );

        movq      -56(%rbp), %r9                                #397.5 c1
        movl      $field0, %r8d                                 #397.5 c1
        movq      -48(%rbp), %rax                               #397.5 c3
        lea       4608(%r9,%r13), %rdi                          #397.5 c5
        lea       4992(%r9,%r13), %rsi                          #397.5 c5
        lea       (%rax,%r12), %rdx                             #397.5 c7
        lea       4864(%r9,%r13), %rcx                          #397.5 c7
..___tag_value__Z10FitTracksVv.882:                             #397.5
        call      _Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion #397.5
..___tag_value__Z10FitTracksVv.884:                             #
                                # LOE r12 r13 r14
..B3.69:                        # Preds ..B3.68                 # Infreq Latency 8
        movl      NTracksV(%rip), %eax                          #395.21 c1
        incq      %r14                                          #395.31 c1
        shlq      $32, %rax                                     #395.3 c3
        addq      $6080, %r13                                   #395.31 c3
        sarq      $32, %rax                                     #395.3 c5
        addq      $64, %r12                                     #395.31 c5
        cmpq      %rax, %r14                                    #395.21 c7
        jl        ..B3.68       # Prob 82%                      #395.21 c7
..___tag_value__Z10FitTracksVv.886:                             #
                                # LOE r12 r13 r14
..B3.70:                        # Preds ..B3.69 ..B3.66         # Infreq Latency 12

###   }
###   
###   double realtime=0;

        vloadq    -1504(%rbp){1to8}, %v0                        #400.18 c1

###   fstream TimeFile;

        lea       -688(%rbp), %rdi                              #401.11 c3
        nop                                                     #400.18 c5
        vstoreq   %v0{a}, -2008(%rbp)                           #400.18 c8 stall 1
        vstoreq   %v0{a}, -1968(%rbp)                           #400.18 c10
..___tag_value__Z10FitTracksVv.887:                             #401.11
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEEC1Ev #401.11
..___tag_value__Z10FitTracksVv.889:                             #
                                # LOE
..B3.71:                        # Preds ..B3.70                 # Infreq Latency 3

###   TimeFile.open( (dataDir + "time.dat").c_str(), ios::out );

        lea       -1496(%rbp), %rdi                             #402.27 c1
        movl      $dataDir, %esi                                #402.27 c1
..___tag_value__Z10FitTracksVv.891:                             #402.27
        call      _ZNSsC1ERKSs                                  #402.27
..___tag_value__Z10FitTracksVv.893:                             #
                                # LOE
..B3.72:                        # Preds ..B3.71                 # Infreq Latency 3
        lea       -1496(%rbp), %rdi                             #402.27 c1
        movl      $.L_2__STRING.16, %esi                        #402.27 c1
..___tag_value__Z10FitTracksVv.895:                             #402.27
        call      _ZNSs6appendEPKc                              #402.27
..___tag_value__Z10FitTracksVv.897:                             #
                                # LOE
..B3.73:                        # Preds ..B3.72                 # Infreq Latency 3
        lea       -1496(%rbp), %rdi                             #402.41 c1
..___tag_value__Z10FitTracksVv.899:                             #402.41
        call      _ZNKSs5c_strEv                                #402.41
..___tag_value__Z10FitTracksVv.901:                             #
                                # LOE rax
..B3.74:                        # Preds ..B3.73                 # Infreq Latency 5
        lea       -688(%rbp), %rdi                              #402.12 c1
        movq      %rax, %rsi                                    #402.12 c1
        movl      $16, %edx                                     #402.12 c3
..___tag_value__Z10FitTracksVv.903:                             #402.12
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode #402.12
..___tag_value__Z10FitTracksVv.905:                             #
                                # LOE
..B3.75:                        # Preds ..B3.74                 # Infreq Latency 3
        lea       -1496(%rbp), %rdi                             #402.12 c1
..___tag_value__Z10FitTracksVv.907:                             #402.12
        call      _ZNSsD1Ev                                     #402.12
..___tag_value__Z10FitTracksVv.909:                             #
                                # LOE
..B3.76:                        # Preds ..B3.75                 # Infreq Latency 5

###   for( int times=0; times<Ntimes; times++ ){
###     TimeFile << TimeTable[times]*1.e6/(NTracks*NFits)<<endl;

        vloadq    .L_2il0floatpacket.1524(%rip){4to8}, %v13     #404.34 c1
        vloadd    .L_2il0floatpacket.1525(%rip){4to16}, %v12    #404.34 c3
        xorl      %r12d, %r12d                                  #403.17 c5
        movl      NTracks(%rip), %eax                           #404.40 c5
..___tag_value__Z10FitTracksVv.911:                             #
                                # LOE r12 eax v12 v13
..B3.77:                        # Preds ..B3.79 ..B3.76         # Infreq Latency 78
        vloadq    .L_2il0floatpacket.1520(%rip){1to8}, %v1      #404.14 c1
        movl      $1, %edx                                      #404.14 c3
        movl      %eax, -2048(%rbp)                             #404.14 c3
        vkmov     %edx, %k2                                     #404.14 c5
        lea       -672(%rbp), %rdi                              #404.14 c5
        vcvtpi2pd $0, -2048(%rbp){1to16}, %v3{%k2}              #404.14 c7
        nop                                                     #404.14 c9
        vandpq    %v13{dddd}, %v3, %v0{%k2}                     #404.14 c11
        vaddpi    %v12{aaaa}, %v3, %v4                          #404.14 c13
        vorpq     %v13{bbbb}, %v0, %v0{%k2}                     #404.14 c15
        vandpq    %v13{aaaa}, %v3, %v8{%k2}                     #404.14 c17
        vandpq    %v13{cccc}, %v4, %v4{%k2}                     #404.14 c19
        vsubrpi   .L_2il0floatpacket.1526(%rip){4to16}, %v8, %v6 #404.14 c21
        vmulpd    -1488(%rbp,%r12,8){1to8}, %v1, %v2{%k2}       #404.14 c23
        vcvtpd2ps $0, {rz}, %v0, %v9{%k2}                       #404.14 c25
        vcmppd    {eq}, %v12{bbbb}, %v4, %k3{%k2}               #404.14 c27
        vsrlpi    %v12{bbbb}, %v6, %v10                         #404.14 c29
        vcmppd    {neq}, %v3, %v3, %k1{%k2}                     #404.14 c31
        vandpq    %v13{aaaa}, %v10, %v10{%k2}                   #404.14 c33
        vrcpresps %v9, %v5{%k2}                                 #404.14 c35
        vsubpi    %v10, %v6, %v7                                #404.14 c37
        vrcprefineps %v9, %v5, %v9{%k2}                         #404.14 c39
        vxorpq    %v13{aaaa}, %v8, %v7{%k3}                     #404.14 c41
        vandpq    %v13{aaaa}, %v2, %v8{%k2}                     #404.14 c43
        vorpq     %v3, %v3, %v7{%k1}                            #404.14 c45
        vcvtps2pd $0, %v9, %v9{%k2}                             #404.14 c47
        vcmppd    {eq}, %v13{aaaa}, %v8, %k0{%k2}               #404.14 c50 stall 1
        nop                                                     #404.14 c52
        vmulpd    %v10, %v9, %v10{%k2}                          #404.14 c54
        vmsubr23c1pd %v9, %v0, %v0{%k2}                         #404.14 c56
        vmulpd    %v7, %v10, %v10{%k2}                          #404.14 c58
        vmadd231pd %v0, %v0, %v0{%k2}                           #404.14 c60
        vkor      %k0, %k3                                      #404.14 c60
        vorpq     %v2, %v2, %v9{%k2}                            #404.14 c62
        vkandn    %k2, %k3                                      #404.14 c62
        vmadd231pd %v0, %v10, %v10{%k2}                         #404.14 c64
        nop                                                     #404.14 c66
        vmulpd    %v10, %v2, %v0{%k2}                           #404.14 c68
        nop                                                     #404.14 c70
        vmsubr231pd %v0, %v3, %v9{%k2}                          #404.14 c72
        nop                                                     #404.14 c74
        vmadd231pd %v10, %v9, %v0{%k3}                          #404.14 c76
..___tag_value__Z10FitTracksVv.912:                             #404.14
        call      _ZNSolsEd                                     #404.14
..___tag_value__Z10FitTracksVv.914:                             #
                                # LOE rax r12
..B3.78:                        # Preds ..B3.77                 # Infreq Latency 3
        movq      %rax, %rdi                                    #404.54 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #404.54 c1
..___tag_value__Z10FitTracksVv.916:                             #404.54
        call      _ZNSolsEPFRSoS_E                              #404.54
..___tag_value__Z10FitTracksVv.918:                             #
                                # LOE r12
..B3.79:                        # Preds ..B3.78                 # Infreq Latency 96

###     realtime += TimeTable[times]*1.e6/(NTracks*NFits);

        vloadq    .L_2il0floatpacket.1524(%rip){4to8}, %v13     #405.48 c1
        vloadd    .L_2il0floatpacket.1525(%rip){4to16}, %v12    #405.48 c3
        vloadq    .L_2il0floatpacket.1520(%rip){1to8}, %v0      #405.34 c5
        movl      $1, %edx                                      #405.34 c7
        movl      NTracks(%rip), %eax                           #405.40 c7
        vkmov     %edx, %k3                                     #405.34 c9
        vcvtpi2pd $0, NTracks(%rip){1to16}, %v2{%k3}            #405.48 c11
        nop                                                     #405.48 c13
        vandpq    %v13{dddd}, %v2, %v10{%k3}                    #405.48 c15
        vaddpi    %v12{aaaa}, %v2, %v3                          #405.48 c17
        vorpq     %v13{bbbb}, %v10, %v10{%k3}                   #405.48 c19
        vandpq    %v13{aaaa}, %v2, %v7{%k3}                     #405.48 c21
        vandpq    %v13{cccc}, %v3, %v3{%k3}                     #405.48 c23
        vsubrpi   .L_2il0floatpacket.1526(%rip){4to16}, %v7, %v5 #405.48 c25
        vmulpd    -1488(%rbp,%r12,8){1to8}, %v0, %v1{%k3}       #405.34 c27
        vcvtpd2ps $0, {rz}, %v10, %v8{%k3}                      #405.48 c29
        incq      %r12                                          #403.35 c29
        vcmppd    {eq}, %v12{bbbb}, %v3, %k2{%k3}               #405.48 c31
        cmpq      $100, %r12                                    #403.27 c31
        vsrlpi    %v12{bbbb}, %v5, %v9                          #405.48 c33
        vcmppd    {neq}, %v2, %v2, %k1{%k3}                     #405.48 c35
        vandpq    %v13{aaaa}, %v9, %v9{%k3}                     #405.48 c37
        vrcpresps %v8, %v4{%k3}                                 #405.48 c39
        vsubpi    %v9, %v5, %v6                                 #405.48 c41
        vrcprefineps %v8, %v4, %v8{%k3}                         #405.48 c43
        vxorpq    %v13{aaaa}, %v7, %v6{%k2}                     #405.48 c45
        vandpq    %v13{aaaa}, %v1, %v7{%k3}                     #405.48 c47
        vorpq     %v2, %v2, %v6{%k1}                            #405.48 c49
        vcvtps2pd $0, %v8, %v8{%k3}                             #405.48 c51
        vcmppd    {eq}, %v13{aaaa}, %v7, %k0{%k3}               #405.48 c54 stall 1
        nop                                                     #405.48 c56
        vmulpd    %v9, %v8, %v9{%k3}                            #405.48 c58
        vmsubr23c1pd %v8, %v10, %v10{%k3}                       #405.48 c60
        vmulpd    %v6, %v9, %v9{%k3}                            #405.48 c62
        vmadd231pd %v10, %v10, %v10{%k3}                        #405.48 c64
        vkor      %k0, %k2                                      #405.48 c64
        vorpq     %v1, %v1, %v8{%k3}                            #405.48 c66
        vkandn    %k3, %k2                                      #405.48 c66
        vmadd231pd %v10, %v9, %v9{%k3}                          #405.48 c68
        nop                                                     #405.48 c70
        vmulpd    %v9, %v1, %v10{%k3}                           #405.48 c72
        nop                                                     #405.48 c74
        vmsubr231pd %v10, %v2, %v8{%k3}                         #405.48 c76
        nop                                                     #405.48 c78
        vmadd231pd %v9, %v8, %v10{%k2}                          #405.48 c80
        nop                                                     #405.5 c82
        vaddpd    -2008(%rbp){1to8}, %v10, %v11{%k3}            #405.5 c84
        nop                                                     #405.5 c86
        nop                                                     #405.5 c88
        nop                                                     #405.5 c90
        nop                                                     #405.5 c92
        vstoreq   %v11{a}, -2008(%rbp)                          #405.5 c94
        jl        ..B3.77       # Prob 99%                      #403.27 c96
..___tag_value__Z10FitTracksVv.920:                             #
                                # LOE r12 eax v12 v13
..B3.80:                        # Preds ..B3.79                 # Infreq Latency 3

###   }  
###   TimeFile.close();

        lea       -688(%rbp), %rdi                              #407.12 c1
..___tag_value__Z10FitTracksVv.921:                             #407.12
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv #407.12
..___tag_value__Z10FitTracksVv.923:                             #
                                # LOE
..B3.81:                        # Preds ..B3.80                 # Infreq Latency 3

###   realtime /= Ntimes;
### 
### #ifndef MUTE
###   cout<<"Preparation time/track = "<<timer1.CpuTime()*1.e6/NTracks/NFits<<" [us]"<<endl;
###   cout<<"CPU  fit time/track = "<<timer.CpuTime()*1.e6/(NTracks*NFits)/Ntimes<<" [us]"<<endl;
###   cout<<"Real fit time/track = "<<realtime <<" [us]"<<endl;
###   cout<<"Total fit time = "<<timer.CpuTime()<<" [sec]"<<endl;
###   cout<<"Total fit real time = "<<timer.RealTime()<<" [sec]"<<endl;
### #else
### 	cout<<"Prep[us], CPU fit/tr[us], Real fit/tr[us], CPU[sec], Real[sec] = "<<timer1.CpuTime()*1.e6/NTracks/NFits<<"\t";

        movl      $_ZSt4cout, %edi                              #417.6 c1
        movl      $.L_2__STRING.17, %esi                        #417.6 c1
..___tag_value__Z10FitTracksVv.925:                             #417.6
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #417.6
..___tag_value__Z10FitTracksVv.927:                             #
                                # LOE rax
..B3.82:                        # Preds ..B3.81                 # Infreq Latency 82
        vloadq    .L_2il0floatpacket.1524(%rip){4to8}, %v11     #417.75 c1
        vloadd    .L_2il0floatpacket.1525(%rip){4to16}, %v6     #417.75 c3
        vloadq    -1976(%rbp){1to8}, %v1                        #417.75 c5
        movl      $1, %edx                                      #417.75 c7
        movq      %rax, %rdi                                    #417.75 c7
        vkmov     %edx, %k2                                     #417.75 c9
        vcvtpi2pd $0, NTracks(%rip){1to16}, %v4{%k2}            #417.75 c11
        nop                                                     #417.75 c13
        vandpq    %v11{dddd}, %v4, %v0{%k2}                     #417.75 c15
        vaddpi    %v6{aaaa}, %v4, %v5                           #417.75 c17
        vorpq     %v11{bbbb}, %v0, %v0{%k2}                     #417.75 c19
        vandpq    %v11{aaaa}, %v4, %v10{%k2}                    #417.75 c21
        vandpq    %v11{cccc}, %v5, %v5{%k2}                     #417.75 c23
        vsubpd    -1984(%rbp){1to8}, %v1, %v2{%k2}              #417.75 c25
        vsubrpi   .L_2il0floatpacket.1526(%rip){4to16}, %v10, %v8 #417.75 c27
        vcvtpd2ps $0, {rz}, %v0, %v12{%k2}                      #417.75 c29
        vmulpd    .L_2il0floatpacket.1520(%rip){1to8}, %v2, %v3{%k2} #417.75 c31
        vcmppd    {eq}, %v6{bbbb}, %v5, %k3{%k2}                #417.75 c33
        vsrlpi    %v6{bbbb}, %v8, %v13                          #417.75 c35
        vcmppd    {neq}, %v4, %v4, %k1{%k2}                     #417.75 c37
        vrcpresps %v12, %v7{%k2}                                #417.75 c39
        vandpq    %v11{aaaa}, %v13, %v13{%k2}                   #417.75 c41
        vrcprefineps %v12, %v7, %v12{%k2}                       #417.75 c43
        vsubpi    %v13, %v8, %v9                                #417.75 c45
        vxorpq    %v11{aaaa}, %v10, %v9{%k3}                    #417.75 c47
        vandpq    %v11{aaaa}, %v3, %v10{%k2}                    #417.75 c49
        vcvtps2pd $0, %v12, %v12{%k2}                           #417.75 c51
        vorpq     %v4, %v4, %v9{%k1}                            #417.75 c53
        vcmppd    {eq}, %v11{aaaa}, %v10, %k0{%k2}              #417.75 c56 stall 1
        vmulpd    %v13, %v12, %v13{%k2}                         #417.75 c58
        vmsubr23c1pd %v12, %v0, %v0{%k2}                        #417.75 c60
        vmulpd    %v9, %v13, %v13{%k2}                          #417.75 c62
        vmadd231pd %v0, %v0, %v0{%k2}                           #417.75 c64
        vorpq     %v3, %v3, %v12{%k2}                           #417.75 c66
        vkor      %k0, %k3                                      #417.75 c66
        vmadd231pd %v0, %v13, %v13{%k2}                         #417.75 c68
        vkandn    %k2, %k3                                      #417.75 c68
        nop                                                     #417.75 c70
        vmulpd    %v13, %v3, %v0{%k2}                           #417.75 c72
        nop                                                     #417.75 c74
        vmsubr231pd %v0, %v4, %v12{%k2}                         #417.75 c76
        nop                                                     #417.75 c78
        vmadd231pd %v13, %v12, %v0{%k3}                         #417.75 c80
..___tag_value__Z10FitTracksVv.929:                             #417.75
        call      _ZNSolsEd                                     #417.75
..___tag_value__Z10FitTracksVv.931:                             #
                                # LOE rax
..B3.83:                        # Preds ..B3.82                 # Infreq Latency 3
        movq      %rax, %rdi                                    #417.112 c1
        movl      $.L_2__STRING.18, %esi                        #417.112 c1
..___tag_value__Z10FitTracksVv.933:                             #417.112
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #417.112
..___tag_value__Z10FitTracksVv.935:                             #
                                # LOE
..B3.84:                        # Preds ..B3.83                 # Infreq Latency 3

###   cout<<timer.CpuTime()*1.e6/(NTracks*NFits)/Ntimes<<"\t";

        movl      -1680(%rbp), %eax                             #418.9 c1
        testl     %eax, %eax                                    #418.15 c3
        je        ..B3.88       # Prob 28%                      #418.15 c3
..___tag_value__Z10FitTracksVv.937:                             #
                                # LOE eax
..B3.85:                        # Preds ..B3.84                 # Infreq Latency 1
        cmpl      $2, %eax                                      #418.15 c1
        je        ..B3.133      # Prob 1%                       #418.15 c1
..___tag_value__Z10FitTracksVv.938:                             #
                                # LOE
..B3.86:                        # Preds ..B3.85                 # Infreq Latency 5
        vloadq    -1696(%rbp){1to8}, %v2                        #418.9 c1
        vloadq    .L_2il0floatpacket.1524(%rip){4to8}, %v1      #418.9 c3
        vloadd    .L_2il0floatpacket.1525(%rip){4to16}, %v0     #418.9 c5
        jmp       ..B3.89       # Prob 100%                     #418.9 c5
..___tag_value__Z10FitTracksVv.939:                             #
                                # LOE v0 v1 v2
..B3.88:                        # Preds ..B3.84                 # Infreq Latency 5
        vloadq    -1968(%rbp){1to8}, %v2                        #418.15 c1
        vloadq    .L_2il0floatpacket.1524(%rip){4to8}, %v1      #418.15 c3
        vloadd    .L_2il0floatpacket.1525(%rip){4to16}, %v0     #418.15 c5
..___tag_value__Z10FitTracksVv.940:                             #
                                # LOE v0 v1 v2
..B3.89:                        # Preds ..B3.86 ..B3.137 ..B3.88 # Infreq Latency 138
        vloadq    .L_2il0floatpacket.1521(%rip){1to8}, %v11     #418.46 c1
        movl      $1, %eax                                      #418.7 c3
        movl      $_ZSt4cout, %edi                              #418.7 c3
        vaddpi    %v0{aaaa}, %v11, %v12                         #418.7 c5
        vkmov     %eax, %k5                                     #418.7 c5
        vcvtpi2pd $0, NTracks(%rip){1to16}, %v3{%k5}            #418.7 c7
        vandpq    %v1{dddd}, %v11, %v20{%k5}                    #418.7 c9
        vstored   %v11, -1792(%rbp)                             #418.7 c9
        vandpq    %v1{dddd}, %v3, %v17{%k5}                     #418.7 c11
        vaddpi    %v0{aaaa}, %v3, %v4                           #418.7 c13
        vorpq     %v1{bbbb}, %v17, %v17{%k5}                    #418.7 c15
        vandpq    %v1{aaaa}, %v3, %v8{%k5}                      #418.7 c17
        vandpq    %v1{cccc}, %v4, %v4{%k5}                      #418.7 c19
        vsubrpi   .L_2il0floatpacket.1526(%rip){4to16}, %v8, %v6 #418.7 c21
        vmulpd    .L_2il0floatpacket.1520(%rip){1to8}, %v2, %v2{%k5} #418.7 c23
        vcvtpd2ps $0, {rz}, %v17, %v9{%k5}                      #418.7 c25
        vcmppd    {eq}, %v0{bbbb}, %v4, %k2{%k5}                #418.7 c27
        vsrlpi    %v0{bbbb}, %v6, %v10                          #418.7 c29
        vcmppd    {neq}, %v3, %v3, %k1{%k5}                     #418.7 c31
        vandpq    %v1{aaaa}, %v10, %v10{%k5}                    #418.7 c33
        vrcpresps %v9, %v5{%k5}                                 #418.7 c35
        vsubpi    %v10, %v6, %v7                                #418.7 c37
        vrcprefineps %v9, %v5, %v9{%k5}                         #418.7 c39
        vxorpq    %v1{aaaa}, %v8, %v7{%k2}                      #418.7 c41
        vandpq    %v1{aaaa}, %v2, %v8{%k5}                      #418.7 c43
        vorpq     %v3, %v3, %v7{%k1}                            #418.7 c45
        vcvtps2pd $0, %v9, %v9{%k5}                             #418.7 c47
        vorpq     %v1{bbbb}, %v20, %v20{%k5}                    #418.7 c49
        vcmppd    {eq}, %v1{aaaa}, %v8, %k0{%k5}                #418.7 c51
        vandpq    %v1{aaaa}, %v11, %v16{%k5}                    #418.7 c53
        vmulpd    %v10, %v9, %v10{%k5}                          #418.7 c55
        vmsubr23c1pd %v9, %v17, %v17{%k5}                       #418.7 c57
        vmulpd    %v7, %v10, %v10{%k5}                          #418.7 c59
        vmadd231pd %v17, %v17, %v17{%k5}                        #418.7 c61
        vkor      %k0, %k2                                      #418.7 c61
        vcvtpd2ps $0, {rz}, %v20, %v18{%k5}                     #418.7 c63
        vkandn    %k5, %k2                                      #418.7 c63
        vmadd231pd %v17, %v10, %v10{%k5}                        #418.7 c65
        vorpq     %v2, %v2, %v9{%k5}                            #418.7 c67
        vmulpd    %v10, %v2, %v17{%k5}                          #418.7 c69
        vandpq    %v1{cccc}, %v12, %v12{%k5}                    #418.7 c71
        vsubrpi   .L_2il0floatpacket.1526(%rip){4to16}, %v16, %v14 #418.7 c73
        vmsubr231pd %v17, %v3, %v9{%k5}                         #418.7 c75
        vrcpresps %v18, %v13{%k5}                               #418.7 c77
        vmadd231pd %v10, %v9, %v17{%k2}                         #418.7 c79
        vcmppd    {eq}, %v0{bbbb}, %v12, %k6{%k5}               #418.7 c81
        vsrlpi    %v0{bbbb}, %v14, %v19                         #418.7 c83
        vrcprefineps %v18, %v13, %v18{%k5}                      #418.7 c85
        vcmppd    {neq}, %v11, %v11, %k3{%k5}                   #418.7 c87
        vandpq    %v1{aaaa}, %v19, %v19{%k5}                    #418.7 c89
        vcvtps2pd $0, %v18, %v18{%k5}                           #418.7 c92 stall 1
        vsubpi    %v19, %v14, %v15                              #418.7 c94
        vxorpq    %v1{aaaa}, %v16, %v15{%k6}                    #418.7 c96
        vandpq    %v1{aaaa}, %v17, %v16{%k5}                    #418.7 c98
        vorpq     %v11, %v11, %v15{%k3}                         #418.7 c100
        vmulpd    %v19, %v18, %v19{%k5}                         #418.7 c102
        vmsubr23c1pd %v18, %v20, %v20{%k5}                      #418.7 c104
        vcmppd    {eq}, %v1{aaaa}, %v16, %k4{%k5}               #418.7 c106
        vmadd231pd %v20, %v20, %v20{%k5}                        #418.7 c108
        vmulpd    %v15, %v19, %v19{%k5}                         #418.7 c110
        vorpq     %v17, %v17, %v18{%k5}                         #418.7 c112
        vmadd231pd %v20, %v19, %v19{%k5}                        #418.7 c114
        movb      %al, %al                                      #418.7 c114
        vkor      %k4, %k6                                      #418.7 c116
        vmulpd    %v19, %v17, %v20{%k5}                         #418.7 c118
        vkandn    %k5, %k6                                      #418.7 c118
        nop                                                     #418.7 c120
        vmsubr231pd %v20, %v11, %v18{%k5}                       #418.7 c122
        nop                                                     #418.7 c124
        vmadd231pd %v19, %v18, %v20{%k6}                        #418.7 c126
        nop                                                     #418.7 c128
        nop                                                     #418.7 c130
        nop                                                     #418.7 c132
        nop                                                     #418.7 c134
        vorpi     %v20, %v20, %v0                               #418.7 c136
..___tag_value__Z10FitTracksVv.941:                             #418.7
        call      _ZNSolsEd                                     #418.7
..___tag_value__Z10FitTracksVv.943:                             #
                                # LOE rax
..B3.90:                        # Preds ..B3.89                 # Infreq Latency 3
        movq      %rax, %rdi                                    #418.52 c1
        movl      $.L_2__STRING.18, %esi                        #418.52 c1
..___tag_value__Z10FitTracksVv.945:                             #418.52
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #418.52
..___tag_value__Z10FitTracksVv.947:                             #
                                # LOE
..B3.91:                        # Preds ..B3.90                 # Infreq Latency 78

###   cout<<realtime <<"\t";

        vloadq    .L_2il0floatpacket.1524(%rip){4to8}, %v9      #419.7 c1
        vloadd    -1792(%rbp), %v6                              #419.7 c3
        movl      $1, %eax                                      #419.7 c3
        vloadd    .L_2il0floatpacket.1525(%rip){4to16}, %v3     #419.7 c5
        vloadq    -2008(%rbp){1to8}, %v1                        #419.7 c7
        vkmov     %eax, %k2                                     #419.7 c9
        movl      $_ZSt4cout, %edi                              #419.7 c9
        vandpq    %v9{dddd}, %v6, %v0{%k2}                      #419.7 c11
        vaddpi    %v3{aaaa}, %v6, %v2                           #419.7 c13
        vorpq     %v9{bbbb}, %v0, %v0{%k2}                      #419.7 c15
        vandpq    %v9{aaaa}, %v6, %v8{%k2}                      #419.7 c17
        vandpq    %v9{cccc}, %v2, %v2{%k2}                      #419.7 c19
        vsubrpi   .L_2il0floatpacket.1526(%rip){4to16}, %v8, %v5 #419.7 c21
        vcmppd    {neq}, %v6, %v6, %k1{%k2}                     #419.7 c23
        vcvtpd2ps $0, {rz}, %v0, %v10{%k2}                      #419.7 c25
        vcmppd    {eq}, %v3{bbbb}, %v2, %k3{%k2}                #419.7 c27
        vsrlpi    %v3{bbbb}, %v5, %v11                          #419.7 c29
        nop                                                     #419.7 c31
        vandpq    %v9{aaaa}, %v11, %v11{%k2}                    #419.7 c33
        vrcpresps %v10, %v4{%k2}                                #419.7 c35
        vsubpi    %v11, %v5, %v7                                #419.7 c37
        vrcprefineps %v10, %v4, %v10{%k2}                       #419.7 c39
        vxorpq    %v9{aaaa}, %v8, %v7{%k3}                      #419.7 c41
        vandpq    %v9{aaaa}, %v1, %v8{%k2}                      #419.7 c43
        vorpq     %v6, %v6, %v7{%k1}                            #419.7 c45
        vcvtps2pd $0, %v10, %v10{%k2}                           #419.7 c47
        vcmppd    {eq}, %v9{aaaa}, %v8, %k0{%k2}                #419.7 c50 stall 1
        nop                                                     #419.7 c52
        vmulpd    %v11, %v10, %v11{%k2}                         #419.7 c54
        vmsubr23c1pd %v10, %v0, %v0{%k2}                        #419.7 c56
        vmulpd    %v7, %v11, %v11{%k2}                          #419.7 c58
        vmadd231pd %v0, %v0, %v0{%k2}                           #419.7 c60
        vkor      %k0, %k3                                      #419.7 c60
        vorpq     %v1, %v1, %v10{%k2}                           #419.7 c62
        vkandn    %k2, %k3                                      #419.7 c62
        vmadd231pd %v0, %v11, %v11{%k2}                         #419.7 c64
        nop                                                     #419.7 c66
        vmulpd    %v11, %v1, %v0{%k2}                           #419.7 c68
        nop                                                     #419.7 c70
        vmsubr231pd -1792(%rbp), %v0, %v10{%k2}                 #419.7 c72
        nop                                                     #419.7 c74
        vmadd231pd %v11, %v10, %v0{%k3}                         #419.7 c76
..___tag_value__Z10FitTracksVv.949:                             #419.7
        call      _ZNSolsEd                                     #419.7
..___tag_value__Z10FitTracksVv.951:                             #
                                # LOE rax
..B3.92:                        # Preds ..B3.91                 # Infreq Latency 3
        movq      %rax, %rdi                                    #419.18 c1
        movl      $.L_2__STRING.18, %esi                        #419.18 c1
..___tag_value__Z10FitTracksVv.953:                             #419.18
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #419.18
..___tag_value__Z10FitTracksVv.955:                             #
                                # LOE
..B3.93:                        # Preds ..B3.92                 # Infreq Latency 3

###   cout<<timer.CpuTime()<<"\t";

        movl      -1680(%rbp), %eax                             #420.9 c1
        testl     %eax, %eax                                    #420.15 c3
        je        ..B3.98       # Prob 28%                      #420.15 c3
..___tag_value__Z10FitTracksVv.957:                             #
                                # LOE eax
..B3.94:                        # Preds ..B3.93                 # Infreq Latency 1
        cmpl      $2, %eax                                      #420.15 c1
        je        ..B3.121      # Prob 1%                       #420.15 c1
..___tag_value__Z10FitTracksVv.958:                             #
                                # LOE
..B3.95:                        # Preds ..B3.94                 # Infreq Latency 8
        vloadq    -1696(%rbp){1to8}, %v0                        #420.9 c1
        nop                                                     #420.9 c3
        nop                                                     #420.9 c5
        vstoreq   %v0{a}, -1968(%rbp)                           #420.9 c8 stall 1
..___tag_value__Z10FitTracksVv.959:                             #
                                # LOE
..B3.98:                        # Preds ..B3.93 ..B3.95 ..B3.125 # Infreq Latency 5
        vloadq    -1968(%rbp){1to8}, %v0                        #420.7 c1
        movl      $_ZSt4cout, %edi                              #420.7 c3
..___tag_value__Z10FitTracksVv.960:                             #420.7
        call      _ZNSolsEd                                     #420.7
..___tag_value__Z10FitTracksVv.962:                             #
                                # LOE rax
..B3.99:                        # Preds ..B3.98                 # Infreq Latency 3
        movq      %rax, %rdi                                    #420.24 c1
        movl      $.L_2__STRING.18, %esi                        #420.24 c1
..___tag_value__Z10FitTracksVv.964:                             #420.24
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #420.24
..___tag_value__Z10FitTracksVv.966:                             #
                                # LOE
..B3.100:                       # Preds ..B3.99                 # Infreq Latency 3

###   cout<<timer.RealTime()<<endl;

        movl      -1680(%rbp), %eax                             #421.9 c1
        testl     %eax, %eax                                    #421.15 c3
        je        ..B3.105      # Prob 28%                      #421.15 c3
..___tag_value__Z10FitTracksVv.968:                             #
                                # LOE eax
..B3.101:                       # Preds ..B3.100                # Infreq Latency 1
        cmpl      $2, %eax                                      #421.15 c1
        je        ..B3.127      # Prob 1%                       #421.15 c1
..___tag_value__Z10FitTracksVv.969:                             #
                                # LOE
..B3.102:                       # Preds ..B3.101                # Infreq Latency 8
        vloadq    -1688(%rbp){1to8}, %v0                        #421.9 c1
        nop                                                     #421.9 c3
        nop                                                     #421.9 c5
        vstoreq   %v0{a}, -1504(%rbp)                           #421.9 c8 stall 1
..___tag_value__Z10FitTracksVv.970:                             #
                                # LOE
..B3.105:                       # Preds ..B3.100 ..B3.102 ..B3.131 # Infreq Latency 5
        vloadq    -1504(%rbp){1to8}, %v0                        #421.7 c1
        movl      $_ZSt4cout, %edi                              #421.7 c3
..___tag_value__Z10FitTracksVv.971:                             #421.7
        call      _ZNSolsEd                                     #421.7
..___tag_value__Z10FitTracksVv.973:                             #
                                # LOE rax
..B3.106:                       # Preds ..B3.105                # Infreq Latency 3
        movq      %rax, %rdi                                    #421.25 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #421.25 c1
..___tag_value__Z10FitTracksVv.975:                             #421.25
        call      _ZNSolsEPFRSoS_E                              #421.25
..___tag_value__Z10FitTracksVv.977:                             #
                                # LOE
..B3.107:                       # Preds ..B3.106                # Infreq Latency 3

### #endif
###   
###   for( int iV=0; iV<NTracksV; iV++ ){ // loop on set of 4 tracks

        movl      NTracksV(%rip), %eax                          #424.21 c1
        testl     %eax, %eax                                    #424.21 c3
        jle       ..B3.115      # Prob 10%                      #424.21 c3
..___tag_value__Z10FitTracksVv.979:                             #
                                # LOE
..B3.108:                       # Preds ..B3.107                # Infreq Latency 3
        xorl      %r9d, %r9d                                    #424.3 c1
        xorl      %r8d, %r8d                                    # c1
        movq      -56(%rbp), %rdi                               # c3
..___tag_value__Z10FitTracksVv.980:                             #
                                # LOE rdi r8 r9
..B3.109:                       # Preds ..B3.113 ..B3.108       # Infreq Latency 7
        addq      $15360, %r8                                   #424.3 c1
        addq      $6080, %rdi                                   #424.3 c1
        incq      %r9                                           #424.3 c3

###     TrackV &t = TracksV[iV];
###     for( int it=0; it<vecN; it++ ){

        xorl      %esi, %esi                                    #426.5 c3
        movq      %r8, %rcx                                     # c5
        xorl      %edx, %edx                                    # c5
        movl      $5, %eax                                      # c7
..___tag_value__Z10FitTracksVv.981:                             #
                                # LOE rdx rcx rdi r8 r9 eax esi
..B3.110:                       # Preds ..B3.112 ..B3.109       # Infreq Latency 43

###       Track &ts = vTracks[iV*vecN+it];
###       Fvec_t *C = (Fvec_t*)&t.C;
###       Single_t *sC = (Single_t*) &ts.C;
### #ifdef X87
###       for( int i=0; i<6; i++ ) ts.T[i] = t.T[i];
### #else
###       for( int i=0; i<6; i++ ) ts.T[i] = t.T[i][it];

        movl      -1472(%rdi,%rdx,4), %r10d                     #433.48 c1
        cmpl      $16, %eax                                     #427.35 c1
        movl      %r10d, -14528+vTracks(%rcx)                   #433.32 c3
        movl      -1408(%rdi,%rdx,4), %r11d                     #433.48 c3
        movl      %r11d, -14524+vTracks(%rcx)                   #433.32 c5
        movl      -1344(%rdi,%rdx,4), %r12d                     #433.48 c5
        movl      %r12d, -14520+vTracks(%rcx)                   #433.32 c7
        movl      -1280(%rdi,%rdx,4), %r13d                     #433.48 c7
        movl      %r13d, -14516+vTracks(%rcx)                   #433.32 c9
        movl      -1216(%rdi,%rdx,4), %r14d                     #433.48 c9
        movl      %r14d, -14512+vTracks(%rcx)                   #433.32 c11
        movl      -1152(%rdi,%rdx,4), %r15d                     #433.48 c11
        movl      %r15d, -14508+vTracks(%rcx)                   #433.32 c13

### #endif
### #ifdef SQRT_FILTER
###       for( int i=0,n=0; i<5; i++ )
###   for( int j=0; j<=i; j++,n++){
###     sC[n]=0;
###     for(int k=0;k<5;k++) sC[n]+= C[i*5+k][it]*C[j*5+k][it];
###   }
### #else
### #ifdef X87
###       for( int i=0; i<15; i++ ) sC[i] = C[i];      
### #else
###       for( int i=0; i<15; i++ ) sC[i] = C[i][it];      

        movl      -1088(%rdi,%rdx,4), %r10d                     #445.45 c13
        movl      %r10d, -14504+vTracks(%rcx)                   #429.20 c15
        movl      -1024(%rdi,%rdx,4), %r11d                     #445.45 c15
        movl      %r11d, -14500+vTracks(%rcx)                   #429.20 c17
        movl      -960(%rdi,%rdx,4), %r12d                      #445.45 c17
        movl      %r12d, -14496+vTracks(%rcx)                   #429.20 c19
        movl      -896(%rdi,%rdx,4), %r13d                      #445.45 c19
        movl      %r13d, -14492+vTracks(%rcx)                   #429.20 c21
        movl      -832(%rdi,%rdx,4), %r14d                      #445.45 c21
        movl      %r14d, -14488+vTracks(%rcx)                   #429.20 c23
        movl      -768(%rdi,%rdx,4), %r15d                      #445.45 c23
        movl      %r15d, -14484+vTracks(%rcx)                   #429.20 c25
        movl      -704(%rdi,%rdx,4), %r10d                      #445.45 c25
        movl      %r10d, -14480+vTracks(%rcx)                   #429.20 c27
        movl      -640(%rdi,%rdx,4), %r11d                      #445.45 c27
        movl      %r11d, -14476+vTracks(%rcx)                   #429.20 c29
        movl      -576(%rdi,%rdx,4), %r12d                      #445.45 c29
        movl      %r12d, -14472+vTracks(%rcx)                   #429.20 c31
        movl      -512(%rdi,%rdx,4), %r13d                      #445.45 c31
        movl      %r13d, -14468+vTracks(%rcx)                   #429.20 c33
        movl      -448(%rdi,%rdx,4), %r14d                      #445.45 c33
        movl      %r14d, -14464+vTracks(%rcx)                   #429.20 c35
        movl      -384(%rdi,%rdx,4), %r15d                      #445.45 c35
        movl      %r15d, -14460+vTracks(%rcx)                   #429.20 c37
        movl      -320(%rdi,%rdx,4), %r10d                      #445.45 c37
        movl      %r10d, -14456+vTracks(%rcx)                   #429.20 c39
        movl      -256(%rdi,%rdx,4), %r11d                      #445.45 c39
        movl      %r11d, -14452+vTracks(%rcx)                   #429.20 c41
        movl      -192(%rdi,%rdx,4), %r12d                      #445.45 c41
        movl      %r12d, -14448+vTracks(%rcx)                   #429.20 c43
        jg        ..B3.112      # Prob 7%                       #427.35 c43
..___tag_value__Z10FitTracksVv.982:                             #
                                # LOE rdx rcx rdi r8 r9 eax esi
..B3.111:                       # Preds ..B3.110                # Infreq Latency 7
        vprefetch2 $0, -10664+vTracks(%rcx)                     #427.35 c1
        movb      %al, %al                                      #427.35 c1
        vprefetch1 $0, -12584+vTracks(%rcx)                     #427.35 c3
        movb      %al, %al                                      #433.32 c3
        vprefetch2 $0, -10688+vTracks(%rcx)                     #433.32 c5
        movb      %al, %al                                      #433.32 c5
        vprefetch1 $0, -12608+vTracks(%rcx)                     #433.32 c7
..___tag_value__Z10FitTracksVv.983:                             #
                                # LOE rdx rcx rdi r8 r9 eax esi
..B3.112:                       # Preds ..B3.110 ..B3.111       # Infreq Latency 5
        incl      %esi                                          #426.5 c1
        addq      $960, %rcx                                    #426.5 c1
        incq      %rdx                                          #426.5 c3
        incl      %eax                                          #426.5 c3
        cmpl      $16, %esi                                     #426.5 c5
        jb        ..B3.110      # Prob 93%                      #426.5 c5
..___tag_value__Z10FitTracksVv.984:                             #
                                # LOE rdx rcx rdi r8 r9 eax esi
..B3.113:                       # Preds ..B3.112                # Infreq Latency 7
        movl      NTracksV(%rip), %eax                          #424.21 c1
        shlq      $32, %rax                                     #424.3 c3
        sarq      $32, %rax                                     #424.3 c5
        cmpq      %rax, %r9                                     #424.21 c7
        jl        ..B3.109      # Prob 99%                      #424.21 c7
..___tag_value__Z10FitTracksVv.985:                             #
                                # LOE rdi r8 r9
..B3.115:                       # Preds ..B3.113 ..B3.107       # Infreq Latency 3

### #endif // X87
### #endif // SQRT_FILTER
###     }    
###   }
### 
###   delete [] Z0;

        movq      -48(%rbp), %rax                               #451.13 c1
        testq     %rax, %rax                                    #451.13 c3
        je        ..B3.117      # Prob 33%                      #451.13 c3
..___tag_value__Z10FitTracksVv.986:                             #
                                # LOE
..B3.116:                       # Preds ..B3.115                # Infreq Latency 3
        movq      -48(%rbp), %rdi                               #451.3 c1
        call      _ZdaPv                                        #451.3 c3
..___tag_value__Z10FitTracksVv.987:                             #
                                # LOE
..B3.117:                       # Preds ..B3.116 ..B3.115       # Infreq Latency 3

###   delete [] TracksV;

        movq      -56(%rbp), %rax                               #452.13 c1
        testq     %rax, %rax                                    #452.13 c3
        je        ..B3.119      # Prob 33%                      #452.13 c3
..___tag_value__Z10FitTracksVv.988:                             #
                                # LOE
..B3.118:                       # Preds ..B3.117                # Infreq Latency 3
        movq      -56(%rbp), %rdi                               #452.3 c1
        call      _ZdaPv                                        #452.3 c3
..___tag_value__Z10FitTracksVv.989:                             #
                                # LOE
..B3.119:                       # Preds ..B3.118 ..B3.117       # Infreq Latency 3
        lea       -688(%rbp), %rdi                              #452.13 c1
..___tag_value__Z10FitTracksVv.990:                             #452.13
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev #452.13
..___tag_value__Z10FitTracksVv.992:                             #
                                # LOE
..B3.120:                       # Preds ..B3.119                # Infreq Latency 5

### }

        movq      -1528(%rbp), %r12                             #453.1 c1
..___tag_value__Z10FitTracksVv.994:                             #
        movq      -1800(%rbp), %r13                             #453.1 c1
..___tag_value__Z10FitTracksVv.995:                             #
        movq      -1512(%rbp), %r14                             #453.1 c3
..___tag_value__Z10FitTracksVv.996:                             #
        movq      -1520(%rbp), %r15                             #453.1 c3
..___tag_value__Z10FitTracksVv.997:                             #
        movq      %rbp, %rsp                                    #453.1 c5
        popq      %rbp                                          #453.1
..___tag_value__Z10FitTracksVv.998:                             #
        movq      %rbx, %rsp                                    #453.1
        popq      %rbx                                          #453.1
..___tag_value__Z10FitTracksVv.999:                             #
        ret                                                     #453.1
..___tag_value__Z10FitTracksVv.1001:                            #
                                # LOE
..B3.121:                       # Preds ..B3.94                 # Infreq Latency 3
        lea       -1928(%rbp), %rdi                             #420.15 c1
        xorl      %esi, %esi                                    #420.15 c1
        call      gettimeofday                                  #420.15 c3
..___tag_value__Z10FitTracksVv.1009:                            #
                                # LOE
..B3.122:                       # Preds ..B3.121                # Infreq Latency 34
        movl      $1, %edx                                      #420.15 c1
        lea       -2008(%rbp), %rdi                             #420.15 c1
        vkmov     %edx, %k1                                     #420.15 c3
        vcvtpu2pd $0, -1920(%rbp){1to16}, %v0{%k1}              #420.15 c5
        vcvtpi2pd $0, -1916(%rbp){1to16}, %v2{%k1}              #420.15 c7
        vcvtpu2pd $0, -1928(%rbp){1to16}, %v1{%k1}              #420.15 c9
        vcvtpi2pd $0, -1924(%rbp){1to16}, %v3{%k1}              #420.15 c11
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v0, %v2{%k1} #420.15 c14 stall 1
        nop                                                     #420.15 c16
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v1, %v3{%k1} #420.15 c18
        nop                                                     #420.15 c20
        vmadd231pd .L_2il0floatpacket.1517(%rip){1to8}, %v2, %v3{%k1} #420.15 c22
        nop                                                     #420.9 c24
        nop                                                     #420.9 c26
        nop                                                     #420.9 c28
        nop                                                     #420.9 c30
        vstoreq   %v3{a}, -1720(%rbp)                           #420.9 c32
        call      times                                         #420.15 c34
..___tag_value__Z10FitTracksVv.1010:                            #
                                # LOE
..B3.123:                       # Preds ..B3.122                # Infreq Latency 91
        vloadq    .L_2il0floatpacket.1524(%rip){4to8}, %v9      #420.15 c1
        vloadq    gTicks(%rip){1to8}, %v2                       #420.15 c3
        vloadd    .L_2il0floatpacket.1525(%rip){4to16}, %v4     #420.15 c5
        movq      -2008(%rbp), %rdx                             #420.15 c7
        movq      -2000(%rbp), %rax                             #420.15 c7
        addq      %rax, %rdx                                    #420.15 c9
        movl      $1, %eax                                      #420.15 c9
        vaddpi    %v4{aaaa}, %v2, %v3                           #420.15 c11
        vkmov     %eax, %k2                                     #420.15 c11
        vandpq    %v9{dddd}, %v2, %v12{%k2}                     #420.15 c13
        movq      %rdx, -2048(%rbp)                             #420.15 c13
        vandpq    %v9{aaaa}, %v2, %v8{%k2}                      #420.15 c15
        vorpq     %v9{bbbb}, %v12, %v12{%k2}                    #420.15 c17
        vcvtpi2pd $0, -2044(%rbp){1to16}, %v1{%k2}              #420.15 c19
        vcvtpu2pd $0, -2048(%rbp){1to16}, %v0{%k2}              #420.15 c21
        vandpq    %v9{cccc}, %v3, %v3{%k2}                      #420.15 c23
        vsubrpi   .L_2il0floatpacket.1526(%rip){4to16}, %v8, %v6 #420.15 c25
        vcvtpd2ps $0, {rz}, %v12, %v10{%k2}                     #420.15 c27
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v0, %v1{%k2} #420.15 c29
        vcmppd    {eq}, %v4{bbbb}, %v3, %k3{%k2}                #420.15 c31
        vsrlpi    %v4{bbbb}, %v6, %v11                          #420.15 c33
        vcmppd    {neq}, %v2, %v2, %k1{%k2}                     #420.15 c35
        vrcpresps %v10, %v5{%k2}                                #420.15 c37
        vandpq    %v9{aaaa}, %v11, %v11{%k2}                    #420.15 c39
        vrcprefineps %v10, %v5, %v10{%k2}                       #420.15 c41
        vsubpi    %v11, %v6, %v7                                #420.15 c43
        vxorpq    %v9{aaaa}, %v8, %v7{%k3}                      #420.15 c45
        vandpq    %v9{aaaa}, %v1, %v8{%k2}                      #420.15 c47
        vcvtps2pd $0, %v10, %v10{%k2}                           #420.15 c49
        vorpq     %v2, %v2, %v7{%k1}                            #420.15 c51
        cmpl      $2, -1680(%rbp)                               #420.15 c53
        vcmppd    {eq}, %v9{aaaa}, %v8, %k0{%k2}                #420.15 c55
        vmulpd    %v11, %v10, %v11{%k2}                         #420.15 c57
        vmsubr23c1pd %v10, %v12, %v12{%k2}                      #420.15 c59
        vmulpd    %v7, %v11, %v11{%k2}                          #420.15 c61
        vmadd231pd %v12, %v12, %v12{%k2}                        #420.15 c63
        vorpq     %v1, %v1, %v10{%k2}                           #420.15 c65
        vkor      %k0, %k3                                      #420.15 c65
        vmadd231pd %v12, %v11, %v11{%k2}                        #420.15 c67
        vkandn    %k2, %k3                                      #420.15 c67
        nop                                                     #420.15 c69
        vmulpd    %v11, %v1, %v12{%k2}                          #420.15 c71
        nop                                                     #420.15 c73
        vmsubr231pd %v12, %v2, %v10{%k2}                        #420.15 c75
        nop                                                     #420.15 c77
        vmadd231pd %v11, %v10, %v12{%k3}                        #420.15 c79
        nop                                                     #420.9 c81
        nop                                                     #420.9 c83
        nop                                                     #420.9 c85
        nop                                                     #420.9 c87
        vstoreq   %v12{a}, -1704(%rbp)                          #420.9 c89
        je        ..B3.126      # Prob 16%                      #420.15 c91
..___tag_value__Z10FitTracksVv.1011:                            #
                                # LOE v12
..B3.124:                       # Preds ..B3.123                # Infreq Latency 8
        vloadq    -1696(%rbp){1to8}, %v0                        #420.9 c1
        nop                                                     #420.9 c3
        nop                                                     #420.9 c5
        vstoreq   %v0{a}, -1968(%rbp)                           #420.9 c8 stall 1
..___tag_value__Z10FitTracksVv.1012:                            #
                                # LOE
..B3.125:                       # Preds ..B3.126 ..B3.124       # Infreq Latency 2
        movl      $1, -1680(%rbp)                               #420.9 c1
        jmp       ..B3.98       # Prob 100%                     #420.9 c1
..___tag_value__Z10FitTracksVv.1013:                            #
                                # LOE
..B3.126:                       # Preds ..B3.123                # Infreq Latency 33
        vloadq    -1696(%rbp){1to8}, %v0                        #420.9 c1
        vloadq    -1688(%rbp){1to8}, %v3                        #420.9 c3
        movl      $1, %eax                                      #420.15 c5
        vkmov     %eax, %k1                                     #420.15 c7
        nop                                                     #420.15 c9
        nop                                                     #420.15 c11
        vsubpd    -1712(%rbp){1to8}, %v0, %v1{%k1}              #420.15 c14 stall 1
        vaddpd    -1720(%rbp){1to8}, %v3, %v4{%k1}              #420.15 c16
        vaddpd    %v12, %v1, %v2{%k1}                           #420.15 c18
        vsubpd    -1728(%rbp){1to8}, %v4, %v5{%k1}              #420.15 c20
        nop                                                     #420.15 c22
        nop                                                     #420.15 c24
        nop                                                     #420.15 c26
        vstoreq   %v2{a}, -1968(%rbp)                           #420.15 c28
        vstoreq   %v2{a}, -1696(%rbp)                           #420.9 c30
        vstoreq   %v5{a}, -1688(%rbp)                           #420.9 c32
        jmp       ..B3.125      # Prob 100%                     #420.9 c32
..___tag_value__Z10FitTracksVv.1014:                            #
                                # LOE
..B3.127:                       # Preds ..B3.101                # Infreq Latency 3
        lea       -1912(%rbp), %rdi                             #421.15 c1
        xorl      %esi, %esi                                    #421.15 c1
        call      gettimeofday                                  #421.15 c3
..___tag_value__Z10FitTracksVv.1015:                            #
                                # LOE
..B3.128:                       # Preds ..B3.127                # Infreq Latency 34
        movl      $1, %edx                                      #421.15 c1
        lea       -1976(%rbp), %rdi                             #421.15 c1
        vkmov     %edx, %k1                                     #421.15 c3
        vcvtpu2pd $0, -1904(%rbp){1to16}, %v0{%k1}              #421.15 c5
        vcvtpi2pd $0, -1900(%rbp){1to16}, %v2{%k1}              #421.15 c7
        vcvtpu2pd $0, -1912(%rbp){1to16}, %v1{%k1}              #421.15 c9
        vcvtpi2pd $0, -1908(%rbp){1to16}, %v3{%k1}              #421.15 c11
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v0, %v2{%k1} #421.15 c14 stall 1
        nop                                                     #421.15 c16
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v1, %v3{%k1} #421.15 c18
        nop                                                     #421.15 c20
        vmadd231pd .L_2il0floatpacket.1517(%rip){1to8}, %v2, %v3{%k1} #421.15 c22
        nop                                                     #421.9 c24
        nop                                                     #421.9 c26
        nop                                                     #421.9 c28
        nop                                                     #421.9 c30
        vstoreq   %v3{a}, -1720(%rbp)                           #421.9 c32
        call      times                                         #421.15 c34
..___tag_value__Z10FitTracksVv.1016:                            #
                                # LOE
..B3.129:                       # Preds ..B3.128                # Infreq Latency 91
        vloadq    .L_2il0floatpacket.1524(%rip){4to8}, %v9      #421.15 c1
        vloadq    gTicks(%rip){1to8}, %v2                       #421.15 c3
        vloadd    .L_2il0floatpacket.1525(%rip){4to16}, %v4     #421.15 c5
        movq      -1976(%rbp), %rdx                             #421.15 c7
        movq      -1968(%rbp), %rax                             #421.15 c7
        addq      %rax, %rdx                                    #421.15 c9
        movl      $1, %eax                                      #421.15 c9
        vaddpi    %v4{aaaa}, %v2, %v3                           #421.15 c11
        vkmov     %eax, %k2                                     #421.15 c11
        vandpq    %v9{dddd}, %v2, %v12{%k2}                     #421.15 c13
        movq      %rdx, -2048(%rbp)                             #421.15 c13
        vandpq    %v9{aaaa}, %v2, %v8{%k2}                      #421.15 c15
        vorpq     %v9{bbbb}, %v12, %v12{%k2}                    #421.15 c17
        vcvtpi2pd $0, -2044(%rbp){1to16}, %v1{%k2}              #421.15 c19
        vcvtpu2pd $0, -2048(%rbp){1to16}, %v0{%k2}              #421.15 c21
        vandpq    %v9{cccc}, %v3, %v3{%k2}                      #421.15 c23
        vsubrpi   .L_2il0floatpacket.1526(%rip){4to16}, %v8, %v6 #421.15 c25
        vcvtpd2ps $0, {rz}, %v12, %v10{%k2}                     #421.15 c27
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v0, %v1{%k2} #421.15 c29
        vcmppd    {eq}, %v4{bbbb}, %v3, %k3{%k2}                #421.15 c31
        vsrlpi    %v4{bbbb}, %v6, %v11                          #421.15 c33
        vcmppd    {neq}, %v2, %v2, %k1{%k2}                     #421.15 c35
        vrcpresps %v10, %v5{%k2}                                #421.15 c37
        vandpq    %v9{aaaa}, %v11, %v11{%k2}                    #421.15 c39
        vrcprefineps %v10, %v5, %v10{%k2}                       #421.15 c41
        vsubpi    %v11, %v6, %v7                                #421.15 c43
        vxorpq    %v9{aaaa}, %v8, %v7{%k3}                      #421.15 c45
        vandpq    %v9{aaaa}, %v1, %v8{%k2}                      #421.15 c47
        vcvtps2pd $0, %v10, %v10{%k2}                           #421.15 c49
        vorpq     %v2, %v2, %v7{%k1}                            #421.15 c51
        cmpl      $2, -1680(%rbp)                               #421.15 c53
        vcmppd    {eq}, %v9{aaaa}, %v8, %k0{%k2}                #421.15 c55
        vmulpd    %v11, %v10, %v11{%k2}                         #421.15 c57
        vmsubr23c1pd %v10, %v12, %v12{%k2}                      #421.15 c59
        vmulpd    %v7, %v11, %v11{%k2}                          #421.15 c61
        vmadd231pd %v12, %v12, %v12{%k2}                        #421.15 c63
        vorpq     %v1, %v1, %v10{%k2}                           #421.15 c65
        vkor      %k0, %k3                                      #421.15 c65
        vmadd231pd %v12, %v11, %v11{%k2}                        #421.15 c67
        vkandn    %k2, %k3                                      #421.15 c67
        nop                                                     #421.15 c69
        vmulpd    %v11, %v1, %v12{%k2}                          #421.15 c71
        nop                                                     #421.15 c73
        vmsubr231pd %v12, %v2, %v10{%k2}                        #421.15 c75
        nop                                                     #421.15 c77
        vmadd231pd %v11, %v10, %v12{%k3}                        #421.15 c79
        nop                                                     #421.9 c81
        nop                                                     #421.9 c83
        nop                                                     #421.9 c85
        nop                                                     #421.9 c87
        vstoreq   %v12{a}, -1704(%rbp)                          #421.9 c89
        je        ..B3.132      # Prob 16%                      #421.15 c91
..___tag_value__Z10FitTracksVv.1017:                            #
                                # LOE v12
..B3.130:                       # Preds ..B3.129                # Infreq Latency 8
        vloadq    -1688(%rbp){1to8}, %v0                        #421.9 c1
        nop                                                     #421.9 c3
        nop                                                     #421.9 c5
        vstoreq   %v0{a}, -1504(%rbp)                           #421.9 c8 stall 1
..___tag_value__Z10FitTracksVv.1018:                            #
                                # LOE
..B3.131:                       # Preds ..B3.132 ..B3.130       # Infreq Latency 2
        movl      $1, -1680(%rbp)                               #421.9 c1
        jmp       ..B3.105      # Prob 100%                     #421.9 c1
..___tag_value__Z10FitTracksVv.1019:                            #
                                # LOE
..B3.132:                       # Preds ..B3.129                # Infreq Latency 33
        vloadq    -1696(%rbp){1to8}, %v0                        #421.9 c1
        vloadq    -1688(%rbp){1to8}, %v3                        #421.9 c3
        movl      $1, %eax                                      #421.15 c5
        vkmov     %eax, %k1                                     #421.15 c7
        nop                                                     #421.15 c9
        nop                                                     #421.15 c11
        vsubpd    -1712(%rbp){1to8}, %v0, %v1{%k1}              #421.15 c14 stall 1
        vaddpd    -1720(%rbp){1to8}, %v3, %v4{%k1}              #421.15 c16
        vaddpd    %v12, %v1, %v2{%k1}                           #421.15 c18
        vsubpd    -1728(%rbp){1to8}, %v4, %v5{%k1}              #421.15 c20
        nop                                                     #421.9 c22
        nop                                                     #421.9 c24
        nop                                                     #421.9 c26
        vstoreq   %v2{a}, -1696(%rbp)                           #421.9 c28
        vstoreq   %v5{a}, -1504(%rbp)                           #421.15 c30
        vstoreq   %v5{a}, -1688(%rbp)                           #421.9 c32
        jmp       ..B3.131      # Prob 100%                     #421.9 c32
..___tag_value__Z10FitTracksVv.1020:                            #
                                # LOE
..B3.133:                       # Preds ..B3.85                 # Infreq Latency 3
        lea       -1944(%rbp), %rdi                             #418.15 c1
        xorl      %esi, %esi                                    #418.15 c1
        call      gettimeofday                                  #418.15 c3
..___tag_value__Z10FitTracksVv.1021:                            #
                                # LOE
..B3.134:                       # Preds ..B3.133                # Infreq Latency 34
        movl      $1, %edx                                      #418.15 c1
        lea       -2040(%rbp), %rdi                             #418.15 c1
        vkmov     %edx, %k1                                     #418.15 c3
        vcvtpu2pd $0, -1936(%rbp){1to16}, %v0{%k1}              #418.15 c5
        vcvtpi2pd $0, -1932(%rbp){1to16}, %v2{%k1}              #418.15 c7
        vcvtpu2pd $0, -1944(%rbp){1to16}, %v1{%k1}              #418.15 c9
        vcvtpi2pd $0, -1940(%rbp){1to16}, %v3{%k1}              #418.15 c11
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v0, %v2{%k1} #418.15 c14 stall 1
        nop                                                     #418.15 c16
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v1, %v3{%k1} #418.15 c18
        nop                                                     #418.15 c20
        vmadd231pd .L_2il0floatpacket.1517(%rip){1to8}, %v2, %v3{%k1} #418.15 c22
        nop                                                     #418.9 c24
        nop                                                     #418.9 c26
        nop                                                     #418.9 c28
        nop                                                     #418.9 c30
        vstoreq   %v3{a}, -1720(%rbp)                           #418.9 c32
        call      times                                         #418.15 c34
..___tag_value__Z10FitTracksVv.1022:                            #
                                # LOE
..B3.135:                       # Preds ..B3.134                # Infreq Latency 97
        vloadq    .L_2il0floatpacket.1524(%rip){4to8}, %v1      #418.15 c1
        vloadq    gTicks(%rip){1to8}, %v3                       #418.15 c3
        movq      -2040(%rbp), %rdx                             #418.15 c5
        movq      -2032(%rbp), %rax                             #418.15 c5
        addq      %rax, %rdx                                    #418.15 c7
        movl      $1, %eax                                      #418.15 c7
        vkmov     %eax, %k2                                     #418.15 c9
        movq      %rdx, -2048(%rbp)                             #418.15 c9
        vandpq    %v1{dddd}, %v3, %v11{%k2}                     #418.15 c11
        vcvtpi2pd $0, -2044(%rbp){1to16}, %v2{%k2}              #418.15 c13
        vorpq     %v1{bbbb}, %v11, %v11{%k2}                    #418.15 c15
        vcvtpu2pd $0, -2048(%rbp){1to16}, %v0{%k2}              #418.15 c17
        vandpq    %v1{aaaa}, %v3, %v8{%k2}                      #418.15 c19
        vcmppd    {neq}, %v3, %v3, %k1{%k2}                     #418.15 c21
        vsubrpi   .L_2il0floatpacket.1526(%rip){4to16}, %v8, %v6 #418.15 c23
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v0, %v2{%k2} #418.15 c25
        vloadd    .L_2il0floatpacket.1525(%rip){4to16}, %v0     #418.15 c27
        vcvtpd2ps $0, {rz}, %v11, %v9{%k2}                      #418.15 c29
        cmpl      $2, -1680(%rbp)                               #418.15 c31
        vaddpi    %v0{aaaa}, %v3, %v4                           #418.15 c33
        vsrlpi    %v0{bbbb}, %v6, %v10                          #418.15 c35
        vandpq    %v1{cccc}, %v4, %v4{%k2}                      #418.15 c37
        vrcpresps %v9, %v5{%k2}                                 #418.15 c39
        vandpq    %v1{aaaa}, %v10, %v10{%k2}                    #418.15 c41
        vrcprefineps %v9, %v5, %v9{%k2}                         #418.15 c43
        vcmppd    {eq}, %v0{bbbb}, %v4, %k3{%k2}                #418.15 c45
        vsubpi    %v10, %v6, %v7                                #418.15 c47
        vcvtps2pd $0, %v9, %v9{%k2}                             #418.15 c50 stall 1
        nop                                                     #418.15 c52
        vxorpq    %v1{aaaa}, %v8, %v7{%k3}                      #418.15 c55 stall 1
        vandpq    %v1{aaaa}, %v2, %v8{%k2}                      #418.15 c57
        vorpq     %v3, %v3, %v7{%k1}                            #418.15 c59
        vmulpd    %v10, %v9, %v10{%k2}                          #418.15 c61
        vmsubr23c1pd %v9, %v11, %v11{%k2}                       #418.15 c63
        vcmppd    {eq}, %v1{aaaa}, %v8, %k0{%k2}                #418.15 c65
        vmadd231pd %v11, %v11, %v11{%k2}                        #418.15 c67
        vmulpd    %v7, %v10, %v10{%k2}                          #418.15 c69
        vorpq     %v2, %v2, %v9{%k2}                            #418.15 c71
        vmadd231pd %v11, %v10, %v10{%k2}                        #418.15 c73
        movb      %al, %al                                      #418.15 c73
        vkor      %k0, %k3                                      #418.15 c75
        vmulpd    %v10, %v2, %v11{%k2}                          #418.15 c77
        vkandn    %k2, %k3                                      #418.15 c77
        nop                                                     #418.15 c79
        vmsubr231pd %v11, %v3, %v9{%k2}                         #418.15 c81
        nop                                                     #418.15 c83
        vmadd231pd %v10, %v9, %v11{%k3}                         #418.15 c85
        nop                                                     #418.9 c87
        nop                                                     #418.9 c89
        nop                                                     #418.9 c91
        nop                                                     #418.9 c93
        vstoreq   %v11{a}, -1704(%rbp)                          #418.9 c95
        je        ..B3.138      # Prob 16%                      #418.15 c97
..___tag_value__Z10FitTracksVv.1023:                            #
                                # LOE v0 v1 v11
..B3.136:                       # Preds ..B3.135                # Infreq Latency 1
        vloadq    -1696(%rbp){1to8}, %v2                        #418.9 c1
..___tag_value__Z10FitTracksVv.1024:                            #
                                # LOE v0 v1 v2
..B3.137:                       # Preds ..B3.138 ..B3.136       # Infreq Latency 2
        movl      $1, -1680(%rbp)                               #418.9 c1
        jmp       ..B3.89       # Prob 100%                     #418.9 c1
..___tag_value__Z10FitTracksVv.1025:                            #
                                # LOE v0 v1 v2
..B3.138:                       # Preds ..B3.135                # Infreq Latency 31
        vloadq    -1696(%rbp){1to8}, %v2                        #418.9 c1
        vloadq    -1688(%rbp){1to8}, %v4                        #418.9 c3
        movl      $1, %eax                                      #418.15 c5
        vkmov     %eax, %k1                                     #418.15 c7
        nop                                                     #418.15 c9
        nop                                                     #418.15 c11
        vsubpd    -1712(%rbp){1to8}, %v2, %v3{%k1}              #418.15 c14 stall 1
        vaddpd    -1720(%rbp){1to8}, %v4, %v5{%k1}              #418.15 c16
        vaddpd    %v11, %v3, %v2{%k1}                           #418.15 c18
        vsubpd    -1728(%rbp){1to8}, %v5, %v6{%k1}              #418.15 c20
        nop                                                     #418.9 c22
        nop                                                     #418.9 c24
        nop                                                     #418.9 c26
        vstoreq   %v2{a}, -1696(%rbp)                           #418.9 c28
        vstoreq   %v6{a}, -1688(%rbp)                           #418.9 c30
        jmp       ..B3.137      # Prob 100%                     #418.9 c30
..___tag_value__Z10FitTracksVv.1026:                            #
                                # LOE v0 v1 v2
..___tag_value__Z10FitTracksVv.781:
..B3.139:                       # Preds ..B3.106 ..B3.105 ..B3.99 ..B3.98 ..B3.92
                                #       ..B3.91 ..B3.90 ..B3.89 ..B3.83 ..B3.82
                                #       ..B3.81 ..B3.80 ..B3.78 ..B3.77 ..B3.75
                                #       ..B3.71                 # Infreq Latency 1
        movq      %rax, -2048(%rbp)                             #401.11 c1
..___tag_value__Z10FitTracksVv.1027:                            #
                                # LOE
..B3.140:                       # Preds ..B3.147 ..B3.144 ..B3.139 # Infreq Latency 3
        lea       -688(%rbp), %rdi                              #401.11 c1
..___tag_value__Z10FitTracksVv.1028:                            #401.11
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev #401.11
..___tag_value__Z10FitTracksVv.1030:                            #
                                # LOE
..B3.141:                       # Preds ..B3.140                # Infreq Latency 3
        movq      -2048(%rbp), %rdi                             #401.11 c1
        xorl      %eax, %eax                                    #401.11 c1
..___tag_value__Z10FitTracksVv.1032:                            #401.11
        call      _Unwind_Resume                                #401.11
..___tag_value__Z10FitTracksVv.1034:                            #
                                # LOE
..___tag_value__Z10FitTracksVv.783:
..B3.143:                       # Preds ..B3.74 ..B3.73         # Infreq Latency 1
        movq      %rax, -2048(%rbp)                             #402.27 c1
..___tag_value__Z10FitTracksVv.1036:                            #
                                # LOE
..B3.144:                       # Preds ..B3.143                # Infreq Latency 3
        lea       -1496(%rbp), %rdi                             #402.27 c1
..___tag_value__Z10FitTracksVv.1037:                            #402.27
        call      _ZNSsD1Ev                                     #402.27
..___tag_value__Z10FitTracksVv.1039:                            #
        jmp       ..B3.140      # Prob 100%                     #402.27 c3
..___tag_value__Z10FitTracksVv.1040:                            #
                                # LOE
..___tag_value__Z10FitTracksVv.782:
..B3.146:                       # Preds ..B3.72                 # Infreq Latency 1
        movq      %rax, -2048(%rbp)                             #402.27 c1
..___tag_value__Z10FitTracksVv.1041:                            #
                                # LOE
..B3.147:                       # Preds ..B3.146                # Infreq Latency 3
        lea       -1496(%rbp), %rdi                             #402.27 c1
..___tag_value__Z10FitTracksVv.1042:                            #402.27
        call      _ZNSsD1Ev                                     #402.27
..___tag_value__Z10FitTracksVv.1044:                            #
        jmp       ..B3.140      # Prob 100%                     #402.27 c3
..___tag_value__Z10FitTracksVv.1045:                            #
                                # LOE
..B3.149:                       # Preds ..B3.57                 # Infreq Latency 27
        vloadq    -128(%rbp){1to8}, %v1                         #389.5 c1
        movl      $1, %eax                                      #389.12 c1
        vloadq    -120(%rbp){1to8}, %v4                         #389.5 c3
        vkmov     %eax, %k1                                     #389.12 c3
        nop                                                     #389.12 c5
        nop                                                     #389.12 c7
        vsubpd    -144(%rbp){1to8}, %v1, %v2{%k1}               #389.12 c10 stall 1
        vaddpd    -152(%rbp){1to8}, %v4, %v5{%k1}               #389.12 c12
        vaddpd    %v12, %v2, %v3{%k1}                           #389.12 c14
        vsubpd    -160(%rbp){1to8}, %v5, %v1{%k1}               #389.12 c16
        nop                                                     #389.5 c18
        nop                                                     #389.5 c20
        nop                                                     #389.5 c22
        vstoreq   %v3{a}, -128(%rbp)                            #389.5 c24
        vstoreq   %v1{a}, -120(%rbp)                            #389.5 c26
        jmp       ..B3.59       # Prob 100%                     #389.5 c26
..___tag_value__Z10FitTracksVv.1046:                            #
                                # LOE r15 r14d v0 v1
..B3.150:                       # Preds ..B3.44                 # Infreq Latency 3
        movl      $2, %edi                                      #341.13 c1
        call      sysconf                                       #341.13 c3
..___tag_value__Z10FitTracksVv.1047:                            #
                                # LOE rax
..B3.151:                       # Preds ..B3.150                # Infreq Latency 27
        movq      %rax, -2048(%rbp)                             #341.13 c1
        movl      $1, %eax                                      #341.13 c1
        vkmov     %eax, %k1                                     #341.13 c3
        vcvtpi2pd $0, -2044(%rbp){1to16}, %v1{%k1}              #341.13 c5
        vcvtpu2pd $0, -2048(%rbp){1to16}, %v0{%k1}              #341.13 c7
        nop                                                     #341.13 c9
        nop                                                     #341.13 c11
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v0, %v1{%k1} #341.13 c14 stall 1
        nop                                                     #341.13 c16
        nop                                                     #341.13 c18
        nop                                                     #341.13 c20
        nop                                                     #341.13 c22
        vstoreq   %v1{a}, -2040(%rbp)                           #341.13 c24
        vstoreq   %v1{a}, gTicks(%rip)                          #341.13 c26
        jmp       ..B3.45       # Prob 100%                     #341.13 c26
..___tag_value__Z10FitTracksVv.1048:                            #
                                # LOE
..B3.152:                       # Preds ..B3.41                 # Infreq Latency 3
        movl      $2, %edi                                      #340.13 c1
        call      sysconf                                       #340.13 c3
..___tag_value__Z10FitTracksVv.1049:                            #
                                # LOE rax
..B3.153:                       # Preds ..B3.152                # Infreq Latency 27
        movq      %rax, -2048(%rbp)                             #340.13 c1
        movl      $1, %eax                                      #340.13 c1
        vkmov     %eax, %k1                                     #340.13 c3
        vcvtpi2pd $0, -2044(%rbp){1to16}, %v1{%k1}              #340.13 c5
        vcvtpu2pd $0, -2048(%rbp){1to16}, %v0{%k1}              #340.13 c7
        nop                                                     #340.13 c9
        nop                                                     #340.13 c11
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v0, %v1{%k1} #340.13 c14 stall 1
        nop                                                     #340.13 c16
        nop                                                     #340.13 c18
        nop                                                     #340.13 c20
        nop                                                     #340.13 c22
        vstoreq   %v1{a}, -2040(%rbp)                           #340.13 c24
        vstoreq   %v1{a}, gTicks(%rip)                          #340.13 c26
        jmp       ..B3.42       # Prob 100%                     #340.13 c26
..___tag_value__Z10FitTracksVv.1050:                            #
                                # LOE
..B3.154:                       # Preds ..B3.3                  # Infreq Latency 3
        movl      $2, %edi                                      #248.13 c1
        call      sysconf                                       #248.13 c3
..___tag_value__Z10FitTracksVv.1051:                            #
                                # LOE rax
..B3.155:                       # Preds ..B3.154                # Infreq Latency 27
        movq      %rax, -2048(%rbp)                             #248.13 c1
        movl      $1, %eax                                      #248.13 c1
        vkmov     %eax, %k1                                     #248.13 c3
        vcvtpi2pd $0, -2044(%rbp){1to16}, %v1{%k1}              #248.13 c5
        vcvtpu2pd $0, -2048(%rbp){1to16}, %v0{%k1}              #248.13 c7
        nop                                                     #248.13 c9
        nop                                                     #248.13 c11
        vmadd132pd .L_2il0floatpacket.1522(%rip){1to8}, %v0, %v1{%k1} #248.13 c14 stall 1
        nop                                                     #248.13 c16
        nop                                                     #248.13 c18
        nop                                                     #248.13 c20
        nop                                                     #248.13 c22
        vstoreq   %v1{a}, -2040(%rbp)                           #248.13 c24
        vstoreq   %v1{a}, gTicks(%rip)                          #248.13 c26
        jmp       ..B3.4        # Prob 100%                     #248.13 c26
        .align    16,0x90
..___tag_value__Z10FitTracksVv.1052:                            #
                                # LOE
# mark_end;
	.type	_Z10FitTracksVv,@function
	.size	_Z10FitTracksVv,.-_Z10FitTracksVv
	.section .gcc_except_table, "a"
	.align 4
_Z10FitTracksVv$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__Z10FitTracksVv.1056 - ..___tag_value__Z10FitTracksVv.1055
..___tag_value__Z10FitTracksVv.1055:
	.byte	1
	.uleb128	..___tag_value__Z10FitTracksVv.1054 - ..___tag_value__Z10FitTracksVv.1053
..___tag_value__Z10FitTracksVv.1053:
	.uleb128	..___tag_value__Z10FitTracksVv.794 - ..___tag_value__Z10FitTracksVv.785
	.uleb128	..___tag_value__Z10FitTracksVv.889 - ..___tag_value__Z10FitTracksVv.794
	.byte	0
	.byte	0
	.uleb128	..___tag_value__Z10FitTracksVv.891 - ..___tag_value__Z10FitTracksVv.785
	.uleb128	..___tag_value__Z10FitTracksVv.893 - ..___tag_value__Z10FitTracksVv.891
	.uleb128	..___tag_value__Z10FitTracksVv.781 - ..___tag_value__Z10FitTracksVv.785
	.byte	0
	.uleb128	..___tag_value__Z10FitTracksVv.895 - ..___tag_value__Z10FitTracksVv.785
	.uleb128	..___tag_value__Z10FitTracksVv.897 - ..___tag_value__Z10FitTracksVv.895
	.uleb128	..___tag_value__Z10FitTracksVv.782 - ..___tag_value__Z10FitTracksVv.785
	.byte	0
	.uleb128	..___tag_value__Z10FitTracksVv.899 - ..___tag_value__Z10FitTracksVv.785
	.uleb128	..___tag_value__Z10FitTracksVv.905 - ..___tag_value__Z10FitTracksVv.899
	.uleb128	..___tag_value__Z10FitTracksVv.783 - ..___tag_value__Z10FitTracksVv.785
	.byte	0
	.uleb128	..___tag_value__Z10FitTracksVv.907 - ..___tag_value__Z10FitTracksVv.785
	.uleb128	..___tag_value__Z10FitTracksVv.977 - ..___tag_value__Z10FitTracksVv.907
	.uleb128	..___tag_value__Z10FitTracksVv.781 - ..___tag_value__Z10FitTracksVv.785
	.byte	0
	.uleb128	..___tag_value__Z10FitTracksVv.990 - ..___tag_value__Z10FitTracksVv.785
	.uleb128	..___tag_value__Z10FitTracksVv.992 - ..___tag_value__Z10FitTracksVv.990
	.byte	0
	.byte	0
	.uleb128	..___tag_value__Z10FitTracksVv.1032 - ..___tag_value__Z10FitTracksVv.785
	.uleb128	..___tag_value__Z10FitTracksVv.1034 - ..___tag_value__Z10FitTracksVv.1032
	.byte	0
	.byte	0
..___tag_value__Z10FitTracksVv.1054:
	.byte	1
	.byte	0
	.long	0x00000000,0x00000000
..___tag_value__Z10FitTracksVv.1056:
	.data
# -- End  _Z10FitTracksVv
	.section .text._Z3FitR6TrackVP7Stationi, "xaG",@progbits,_Z3FitR6TrackVP7Stationi,comdat
..TXTST1:
# -- Begin  _Z3FitR6TrackVP7Stationi
# mark_begin;
# Threads 2
        .align    16,0x90
	.weak _Z3FitR6TrackVP7Stationi
_Z3FitR6TrackVP7Stationi:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %edx
..B4.1:                         # Preds ..B4.0 Latency 44

### {

..___tag_value__Z3FitR6TrackVP7Stationi.1057:                   #498.1
        pushq     %rbp                                          #498.1
..___tag_value__Z3FitR6TrackVP7Stationi.1059:                   #
        movq      %rsp, %rbp                                    #498.1
..___tag_value__Z3FitR6TrackVP7Stationi.1060:                   #
        andq      $-64, %rsp                                    #498.1
        pushq     %r12                                          #498.1 c1
..___tag_value__Z3FitR6TrackVP7Stationi.1062:                   #
        pushq     %r13                                          #498.1 c2
..___tag_value__Z3FitR6TrackVP7Stationi.1063:                   #
        pushq     %r14                                          #498.1 c3
..___tag_value__Z3FitR6TrackVP7Stationi.1064:                   #
        pushq     %r15                                          #498.1 c4
..___tag_value__Z3FitR6TrackVP7Stationi.1065:                   #
        pushq     %rbx                                          #498.1 c5
..___tag_value__Z3FitR6TrackVP7Stationi.1066:                   #
        subq      $2328, %rsp                                   #498.1 c6
        movq      %rsi, %r14                                    #498.1 c6

### // Stopwatch timer_test1,timer_test11,timer_test2;
### // timer_test1.Start();
###   HitInfo Xinfo, Yinfo;
###   cnst c16 = 16.;
###   Xinfo.cos_phi = ONE; 
###   Xinfo.sin_phi = ZERO;

        xorl      %eax, %eax                                    #504.19 c8
        movl      $1065353216, (%rsp)                           #503.19 c8
        vloadd    (%rsp){1to16}, %v0                            #503.19 c10
        movl      %edx, %ebx                                    #498.1 c10
        movl      %eax, 8(%rsp)                                 #504.19 c12

###   Xinfo.sigma2  = vStations[0].Sigma2;
###   Xinfo.sigma216 = Xinfo.sigma2*c16;
###   Yinfo.cos_phi = ZERO;
###   Yinfo.sin_phi = ONE; 
###   Yinfo.sigma2  = Xinfo.sigma2;
###   Yinfo.sigma216 = Xinfo.sigma216;
### // timer_test1.Stop();
### // timer_test11.Start();
###   // upstream 
### 
###   GuessVec( t, vStations,NStations );

        movl      %ebx, %edx                                    #515.3 c12
        vloadd    448(%r14), %v4                                #505.19 c14
        movq      %rdi, %r13                                    #498.1 c14
        movl      $1098907648, 16(%rsp)                         #506.33 c16
        movl      $1065353216, 32(%rsp)                         #508.19 c18
        vloadd    8(%rsp){1to16}, %v1                           #504.19 c20
        movl      %eax, 24(%rsp)                                #507.19 c20
        vmulps    16(%rsp){1to16}, %v4, %v5                     #506.33 c22
        vloadd    24(%rsp){1to16}, %v2                          #507.19 c24
        vloadd    32(%rsp){1to16}, %v3                          #508.19 c26
        movb      %al, %al                                      #503.3 c26
        vstored   %v0, 768(%rsp)                                #503.3 c28
        vstored   %v1, 832(%rsp)                                #504.3 c30
        vstored   %v4, 896(%rsp)                                #505.3 c32
        vstored   %v5, 960(%rsp)                                #506.3 c34
        vstored   %v2, 1024(%rsp)                               #507.3 c36
        vstored   %v3, 1088(%rsp)                               #508.3 c38
        vstored   %v4, 1152(%rsp)                               #509.3 c40
        vstored   %v5, 1216(%rsp)                               #510.3 c42
..___tag_value__Z3FitR6TrackVP7Stationi.1067:                   #515.3
        call      _Z8GuessVecR6TrackVP7Stationi                 #515.3
..___tag_value__Z3FitR6TrackVP7Stationi.1068:                   #
                                # LOE r13 r14 ebx
..B4.2:                         # Preds ..B4.1 Latency 53

###   
###   // downstream
### 
###   FieldRegion f;

        movl      $0, 656(%rsp)                                 #519.15 c1
        vloadd    656(%rsp){1to16}, %v0                         #519.15 c3

###   Fvec_t z0,z1,z2, dz;
###   FieldVector H0, H1, H2;
### 
###   Fvec_t qp0 = t.T[4];

        lea       4864(%r13), %r10                              #523.16 c5
        vloadunpackld 4864(%r13), %v1                           #523.16
        testq     $63, %r10                                     #523.16
        je        ..L1069       # Prob 50%                      #523.16
        vloadunpackhd 4928(%r13), %v1                           #523.16
..L1069:                                                        #

###   Int_t i= NStations-1;

        movl      %ebx, %r15d                                   #524.22 c5
        movq      %r15, %rax                                    #524.22 c7

###   HitV *h = &t.vHits[i];
### 
###   FilterFirst( t, *h, vStations[i] );

        movq      %r13, %rdi                                    #527.3 c7
        shlq      $32, %rax                                     #524.22 c9
        sarq      $32, %rax                                     #524.22 c11
        vstored   %v0, 576(%rsp)                                #519.15 c11
        imulq     $2496, %rax, %rcx                             #524.22 c13
        lea       (%rax,%rax,2), %r12                           #525.14 c27
        lea       -2496(%rcx), %r8                              #527.23 c27
        shlq      $7, %r12                                      #525.14 c29
        vstored   %v0, 512(%rsp)                                #519.15 c29
        lea       (%r14,%r8), %rdx                              #527.23 c31
        vstored   %v0, 448(%rsp)                                #519.15 c31
        lea       -384(%r13,%r12), %rsi                         #525.14 c33
        vstored   %v0, 384(%rsp)                                #519.15 c33
        vstored   %v0, 320(%rsp)                                #519.15 c35
        vstored   %v0, 256(%rsp)                                #519.15 c37
        vstored   %v0, 192(%rsp)                                #519.15 c39
        vstored   %v0, 128(%rsp)                                #519.15 c41
        vstored   %v0, 64(%rsp)                                 #519.15 c43
        vstored   %v0, (%rsp)                                   #519.15 c45
        vstored   %v1, 1856(%rsp)                               #523.14 c47
        movb      %al, %al                                      #525.14 c47
        movq      %rsi, 1672(%rsp)                              #525.14 c49
        movq      %rcx, 1664(%rsp)                              #524.22 c49
        movq      %r8, 640(%rsp)                                #527.23 c51
        movq      %rdx, 648(%rsp)                               #527.23 c51
..___tag_value__Z3FitR6TrackVP7Stationi.1070:                   #527.3
        call      _Z11FilterFirstR6TrackVR4HitVR7Station        #527.3
..___tag_value__Z3FitR6TrackVP7Stationi.1071:                   #
                                # LOE r12 r13 r14 r15 ebx
..B4.3:                         # Preds ..B4.2 Latency 5

###   AddMaterial( t, vStations[ i ], qp0 );

        movq      %r13, %rdi                                    #528.3 c1
        movq      648(%rsp), %rsi                               #528.3 c1
        lea       1856(%rsp), %rdx                              #528.3 c3
..___tag_value__Z3FitR6TrackVP7Stationi.1072:                   #528.3
        call      _Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE #528.3
..___tag_value__Z3FitR6TrackVP7Stationi.1073:                   #
                                # LOE r12 r13 r14 r15 ebx
..B4.4:                         # Preds ..B4.3 Latency 29

### 
###   z1 = vStations[ i ].z;

        shlq      $32, %r15                                     #530.8 c1

###   vStations[i].Map.GetField(t.T[0],t.T[1], H1);

        movq      640(%rsp), %rax                               #531.20 c1
        sarq      $32, %r15                                     #530.8 c3
        lea       4608(%r13), %rsi                              #531.20 c3
        imulq     $2496, %r15, %r15                             #530.8 c5
        vloadd    -2496(%r14,%r15), %v0                         #530.8 c19
        lea       576(%r14,%rax), %rdi                          #531.20 c19
        lea       4672(%r13), %rdx                              #531.20 c21
        lea       1280(%rsp), %rcx                              #531.20 c21
        lea       1344(%rsp), %r8                               #531.20 c23
        lea       1408(%rsp), %r9                               #531.20 c23
        movq      %rsi, 2240(%rsp)                              #531.20 c25
        movb      %al, %al                                      #530.3 c25
        vstored   %v0, 1920(%rsp)                               #530.3 c27
..___tag_value__Z3FitR6TrackVP7Stationi.1074:                   #531.20
        call      _ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_ #531.20
..___tag_value__Z3FitR6TrackVP7Stationi.1075:                   #
                                # LOE r12 r13 r14 r15 ebx
..B4.5:                         # Preds ..B4.4 Latency 45

###   H1.Combine( h->H, h->w );

        vloadd    1280(%rsp), %v1                               #532.3 c1

### 
###   z2 = vStations[ i-2 ].z;
###   dz = z2-z1;
###   vStations[ i-2 ].Map.GetField(t.T[0]+t.T[2]*dz,t.T[1]+t.T[3]*dz,H2);

        lea       640(%rsp), %rsi                               #536.24 c1
        vloadd    1344(%rsp), %v3                               #532.3 c3
        lea       704(%rsp), %rdx                               #536.24 c3
        vloadd    1408(%rsp), %v5                               #532.3 c5
        lea       1472(%rsp), %rcx                              #536.24 c5
        vloadd    -7488(%r15,%r14), %v6                         #534.8 c7
        lea       1536(%rsp), %r8                               #536.24 c7
        vloadd    4736(%r13), %v7                               #536.47 c9
        lea       1600(%rsp), %r9                               #536.24 c9
        vsubps    1920(%rsp), %v6, %v8                          #535.11 c11
        vloadd    4800(%r13), %v9                               #536.64 c13
        vmadd213ps 4608(%r13), %v8, %v7                         #536.47 c15
        vmadd213ps 4672(%r13), %v8, %v9                         #536.64 c17
        movb      %al, %al                                      #532.6 c17
        movq      1672(%rsp), %rax                              #532.6 c19
        movq      1664(%rsp), %r10                              #536.24 c19
        vstored   %v6, 1984(%rsp)                               #534.3 c21
        vsubrps   192(%rax), %v1, %v0                           #532.6 c23
        lea       -6912(%r14,%r10), %rdi                        #536.24 c23
        vsubrps   256(%rax), %v3, %v2                           #532.6 c25
        vsubrps   320(%rax), %v5, %v4                           #532.6 c27
        vmadd231ps 128(%rax), %v0, %v1                          #532.6 c29
        vmadd231ps 128(%rax), %v2, %v3                          #532.6 c31
        vmadd231ps 128(%rax), %v4, %v5                          #532.6 c33
        movb      %dl, %dl                                      #536.3 c33
        vstored   %v7, 640(%rsp)                                #536.3 c35
        vstored   %v1, 1280(%rsp)                               #532.3 c37
        vstored   %v3, 1344(%rsp)                               #532.3 c39
        vstored   %v5, 1408(%rsp)                               #532.3 c41
        vstored   %v9, 704(%rsp)                                #536.47 c43
..___tag_value__Z3FitR6TrackVP7Stationi.1076:                   #536.24
        call      _ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_ #536.24
..___tag_value__Z3FitR6TrackVP7Stationi.1077:                   #
                                # LOE r12 r13 r14 r15 ebx
..B4.6:                         # Preds ..B4.5 Latency 19

###   h = &t.vHits[i-2];
###   H2.Combine( h->H, h->w );

        vloadd    1472(%rsp), %v4                               #538.3 c1
        movl      %ebx, %r8d                                    #524.10 c1
        vloadd    1536(%rsp), %v3                               #538.3 c3

### 
### // timer_test11.Stop();
### // timer_test2.Start();
### // TimeStampCounter unitimer2[3];
### // Stopwatch  unitimer2[3];
###   for( --i; i>=0; i-- ){

        xorl      %ecx, %ecx                                    #544.3 c3
        vsubrps   -960(%r12,%r13), %v4, %v0                     #538.6 c5
        xorl      %edx, %edx                                    # c5
        vsubrps   -896(%r12,%r13), %v3, %v1                     #538.6 c7
        movl      $4, %eax                                      # c7
        vmadd231ps -1024(%r12,%r13), %v0, %v4                   #538.6 c9
        lea       -768(%r13,%r12), %rsi                         # c9
        vloadd    1600(%rsp), %v0                               #538.3 c11
        lea       -4992(%r14,%r15), %rdi                        # c11
        vmadd231ps -1024(%r12,%r13), %v1, %v3                   #538.6 c13
        addl      $-2, %r8d                                     #524.10 c13
        vsubrps   -832(%r12,%r13), %v0, %v2                     #538.6 c15
        nop                                                     #538.6 c17
        vmadd231ps -1024(%r12,%r13), %v2, %v0                   #538.6 c19
        js        ..B4.19       # Prob 3%                       #544.16 c19
                                # LOE rsi rdi r13 r14 eax edx ecx ebx v0 v3 v4
..B4.7:                         # Preds ..B4.6 Latency 25
        imull     $39, %ebx, %r10d                              # c1
        decl      %ebx                                          #544.10 c11
        vstored   %v0, 1600(%rsp)                               #538.3 c11

###     h = &t.vHits[i];
###     Station &st = vStations[i];
###     z0 = st.z;    
###     dz = (z1-z0);
###     st.Map.GetField(t.T[0]-t.T[2]*dz,t.T[1]-t.T[3]*dz,H0);
###     H0.Combine( h->H, h->w );
###     f.Set( H0, z0, H1, z1, H2, z2);
### 
###     //CalcRegion(f,t.T,vStations[i+1].Map,vStations[i+1].MapLeft, st.Map ); 
### // unitimer2[0].Start();
###     ExtrapolateALight( t.T, t.C, st.zhit, qp0, f );

        lea       4992(%r13), %r9                               #555.29 c13
        movl      %ebx, 2256(%rsp)                              #544.10 c13
        movl      %edx, %ebx                                    #544.10 c15
        vstored   %v3, 1536(%rsp)                               #538.3 c15
        vloadd    1920(%rsp), %v0                               #548.11 c17
        movl      %eax, %r15d                                   #544.10 c17
        vstored   %v4, 1472(%rsp)                               #538.3 c19
        movl      %ecx, %r12d                                   #544.10 c19
        movq      %r9, 2248(%rsp)                               #544.10 c21
        movq      %r13, 2280(%rsp)                              #544.10 c21
        movl      %r10d, 2264(%rsp)                             #544.10 c23
        movq      %rsi, %r13                                    #544.10 c23
        movq      %r14, 2272(%rsp)                              #544.10 c25
        movq      %rdi, %r14                                    #544.10 c25
        jmp       ..B4.8        # Prob 100%                     #544.10 c25
                                # LOE r13 r14 ebx r12d r15d v0
..B4.17:                        # Preds ..B4.16 Latency 16
        vstored   %v1, 1600(%rsp)                               #538.3 c1
        vstored   %v2, 1536(%rsp)                               #538.3 c3
        vstored   %v3, 1472(%rsp)                               #538.3 c5
        vstored   %v4, 1984(%rsp)                               #534.3 c7
        vstored   %v5, 1408(%rsp)                               #532.3 c9
        vstored   %v6, 1344(%rsp)                               #532.3 c11
        vstored   %v7, 1280(%rsp)                               #532.3 c13
        vstored   %v0, 1920(%rsp)                               #530.3 c15
                                # LOE r13 r14 ebx r12d r15d v0
..B4.8:                         # Preds ..B4.17 ..B4.7 Latency 37
        movl      2264(%rsp), %r10d                             #547.10 c1
        lea       576(%r14), %rdi                               #549.12 c1
        movq      2272(%rsp), %r8                               #547.10 c3
        lea       2112(%rsp), %rsi                              #549.12 c3
        lea       (%r10,%rbx), %r11d                            #547.10 c5
        lea       2176(%rsp), %rdx                              #549.12 c5
        shlq      $32, %r11                                     #547.10 c7
        lea       1664(%rsp), %rcx                              #549.12 c7
        sarq      $32, %r11                                     #547.10 c9
        lea       1792(%rsp), %r9                               #549.12 c9
        shlq      $6, %r11                                      #547.10 c11
        movq      %r11, 2288(%rsp)                              #547.10 c13
        vloadd    -4992(%r8,%r11), %v1                          #547.10 c15
        vsubps    -4992(%r8,%r11), %v0, %v2                     #548.14 c17
        movb      %al, %al                                      #549.35 c17
        movq      2280(%rsp), %r8                               #549.35 c19
        vloadd    4736(%r8), %v0                                #549.35 c22 stall 1
        vloadd    4800(%r8), %v3                                #549.52 c24
        vmsub213ps 4608(%r8), %v2, %v0                          #549.35 c26
        vmsub213ps 4672(%r8), %v2, %v3                          #549.52 c28
        lea       1728(%rsp), %r8                               #549.12 c28
        vstored   %v1, 2048(%rsp)                               #547.5 c30
        vstored   %v0, 2112(%rsp)                               #549.5 c33 stall 1
        vstored   %v3, 2176(%rsp)                               #549.35 c35
..___tag_value__Z3FitR6TrackVP7Stationi.1078:                   #549.12
        call      _ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_ #549.12
..___tag_value__Z3FitR6TrackVP7Stationi.1079:                   #
                                # LOE r13 r14 ebx r12d r15d
..B4.9:                         # Preds ..B4.8 Latency 35
        vloadd    1664(%rsp), %v1                               #550.5 c1
        lea       128(%r13), %r10                               #550.23 c1
        vloadd    1728(%rsp), %v3                               #550.5 c3
        vloadd    1792(%rsp), %v5                               #550.5 c5
        vsubrps   192(%r13), %v1, %v0                           #550.8 c7
        vsubrps   256(%r13), %v3, %v2                           #550.8 c9
        vsubrps   320(%r13), %v5, %v4                           #550.8 c11
        vmadd231ps 128(%r13), %v0, %v1                          #550.8 c13
        vmadd231ps 128(%r13), %v2, %v3                          #550.8 c15
        vmadd231ps 128(%r13), %v4, %v5                          #550.8 c17
        movb      %al, %al                                      #550.23 c17
        movq      %r10, 2296(%rsp)                              #550.23 c19
        movb      %al, %al                                      #550.5 c19
        vstored   %v1, 1664(%rsp)                               #550.5 c21
        vstored   %v3, 1728(%rsp)                               #550.5 c23
        vstored   %v5, 1792(%rsp)                               #550.5 c25
        addq      $-16, %rsp                                    #551.7 c25
        lea       2000(%rsp), %r11                              #551.7 c27
        lea       16(%rsp), %rdi                                #551.7 c27
        lea       1680(%rsp), %rsi                              #551.7 c29
        lea       2064(%rsp), %rdx                              #551.7 c29
        lea       1296(%rsp), %rcx                              #551.7 c31
        lea       1936(%rsp), %r8                               #551.7 c31
        lea       1488(%rsp), %r9                               #551.7 c33
        movq      %r11, (%rsp)                                  #551.7 c33
..___tag_value__Z3FitR6TrackVP7Stationi.1080:                   #551.7
        call      _ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_ #551.7
..___tag_value__Z3FitR6TrackVP7Stationi.1081:                   #
                                # LOE r13 r14 ebx r12d r15d
..B4.22:                        # Preds ..B4.9 Latency 1
        addq      $16, %rsp                                     #551.7 c1
                                # LOE r13 r14 ebx r12d r15d
..B4.10:                        # Preds ..B4.22 Latency 7
        lea       128(%r14), %rdx                               #555.5 c1
        movq      2240(%rsp), %rdi                              #555.5 c1
        movq      2248(%rsp), %rsi                              #555.5 c3
        lea       1856(%rsp), %rcx                              #555.5 c3
        lea       (%rsp), %r8                                   #555.5 c5
..___tag_value__Z3FitR6TrackVP7Stationi.1082:                   #555.5
        call      _Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion #555.5
..___tag_value__Z3FitR6TrackVP7Stationi.1083:                   #
                                # LOE r13 r14 ebx r12d r15d
..B4.11:                        # Preds ..B4.10 Latency 5

### // unitimer2[0].Stop();
### // unitimer2[1].Start();
###     //ExtrapolateALight( t.T, t.C, st.z+st.thick/4, qp0);//, f );
###     AddMaterial( t, st, qp0 );

        movq      2280(%rsp), %rdi                              #559.5 c1
        movq      %r14, %rsi                                    #559.5 c1
        lea       1856(%rsp), %rdx                              #559.5 c3
..___tag_value__Z3FitR6TrackVP7Stationi.1084:                   #559.5
        call      _Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE #559.5
..___tag_value__Z3FitR6TrackVP7Stationi.1085:                   #
                                # LOE r13 r14 ebx r12d r15d
..B4.12:                        # Preds ..B4.11 Latency 5

### // unitimer2[1].Stop();
### // unitimer2[2].Start();
###     //ExtrapolateALight( t.T, t.C, st.zhit, qp0);//, f );
###     Filter( t, Xinfo, h->x, h->w );

        movq      2280(%rsp), %rdi                              #563.5 c1
        lea       768(%rsp), %rsi                               #563.5 c1
        movq      %r13, %rdx                                    #563.5 c3
        movq      2296(%rsp), %rcx                              #563.5 c3
..___tag_value__Z3FitR6TrackVP7Stationi.1086:                   #563.5
        call      _Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_ #563.5
..___tag_value__Z3FitR6TrackVP7Stationi.1087:                   #
                                # LOE r13 r14 ebx r12d r15d
..B4.13:                        # Preds ..B4.12 Latency 5

###     Filter( t, Yinfo, h->y, h->w );

        lea       64(%r13), %rdx                                #564.5 c1
        movq      2280(%rsp), %rdi                              #564.5 c1
        lea       1024(%rsp), %rsi                              #564.5 c3
        movq      2296(%rsp), %rcx                              #564.5 c3
..___tag_value__Z3FitR6TrackVP7Stationi.1088:                   #564.5
        call      _Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_ #564.5
..___tag_value__Z3FitR6TrackVP7Stationi.1089:                   #
                                # LOE r13 r14 ebx r12d r15d
..B4.14:                        # Preds ..B4.13 Latency 19

### // unitimer2[2].Stop();
### // cout << "2Ext: Cycles = " << unitimer2[0].Cycles() << "\t";
### // cout << "2Add: Cycles = " << unitimer2[1].Cycles() << "\t";
### // cout << "2Fil: Cycles = " << unitimer2[2].Cycles() << " ";
### // cout << "2Ext: real = " << unitimer2[0].RealTime() << "\t";
### // cout << "2Add: real = " << unitimer2[1].RealTime() << "\t";
### // cout << "2Fil: real = " << unitimer2[2].RealTime() << " ";
### // cout << endl;
###     //ExtrapolateALight( t.T, t.C, st.z-st.thick/4, qp0);//, f );
###     //AddMaterial( t, st, qp0 );
###     //ExtrapolateALight( t.T, t.C, st.zhit, qp0);//, f );
###     H2 = H1; 

        vloadd    1280(%rsp), %v3                               #576.10 c1
        vloadd    1344(%rsp), %v2                               #576.10 c3
        vloadd    1408(%rsp), %v1                               #576.10 c5

###     z2 = z1;

        vloadd    1920(%rsp), %v4                               #577.10 c7

###     H1 = H0; 

        vloadd    1664(%rsp), %v7                               #578.10 c9
        vloadd    1728(%rsp), %v6                               #578.10 c11
        vloadd    1792(%rsp), %v5                               #578.10 c13

###     z1 = z0;

        vloadd    2048(%rsp), %v0                               #579.10 c15
        movb      %al, %al                                      #579.10 c15
        cmpl      2256(%rsp), %r15d                             #579.10 c17
        jg        ..B4.16       # Prob 18%                      #579.10 c19
                                # LOE r13 r14 ebx r12d r15d v0 v1 v2 v3 v4 v5 v6 v7
..B4.15:                        # Preds ..B4.14 Latency 6
        movq      2272(%rsp), %r9                               # c1
        movq      2288(%rsp), %r8                               # c1
        vprefetch2 $0, -12480(%r8,%r9)                          # c4 stall 1
        movb      %al, %al                                      # c4
        vprefetch1 $0, -9984(%r8,%r9)                           # c6
                                # LOE r13 r14 ebx r12d r15d v0 v1 v2 v3 v4 v5 v6 v7
..B4.16:                        # Preds ..B4.14 ..B4.15 Latency 9
        incl      %r12d                                         #544.3 c1
        addl      $-39, %ebx                                    #544.3 c1
        addq      $-384, %r13                                   #544.3 c3
        addq      $-2496, %r14                                  #544.3 c3
        incl      %r15d                                         #544.3 c5
        cmpl      2256(%rsp), %r12d                             #544.3 c7
        jb        ..B4.17       # Prob 82%                      #544.3 c9
                                # LOE r13 r14 ebx r12d r15d v0 v1 v2 v3 v4 v5 v6 v7
..B4.19:                        # Preds ..B4.16 ..B4.6          # Infreq Latency 8

###   }
### // timer_test2.Stop();
### // cout<<"test time1 = "<<timer_test1.RealTime()*1.e6<<" [us]"<<endl;
### // cout<<"test time11 = "<<timer_test11.RealTime()*1.e6<<" [us]"<<endl;
### // cout<<"test time2 = "<<timer_test2.RealTime()*1.e6<<" [us]"<<endl;
### }

        addq      $2328, %rsp                                   #585.1 c1
..___tag_value__Z3FitR6TrackVP7Stationi.1090:                   #585.1
        popq      %rbx                                          #585.1
..___tag_value__Z3FitR6TrackVP7Stationi.1091:                   #585.1
        popq      %r15                                          #585.1
..___tag_value__Z3FitR6TrackVP7Stationi.1092:                   #585.1
        popq      %r14                                          #585.1
..___tag_value__Z3FitR6TrackVP7Stationi.1093:                   #585.1
        popq      %r13                                          #585.1
..___tag_value__Z3FitR6TrackVP7Stationi.1094:                   #585.1
        popq      %r12                                          #585.1
        movq      %rbp, %rsp                                    #585.1 c8
        popq      %rbp                                          #585.1
..___tag_value__Z3FitR6TrackVP7Stationi.1095:                   #
        ret                                                     #585.1
        .align    16,0x90
..___tag_value__Z3FitR6TrackVP7Stationi.1097:                   #
                                # LOE
# mark_end;
	.type	_Z3FitR6TrackVP7Stationi,@function
	.size	_Z3FitR6TrackVP7Stationi,.-_Z3FitR6TrackVP7Stationi
	.data
# -- End  _Z3FitR6TrackVP7Stationi
	.section .text._ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_, "xaG",@progbits,_ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_,comdat
..TXTST2:
# -- Begin  _ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_
# mark_begin;
# Threads 2
        .align    16,0x90
	.weak _ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_
_ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8
# parameter 6: %r9
..B5.1:                         # Preds ..B5.0 Latency 144

###   void GetField( const Fvec_t &x, const Fvec_t &y, Fvec_t &Hx, Fvec_t &Hy, Fvec_t &Hz ){

..___tag_value__ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_.1098: #80.88

### 
###     Fvec_t x2 = x*x;

        vloadd    (%rsi), %v0                                   #82.19 c1

###     Fvec_t y2 = y*y;
###     Fvec_t x3 = x2*x;
###     Fvec_t y3 = y2*y;
###     Fvec_t xy = x*y;
###     Fvec_t xy2 = x*y2;
###     Fvec_t x2y = x2*y;
###     //Fvec_t x4 = x3*x;
###     //Fvec_t xy3 = x*y3;
###     //Fvec_t x2y2 = x*xy2;
###     //Fvec_t x3y = x*x2y;
###     //Fvec_t y4 = y*y3;
### 
###     Hx = X[0] +X[1]*x +X[2]*y +X[3]*x2 +X[4]*xy +X[5]*y2 +X[6]*x3 +X[7]*x2y +X[8]*xy2 +X[9]*y3;

        vloadd    64(%rdi), %v1                                 #95.21 c3
        vloadd    (%rdx), %v2                                   #83.19 c5
        vmadd213ps (%rdi), %v0, %v1                             #95.21 c7
        vmulps    %v0, %v0, %v9                                 #82.19 c9
        vmulps    %v2, %v2, %v11                                #83.19 c11
        vmadd132ps 128(%rdi), %v1, %v2                          #95.29 c13
        vmulps    (%rdx), %v0, %v10                             #86.19 c15
        vmadd231ps 192(%rdi), %v9, %v2                          #95.37 c17
        vmulps    (%rsi), %v9, %v12                             #84.20 c19
        vmadd231ps 256(%rdi), %v10, %v2                         #95.46 c21
        vmulps    (%rdx), %v9, %v13                             #88.21 c23
        vmadd231ps 320(%rdi), %v11, %v2                         #95.55 c25
        vmulps    (%rsi), %v11, %v14                            #87.20 c27
        vmadd231ps 384(%rdi), %v12, %v2                         #95.64 c29
        vmulps    (%rdx), %v11, %v15                            #85.20 c31
        vmadd231ps 448(%rdi), %v13, %v2                         #95.73 c33
        nop                                                     #95.83 c35
        vmadd231ps 512(%rdi), %v14, %v2                         #95.83 c37
        nop                                                     #95.93 c39
        vmadd231ps 576(%rdi), %v15, %v2                         #95.93 c41
        nop                                                     #95.5 c43
        nop                                                     #95.5 c45
        vstored   %v2, (%rcx)                                   #95.5 c48 stall 1

###     //+ X[10]*x4 + X[11]*x3y +X[12]*x2y2 +X[13]*xy3 + X[14]*y4;
###     Hy = Y[0] +Y[1]*x +Y[2]*y +Y[3]*x2 +Y[4]*xy +Y[5]*y2 +Y[6]*x3 +Y[7]*x2y +Y[8]*xy2 +Y[9]*y3;

        vloadd    704(%rdi), %v4                                #97.21 c50
        vloadd    640(%rdi), %v3                                #97.21 c52
        vloadd    768(%rdi), %v5                                #97.29 c54
        vmadd132ps (%rsi), %v3, %v4                             #97.21 c56
        nop                                                     #97.29 c58
        vmadd132ps (%rdx), %v4, %v5                             #97.29 c60
        nop                                                     #97.37 c62
        vmadd231ps 832(%rdi), %v9, %v5                          #97.37 c64
        nop                                                     #97.46 c66
        vmadd231ps 896(%rdi), %v10, %v5                         #97.46 c68
        nop                                                     #97.55 c70
        vmadd231ps 960(%rdi), %v11, %v5                         #97.55 c72
        nop                                                     #97.64 c74
        vmadd231ps 1024(%rdi), %v12, %v5                        #97.64 c76
        nop                                                     #97.73 c78
        vmadd231ps 1088(%rdi), %v13, %v5                        #97.73 c80
        nop                                                     #97.83 c82
        vmadd231ps 1152(%rdi), %v14, %v5                        #97.83 c84
        nop                                                     #97.93 c86
        vmadd231ps 1216(%rdi), %v15, %v5                        #97.93 c88
        nop                                                     #97.5 c90
        nop                                                     #97.5 c92
        vstored   %v5, (%r8)                                    #97.5 c95 stall 1

###     //+ Y[10]*x4 + Y[11]*x3y +Y[12]*x2y2 +Y[13]*xy3 + Y[14]*y4;
###     Hz = Z[0] +Z[1]*x +Z[2]*y +Z[3]*x2 +Z[4]*xy +Z[5]*y2 +Z[6]*x3 +Z[7]*x2y +Z[8]*xy2 +Z[9]*y3;

        vloadd    1344(%rdi), %v7                               #99.21 c97
        vloadd    1280(%rdi), %v6                               #99.21 c99
        vloadd    1408(%rdi), %v8                               #99.29 c101
        vmadd132ps (%rsi), %v6, %v7                             #99.21 c103
        nop                                                     #99.29 c105
        vmadd132ps (%rdx), %v7, %v8                             #99.29 c107
        nop                                                     #99.37 c109
        vmadd132ps 1472(%rdi), %v8, %v9                         #99.37 c111
        nop                                                     #99.46 c113
        vmadd132ps 1536(%rdi), %v9, %v10                        #99.46 c115
        nop                                                     #99.55 c117
        vmadd132ps 1600(%rdi), %v10, %v11                       #99.55 c119
        nop                                                     #99.64 c121
        vmadd132ps 1664(%rdi), %v11, %v12                       #99.64 c123
        nop                                                     #99.73 c125
        vmadd132ps 1728(%rdi), %v12, %v13                       #99.73 c127
        nop                                                     #99.83 c129
        vmadd132ps 1792(%rdi), %v13, %v14                       #99.83 c131
        nop                                                     #99.93 c133
        vmadd132ps 1856(%rdi), %v14, %v15                       #99.93 c135
        nop                                                     #99.5 c137
        nop                                                     #99.5 c139
        vstored   %v15, (%r9)                                   #99.5 c142 stall 1

###     //+ Z[10]*x4 + Z[11]*x3y +Z[12]*x2y2 +Z[13]*xy3 + Z[14]*y4;
###   }

        ret                                                     #101.3 c144
        .align    16,0x90
..___tag_value__ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_.1100: #
                                # LOE
# mark_end;
	.type	_ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_,@function
	.size	_ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_,.-_ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_
	.data
# -- End  _ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_
	.section .text._Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE, "xaG",@progbits,_Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE,comdat
..TXTST3:
# -- Begin  _Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE
# mark_begin;
# Threads 2
        .align    16,0x90
	.weak _Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE
_Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
..B6.1:                         # Preds ..B6.0 Latency 127

### {

..___tag_value__Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE.1101: #407.1
        subq      $88, %rsp                                     #407.1 c1
..___tag_value__Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE.1103: #

###   cnst mass2 = 0.1396*0.1396;
### 
###   Fvec_t tx = track.T[2];

        lea       4736(%rdi), %r10                              #410.15 c3
        vloadunpackld 4736(%rdi), %v20                          #410.15
        testq     $63, %r10                                     #410.15
        je        ..L1104       # Prob 50%                      #410.15
        vloadunpackhd 4800(%rdi), %v20                          #410.15
..L1104:                                                        #

###   Fvec_t ty = track.T[3];

        lea       4800(%rdi), %r10                              #411.15 c5
        vloadunpackld 4800(%rdi), %v23                          #411.15
        testq     $63, %r10                                     #411.15
        je        ..L1105       # Prob 50%                      #411.15
        vloadunpackhd 4864(%rdi), %v23                          #411.15
..L1105:                                                        #

###   Fvec_t txtx = tx*tx;
###   Fvec_t tyty = ty*ty;
###   Fvec_t txtx1 = txtx + ONE;

        vorpi     %v20, %v20, %v19                              #414.25 c7
        movl      $1065353216, (%rsp)                           #414.25 c7
        vmulps    %v23, %v23, %v9                               #413.20 c9
        vmadd213ps (%rsp){1to16}, %v20, %v19                    #414.25 c11

###   Fvec_t h = txtx + tyty;
###   Fvec_t t = sqrt(txtx1 + tyty);

        vloadd    .L_2il0floatpacket.5866(%rip){4to16}, %v5     #416.27 c13
        vorpi     %v19, %v19, %v6                               #416.27 c15

###   Fvec_t h2 = h*h;
###   Fvec_t qp0t = qp0*t;
###   
###   cnst c1=0.0136, c2=c1*0.038, c3=c2*0.5, c4=-c3/2.0, c5=c3/3.0, c6=-c3/4.0;
###     
###   Fvec_t s0 = (c1+c2*st.logRadThick + c3*h + h2*(c4 + c5*h +c6*h2) )*qp0t;

        movl      $973568477, 8(%rsp)                           #422.22 c17
        vmadd231ps %v23, %v23, %v6                              #416.27 c19
        vloadd    320(%rsi), %v8                                #422.22 c21
        vrcpresps %v6, %v0                                      #416.27 c23
        vrsqrtlutps %v6, %v2                                    #416.27 c25
        vmadd233ps .L_2il0floatpacket.5866(%rip){4to16}, %v0, %v1 #416.27 c27
        movl      $951362172, 32(%rsp)                          #422.58 c29
        vmulps    %v1, %v0, %v7                                 #416.27 c31
        vmadd231ps %v20, %v20, %v9                              #415.21 c33
        vmadd132ps %v2, %v2, %v7                                #416.27 c35
        vloadd    8(%rsp){1to16}, %v10                          #422.22 c37
        vmulps    %v6, %v7, %v4                                 #416.27 c39
        vloadd    32(%rsp){1to16}, %v11                         #422.58 c41
        vmsubr23c1ps %v4, %v7, %v3                              #416.27 c43
        vmsub132ps %v6, %v4, %v7                                #416.27 c45
        movl      $1012847241, 16(%rsp)                         #422.22 c47
        vmadd231ps %v3, %v4, %v7                                #416.27 c49
        movl      $-1190692387, 40(%rsp)                        #422.58 c51
        vmsubr132ps %v5{cccc}, %v4, %v7                         #416.27 c53

###     
###   Fvec_t a = (ONE+mass2*qp0*qp0t)*st.RadThick*s0*s0;

        movl      $1017095586, 56(%rsp)                         #424.25 c55
        vfixupps  $132736, %v6, %v7                             #416.27 c57
        vmulps    %v9, %v9, %v12                                #417.17 c59
        vmadd213ps 16(%rsp){1to16}, %v8, %v10                   #422.22 c61
        vmadd213ps 40(%rsp){1to16}, %v9, %v11                   #422.58 c63
        vloadd    56(%rsp){1to16}, %v13                         #424.25 c65
        movl      $965179869, 24(%rsp)                          #422.42 c67
        movl      $-1199080995, 48(%rsp)                        #422.64 c69
        movl      $1065353216, 64(%rsp)                         #424.29 c71

### 
###   CovV &C = track.C;
### 
###   C.C22 += txtx1*a;
###   C.C32 += tx*ty*a; C.C33 += (ONE+tyty)*a; 

        vmulps    %v23, %v20, %v21                              #429.18 c73
        vmulps    (%rdx), %v7, %v14                             #418.21 c75
        vmadd231ps 24(%rsp){1to16}, %v9, %v10                   #422.42 c77
        vmadd231ps 48(%rsp){1to16}, %v12, %v11                  #422.64 c79
        vmulps    (%rdx), %v13, %v15                            #424.25 c81
        vmadd132ps %v11, %v10, %v12                             #422.64 c83
        vmadd213ps 64(%rsp){1to16}, %v14, %v15                  #424.29 c85
        vmulps    %v14, %v12, %v18                              #422.70 c87
        vmulps    256(%rsi), %v15, %v16                         #424.47 c89
        nop                                                     #424.50 c91
        vmulps    %v18, %v16, %v17                              #424.50 c93
        nop                                                     #424.50 c95
        vmulps    %v18, %v17, %v22                              #424.50 c97
        nop                                                     #428.9 c99
        vmadd213ps 5312(%rdi), %v22, %v19                       #428.9 c101
        vmadd213ps 5504(%rdi), %v22, %v21                       #429.9 c103
        nop                                                     #428.9 c105
        vstored   %v19, 5312(%rdi)                              #428.9 c108 stall 1
        vstored   %v21, 5504(%rdi)                              #429.9 c110
        movl      $1065353216, 72(%rsp)                         #429.35 c112
        vmadd213ps 72(%rsp){1to16}, %v23, %v23                  #429.35 c114
        nop                                                     #429.27 c116
        vmadd213ps 5568(%rdi), %v22, %v23                       #429.27 c118
        nop                                                     #429.27 c120
        nop                                                     #429.27 c122
        vstored   %v23, 5568(%rdi)                              #429.27 c125 stall 1

### }

        addq      $88, %rsp                                     #430.1 c125
..___tag_value__Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE.1106: #
        ret                                                     #430.1 c127
        .align    16,0x90
..___tag_value__Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE.1107: #
                                # LOE
# mark_end;
	.type	_Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE,@function
	.size	_Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE,.-_Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE
	.data
# -- End  _Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE
	.section .text._ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_, "xaG",@progbits,_ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_,comdat
..TXTST4:
# -- Begin  _ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_
# mark_begin;
# Threads 2
        .align    16,0x90
	.weak _ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_
_ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8
# parameter 6: %r9
# parameter 7: 16 + %rbp
..B7.1:                         # Preds ..B7.0 Latency 34

### 	    const FieldVector &H2, const Fvec_t &H2z){

..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1108: #121.47
        pushq     %rbp                                          #121.47
..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1110: #
        movq      %rsp, %rbp                                    #121.47
..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1111: #
        andq      $-64, %rsp                                    #121.47
        pushq     %r12                                          #121.47 c1
..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1113: #
        pushq     %r13                                          #121.47 c2
..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1114: #
        pushq     %r15                                          #121.47 c3
..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1115: #
        pushq     %rbx                                          #121.47 c4
..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1116: #
        subq      $32, %rsp                                     #121.47 c5
        movq      %rdi, %r15                                    #121.47 c5

###     z = H0z;

        vloadd    (%rdx), %v1                                   #122.9 c7
        movq      %r9, %r12                                     #121.47 c7
        movq      16(%rbp), %rax                                #121.47 c9
        movq      %rcx, %rbx                                    #121.47 c9
        movq      %rsi, %r13                                    #121.47 c11
        vstored   %v1, 576(%r15)                                #122.5 c14 stall 1

###     Fvec_t dz1 = H1z-H0z, dz2 = H2z-H0z;

        vloadd    (%rdx), %v2                                   #123.22 c16
        nop                                                     #123.22 c18
        vsubrps   (%r8), %v2, %v17                              #123.22 c20
        vsubrps   (%rax), %v2, %v16                             #123.37 c22

###     Fvec_t det = rcp(dz1*dz2*(dz2-dz1));

        nop                                                     #124.35 c24
        vsubps    %v17, %v16, %v4                               #124.35 c26
        vmulps    %v16, %v17, %v3                               #124.35 c28
        nop                                                     #124.35 c30
        vmulps    %v4, %v3, %v0                                 #124.35 c32
        call      __svml_rcpf16                                 #124.22 c34
                                # LOE rbx r12 r13 r14 r15 v0 v16 v17
..B7.4:                         # Preds ..B7.1 Latency 84

###     Fvec_t w21 = -dz2*det;

        vxorpi    .L_2il0floatpacket.6931(%rip){1to16}, %v16, %v1 #125.19 c1

###     Fvec_t w22 = dz1*det;

        vmulps    %v0, %v17, %v18                               #126.22 c3

###     Fvec_t w11 = -dz2*w21;
###     Fvec_t w12 = -dz1*w22;

        vxorpi    .L_2il0floatpacket.6931(%rip){1to16}, %v17, %v17 #128.19 c5

###     
###     Fvec_t dH1 = H1.X - H0.X;

        vloadd    (%r13), %v2                                   #130.25 c7
        vmulps    %v0, %v1, %v20                                #125.23 c9
        vmulps    %v18, %v17, %v13                              #128.23 c11

###     Fvec_t dH2 = H2.X - H0.X;

        vsubrps   (%r12), %v2, %v4                              #131.25 c13
        vmulps    %v20, %v1, %v15                               #127.23 c15
        vsubrps   (%rbx), %v2, %v6                              #130.25 c17

###     x0 = H0.X;
###     x1 = dH1*w11 + dH2*w12 ;

        vmulps    %v13, %v4, %v3                                #133.24 c19
        vstored   %v2, (%r15)                                   #132.5 c19

###     x2 = dH1*w21 + dH2*w22 ;

        vmulps    %v18, %v4, %v5                                #134.24 c21
        vmadd231ps %v15, %v6, %v3                               #133.20 c23
        vmadd132ps %v20, %v5, %v6                               #134.20 c25
        nop                                                     #133.5 c27
        vstored   %v3, 64(%r15)                                 #133.5 c30 stall 1
        vstored   %v6, 128(%r15)                                #134.5 c32

###       
###     dH1 = H1.Y - H0.Y;

        vloadd    64(%r13), %v7                                 #136.18 c34

###     dH2 = H2.Y - H0.Y;

        nop                                                     #137.18 c36
        vsubrps   64(%r12), %v7, %v9                            #137.18 c38
        vsubrps   64(%rbx), %v7, %v11                           #136.18 c40

###     y0 = H0.Y;
###     y1 = dH1*w11 + dH2*w12 ;

        vmulps    %v13, %v9, %v8                                #139.24 c42
        vstored   %v7, 192(%r15)                                #138.5 c42

###     y2 = dH1*w21 + dH2*w22  ;

        vmulps    %v18, %v9, %v10                               #140.24 c44
        vmadd231ps %v15, %v11, %v8                              #139.20 c46
        vmadd132ps %v20, %v10, %v11                             #140.20 c48
        nop                                                     #139.5 c50
        vstored   %v8, 256(%r15)                                #139.5 c53 stall 1
        vstored   %v11, 320(%r15)                               #140.5 c55

### 
###     dH1 = H1.Z - H0.Z;

        vloadd    128(%r13), %v12                               #142.18 c57

###     dH2 = H2.Z - H0.Z;

        nop                                                     #143.18 c59
        vsubrps   128(%r12), %v12, %v16                         #143.18 c61
        vsubrps   128(%rbx), %v12, %v21                         #142.18 c63

###     z0 = H0.Z;
###     z1 = dH1*w11 + dH2*w12 ;

        vmulps    %v13, %v16, %v14                              #145.24 c65
        vstored   %v12, 384(%r15)                               #144.5 c65

###     z2 = dH1*w21 + dH2*w22 ;         

        vmulps    %v18, %v16, %v19                              #146.24 c67
        vmadd132ps %v21, %v14, %v15                             #145.20 c69
        vmadd132ps %v20, %v19, %v21                             #146.20 c71
        nop                                                     #145.5 c73
        vstored   %v15, 448(%r15)                               #145.5 c76 stall 1
        vstored   %v21, 512(%r15)                               #146.5 c78

###   }

        addq      $32, %rsp                                     #147.3 c78
..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1117: #147.3
        popq      %rbx                                          #147.3
..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1118: #147.3
        popq      %r15                                          #147.3
..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1119: #147.3
        popq      %r13                                          #147.3
..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1120: #147.3
        popq      %r12                                          #147.3
        movq      %rbp, %rsp                                    #147.3 c84
        popq      %rbp                                          #147.3
..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1121: #
        ret                                                     #147.3
        .align    16,0x90
..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1123: #
                                # LOE
# mark_end;
	.type	_ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_,@function
	.size	_ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_,.-_ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_
	.data
# -- End  _ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_
	.section .text._Z8GuessVecR6TrackVP7Stationi, "xaG",@progbits,_Z8GuessVecR6TrackVP7Stationi,comdat
..TXTST5:
# -- Begin  _Z8GuessVecR6TrackVP7Stationi
# mark_begin;
# Threads 2
        .align    16,0x90
	.weak _Z8GuessVecR6TrackVP7Stationi
_Z8GuessVecR6TrackVP7Stationi:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %edx
..B8.1:                         # Preds ..B8.0 Latency 58

### {

..___tag_value__Z8GuessVecR6TrackVP7Stationi.1124:              #433.1
        pushq     %rbp                                          #433.1
..___tag_value__Z8GuessVecR6TrackVP7Stationi.1126:              #
        movq      %rsp, %rbp                                    #433.1
..___tag_value__Z8GuessVecR6TrackVP7Stationi.1127:              #
        andq      $-64, %rsp                                    #433.1
        pushq     %r15                                          #433.1 c1
..___tag_value__Z8GuessVecR6TrackVP7Stationi.1129:              #
        subq      $248, %rsp                                    #433.1 c2
        movq      %rdi, %r15                                    #433.1 c2
        shlq      $32, %rdx                                     #433.1 c4

###   Fvec_t *T = t.T;
### 
###   Int_t NHits = NStations;
### 
###   Fvec_t A0, A1=ZERO, A2=ZERO, A3=ZERO, A4=ZERO, A5=ZERO, a0, a1=ZERO, a2=ZERO,

        xorl      %eax, %eax                                    #438.17 c4
        sarq      $32, %rdx                                     #433.1 c6
        movl      %eax, (%rsp)                                  #438.17 c6

###     b0, b1=ZERO, b2=ZERO;
###   Fvec_t z0, x, y, z, S, w, wz, wS;
### 
###   Int_t i=NHits-1;
###   z0 = vStations[i].zhit;

        imulq     $2496, %rdx, %rcx                             #443.8 c8

###   HitV *hlst = &(t.vHits[i]);

        lea       (%rdx,%rdx,2), %r8                            #444.18 c22
        movl      %eax, 8(%rsp)                                 #438.26 c22
        shlq      $7, %r8                                       #444.18 c24
        movl      %eax, 16(%rsp)                                #438.35 c24
        movl      %eax, 24(%rsp)                                #438.44 c26

###   w = hlst->w;
###   A0 = w;
###   a0 = w*hlst->x;
###   b0 = w*hlst->y;
###   HitV *h = t.vHits;
###   Station *st = vStations;
###   for( ; h!=hlst; h++, st++ ){

        xorl      %edi, %edi                                    #451.3 c26
        movl      %eax, 32(%rsp)                                #438.53 c28
        xorl      %r9d, %r9d                                    # c28
        movl      %eax, 40(%rsp)                                #438.66 c30
        movl      %eax, 48(%rsp)                                #438.75 c30
        movl      %eax, 56(%rsp)                                #439.12 c32
        movl      %eax, 64(%rsp)                                #439.21 c32
        vloadd    -2368(%rcx,%rsi), %v21                        #443.8 c34
        lea       -384(%r15,%r8), %rax                          #444.18 c34
        vloadd    (%rsp){1to16}, %v25                           #438.17 c36
        movq      %r15, %r8                                     # c36
        vloadd    128(%rax), %v18                               #445.7 c38
        movl      $3, %ecx                                      # c38
        vloadd    8(%rsp){1to16}, %v24                          #438.26 c40
        cmpq      %rax, %r15                                    #451.13 c40
        vloadd    16(%rsp){1to16}, %v30                         #438.35 c42
        vloadd    24(%rsp){1to16}, %v17                         #438.44 c44
        vloadd    32(%rsp){1to16}, %v29                         #438.53 c46
        vloadd    40(%rsp){1to16}, %v19                         #438.66 c48
        vloadd    48(%rsp){1to16}, %v23                         #438.75 c50
        vloadd    56(%rsp){1to16}, %v22                         #439.12 c52
        vloadd    64(%rsp){1to16}, %v16                         #439.21 c54
        vmulps    (%rax), %v18, %v20                            #447.10 c56
        vmulps    64(%rax), %v18, %v28                          #448.10 c58
        je        ..B8.7        # Prob 2%                       #451.13 c58
                                # LOE rax rcx rbx rsi rdi r8 r9 r12 r13 r14 r15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v28 v29 v30
..B8.2:                         # Preds ..B8.1 Latency 19
        subq      %r15, %rax                                    #444.18 c1
        movq      $0xaaaaaaaaaaaaaaab, %r10                     # c3
        addq      $383, %rax                                    # c5
        mulq      %r10                                          # c7
        shrq      $8, %rdx                                      # c19
                                # LOE rdx rcx rbx rsi rdi r8 r9 r12 r13 r14 r15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v28 v29 v30
..B8.3:                         # Preds ..B8.5 ..B8.2 Latency 31

###     x = h->x;
###     y = h->y;
###     w = h->w;

        vloadd    128(%r8), %v1                                 #454.9 c1

###     z = st->zhit - z0;
###     S = st->Sy;
###     wz = w*z;
###     wS = w*S;
###     A0+=w; 
###     A1+=wz;  A2+=wz*z;
###     A3+=wS;  A4+=wS*z; A5+=wS*S;
###     a0+=w*x; a1+=wz*x; a2+=wS*x;
###     b0+=w*y; b1+=wz*y; b2+=wS*y;

        cmpq      %rdx, %rcx                                    #463.26 c1
        vsubrps   128(%r9,%rsi), %v21, %v0                      #455.20 c3
        vmulps    512(%r9,%rsi), %v1, %v3                       #458.12 c5
        vmulps    128(%r8), %v0, %v2                            #457.12 c7
        vaddps    128(%r8), %v18, %v18                          #459.7 c9
        vmadd231ps 128(%r8), %v0, %v25                          #460.7 c11
        vmadd231ps %v2, %v0, %v24                               #460.16 c13
        vmadd231ps 512(%r9,%rsi), %v1, %v30                     #461.7 c15
        vmadd231ps %v3, %v0, %v17                               #461.16 c17
        vmadd231ps 512(%r9,%rsi), %v3, %v29                     #461.26 c19
        vmadd231ps (%r8), %v1, %v20                             #462.7 c21
        vmadd231ps (%r8), %v2, %v19                             #462.16 c23
        vmadd231ps (%r8), %v3, %v23                             #462.26 c25
        vmadd231ps 64(%r8), %v1, %v28                           #463.7 c27
        vmadd231ps 64(%r8), %v2, %v22                           #463.16 c29
        vmadd231ps 64(%r8), %v3, %v16                           #463.26 c31
        ja        ..B8.5        # Prob 18%                      #463.26 c31
                                # LOE rdx rcx rbx rsi rdi r8 r9 r12 r13 r14 r15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v28 v29 v30
..B8.4:                         # Preds ..B8.3 Latency 7
        vprefetch2 $0, 768(%r8)                                 # c1
        movb      %al, %al                                      # c1
        vprefetch2 $0, 832(%r8)                                 # c3
        movb      %al, %al                                      # c3
        vprefetch2 $0, 896(%r8)                                 # c5
        movb      %al, %al                                      # c5
        vprefetch2 $0, 5504(%r9,%rsi)                           # c7
                                # LOE rdx rcx rbx rsi rdi r8 r9 r12 r13 r14 r15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v28 v29 v30
..B8.5:                         # Preds ..B8.3 ..B8.4 Latency 5
        incq      %rdi                                          #451.3 c1
        addq      $384, %r8                                     #451.3 c1
        addq      $2496, %r9                                    #451.3 c3
        incq      %rcx                                          #451.3 c3
        cmpq      %rdx, %rdi                                    #451.3 c5
        jb        ..B8.3        # Prob 82%                      #451.3 c5
                                # LOE rdx rcx rbx rsi rdi r8 r9 r12 r13 r14 r15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v28 v29 v30
..B8.7:                         # Preds ..B8.5 ..B8.1 Latency 25

###   }
### 
###   Fvec_t A3A3 = A3*A3;
###   Fvec_t A3A4 = A3*A4;

        vmulps    %v17, %v30, %v1                               #467.20 c1

###   Fvec_t A1A5 = A1*A5;

        vmulps    %v29, %v25, %v31                              #468.20 c3

###   Fvec_t A2A5 = A2*A5;
###   Fvec_t A4A4 = A4*A4;

        vmulps    %v17, %v17, %v26                              #470.20 c5

###   
###   Fvec_t det = rcp(-A2*A3A3 + A1*( A3A4+A3A4 - A1A5) + A0*(A2A5-A4A4));

        vmsub132ps .L_2il0floatpacket.10333(%rip), %v31, %v1    #472.48 c7
        vmulps    %v30, %v30, %v27                              #466.20 c9
        vmulps    %v29, %v24, %v0                               #469.20 c11
        vmulps    %v1, %v25, %v2                                #472.48 c13
        vstored   %v26, 64(%rsp)                                #470.20 c13
        vxorpi    .L_2il0floatpacket.10332(%rip){1to16}, %v24, %v26 #472.21 c15
        vmsubr231ps %v17, %v17, %v0                             #472.65 c17
        vmadd231ps %v27, %v26, %v2                              #472.31 c19
        nop                                                     #472.65 c21
        vmadd132ps %v18, %v2, %v0                               #472.65 c23
        call      __svml_rcpf16                                 #472.65 c25
                                # LOE rbx r12 r13 r14 r15 v0 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
..B8.13:                        # Preds ..B8.7 Latency 66

###   Fvec_t Ai0 = ( -A4A4 + A2A5 );
###   Fvec_t Ai1 = (  A3A4 - A1A5 );
###   Fvec_t Ai2 = ( -A3A3 + A0*A5 );

        vxorpi    .L_2il0floatpacket.10332(%rip){1to16}, %v27, %v6 #475.19 c1
        vloadd    64(%rsp), %v1                                 #473.19 c3
        vmadd231ps %v29, %v18, %v6                              #475.29 c5
        vxorpi    .L_2il0floatpacket.10332(%rip){1to16}, %v1, %v4 #473.19 c7
        vmsub231ps %v30, %v17, %v31                             #474.26 c9

###   Fvec_t Ai3 = ( -A2*A3 + A1*A4 );
###   Fvec_t Ai4 = (  A1*A3 - A0*A4 );

        vmulps    %v17, %v18, %v8                               #477.30 c11
        vstored   %v0, 128(%rsp)                                #472.65 c11

###   Fvec_t Ai5 = ( -A1*A1 + A0*A2 );
### 
###   Fvec_t L, L1;
###   T[0] = (Ai0*a0 + Ai1*a1 + Ai3*a2)*det;
###   T[2] = (Ai1*a0 + Ai2*a1 + Ai4*a2)*det;

        vmulps    %v19, %v6, %v7                                #482.24 c13
        vmadd231ps %v29, %v24, %v4                              #473.26 c15
        vmulps    %v17, %v25, %v27                              #476.30 c17
        vmulps    %v19, %v31, %v3                               #481.24 c19
        vmsub231ps %v30, %v25, %v8                              #477.27 c21
        vmadd132ps %v20, %v7, %v31                              #482.20 c23
        vmadd132ps %v30, %v27, %v26                             #476.27 c25
        vmadd132ps %v20, %v3, %v4                               #481.20 c27
        vmadd231ps %v23, %v8, %v31                              #482.33 c29
        vmadd231ps %v23, %v26, %v4                              #481.33 c31
        vmulps    %v0, %v31, %v31                               #482.37 c33
        vmulps    %v0, %v4, %v5                                 #481.37 c35
        vxorpi    .L_2il0floatpacket.10332(%rip){1to16}, %v25, %v27 #478.19 c37
        vmulps    %v24, %v18, %v2                               #478.30 c39

###   Fvec_t txtx1 = T[2]*T[2]+1.f;
###   L    = (Ai3*a0 + Ai4*a1 + Ai5*a2)*det *rcp(txtx1);

        vmulps    %v19, %v8, %v9                                #484.24 c41
        vstored   %v31, 4736(%r15)                              #482.3 c41
        vmadd132ps %v25, %v2, %v27                              #478.27 c43
        vmadd132ps %v20, %v9, %v26                              #484.20 c45
        vstored   %v5, 4608(%r15)                               #481.3 c47
        movl      $1065353216, 192(%rsp)                        #483.28 c49
        vloadd    4736(%r15), %v31                              #483.23 c51
        vmadd132ps %v23, %v26, %v27                             #484.33 c53
        nop                                                     #483.23 c55
        vstored   %v31, (%rsp)                                  #483.23 c58 stall 1
        vmadd213ps 192(%rsp){1to16}, %v31, %v31                 #483.28 c60
        nop                                                     #484.46 c62
        vorpi     %v31, %v31, %v0                               #484.46 c64
        call      __svml_rcpf16                                 #484.46 c66
                                # LOE rbx r12 r13 r14 r15 v0 v16 v17 v18 v21 v22 v24 v25 v27 v28 v29 v30 v31
..B8.12:                        # Preds ..B8.13 Latency 27
        vmulps    128(%rsp), %v27, %v19                         #484.46 c1

###   L1 = L*T[2];
###   A1 = A1 + A3*L1;
###   A2 = A2 + ( A4 + A4 + A5*L1 )*L1;

        vaddps    %v17, %v17, %v17                              #487.20 c3
        vmulps    %v0, %v19, %v19                               #484.46 c5
        nop                                                     #485.10 c7
        vmulps    (%rsp), %v19, %v1                             #485.10 c9
        nop                                                     #487.28 c11
        vmadd132ps %v1, %v17, %v29                              #487.28 c13
        vmadd132ps %v1, %v25, %v30                              #486.16 c15
        vmadd132ps %v1, %v24, %v29                              #487.33 c17

###   b1+= b2 * L1;
###   det = rcp(-A1*A1+A0*A2);

        vxorpi    .L_2il0floatpacket.10332(%rip){1to16}, %v30, %v17 #489.14 c19
        vmulps    %v29, %v18, %v0                               #489.23 c21
        vmadd213ps %v22, %v1, %v16                              #488.5 c23
        vmadd231ps %v30, %v17, %v0                              #489.20 c25
        call      __svml_rcpf16                                 #489.20 c27
                                # LOE rbx r12 r13 r14 r15 v0 v16 v17 v18 v19 v21 v28 v29 v30 v31
..B8.11:                        # Preds ..B8.12 Latency 28

### 
###   T[1] = (  A2*b0 - A1*b1 )*det;

        vmulps    %v16, %v30, %v30                              #491.24 c1

###   T[3] = ( -A1*b0 + A0*b1 )*det;

        vmulps    %v16, %v18, %v16                              #492.24 c3
        vmsub132ps %v28, %v30, %v29                             #491.21 c5
        vmadd132ps %v28, %v16, %v17                             #492.21 c7
        vmulps    %v0, %v29, %v29                               #491.29 c9
        vmulps    %v0, %v17, %v1                                #492.29 c11

###   T[4] = -L*c_light_i*rsqrt(txtx1 +T[3]*T[3]);

        vxorpi    .L_2il0floatpacket.10332(%rip){1to16}, %v19, %v16 #493.11 c13
        vstored   %v29, 4672(%r15)                              #491.3 c16 stall 1
        vstored   %v1, 4800(%r15)                               #492.3 c18
        movb      %al, %al                                      #493.13 c18
        movl      $1162902082, (%rsp)                           #493.13 c20
        vloadd    4800(%r15), %v0                               #493.41 c22
        vloadd    (%rsp){1to16}, %v17                           #493.13 c24
        vmadd132ps %v0, %v31, %v0                               #493.41 c26
        call      __svml_invsqrtf16                             #493.41 c28
                                # LOE rbx r12 r13 r14 r15 v0 v16 v17 v21
..B8.10:                        # Preds ..B8.11 Latency 15
        vmulps    %v17, %v16, %v16                              #493.41 c1

###   T[5] = z0;

        vstored   %v21, 4928(%r15)                              #494.3 c1
        nop                                                     #493.41 c3
        vmulps    %v0, %v16, %v1                                #493.41 c5
        nop                                                     #493.3 c7
        nop                                                     #493.3 c9
        vstored   %v1, 4864(%r15)                               #493.3 c12 stall 1

### }   

        addq      $248, %rsp                                    #495.1 c12
..___tag_value__Z8GuessVecR6TrackVP7Stationi.1130:              #495.1
        popq      %r15                                          #495.1
        movq      %rbp, %rsp                                    #495.1 c15
        popq      %rbp                                          #495.1
..___tag_value__Z8GuessVecR6TrackVP7Stationi.1131:              #
        ret                                                     #495.1
        .align    16,0x90
..___tag_value__Z8GuessVecR6TrackVP7Stationi.1133:              #
                                # LOE
# mark_end;
	.type	_Z8GuessVecR6TrackVP7Stationi,@function
	.size	_Z8GuessVecR6TrackVP7Stationi,.-_Z8GuessVecR6TrackVP7Stationi
	.data
# -- End  _Z8GuessVecR6TrackVP7Stationi
	.section .text._Z11FilterFirstR6TrackVR4HitVR7Station, "xaG",@progbits,_Z11FilterFirstR6TrackVR4HitVR7Station,comdat
..TXTST6:
# -- Begin  _Z11FilterFirstR6TrackVR4HitVR7Station
# mark_begin;
# Threads 2
        .align    16,0x90
	.weak _Z11FilterFirstR6TrackVR4HitVR7Station
_Z11FilterFirstR6TrackVR4HitVR7Station:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
..B9.1:                         # Preds ..B9.0 Latency 209

### {

..___tag_value__Z11FilterFirstR6TrackVR4HitVR7Station.1134:     #388.1
        subq      $136, %rsp                                    #388.1
..___tag_value__Z11FilterFirstR6TrackVR4HitVR7Station.1136:     #

### 
###   CovV &C = track.C;
###   Fvec_t w1 = ONE-hit.w;

        movl      $1065353216, (%rsp)                           #391.19 c1

###   Fvec_t sigma2 = hit.w*st.Sigma2 + w1*INF;

        movl      $1008981770, %r10d                            #392.40 c1
        vloadd    (%rsp){1to16}, %v0                            #391.19 c3

###   // initialize covariance matrix 
###   C.C00= sigma2; 
###   C.C10= ZERO;      C.C11= sigma2; 

        xorl      %eax, %eax                                    #395.10 c3
        nop                                                     #391.19 c5
        vsubps    128(%rsi), %v0, %v18                          #391.19 c7
        movb      %al, %al                                      #392.40 c7
        movl      %r10d, 8(%rsp)                                #392.40 c9
        vmulps    8(%rsp){1to16}, %v18, %v1                     #392.40 c11
        vloadd    128(%rsi), %v3                                #392.37 c13

###   C.C20= ZERO;      C.C21= ZERO;      C.C22= INF;
###   C.C30= ZERO;      C.C31= ZERO;      C.C32= ZERO; C.C33= INF;
###   C.C40= ZERO;      C.C41= ZERO;      C.C42= ZERO; C.C43= ZERO; C.C44= INF;
### 
###   track.T[0] = hit.w*hit.x + w1*track.T[0];

        vmulps    4608(%rdi), %v18, %v16                        #400.33 c15
        vmadd132ps 448(%rdx), %v1, %v3                          #392.37 c17

###   track.T[1] = hit.w*hit.y + w1*track.T[1];

        vmulps    4672(%rdi), %v18, %v19                        #401.33 c19
        nop                                                     #394.3 c21
        vstored   %v3, 4992(%rdi)                               #394.3 c24 stall 1
        movb      %dl, %dl                                      #395.10 c24
        movl      %eax, 16(%rsp)                                #395.10 c26
        vloadd    16(%rsp){1to16}, %v2                          #395.10 c28
        movb      %al, %al                                      #395.21 c28
        vstored   %v3, 5120(%rdi)                               #395.21 c30
        nop                                                     #395.3 c32
        vstored   %v2, 5056(%rdi)                               #395.3 c35 stall 1
        movb      %dl, %dl                                      #396.10 c35
        movl      %eax, 24(%rsp)                                #396.10 c37
        vloadd    24(%rsp){1to16}, %v4                          #396.10 c39
        nop                                                     #396.3 c41
        nop                                                     #396.3 c43
        vstored   %v4, 5184(%rdi)                               #396.3 c46 stall 1
        movb      %dl, %dl                                      #396.28 c46
        movl      %eax, 32(%rsp)                                #396.28 c48
        vloadd    32(%rsp){1to16}, %v5                          #396.28 c50
        nop                                                     #396.21 c52
        nop                                                     #396.21 c54
        vstored   %v5, 5248(%rdi)                               #396.21 c57 stall 1
        movb      %al, %al                                      #396.46 c57
        movl      %r10d, 40(%rsp)                               #396.46 c59
        vloadd    40(%rsp){1to16}, %v6                          #396.46 c61
        nop                                                     #396.39 c63
        nop                                                     #396.39 c65
        vstored   %v6, 5312(%rdi)                               #396.39 c68 stall 1
        movb      %dl, %dl                                      #397.10 c68
        movl      %eax, 48(%rsp)                                #397.10 c70
        vloadd    48(%rsp){1to16}, %v7                          #397.10 c72
        nop                                                     #397.3 c74
        nop                                                     #397.3 c76
        vstored   %v7, 5376(%rdi)                               #397.3 c79 stall 1
        movb      %dl, %dl                                      #397.28 c79
        movl      %eax, 56(%rsp)                                #397.28 c81
        vloadd    56(%rsp){1to16}, %v8                          #397.28 c83
        nop                                                     #397.21 c85
        nop                                                     #397.21 c87
        vstored   %v8, 5440(%rdi)                               #397.21 c90 stall 1
        movb      %dl, %dl                                      #397.46 c90
        movl      %eax, 64(%rsp)                                #397.46 c92
        vloadd    64(%rsp){1to16}, %v9                          #397.46 c94
        nop                                                     #397.39 c96
        nop                                                     #397.39 c98
        vstored   %v9, 5504(%rdi)                               #397.39 c101 stall 1
        movb      %al, %al                                      #397.59 c101
        movl      %r10d, 72(%rsp)                               #397.59 c103
        vloadd    72(%rsp){1to16}, %v10                         #397.59 c105
        nop                                                     #397.52 c107
        nop                                                     #397.52 c109
        vstored   %v10, 5568(%rdi)                              #397.52 c112 stall 1
        movb      %dl, %dl                                      #398.10 c112
        movl      %eax, 80(%rsp)                                #398.10 c114
        vloadd    80(%rsp){1to16}, %v11                         #398.10 c116
        nop                                                     #398.3 c118
        nop                                                     #398.3 c120
        vstored   %v11, 5632(%rdi)                              #398.3 c123 stall 1
        movb      %dl, %dl                                      #398.28 c123
        movl      %eax, 88(%rsp)                                #398.28 c125
        vloadd    88(%rsp){1to16}, %v12                         #398.28 c127
        nop                                                     #398.21 c129
        nop                                                     #398.21 c131
        vstored   %v12, 5696(%rdi)                              #398.21 c134 stall 1
        movb      %dl, %dl                                      #398.46 c134
        movl      %eax, 96(%rsp)                                #398.46 c136
        vloadd    96(%rsp){1to16}, %v13                         #398.46 c138
        nop                                                     #398.39 c140
        nop                                                     #398.39 c142
        vstored   %v13, 5760(%rdi)                              #398.39 c145 stall 1
        movb      %dl, %dl                                      #398.59 c145
        movl      %eax, 104(%rsp)                               #398.59 c147
        vloadd    104(%rsp){1to16}, %v14                        #398.59 c149
        nop                                                     #398.52 c151
        nop                                                     #398.52 c153
        vstored   %v14, 5824(%rdi)                              #398.52 c156 stall 1
        movb      %al, %al                                      #398.72 c156
        movl      %r10d, 112(%rsp)                              #398.72 c158
        vloadd    112(%rsp){1to16}, %v15                        #398.72 c160
        nop                                                     #398.65 c162
        nop                                                     #398.65 c164
        vstored   %v15, 5888(%rdi)                              #398.65 c167 stall 1
        vloadd    128(%rsi), %v17                               #400.30 c169
        nop                                                     #400.30 c171
        vmadd132ps (%rsi), %v16, %v17                           #400.30 c173
        nop                                                     #400.30 c175
        lea       4608(%rdi), %r10                              #400.30 c177
        vpackstoreld %v17, 4608(%rdi)                           #400.30
        testq     $63, %r10                                     #400.30
        je        ..L1137       # Prob 50%                      #400.30
        vpackstorehd %v17, 4672(%rdi)                           #400.30
..L1137:                                                        #
        vloadd    128(%rsi), %v20                               #401.30 c179
        nop                                                     #401.30 c181
        vmadd132ps 64(%rsi), %v19, %v20                         #401.30 c183
        nop                                                     #401.30 c185
        lea       4672(%rdi), %r10                              #401.30 c187
        vpackstoreld %v20, 4672(%rdi)                           #401.30
        testq     $63, %r10                                     #401.30
        je        ..L1138       # Prob 50%                      #401.30
        vpackstorehd %v20, 4736(%rdi)                           #401.30
..L1138:                                                        #

###   track.NDF = -3.0;

        movl      $-1069547520, 120(%rsp)                       #402.15 c189
        vloadd    120(%rsp){1to16}, %v21                        #402.15 c191

###   track.Chi2 = ZERO;

        movl      %eax, 128(%rsp)                               #403.16 c191
        nop                                                     #402.3 c193
        nop                                                     #402.3 c195
        vstored   %v21, 6016(%rdi)                              #402.3 c198 stall 1
        vloadd    128(%rsp){1to16}, %v22                        #403.16 c200
        nop                                                     #403.3 c202
        nop                                                     #403.3 c204
        vstored   %v22, 5952(%rdi)                              #403.3 c207 stall 1

### }

        addq      $136, %rsp                                    #404.1 c207
..___tag_value__Z11FilterFirstR6TrackVR4HitVR7Station.1139:     #
        ret                                                     #404.1 c209
        .align    16,0x90
..___tag_value__Z11FilterFirstR6TrackVR4HitVR7Station.1140:     #
                                # LOE
# mark_end;
	.type	_Z11FilterFirstR6TrackVR4HitVR7Station,@function
	.size	_Z11FilterFirstR6TrackVR4HitVR7Station,.-_Z11FilterFirstR6TrackVR4HitVR7Station
	.data
# -- End  _Z11FilterFirstR6TrackVR4HitVR7Station
	.text
# -- Begin  _ZrsRSiRN2Vc5LRBni6VectorIfEE
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl _ZrsRSiRN2Vc5LRBni6VectorIfEE
_ZrsRSiRN2Vc5LRBni6VectorIfEE:
# parameter 1: %rdi
# parameter 2: %rsi
..B10.1:                        # Preds ..B10.0 Latency 7

###   istream & operator>>(istream &strm, Fvec_t &a ){

..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1141:              #9.50
        pushq     %rbp                                          #9.50
..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1143:              #
        movq      %rsp, %rbp                                    #9.50
..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1144:              #
        andq      $-64, %rsp                                    #9.50
        pushq     %r12                                          #9.50 c1
..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1146:              #
        pushq     %rbx                                          #9.50 c2
..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1147:              #
        subq      $48, %rsp                                     #9.50 c3
        movq      %rsi, %rbx                                    #9.50 c3

###     float tmp;
###     strm>>tmp;

        lea       (%rsp), %rsi                                  #11.9 c5
        movq      %rdi, %r12                                    #9.50 c5
..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1148:              #11.9
        call      _ZNSirsERf                                    #11.9
..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1149:              #
                                # LOE rbx r12 r13 r14 r15
..B10.2:                        # Preds ..B10.1 Latency 12

###     a = tmp;

        vloadd    (%rsp){1to16}, %v0                            #12.9 c1

###     return strm;

        movq      %r12, %rax                                    #13.12 c1
        nop                                                     #12.5 c3
        nop                                                     #12.5 c5
        vstored   %v0, (%rbx)                                   #12.5 c8 stall 1
        addq      $48, %rsp                                     #13.12 c8
..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1150:              #13.12
        popq      %rbx                                          #13.12
..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1151:              #13.12
        popq      %r12                                          #13.12
        movq      %rbp, %rsp                                    #13.12 c12
        popq      %rbp                                          #13.12
..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1152:              #
        ret                                                     #13.12
        .align    16,0x90
..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1154:              #
                                # LOE
# mark_end;
	.type	_ZrsRSiRN2Vc5LRBni6VectorIfEE,@function
	.size	_ZrsRSiRN2Vc5LRBni6VectorIfEE,.-_ZrsRSiRN2Vc5LRBni6VectorIfEE
	.data
# -- End  _ZrsRSiRN2Vc5LRBni6VectorIfEE
	.text
# -- Begin  _Z11WriteOutputv
# mark_begin;
# Threads 2
..___tag_value__Z11WriteOutputv.1161:                           #
        .align    16,0x90
	.globl _Z11WriteOutputv
_Z11WriteOutputv:
..B11.1:                        # Preds ..B11.0 Latency 10

### void WriteOutput(){

..___tag_value__Z11WriteOutputv.1162:                           #179.19
        pushq     %rbp                                          #179.19
..___tag_value__Z11WriteOutputv.1164:                           #
        movq      %rsp, %rbp                                    #179.19
..___tag_value__Z11WriteOutputv.1165:                           #
        andq      $-64, %rsp                                    #179.19
        pushq     %r12                                          #179.19 c1
..___tag_value__Z11WriteOutputv.1167:                           #
        pushq     %r13                                          #179.19 c2
..___tag_value__Z11WriteOutputv.1168:                           #
        pushq     %r14                                          #179.19 c3
..___tag_value__Z11WriteOutputv.1169:                           #
        pushq     %r15                                          #179.19 c4
..___tag_value__Z11WriteOutputv.1170:                           #
        pushq     %rbx                                          #179.19 c5
..___tag_value__Z11WriteOutputv.1171:                           #
        subq      $1368, %rsp                                   #179.19 c6

###   
###   fstream Out, Diff;

        lea       16(%rsp), %rdi                                #181.11 c8
..___tag_value__Z11WriteOutputv.1172:                           #181.11
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEEC1Ev #181.11
..___tag_value__Z11WriteOutputv.1174:                           #
                                # LOE
..B11.2:                        # Preds ..B11.1 Latency 3
        lea       544(%rsp), %rdi                               #181.16 c1
..___tag_value__Z11WriteOutputv.1176:                           #181.16
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEEC1Ev #181.16
..___tag_value__Z11WriteOutputv.1178:                           #
                                # LOE
..B11.3:                        # Preds ..B11.2 Latency 3

### 
###   Out.open( (dataDir + "fit.dat").c_str(), ios::out );

        lea       8(%rsp), %rdi                                 #183.22 c1
        movl      $dataDir, %esi                                #183.22 c1
..___tag_value__Z11WriteOutputv.1180:                           #183.22
        call      _ZNSsC1ERKSs                                  #183.22
..___tag_value__Z11WriteOutputv.1182:                           #
                                # LOE
..B11.4:                        # Preds ..B11.3 Latency 3
        lea       8(%rsp), %rdi                                 #183.22 c1
        movl      $.L_2__STRING.9, %esi                         #183.22 c1
..___tag_value__Z11WriteOutputv.1184:                           #183.22
        call      _ZNSs6appendEPKc                              #183.22
..___tag_value__Z11WriteOutputv.1186:                           #
                                # LOE
..B11.5:                        # Preds ..B11.4 Latency 3
        lea       8(%rsp), %rdi                                 #183.35 c1
..___tag_value__Z11WriteOutputv.1188:                           #183.35
        call      _ZNKSs5c_strEv                                #183.35
..___tag_value__Z11WriteOutputv.1190:                           #
                                # LOE rax
..B11.6:                        # Preds ..B11.5 Latency 5
        lea       16(%rsp), %rdi                                #183.7 c1
        movq      %rax, %rsi                                    #183.7 c1
        movl      $16, %edx                                     #183.7 c3
..___tag_value__Z11WriteOutputv.1192:                           #183.7
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode #183.7
..___tag_value__Z11WriteOutputv.1194:                           #
                                # LOE
..B11.7:                        # Preds ..B11.6 Latency 3
        lea       8(%rsp), %rdi                                 #183.7 c1
..___tag_value__Z11WriteOutputv.1196:                           #183.7
        call      _ZNSsD1Ev                                     #183.7
..___tag_value__Z11WriteOutputv.1198:                           #
                                # LOE
..B11.8:                        # Preds ..B11.7 Latency 3

###   Diff.open( (dataDir + "fitdiff.dat").c_str(), ios::out );

        lea       8(%rsp), %rdi                                 #184.23 c1
        movl      $dataDir, %esi                                #184.23 c1
..___tag_value__Z11WriteOutputv.1200:                           #184.23
        call      _ZNSsC1ERKSs                                  #184.23
..___tag_value__Z11WriteOutputv.1202:                           #
                                # LOE
..B11.9:                        # Preds ..B11.8 Latency 3
        lea       8(%rsp), %rdi                                 #184.23 c1
        movl      $.L_2__STRING.10, %esi                        #184.23 c1
..___tag_value__Z11WriteOutputv.1204:                           #184.23
        call      _ZNSs6appendEPKc                              #184.23
..___tag_value__Z11WriteOutputv.1206:                           #
                                # LOE
..B11.10:                       # Preds ..B11.9 Latency 3
        lea       8(%rsp), %rdi                                 #184.40 c1
..___tag_value__Z11WriteOutputv.1208:                           #184.40
        call      _ZNKSs5c_strEv                                #184.40
..___tag_value__Z11WriteOutputv.1210:                           #
                                # LOE rax
..B11.11:                       # Preds ..B11.10 Latency 5
        lea       544(%rsp), %rdi                               #184.8 c1
        movq      %rax, %rsi                                    #184.8 c1
        movl      $16, %edx                                     #184.8 c3
..___tag_value__Z11WriteOutputv.1212:                           #184.8
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode #184.8
..___tag_value__Z11WriteOutputv.1214:                           #
                                # LOE
..B11.12:                       # Preds ..B11.11 Latency 3
        lea       8(%rsp), %rdi                                 #184.8 c1
..___tag_value__Z11WriteOutputv.1216:                           #184.8
        call      _ZNSsD1Ev                                     #184.8
..___tag_value__Z11WriteOutputv.1218:                           #
                                # LOE
..B11.13:                       # Preds ..B11.12 Latency 9

###   
###   for( int it=0, itt=0; itt<NTracks; itt++ ){

        movl      NTracks(%rip), %eax                           #186.29 c1
        xorl      %r13d, %r13d                                  #186.21 c1
        movl      $0, 1072(%rsp)                                #186.14 c3
        movq      %r13, 1080(%rsp)                              #186.21 c5
        xorl      %ebx, %ebx                                    # c5
        xorl      %r12d, %r12d                                  # c7
        testl     %eax, %eax                                    #186.29 c7
        jle       ..B11.65      # Prob 4%                       #186.29 c9
..___tag_value__Z11WriteOutputv.1220:                           #
                                # LOE rbx r12 r13 r13d r13b
..B11.15:                       # Preds ..B11.13 ..B11.63 Latency 1

###     Track &t = vTracks[itt];
###     MCTrack &mc = vMCTracks[itt];
### 
###     // convert matrix 
###     double C[15];    
###     {
###       Single_t *tC = (Single_t *) &t.C;
###       for( int i=0, n=0; i<5; i++)

        xorl      %r11d, %r11d                                  #194.22 c1
        xorl      %eax, %eax                                    #194.7 c1
..___tag_value__Z11WriteOutputv.1221:                           #
                                # LOE rbx r12 r13 eax r11d
..B11.16:                       # Preds ..B11.22 ..B11.15 Latency 7
        movl      %r11d, %r9d                                   #194.7 c1

###   for( int j=0; j<=i; j++, n++ ){

        lea       1(%rax), %r8d                                 #195.3 c1
        shlq      $32, %r9                                      #194.7 c3
        sarq      $32, %r9                                      #194.7 c5
        testl     %eax, %eax                                    #195.20 c7
        jl        ..B11.22      # Prob 50%                      #195.20 c7
..___tag_value__Z11WriteOutputv.1222:                           #
                                # LOE rbx r9 r12 r13 r8d r11d
..B11.17:                       # Preds ..B11.16 Latency 1
        cmpl      $32, %r8d                                     #195.3 c1
        jl        ..B11.115     # Prob 10%                      #195.3 c1
..___tag_value__Z11WriteOutputv.1223:                           #
                                # LOE rbx r9 r12 r13 r8d r11d
..B11.18:                       # Preds ..B11.17 Latency 18
        lea       1088(%rsp,%r9,8), %rsi                        #195.3 c1
        xorl      %ecx, %ecx                                    #195.3 c1
        movq      %rsi, %rax                                    #195.3 c3
        movq      %rsi, %rdi                                    #195.3 c3
        andq      $63, %rax                                     #195.3 c5
        subl      %eax, %ecx                                    #195.3 c7
        addl      $64, %ecx                                     #195.3 c9
        shrl      $3, %ecx                                      #195.3 c11
        testl     %eax, %eax                                    #195.3 c11
        jne       ..L1224       # Prob 50%                      #195.3 c13
        movl      %eax, %ecx                                    #195.3
..L1224:                                                        #
        lea       32(%rcx), %edx                                #195.3 c16 stall 1
        cmpl      %edx, %r8d                                    #195.3 c18
        jl        ..B11.115     # Prob 10%                      #195.3 c18
..___tag_value__Z11WriteOutputv.1225:                           #
                                # LOE rbx rsi rdi r9 r12 r13 ecx r8d r11d
..B11.19:                       # Preds ..B11.18 Latency 11
        movl      %r8d, %eax                                    #195.3 c1
        movl      %ecx, %r14d                                   #195.3 c1
        subl      %ecx, %eax                                    #195.3 c3
        movq      %r13, %r10                                    #195.3 c3
        andl      $31, %eax                                     #195.3 c5
        lea       856+vTracks(%rbx,%r9,4), %rdx                 #193.20 c5
        negl      %eax                                          #195.3 c7
        addl      %r8d, %eax                                    #195.3 c9
        testq     %r14, %r14                                    #195.3 c11
        jbe       ..B11.98      # Prob 10%                      #195.3 c11
..___tag_value__Z11WriteOutputv.1226:                           #
                                # LOE rdx rbx rsi rdi r9 r10 r12 r13 r14 eax ecx r8d r11d
..B11.21:                       # Preds ..B11.19 ..B11.21 Latency 15

###     C[n]=0;
###     //for(int k=0; k<5;k++) C[n]+=tC[i*5+k] * tC[j*5+k];
###     C[n] = tC[n];

        movl      $1, %r15d                                     #198.12 c1
        movq      %r13, (%rsi)                                  #196.5 c1
        vkmov     %r15d, %k1                                    #198.12 c3
        vcvtps2pd $0, (%rdx,%r10,4){1to16}, %v0{%k1}            #198.12 c5
        incq      %r10                                          #195.3 c5
        nop                                                     #198.5 c7
        nop                                                     #198.5 c9
        vstoreq   %v0{a}, (%rsi)                                #198.5 c12 stall 1
        addq      $8, %rsi                                      #195.3 c12
        cmpq      %r14, %r10                                    #195.3 c14
        jb        ..B11.21      # Prob 82%                      #195.3 c14
        jmp       ..B11.98      # Prob 100%                     #195.3 c14
..___tag_value__Z11WriteOutputv.1227:                           #
                                # LOE rdx rbx rsi rdi r9 r10 r12 r13 r14 eax ecx r8d r11d
..B11.22:                       # Preds ..B11.16 ..B11.176 ..B11.108 Latency 3
        movl      %r8d, %eax                                    #194.7 c1
        cmpl      $5, %r8d                                      #194.7 c1
        jb        ..B11.16      # Prob 80%                      #194.7 c3
..___tag_value__Z11WriteOutputv.1228:                           #
                                # LOE rbx r12 r13 eax r11d
..B11.23:                       # Preds ..B11.22                # Infreq Latency 7

###   }
###     }
### 
###     bool ok = 1;
###     for( int i=0; i<6; i++ ){
###     ok = ok && finite(t.T[i]);

        movl      $1, %edx                                      #204.16 c1
        vkmov     %edx, %k1                                     #204.16 c3
        vcvtps2pd $0, 832+vTracks(%rbx){1to16}, %v0{%k1}        #204.16 c5
..___tag_value__Z11WriteOutputv.1229:                           #204.16
        call      finite                                        #204.16
..___tag_value__Z11WriteOutputv.1231:                           #
                                # LOE rbx r12 r13 eax
..B11.178:                      # Preds ..B11.23                # Infreq Latency 1
        testl     %eax, %eax                                    #204.10 c1
        je        ..B11.29      # Prob 50%                      #204.10 c1
..___tag_value__Z11WriteOutputv.1233:                           #
                                # LOE rbx r12 r13
..B11.24:                       # Preds ..B11.178               # Infreq Latency 7
        movl      $1, %edx                                      #204.16 c1
        vkmov     %edx, %k1                                     #204.16 c3
        vcvtps2pd $0, 836+vTracks(%rbx){1to16}, %v0{%k1}        #204.16 c5
..___tag_value__Z11WriteOutputv.1234:                           #204.16
        call      finite                                        #204.16
..___tag_value__Z11WriteOutputv.1236:                           #
                                # LOE rbx r12 r13 eax
..B11.179:                      # Preds ..B11.24                # Infreq Latency 1
        testl     %eax, %eax                                    #204.10 c1
        je        ..B11.29      # Prob 50%                      #204.10 c1
..___tag_value__Z11WriteOutputv.1238:                           #
                                # LOE rbx r12 r13
..B11.25:                       # Preds ..B11.179               # Infreq Latency 7
        movl      $1, %edx                                      #204.16 c1
        vkmov     %edx, %k1                                     #204.16 c3
        vcvtps2pd $0, 840+vTracks(%rbx){1to16}, %v0{%k1}        #204.16 c5
..___tag_value__Z11WriteOutputv.1239:                           #204.16
        call      finite                                        #204.16
..___tag_value__Z11WriteOutputv.1241:                           #
                                # LOE rbx r12 r13 eax
..B11.180:                      # Preds ..B11.25                # Infreq Latency 1
        testl     %eax, %eax                                    #204.10 c1
        je        ..B11.29      # Prob 50%                      #204.10 c1
..___tag_value__Z11WriteOutputv.1243:                           #
                                # LOE rbx r12 r13
..B11.26:                       # Preds ..B11.180               # Infreq Latency 7
        movl      $1, %edx                                      #204.16 c1
        vkmov     %edx, %k1                                     #204.16 c3
        vcvtps2pd $0, 844+vTracks(%rbx){1to16}, %v0{%k1}        #204.16 c5
..___tag_value__Z11WriteOutputv.1244:                           #204.16
        call      finite                                        #204.16
..___tag_value__Z11WriteOutputv.1246:                           #
                                # LOE rbx r12 r13 eax
..B11.181:                      # Preds ..B11.26                # Infreq Latency 1
        testl     %eax, %eax                                    #204.10 c1
        je        ..B11.29      # Prob 50%                      #204.10 c1
..___tag_value__Z11WriteOutputv.1248:                           #
                                # LOE rbx r12 r13
..B11.27:                       # Preds ..B11.181               # Infreq Latency 7
        movl      $1, %edx                                      #204.16 c1
        vkmov     %edx, %k1                                     #204.16 c3
        vcvtps2pd $0, 848+vTracks(%rbx){1to16}, %v0{%k1}        #204.16 c5
..___tag_value__Z11WriteOutputv.1249:                           #204.16
        call      finite                                        #204.16
..___tag_value__Z11WriteOutputv.1251:                           #
                                # LOE rbx r12 r13 eax
..B11.182:                      # Preds ..B11.27                # Infreq Latency 1
        testl     %eax, %eax                                    #204.10 c1
        je        ..B11.29      # Prob 50%                      #204.10 c1
..___tag_value__Z11WriteOutputv.1253:                           #
                                # LOE rbx r12 r13
..B11.28:                       # Preds ..B11.182               # Infreq Latency 7
        movl      $1, %edx                                      #204.16 c1
        vkmov     %edx, %k1                                     #204.16 c3
        vcvtps2pd $0, 852+vTracks(%rbx){1to16}, %v0{%k1}        #204.16 c5
..___tag_value__Z11WriteOutputv.1254:                           #204.16
        call      finite                                        #204.16
..___tag_value__Z11WriteOutputv.1256:                           #
                                # LOE rbx r12 r13 eax
..B11.183:                      # Preds ..B11.28                # Infreq Latency 4
        xorl      %edx, %edx                                    #204.16 c1
        testl     %eax, %eax                                    #204.16 c1
        setne     %dl                                           #204.16 c3
        jmp       ..B11.30      # Prob 100%                     #204.16 c3
..___tag_value__Z11WriteOutputv.1258:                           #
                                # LOE rbx r12 r13 edx
..B11.29:                       # Preds ..B11.178 ..B11.179 ..B11.180 ..B11.181 ..B11.182
                                #                               # Infreq Latency 1
        xorl      %edx, %edx                                    #204.5 c1
..___tag_value__Z11WriteOutputv.1259:                           #
                                # LOE rbx r12 r13 edx
..B11.30:                       # Preds ..B11.183 ..B11.29      # Infreq Latency 3

###   }
###     for( int i=0; i<15; i++ ) ok = ok && finite(C[i]);

        movq      %r13, %r15                                    #206.5 c1
        movq      %r15, %r14                                    # c3
..___tag_value__Z11WriteOutputv.1260:                           #
                                # LOE rbx r12 r13 r14 r15 edx
..B11.31:                       # Preds ..B11.35 ..B11.30       # Infreq Latency 1
        testl     %edx, %edx                                    #206.36 c1
        je        ..B11.34      # Prob 50%                      #206.36 c1
..___tag_value__Z11WriteOutputv.1261:                           #
                                # LOE rbx r12 r13 r14 r15
..B11.32:                       # Preds ..B11.31                # Infreq Latency 3
        vloadq    1088(%rsp,%r14){1to8}, %v0                    #206.42 c1
..___tag_value__Z11WriteOutputv.1262:                           #206.42
        call      finite                                        #206.42
..___tag_value__Z11WriteOutputv.1264:                           #
                                # LOE rbx r12 r13 r14 r15 eax
..B11.184:                      # Preds ..B11.32                # Infreq Latency 1
        testl     %eax, %eax                                    #206.36 c1
        je        ..B11.34      # Prob 50%                      #206.36 c1
..___tag_value__Z11WriteOutputv.1266:                           #
                                # LOE rbx r12 r13 r14 r15
..B11.33:                       # Preds ..B11.184               # Infreq Latency 3
        vloadq    1096(%rsp,%r14){1to8}, %v0                    #206.42 c1
..___tag_value__Z11WriteOutputv.1267:                           #206.42
        call      finite                                        #206.42
..___tag_value__Z11WriteOutputv.1269:                           #
                                # LOE rbx r12 r13 r14 r15 eax
..B11.185:                      # Preds ..B11.33                # Infreq Latency 4
        xorl      %edx, %edx                                    #206.42 c1
        testl     %eax, %eax                                    #206.42 c1
        setne     %dl                                           #206.42 c3
        jmp       ..B11.35      # Prob 100%                     #206.42 c3
..___tag_value__Z11WriteOutputv.1271:                           #
                                # LOE rbx r12 r13 r14 r15 edx
..B11.34:                       # Preds ..B11.31 ..B11.184      # Infreq Latency 1
        xorl      %edx, %edx                                    #206.31 c1
..___tag_value__Z11WriteOutputv.1272:                           #
                                # LOE rbx r12 r13 r14 r15 edx
..B11.35:                       # Preds ..B11.185 ..B11.34      # Infreq Latency 3
        incq      %r15                                          #206.5 c1
        addq      $16, %r14                                     #206.5 c1
        cmpq      $7, %r15                                      #206.5 c3
        jb        ..B11.31      # Prob 86%                      #206.5 c3
..___tag_value__Z11WriteOutputv.1273:                           #
                                # LOE rbx r12 r13 r14 r15 edx
..B11.36:                       # Preds ..B11.35                # Infreq Latency 1
        testl     %edx, %edx                                    #206.36 c1
        je        ..B11.61      # Prob 50%                      #206.36 c1
..___tag_value__Z11WriteOutputv.1274:                           #
                                # LOE rbx r12 r13
..B11.37:                       # Preds ..B11.36                # Infreq Latency 3
        vloadq    1200(%rsp){1to8}, %v0                         #206.42 c1
..___tag_value__Z11WriteOutputv.1275:                           #206.42
        call      finite                                        #206.42
..___tag_value__Z11WriteOutputv.1277:                           #
                                # LOE rbx r12 r13 eax
..B11.186:                      # Preds ..B11.37                # Infreq Latency 1

### 
###     if(!ok){ cout<<" infinite "<<endl; continue; }

        testl     %eax, %eax                                    #208.9 c1
        je        ..B11.61      # Prob 50%                      #208.9 c1
..___tag_value__Z11WriteOutputv.1279:                           #
                                # LOE rbx r12 r13
..B11.38:                       # Preds ..B11.186               # Infreq Latency 3

### 
###     Out <<it<<endl<<"   "

        lea       32(%rsp), %rdi                                #210.9 c1
        movl      1072(%rsp), %esi                              #210.9 c1
..___tag_value__Z11WriteOutputv.1280:                           #210.9
        call      _ZNSolsEi                                     #210.9
..___tag_value__Z11WriteOutputv.1282:                           #
                                # LOE rax rbx r12 r13
..B11.39:                       # Preds ..B11.38                # Infreq Latency 3
        movq      %rax, %rdi                                    #210.13 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #210.13 c1
..___tag_value__Z11WriteOutputv.1284:                           #210.13
        call      _ZNSolsEPFRSoS_E                              #210.13
..___tag_value__Z11WriteOutputv.1286:                           #
                                # LOE rax rbx r12 r13
..B11.40:                       # Preds ..B11.39                # Infreq Latency 3
        movq      %rax, %rdi                                    #210.19 c1
        movl      $.L_2__STRING.12, %esi                        #210.19 c1
..___tag_value__Z11WriteOutputv.1288:                           #210.19
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #210.19
..___tag_value__Z11WriteOutputv.1290:                           #
                                # LOE rax rbx r12 r13
..B11.41:                       # Preds ..B11.40                # Infreq Latency 3

###   << " " << mc.MC_x  << " " << mc.MC_y  << " " << mc.MC_z 

        movq      %rax, %rdi                                    #211.3 c1
        movl      $.L_2__STRING.13, %esi                        #211.3 c1
..___tag_value__Z11WriteOutputv.1292:                           #211.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #211.3
..___tag_value__Z11WriteOutputv.1294:                           #
                                # LOE rax rbx r12 r13
..B11.42:                       # Preds ..B11.41                # Infreq Latency 5
        vloadd    vMCTracks(%r12){1to16}, %v0                   #211.10 c1
        movq      %rax, %rdi                                    #211.10 c3
..___tag_value__Z11WriteOutputv.1296:                           #211.10
        call      _ZNSolsEf                                     #211.10
..___tag_value__Z11WriteOutputv.1298:                           #
                                # LOE rax rbx r12 r13
..B11.43:                       # Preds ..B11.42                # Infreq Latency 3
        movq      %rax, %rdi                                    #211.22 c1
        movl      $.L_2__STRING.13, %esi                        #211.22 c1
..___tag_value__Z11WriteOutputv.1300:                           #211.22
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #211.22
..___tag_value__Z11WriteOutputv.1302:                           #
                                # LOE rax rbx r12 r13
..B11.44:                       # Preds ..B11.43                # Infreq Latency 5
        vloadd    4+vMCTracks(%r12){1to16}, %v0                 #211.29 c1
        movq      %rax, %rdi                                    #211.29 c3
..___tag_value__Z11WriteOutputv.1304:                           #211.29
        call      _ZNSolsEf                                     #211.29
..___tag_value__Z11WriteOutputv.1306:                           #
                                # LOE rax rbx r12 r13
..B11.45:                       # Preds ..B11.44                # Infreq Latency 3
        movq      %rax, %rdi                                    #211.41 c1
        movl      $.L_2__STRING.13, %esi                        #211.41 c1
..___tag_value__Z11WriteOutputv.1308:                           #211.41
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #211.41
..___tag_value__Z11WriteOutputv.1310:                           #
                                # LOE rax rbx r12 r13
..B11.46:                       # Preds ..B11.45                # Infreq Latency 5
        vloadd    8+vMCTracks(%r12){1to16}, %v0                 #211.48 c1
        movq      %rax, %rdi                                    #211.48 c3
..___tag_value__Z11WriteOutputv.1312:                           #211.48
        call      _ZNSolsEf                                     #211.48
..___tag_value__Z11WriteOutputv.1314:                           #
                                # LOE rax rbx r12 r13
..B11.47:                       # Preds ..B11.46                # Infreq Latency 3

###   << " " << mc.MC_px << " " << mc.MC_py << " " << mc.MC_pz 

        movq      %rax, %rdi                                    #212.3 c1
        movl      $.L_2__STRING.13, %esi                        #212.3 c1
..___tag_value__Z11WriteOutputv.1316:                           #212.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #212.3
..___tag_value__Z11WriteOutputv.1318:                           #
                                # LOE rax rbx r12 r13
..B11.48:                       # Preds ..B11.47                # Infreq Latency 5
        vloadd    12+vMCTracks(%r12){1to16}, %v0                #212.10 c1
        movq      %rax, %rdi                                    #212.10 c3
..___tag_value__Z11WriteOutputv.1320:                           #212.10
        call      _ZNSolsEf                                     #212.10
..___tag_value__Z11WriteOutputv.1322:                           #
                                # LOE rax rbx r12 r13
..B11.49:                       # Preds ..B11.48                # Infreq Latency 3
        movq      %rax, %rdi                                    #212.22 c1
        movl      $.L_2__STRING.13, %esi                        #212.22 c1
..___tag_value__Z11WriteOutputv.1324:                           #212.22
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #212.22
..___tag_value__Z11WriteOutputv.1326:                           #
                                # LOE rax rbx r12 r13
..B11.50:                       # Preds ..B11.49                # Infreq Latency 5
        vloadd    16+vMCTracks(%r12){1to16}, %v0                #212.29 c1
        movq      %rax, %rdi                                    #212.29 c3
..___tag_value__Z11WriteOutputv.1328:                           #212.29
        call      _ZNSolsEf                                     #212.29
..___tag_value__Z11WriteOutputv.1330:                           #
                                # LOE rax rbx r12 r13
..B11.51:                       # Preds ..B11.50                # Infreq Latency 3
        movq      %rax, %rdi                                    #212.41 c1
        movl      $.L_2__STRING.13, %esi                        #212.41 c1
..___tag_value__Z11WriteOutputv.1332:                           #212.41
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #212.41
..___tag_value__Z11WriteOutputv.1334:                           #
                                # LOE rax rbx r12 r13
..B11.52:                       # Preds ..B11.51                # Infreq Latency 5
        vloadd    20+vMCTracks(%r12){1to16}, %v0                #212.48 c1
        movq      %rax, %rdi                                    #212.48 c3
..___tag_value__Z11WriteOutputv.1336:                           #212.48
        call      _ZNSolsEf                                     #212.48
..___tag_value__Z11WriteOutputv.1338:                           #
                                # LOE rax rbx r12 r13
..B11.53:                       # Preds ..B11.52                # Infreq Latency 3

###   << " " << mc.MC_q<<endl;

        movq      %rax, %rdi                                    #213.3 c1
        movl      $.L_2__STRING.13, %esi                        #213.3 c1
..___tag_value__Z11WriteOutputv.1340:                           #213.3
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #213.3
..___tag_value__Z11WriteOutputv.1342:                           #
                                # LOE rax rbx r12 r13
..B11.54:                       # Preds ..B11.53                # Infreq Latency 5
        vloadd    24+vMCTracks(%r12){1to16}, %v0                #213.10 c1
        movq      %rax, %rdi                                    #213.10 c3
..___tag_value__Z11WriteOutputv.1344:                           #213.10
        call      _ZNSolsEf                                     #213.10
..___tag_value__Z11WriteOutputv.1346:                           #
                                # LOE rax rbx r12 r13
..B11.55:                       # Preds ..B11.54                # Infreq Latency 3
        movq      %rax, %rdi                                    #213.20 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #213.20 c1
..___tag_value__Z11WriteOutputv.1348:                           #213.20
        call      _ZNSolsEPFRSoS_E                              #213.20
..___tag_value__Z11WriteOutputv.1350:                           #
                                # LOE rbx r12 r13
..B11.56:                       # Preds ..B11.55                # Infreq Latency 3

###     Out<<"   ";

        lea       32(%rsp), %rdi                                #214.8 c1
        movl      $.L_2__STRING.12, %esi                        #214.8 c1
..___tag_value__Z11WriteOutputv.1352:                           #214.8
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #214.8
..___tag_value__Z11WriteOutputv.1354:                           #
                                # LOE rbx r12 r13
..B11.57:                       # Preds ..B11.56                # Infreq Latency 1

###     for( int i=0; i<6; i++ ) Out<< " " <<t.T[i];

        movq      %r13, %r15                                    #215.15 c1
        movq      %rbx, %r14                                    # c1
..___tag_value__Z11WriteOutputv.1356:                           #
                                # LOE rbx r12 r13 r14 r15
..B11.58:                       # Preds ..B11.60 ..B11.57       # Infreq Latency 3
        lea       32(%rsp), %rdi                                #215.33 c1
        movl      $.L_2__STRING.13, %esi                        #215.33 c1
..___tag_value__Z11WriteOutputv.1357:                           #215.33
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #215.33
..___tag_value__Z11WriteOutputv.1359:                           #
                                # LOE rax rbx r12 r13 r14 r15
..B11.59:                       # Preds ..B11.58                # Infreq Latency 5
        vloadd    832+vTracks(%r14){1to16}, %v0                 #215.40 c1
        movq      %rax, %rdi                                    #215.40 c3
..___tag_value__Z11WriteOutputv.1361:                           #215.40
        call      _ZNSolsEf                                     #215.40
..___tag_value__Z11WriteOutputv.1363:                           #
                                # LOE rbx r12 r13 r14 r15
..B11.60:                       # Preds ..B11.59                # Infreq Latency 4
        incq      %r15                                          #215.24 c1
        addq      $4, %r14                                      #215.24 c1
        cmpq      $6, %r15                                      #215.21 c3
        jl        ..B11.58      # Prob 83%                      #215.21 c3
        jmp       ..B11.76      # Prob 100%                     #215.21 c3
..___tag_value__Z11WriteOutputv.1365:                           #
                                # LOE rbx r12 r13 r14 r15
..B11.61:                       # Preds ..B11.36 ..B11.186      # Infreq Latency 3
        movl      $_ZSt4cout, %edi                              #208.18 c1
        movl      $.L_2__STRING.11, %esi                        #208.18 c1
..___tag_value__Z11WriteOutputv.1366:                           #208.18
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #208.18
..___tag_value__Z11WriteOutputv.1368:                           #
                                # LOE rax rbx r12 r13
..B11.62:                       # Preds ..B11.61                # Infreq Latency 3
        movq      %rax, %rdi                                    #208.32 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #208.32 c1
..___tag_value__Z11WriteOutputv.1370:                           #208.32
        call      _ZNSolsEPFRSoS_E                              #208.32
..___tag_value__Z11WriteOutputv.1372:                           #
                                # LOE rbx r12 r13
..B11.63:                       # Preds ..B11.62 ..B11.97       # Infreq Latency 9
        movl      NTracks(%rip), %eax                           #186.29 c1
        addq      $960, %rbx                                    #186.38 c1
        shlq      $32, %rax                                     #186.3 c3
        movq      1080(%rsp), %rdx                              #186.38 c3
        sarq      $32, %rax                                     #186.3 c5
        incq      %rdx                                          #186.38 c5
        addq      $64, %r12                                     #186.38 c7
        movq      %rdx, 1080(%rsp)                              #186.38 c7
        cmpq      %rax, %rdx                                    #186.29 c9
        jl        ..B11.15      # Prob 99%                      #186.29 c9
..___tag_value__Z11WriteOutputv.1374:                           #
                                # LOE rbx r12 r13
..B11.65:                       # Preds ..B11.63 ..B11.13       # Infreq Latency 3

###     Out<<endl<<"   ";
###     for( int i=0; i<15; i++ ) Out<< " " <<C[i];
###     Out<<endl;
### 
###     float tmc[6] = { mc.MC_x, mc.MC_y, mc.MC_px/mc.MC_pz, mc.MC_py/mc.MC_pz, 
###               mc.MC_q/sqrt(mc.MC_px*mc.MC_px+mc.MC_py*mc.MC_py+mc.MC_pz*mc.MC_pz), mc.MC_z};
###     Diff <<it<<endl;
###     Diff<<"   ";
###     for( int i=0; i<6; i++ ) Diff<< " " <<t.T[i]-tmc[i];
###     Diff<<endl<<"   ";
###     for( int i=0; i<15; i++ ) Diff<< " " <<C[i];
###     Diff<<endl;
###     it++;
###   }
###   Out.close();

        lea       16(%rsp), %rdi                                #230.7 c1
..___tag_value__Z11WriteOutputv.1375:                           #230.7
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv #230.7
..___tag_value__Z11WriteOutputv.1377:                           #
                                # LOE
..B11.66:                       # Preds ..B11.65                # Infreq Latency 3

###   Diff.close();  

        lea       544(%rsp), %rdi                               #231.8 c1
..___tag_value__Z11WriteOutputv.1379:                           #231.8
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv #231.8
..___tag_value__Z11WriteOutputv.1381:                           #
                                # LOE
..B11.67:                       # Preds ..B11.66                # Infreq Latency 3
        lea       544(%rsp), %rdi                               #231.8 c1
..___tag_value__Z11WriteOutputv.1383:                           #231.8
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev #231.8
..___tag_value__Z11WriteOutputv.1385:                           #
                                # LOE
..B11.68:                       # Preds ..B11.67                # Infreq Latency 3
        lea       16(%rsp), %rdi                                #231.8 c1
..___tag_value__Z11WriteOutputv.1387:                           #231.8
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev #231.8
..___tag_value__Z11WriteOutputv.1389:                           #
                                # LOE
..B11.69:                       # Preds ..B11.68                # Infreq Latency 8

### }

        addq      $1368, %rsp                                   #232.1 c1
..___tag_value__Z11WriteOutputv.1391:                           #
        popq      %rbx                                          #232.1
..___tag_value__Z11WriteOutputv.1393:                           #232.1
        popq      %r15                                          #232.1
..___tag_value__Z11WriteOutputv.1394:                           #232.1
        popq      %r14                                          #232.1
..___tag_value__Z11WriteOutputv.1395:                           #232.1
        popq      %r13                                          #232.1
..___tag_value__Z11WriteOutputv.1396:                           #232.1
        popq      %r12                                          #232.1
        movq      %rbp, %rsp                                    #232.1 c8
        popq      %rbp                                          #232.1
..___tag_value__Z11WriteOutputv.1397:                           #
        ret                                                     #232.1
..___tag_value__Z11WriteOutputv.1399:                           #
                                # LOE
..___tag_value__Z11WriteOutputv.1155:
..B11.70:                       # Preds ..B11.67 ..B11.2        # Infreq Latency 1
        movq      %rax, (%rsp)                                  #181.11 c1
..___tag_value__Z11WriteOutputv.1407:                           #
                                # LOE
..B11.71:                       # Preds ..B11.74 ..B11.70       # Infreq Latency 3
        lea       16(%rsp), %rdi                                #181.11 c1
..___tag_value__Z11WriteOutputv.1408:                           #181.11
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev #181.11
..___tag_value__Z11WriteOutputv.1410:                           #
                                # LOE
..B11.72:                       # Preds ..B11.71                # Infreq Latency 3
        movq      (%rsp), %rdi                                  #181.11 c1
        xorl      %eax, %eax                                    #181.11 c1
..___tag_value__Z11WriteOutputv.1412:                           #181.11
        call      _Unwind_Resume                                #181.11
..___tag_value__Z11WriteOutputv.1414:                           #
                                # LOE
..___tag_value__Z11WriteOutputv.1156:
..B11.73:                       # Preds ..B11.96 ..B11.94 ..B11.93 ..B11.91 ..B11.90
                                #       ..B11.88 ..B11.87 ..B11.85 ..B11.84 ..B11.83
                                #       ..B11.82 ..B11.80 ..B11.79 ..B11.77 ..B11.76
                                #       ..B11.59 ..B11.58 ..B11.56 ..B11.55 ..B11.54
                                #       ..B11.53 ..B11.52 ..B11.51 ..B11.50 ..B11.49
                                #       ..B11.48 ..B11.47 ..B11.46 ..B11.45 ..B11.44
                                #       ..B11.43 ..B11.42 ..B11.41 ..B11.40 ..B11.39
                                #       ..B11.38 ..B11.66 ..B11.65 ..B11.62 ..B11.61
                                #       ..B11.12 ..B11.8 ..B11.7 ..B11.3 # Infreq Latency 1
        movq      %rax, (%rsp)                                  #181.16 c1
..___tag_value__Z11WriteOutputv.1416:                           #
                                # LOE
..B11.74:                       # Preds ..B11.128 ..B11.122 ..B11.119 ..B11.73 # Infreq Latency 3
        lea       544(%rsp), %rdi                               #181.16 c1
..___tag_value__Z11WriteOutputv.1417:                           #181.16
        call      _ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev #181.16
..___tag_value__Z11WriteOutputv.1419:                           #
        jmp       ..B11.71      # Prob 100%                     #181.16 c3
..___tag_value__Z11WriteOutputv.1420:                           #
                                # LOE
..B11.76:                       # Preds ..B11.60                # Infreq Latency 3
        lea       32(%rsp), %rdi                                #216.8 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #216.8 c1
..___tag_value__Z11WriteOutputv.1421:                           #216.8
        call      _ZNSolsEPFRSoS_E                              #216.8
..___tag_value__Z11WriteOutputv.1423:                           #
                                # LOE rax rbx r12 r13
..B11.77:                       # Preds ..B11.76                # Infreq Latency 3
        movq      %rax, %rdi                                    #216.14 c1
        movl      $.L_2__STRING.12, %esi                        #216.14 c1
..___tag_value__Z11WriteOutputv.1425:                           #216.14
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #216.14
..___tag_value__Z11WriteOutputv.1427:                           #
                                # LOE rbx r12 r13
..B11.78:                       # Preds ..B11.77                # Infreq Latency 1
        movq      %r13, %r14                                    #217.15 c1
..___tag_value__Z11WriteOutputv.1429:                           #
                                # LOE rbx r12 r13 r14
..B11.79:                       # Preds ..B11.81 ..B11.78       # Infreq Latency 3
        lea       32(%rsp), %rdi                                #217.34 c1
        movl      $.L_2__STRING.13, %esi                        #217.34 c1
..___tag_value__Z11WriteOutputv.1430:                           #217.34
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #217.34
..___tag_value__Z11WriteOutputv.1432:                           #
                                # LOE rax rbx r12 r13 r14
..B11.80:                       # Preds ..B11.79                # Infreq Latency 5
        vloadq    1088(%rsp,%r14,8){1to8}, %v0                  #217.41 c1
        movq      %rax, %rdi                                    #217.41 c3
..___tag_value__Z11WriteOutputv.1434:                           #217.41
        call      _ZNSolsEd                                     #217.41
..___tag_value__Z11WriteOutputv.1436:                           #
                                # LOE rbx r12 r13 r14
..B11.81:                       # Preds ..B11.80                # Infreq Latency 3
        incq      %r14                                          #217.25 c1
        cmpq      $15, %r14                                     #217.21 c3
        jl        ..B11.79      # Prob 93%                      #217.21 c3
..___tag_value__Z11WriteOutputv.1438:                           #
                                # LOE rbx r12 r13 r14
..B11.82:                       # Preds ..B11.81                # Infreq Latency 3
        lea       32(%rsp), %rdi                                #218.8 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #218.8 c1
..___tag_value__Z11WriteOutputv.1439:                           #218.8
        call      _ZNSolsEPFRSoS_E                              #218.8
..___tag_value__Z11WriteOutputv.1441:                           #
                                # LOE rbx r12 r13
..B11.83:                       # Preds ..B11.82                # Infreq Latency 252
        vloadd    20+vMCTracks(%r12){1to16}, %v6                #188.29 c1
        vloadd    16+vMCTracks(%r12){1to16}, %v5                #188.29 c3
        vloadd    12+vMCTracks(%r12){1to16}, %v1                #188.29 c5
        vloadd    .L_2il0floatpacket.11088(%rip){4to16}, %v14   #221.23 c7
        vloadq    .L_2il0floatpacket.11085(%rip){4to8}, %v18    #221.23 c9
        vloadq    .L_2il0floatpacket.11087(%rip){4to8}, %v24    #221.23 c11
        vloadq    .L_2il0floatpacket.11086(%rip){4to8}, %v26    #221.23 c13
        vloadq    .L_2il0floatpacket.11090(%rip){4to8}, %v31    #221.23 c15
        movl      vMCTracks(%r12), %eax                         #188.29 c17
        movl      8+vMCTracks(%r12), %ecx                       #188.29 c17
        movl      %eax, 1208(%rsp)                              #220.22 c19
        movl      $1, %eax                                      #220.49 c19
        vkmov     %eax, %k5                                     #220.49 c21
        movl      4+vMCTracks(%r12), %edx                       #188.29 c21
        vrcpresps %v6, %v2{%k5}                                 #220.49 c23
        lea       560(%rsp), %rdi                               #222.10 c23
        vrcpresps %v6, %v7{%k5}                                 #220.68 c25
        movl      1072(%rsp), %esi                              #222.10 c25
        vrcprefineps %v6, %v2, %v4{%k5}                         #220.49 c27
        movl      %edx, 1212(%rsp)                              #220.31 c27
        vrcprefineps %v6, %v7, %v9{%k5}                         #220.68 c29
        movl      %ecx, 1228(%rsp)                              #221.84 c29
        vmsubr23c1ps %v6, %v4, %v2{%k5}                         #220.49 c31
        vmsubr23c1ps %v6, %v9, %v7{%k5}                         #220.68 c33
        vmadd231ps %v2, %v4, %v4{%k5}                           #220.49 c35
        vmadd231ps %v7, %v9, %v9{%k5}                           #220.68 c37
        vmsubr23c1ps %v6, %v4, %v2{%k5}                         #220.49 c39
        vmsubr23c1ps %v6, %v9, %v7{%k5}                         #220.68 c41
        vmadd231ps %v2, %v4, %v4{%k5}                           #220.49 c43
        vmadd231ps %v7, %v9, %v9{%k5}                           #220.68 c45
        vfixupps  $100418, %v6, %v4{%k5}                        #220.49 c47
        vfixupps  $100418, %v6, %v9{%k5}                        #220.68 c49
        vmulps    %v5, %v5, %v10{%k5}                           #221.55 c51
        vorpi     %v1, %v1, %v2{%k5}                            #220.49 c53
        vmulps    %v4, %v1, %v3{%k5}                            #220.49 c55
        vorpi     %v5, %v5, %v7{%k5}                            #220.68 c57
        vmulps    %v9, %v5, %v8{%k5}                            #220.68 c59
        vmadd213ps %v10, %v1, %v1{%k5}                          #221.23 c61
        vmsubr231ps %v3, %v6, %v2{%k5}                          #220.49 c63
        vmsubr231ps %v8, %v6, %v7{%k5}                          #220.68 c65
        vmadd213ps %v1, %v6, %v6{%k5}                           #221.23 c67
        vmadd132ps %v2, %v3, %v4{%k5}                           #220.49 c69
        vxorpi    %v2, %v2, %v2                                 #221.23 c71
        vfixupps  $132737, %v3, %v4{%k5}                        #220.49 c73
        vcvtps2pd $0, %v6, %v11{%k5}                            #221.73 c75
        vorpi     %v2, %v2, %v29                                #221.23 c77
        vorpq     %v11, %v11, %v29{%k5}                         #221.23 c79
        vstored   %v4{a}, 1216(%rsp)                            #220.49 c81
        vaddpi    %v14{aaaa}, %v29, %v13                        #221.23 c83
        vandpq    %v18{aaaa}, %v29, %v12                        #221.23 c85
        vsrlpi    %v14{bbbb}, %v13, %v15                        #221.23 c87
        vorpq     %v18{bbbb}, %v12, %v19                        #221.23 c89
        vorpi     %v15, %v15, %v16                              #221.23 c91
        vandpq    %v18{cccc}, %v15, %v22                        #221.23 c93
        vcmppd    {eq}, %v18{cccc}, %v29, %k1                   #221.23 c95
        vcmppd    {eq}, %v18{dddd}, %v29, %k0                   #221.23 c97
        vloadq    .L_2il0floatpacket.11089(%rip){4to8}, %v12    #221.23 c99
        vcvtpd2ps $0, {rz}, %v19, %v16                          #221.23 c101
        vcvtps2pd $0, 24+vMCTracks(%r12){1to16}, %v0{%k5}       #221.15 c103
        vmadd132ps %v7, %v8, %v9{%k5}                           #220.68 c105
        movb      %al, %al                                      #221.23 c105
        vkxor     %k0, %k1                                      #221.23 c107
        vfixupps  $132737, %v8, %v9{%k5}                        #220.68 c109
        vrsqrtlutps %v16, %v17                                  #221.23 c111
        nop                                                     #220.68 c113
        vstored   %v9{a}, 1220(%rsp)                            #220.68 c116 stall 1
        vcvtps2pd $0, %v17, %v20                                #221.23 c118
        nop                                                     #221.23 c120
        nop                                                     #221.23 c122
        vmulpd    %v20, %v19, %v21                              #221.23 c125 stall 1
        nop                                                     #221.23 c127
        vmsubr23c1pd %v20, %v21, %v25                           #221.23 c129
        vmulpd    %v22, %v21, %v30                              #221.23 c131
        vmulpd    %v24{bbbb}, %v25, %v23                        #221.23 c133
        vmulpd    %v25, %v30, %v27                              #221.23 c135
        vaddpd    %v24{aaaa}, %v23, %v28                        #221.23 c137
        nop                                                     #221.23 c139
        vmadd213pd %v26{dddd}, %v25, %v28                       #221.23 c141
        nop                                                     #221.23 c143
        vmadd213pd %v26{cccc}, %v25, %v28                       #221.23 c145
        nop                                                     #221.23 c147
        vmadd213pd %v26{bbbb}, %v25, %v28                       #221.23 c149
        nop                                                     #221.23 c151
        vmadd213pd %v26{aaaa}, %v25, %v28                       #221.23 c153
        nop                                                     #221.23 c155
        vmadd231pd %v28, %v27, %v30                             #221.23 c157
        vorpq     %v29, %v29, %v30{%k1}                         #221.23 c159
        nop                                                     #221.23 c161
        vorpq     %v30, %v30, %v1{%k5}                          #221.23 c163
        nop                                                     #221.23 c165
        vandpq    %v12{aaaa}, %v1, %v5{%k5}                     #221.23 c167
        vandpq    %v12{cccc}, %v1, %v11{%k5}                    #221.23 c169
        vorpq     %v12{bbbb}, %v5, %v5{%k5}                     #221.23 c171
        vsubrpi   %v31, %v11, %v4                               #221.23 c173
        vcmppd    {eq}, %v12{cccc}, %v11, %k4{%k5}              #221.23 c176 stall 1
        vcmppd    {eq}, %v2, %v11, %k2{%k5}                     #221.23 c178
        vcmppd    {unord}, %v2, %v1, %k3{%k4}                   #221.23 c180
        vcvtpd2ps $0, {rz}, %v5, %v3{%k5}                       #221.23 c182
        nop                                                     #221.23 c184
        nop                                                     #221.23 c186
        vorpq     %v12{cccc}, %v2, %v4{%k2}                     #221.23 c188
        vorpq     %v1, %v1, %v4{%k3}                            #221.23 c190
        vkxor     %k3, %k4                                      #221.23 c190
        vrcprefineps %v3, %v2, %v3{%k5}                         #221.23 c192
        vorpq     %v2, %v2, %v4{%k4}                            #221.23 c194
        nop                                                     #221.23 c196
        vcvtps2pd $0, %v3, %v3{%k5}                             #221.23 c199 stall 1
        nop                                                     #221.23 c201
        nop                                                     #221.23 c203
        vmsubr23c1pd %v5, %v3, %v5{%k5}                         #221.23 c206 stall 1
        nop                                                     #221.23 c208
        vmadd231pd %v5, %v3, %v3{%k5}                           #221.23 c210
        vmulpd    %v5, %v5, %v5{%k5}                            #221.23 c212
        nop                                                     #221.23 c214
        vmadd231pd %v5, %v3, %v3{%k5}                           #221.23 c216
        vmulpd    %v5, %v5, %v5{%k5}                            #221.23 c218
        nop                                                     #221.23 c220
        vmadd231pd %v5, %v3, %v3{%k5}                           #221.23 c222
        nop                                                     #221.23 c224
        vmulpd    %v4, %v3, %v5{%k5}                            #221.23 c226
        nop                                                     #221.23 c228
        vmulpd    %v5, %v0, %v0{%k5}                            #221.23 c230
        nop                                                     #221.23 c232
        nop                                                     #221.23 c234
        nop                                                     #221.23 c236
        nop                                                     #221.23 c238
        vcvtpd2ps $0, {rn}, %v0, %v6{%k5}                       #221.23 c240
        nop                                                     #221.23 c242
        nop                                                     #221.23 c244
        nop                                                     #221.23 c246
        nop                                                     #221.23 c248
        vstored   %v6{a}, 1224(%rsp)                            #221.23 c250
..___tag_value__Z11WriteOutputv.1443:                           #222.10
        call      _ZNSolsEi                                     #222.10
..___tag_value__Z11WriteOutputv.1445:                           #
                                # LOE rax rbx r12 r13
..B11.84:                       # Preds ..B11.83                # Infreq Latency 3
        movq      %rax, %rdi                                    #222.14 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #222.14 c1
..___tag_value__Z11WriteOutputv.1447:                           #222.14
        call      _ZNSolsEPFRSoS_E                              #222.14
..___tag_value__Z11WriteOutputv.1449:                           #
                                # LOE rbx r12 r13
..B11.85:                       # Preds ..B11.84                # Infreq Latency 3
        lea       560(%rsp), %rdi                               #223.9 c1
        movl      $.L_2__STRING.12, %esi                        #223.9 c1
..___tag_value__Z11WriteOutputv.1451:                           #223.9
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #223.9
..___tag_value__Z11WriteOutputv.1453:                           #
                                # LOE rbx r12 r13
..B11.86:                       # Preds ..B11.85                # Infreq Latency 1
        movq      %r13, %r14                                    #224.15 c1
..___tag_value__Z11WriteOutputv.1455:                           #
                                # LOE rbx r12 r13 r14
..B11.87:                       # Preds ..B11.89 ..B11.86       # Infreq Latency 3
        lea       560(%rsp), %rdi                               #224.34 c1
        movl      $.L_2__STRING.13, %esi                        #224.34 c1
..___tag_value__Z11WriteOutputv.1456:                           #224.34
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #224.34
..___tag_value__Z11WriteOutputv.1458:                           #
                                # LOE rax rbx r12 r13 r14
..B11.88:                       # Preds ..B11.87                # Infreq Latency 9
        vloadd    832+vTracks(%rbx,%r14,4){1to16}, %v1          #224.41 c1
        movl      $1, %edx                                      #224.41 c3
        movq      %rax, %rdi                                    #224.41 c3
        vkmov     %edx, %k1                                     #224.41 c5
        vsubps    1208(%rsp,%r14,4){1to16}, %v1, %v0{%k1}       #224.41 c7
..___tag_value__Z11WriteOutputv.1460:                           #224.41
        call      _ZNSolsEf                                     #224.41
..___tag_value__Z11WriteOutputv.1462:                           #
                                # LOE rbx r12 r13 r14
..B11.89:                       # Preds ..B11.88                # Infreq Latency 3
        incq      %r14                                          #224.24 c1
        cmpq      $6, %r14                                      #224.21 c3
        jl        ..B11.87      # Prob 83%                      #224.21 c3
..___tag_value__Z11WriteOutputv.1464:                           #
                                # LOE rbx r12 r13 r14
..B11.90:                       # Preds ..B11.89                # Infreq Latency 3
        lea       560(%rsp), %rdi                               #225.9 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #225.9 c1
..___tag_value__Z11WriteOutputv.1465:                           #225.9
        call      _ZNSolsEPFRSoS_E                              #225.9
..___tag_value__Z11WriteOutputv.1467:                           #
                                # LOE rax rbx r12 r13
..B11.91:                       # Preds ..B11.90                # Infreq Latency 3
        movq      %rax, %rdi                                    #225.15 c1
        movl      $.L_2__STRING.12, %esi                        #225.15 c1
..___tag_value__Z11WriteOutputv.1469:                           #225.15
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #225.15
..___tag_value__Z11WriteOutputv.1471:                           #
                                # LOE rbx r12 r13
..B11.92:                       # Preds ..B11.91                # Infreq Latency 1
        movq      %r13, %r14                                    #226.15 c1
..___tag_value__Z11WriteOutputv.1473:                           #
                                # LOE rbx r12 r13 r14
..B11.93:                       # Preds ..B11.95 ..B11.92       # Infreq Latency 3
        lea       560(%rsp), %rdi                               #226.35 c1
        movl      $.L_2__STRING.13, %esi                        #226.35 c1
..___tag_value__Z11WriteOutputv.1474:                           #226.35
        call      _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc #226.35
..___tag_value__Z11WriteOutputv.1476:                           #
                                # LOE rax rbx r12 r13 r14
..B11.94:                       # Preds ..B11.93                # Infreq Latency 5
        vloadq    1088(%rsp,%r14,8){1to8}, %v0                  #226.42 c1
        movq      %rax, %rdi                                    #226.42 c3
..___tag_value__Z11WriteOutputv.1478:                           #226.42
        call      _ZNSolsEd                                     #226.42
..___tag_value__Z11WriteOutputv.1480:                           #
                                # LOE rbx r12 r13 r14
..B11.95:                       # Preds ..B11.94                # Infreq Latency 3
        incq      %r14                                          #226.25 c1
        cmpq      $15, %r14                                     #226.21 c3
        jl        ..B11.93      # Prob 93%                      #226.21 c3
..___tag_value__Z11WriteOutputv.1482:                           #
                                # LOE rbx r12 r13 r14
..B11.96:                       # Preds ..B11.95                # Infreq Latency 3
        lea       560(%rsp), %rdi                               #227.9 c1
        movl      $_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi #227.9 c1
..___tag_value__Z11WriteOutputv.1483:                           #227.9
        call      _ZNSolsEPFRSoS_E                              #227.9
..___tag_value__Z11WriteOutputv.1485:                           #
                                # LOE rbx r12 r13
..B11.97:                       # Preds ..B11.96                # Infreq Latency 6
        movl      1072(%rsp), %eax                              #228.5 c1
        incl      %eax                                          #228.5 c3
        movl      %eax, 1072(%rsp)                              #228.5 c5
        jmp       ..B11.63      # Prob 100%                     #228.5 c5
..___tag_value__Z11WriteOutputv.1487:                           #
                                # LOE rbx r12 r13
..B11.98:                       # Preds ..B11.21 ..B11.19       # Infreq Latency 6
        addq      %r9, %r14                                     #195.3 c1
        lea       856+vTracks(%rbx,%r14,4), %rsi                #193.20 c4 stall 1
        testq     $63, %rsi                                     #195.3 c6
        jne       ..B11.104     # Prob 40%                      #195.3 c6
..___tag_value__Z11WriteOutputv.1488:                           #
                                # LOE rdx rbx rdi r9 r12 r13 eax ecx r8d r11d
..B11.100:                      # Preds ..B11.98 ..B11.102      # Infreq Latency 34
        vxorpi    %v2, %v2, %v2                                 #196.5 c1
        movl      %ecx, %r10d                                   #196.5 c1
        shlq      $32, %r10                                     #196.5 c3
        lea       257(%rcx), %esi                               #196.5 c3
        sarq      $32, %r10                                     #196.5 c5
        cmpl      %esi, %eax                                    #196.5 c7
        vstored   %v2, (%rdi,%r10,8)                            #196.5 c9
        vstored   %v2, 64(%rdi,%r10,8)                          #196.5 c11
        vcvtps2pd $0, (%rdx,%r10,4), %v0                        #198.12 c13
        vcvtps2pd $1, (%rdx,%r10,4), %v1                        #198.12 c15
        movb      %al, %al                                      #196.5 c15
        vstored   %v2, 128(%rdi,%r10,8)                         #196.5 c17
        vstored   %v2, 192(%rdi,%r10,8)                         #196.5 c19
        vstored   %v0, (%rdi,%r10,8)                            #198.5 c21
        vstored   %v1, 64(%rdi,%r10,8)                          #198.5 c23
        vcvtps2pd $0, 64(%rdx,%r10,4), %v3                      #198.12 c25
        vcvtps2pd $1, 64(%rdx,%r10,4), %v4                      #198.12 c27
        nop                                                     #198.5 c29
        vstored   %v3, 128(%rdi,%r10,8)                         #198.5 c32 stall 1
        vstored   %v4, 192(%rdi,%r10,8)                         #198.5 c34
        jl        ..B11.102     # Prob 18%                      #196.5 c34
..___tag_value__Z11WriteOutputv.1489:                           #
                                # LOE rdx rbx rdi r9 r10 r12 r13 eax ecx r8d r11d
..B11.101:                      # Preds ..B11.100               # Infreq Latency 23
        vprefetch2 $0, 2048(%rdi,%r10,8)                        #196.5 c1
        movb      %al, %al                                      #196.5 c1
        vprefetch1 $0, 1024(%rdi,%r10,8)                        #196.5 c3
        movb      %al, %al                                      #196.5 c3
        vprefetch2 $0, 2112(%rdi,%r10,8)                        #196.5 c5
        movb      %al, %al                                      #196.5 c5
        vprefetch1 $0, 1088(%rdi,%r10,8)                        #196.5 c7
        movb      %al, %al                                      #198.12 c7
        vprefetch2 $0, 1024(%rdx,%r10,4)                        #198.12 c9
        movb      %al, %al                                      #198.12 c9
        vprefetch1 $0, 512(%rdx,%r10,4)                         #198.12 c11
        movb      %al, %al                                      #198.12 c11
        vprefetch2 $0, 2176(%rdi,%r10,8)                        #198.12 c13
        movb      %al, %al                                      #198.12 c13
        vprefetch1 $0, 1152(%rdi,%r10,8)                        #198.12 c15
        movb      %al, %al                                      #198.12 c15
        vprefetch2 $0, 2240(%rdi,%r10,8)                        #198.12 c17
        movb      %al, %al                                      #198.12 c17
        vprefetch1 $0, 1216(%rdi,%r10,8)                        #198.12 c19
        movb      %al, %al                                      #198.12 c19
        vprefetch2 $0, 1088(%rdx,%r10,4)                        #198.12 c21
        movb      %al, %al                                      #198.12 c21
        vprefetch1 $0, 576(%rdx,%r10,4)                         #198.12 c23
..___tag_value__Z11WriteOutputv.1490:                           #
                                # LOE rdx rbx rdi r9 r12 r13 eax ecx r8d r11d
..B11.102:                      # Preds ..B11.100 ..B11.101     # Infreq Latency 4
        addl      $32, %ecx                                     #195.3 c1
        cmpl      %eax, %ecx                                    #195.3 c3
        jb        ..B11.100     # Prob 82%                      #195.3 c3
        jmp       ..B11.107     # Prob 100%                     #195.3 c3
..___tag_value__Z11WriteOutputv.1491:                           #
                                # LOE rdx rbx rdi r9 r12 r13 eax ecx r8d r11d
..B11.104:                      # Preds ..B11.98 ..B11.106      # Infreq Latency 46
        vxorpi    %v3, %v3, %v3                                 #196.5 c1
        movl      %ecx, %r14d                                   #196.5 c1
        shlq      $32, %r14                                     #196.5 c3
        lea       257(%rcx), %esi                               #198.5 c3
        sarq      $32, %r14                                     #196.5 c5
        vstored   %v3, (%rdi,%r14,8)                            #196.5 c8 stall 1
        vstored   %v3, 64(%rdi,%r14,8)                          #196.5 c10
        lea       (%rdx,%r14,4), %r10                           #193.20 c12
        testq     $3, %r10                                      #193.20
        je        ..L1493       # Prob 50%                      #193.20
        movq      (%rdx,%r14,4), %r10                           #193.20
        movq      %r10, 1280(%rsp)                              #193.20
        movq      8(%rdx,%r14,4), %r10                          #193.20
        movq      %r10, 1288(%rsp)                              #193.20
        movq      16(%rdx,%r14,4), %r10                         #193.20
        movq      %r10, 1296(%rsp)                              #193.20
        movq      24(%rdx,%r14,4), %r10                         #193.20
        movq      %r10, 1304(%rsp)                              #193.20
        movq      32(%rdx,%r14,4), %r10                         #193.20
        movq      %r10, 1312(%rsp)                              #193.20
        movq      40(%rdx,%r14,4), %r10                         #193.20
        movq      %r10, 1320(%rsp)                              #193.20
        movq      48(%rdx,%r14,4), %r10                         #193.20
        movq      %r10, 1328(%rsp)                              #193.20
        movq      56(%rdx,%r14,4), %r10                         #193.20
        movq      %r10, 1336(%rsp)                              #193.20
        vloadd    1280(%rsp), %v0                               #193.20
        jmp       ..L1492       # Prob 100%                     #193.20
..L1493:                                                        #
        vloadunpackld (%rdx,%r14,4), %v0                        #193.20
        testq     $63, %r10                                     #193.20
        je        ..L1492       # Prob 50%                      #193.20
        vloadunpackhd 64(%rdx,%r14,4), %v0                      #193.20
..L1492:                                                        #
        movb      %al, %al                                      #196.5 c12
        vstored   %v3, 128(%rdi,%r14,8)                         #196.5 c14
        vstored   %v3, 192(%rdi,%r14,8)                         #196.5 c16
        vcvtps2pd $0, %v0, %v1                                  #198.12 c19 stall 1
        vcvtps2pd $1, %v0, %v2                                  #198.12 c21
        nop                                                     #198.5 c23
        vstored   %v1, (%rdi,%r14,8)                            #198.5 c26 stall 1
        vstored   %v2, 64(%rdi,%r14,8)                          #198.5 c28
        lea       64(%rdx,%r14,4), %r10                         #193.20 c30
        testq     $3, %r10                                      #193.20
        je        ..L1495       # Prob 50%                      #193.20
        movq      64(%rdx,%r14,4), %r10                         #193.20
        movq      %r10, 1280(%rsp)                              #193.20
        movq      72(%rdx,%r14,4), %r10                         #193.20
        movq      %r10, 1288(%rsp)                              #193.20
        movq      80(%rdx,%r14,4), %r10                         #193.20
        movq      %r10, 1296(%rsp)                              #193.20
        movq      88(%rdx,%r14,4), %r10                         #193.20
        movq      %r10, 1304(%rsp)                              #193.20
        movq      96(%rdx,%r14,4), %r10                         #193.20
        movq      %r10, 1312(%rsp)                              #193.20
        movq      104(%rdx,%r14,4), %r10                        #193.20
        movq      %r10, 1320(%rsp)                              #193.20
        movq      112(%rdx,%r14,4), %r10                        #193.20
        movq      %r10, 1328(%rsp)                              #193.20
        movq      120(%rdx,%r14,4), %r10                        #193.20
        movq      %r10, 1336(%rsp)                              #193.20
        vloadd    1280(%rsp), %v4                               #193.20
        jmp       ..L1494       # Prob 100%                     #193.20
..L1495:                                                        #
        vloadunpackld 64(%rdx,%r14,4), %v4                      #193.20
        testq     $63, %r10                                     #193.20
        je        ..L1494       # Prob 50%                      #193.20
        vloadunpackhd 128(%rdx,%r14,4), %v4                     #193.20
..L1494:                                                        #
        cmpl      %esi, %eax                                    #198.5 c32
        nop                                                     #198.12 c34
        vcvtps2pd $0, %v4, %v5                                  #198.12 c37 stall 1
        vcvtps2pd $1, %v4, %v6                                  #198.12 c39
        nop                                                     #198.5 c41
        vstored   %v5, 128(%rdi,%r14,8)                         #198.5 c44 stall 1
        vstored   %v6, 192(%rdi,%r14,8)                         #198.5 c46
        jl        ..B11.106     # Prob 18%                      #198.5 c46
..___tag_value__Z11WriteOutputv.1496:                           #
                                # LOE rdx rbx rdi r9 r12 r13 r14 eax ecx r8d r11d
..B11.105:                      # Preds ..B11.104               # Infreq Latency 23
        vprefetch2 $0, 2048(%rdi,%r14,8)                        #195.3 c1
        movb      %al, %al                                      #195.3 c1
        vprefetch1 $0, 1024(%rdi,%r14,8)                        #195.3 c3
        movb      %al, %al                                      #195.3 c3
        vprefetch2 $0, 2112(%rdi,%r14,8)                        #195.3 c5
        movb      %al, %al                                      #195.3 c5
        vprefetch1 $0, 1088(%rdi,%r14,8)                        #195.3 c7
        movb      %al, %al                                      #198.12 c7
        vprefetch2 $0, 1024(%rdx,%r14,4)                        #198.12 c9
        movb      %al, %al                                      #198.12 c9
        vprefetch1 $0, 512(%rdx,%r14,4)                         #198.12 c11
        movb      %al, %al                                      #198.12 c11
        vprefetch2 $0, 2176(%rdi,%r14,8)                        #198.12 c13
        movb      %al, %al                                      #198.12 c13
        vprefetch1 $0, 1152(%rdi,%r14,8)                        #198.12 c15
        movb      %al, %al                                      #198.12 c15
        vprefetch2 $0, 2240(%rdi,%r14,8)                        #198.12 c17
        movb      %al, %al                                      #198.12 c17
        vprefetch1 $0, 1216(%rdi,%r14,8)                        #198.12 c19
        movb      %al, %al                                      #198.12 c19
        vprefetch2 $0, 1088(%rdx,%r14,4)                        #198.12 c21
        movb      %al, %al                                      #198.12 c21
        vprefetch1 $0, 576(%rdx,%r14,4)                         #198.12 c23
..___tag_value__Z11WriteOutputv.1497:                           #
                                # LOE rdx rbx rdi r9 r12 r13 eax ecx r8d r11d
..B11.106:                      # Preds ..B11.104 ..B11.105     # Infreq Latency 3
        addl      $32, %ecx                                     #195.3 c1
        cmpl      %eax, %ecx                                    #195.3 c3
        jb        ..B11.104     # Prob 82%                      #195.3 c3
..___tag_value__Z11WriteOutputv.1498:                           #
                                # LOE rdx rbx rdi r9 r12 r13 eax ecx r8d r11d
..B11.107:                      # Preds ..B11.102 ..B11.106     # Infreq Latency 1
        addl      %ecx, %r11d                                   #195.28 c1
..___tag_value__Z11WriteOutputv.1499:                           #
                                # LOE rbx r9 r12 r13 eax r8d r11d
..B11.108:                      # Preds ..B11.107 ..B11.115     # Infreq Latency 3
        lea       1(%rax), %edx                                 #195.3 c1
        cmpl      %edx, %r8d                                    #195.3 c3
        jb        ..B11.22      # Prob 50%                      #195.3 c3
..___tag_value__Z11WriteOutputv.1500:                           #
                                # LOE rbx r9 r12 r13 eax edx r8d r11d
..B11.109:                      # Preds ..B11.108               # Infreq Latency 23
        movl      %edx, (%rsp)                                  #195.3 c1
        movl      $65280, %edx                                  #195.3 c1
        vloadd    (%rsp){1to16}, %v0                            #195.3 c3
        vkmov     %edx, %k1                                     #195.3 c3
        movl      %eax, %edx                                    #196.5 c5
        movl      %r8d, %r10d                                   #195.3 c5
        shlq      $32, %rdx                                     #196.5 c7
        movl      %r8d, (%rsp)                                  #195.3 c7
        shlq      $32, %r10                                     #195.3 c9
        movq      %r13, %r14                                    #195.3 c9
        sarq      $32, %rdx                                     #196.5 c11
        sarq      $32, %r10                                     #195.3 c13
        vaddpi    .L_2il0floatpacket.11082(%rip), %v0, %v4      #195.3 c15
        subq      %rdx, %r10                                    #195.3 c17
        addq      %r9, %rdx                                     #196.5 c17
        vxorpi    %v4, %v4, %v4{%k1}                            #195.3 c19
        vloadd    (%rsp){1to16}, %v3                            #195.3 c21
        lea       1088(%rsp,%rdx,8), %rdi                       # c21
        lea       856+vTracks(%rbx,%rdx,4), %rsi                #198.12 c23
..___tag_value__Z11WriteOutputv.1501:                           #
                                # LOE rbx rsi rdi r9 r10 r12 r13 r14 eax r8d v3 v4
..B11.110:                      # Preds ..B11.112 ..B11.109     # Infreq Latency 16
        vcmppi    {nle}, %v3, %v4, %k0                          #195.3 c1
        nop                                                     #195.3 c3
        nop                                                     #195.3 c5
        vkmov     %k0, %edx                                     #195.3 c8 stall 1
        xorl      $-1, %edx                                     #195.3 c10
        andl      $255, %edx                                    #195.3 c12
        vkmov     %edx, %k2                                     #195.3 c14
        vkortest  %k2, %k2                                      #195.3 c16
        je        ..B11.112     # Prob 20%                      #195.3 c16
..___tag_value__Z11WriteOutputv.1502:                           #
                                # LOE rbx rsi rdi r9 r10 r12 r13 r14 eax edx r8d v3 v4 k2
..B11.111:                      # Preds ..B11.110               # Infreq Latency 30
        vloadd    .L_2il0floatpacket.11083(%rip), %v1           #196.5 c1
        vxorpi    %v0, %v0, %v0                                 #196.5 c3
        bitinterleave11 %edx, %edx                              #196.5 c3
        lea       (%rdi,%r14,8), %rcx                           #196.5 c5
        vkmov     %edx, %k3                                     #196.5 c5
        vkmov     %k3, %k1                                      #196.5 c7
..L1503:                                                        #196.5
        vscatterd %v0, (%rcx,%v1,4){%k1}                        #196.5 c10 stall 1
        vkortest  %k1, %k1                                      #196.5 c12
        jne       ..L1503       # Prob 50%                      #196.5 c12
        nop                                                     #198.12 c12
..L1504:                                                        #198.12
        vgatherd  (%rsi,%v1,4), %v0{%k2}                        #198.12 c16
        vkortest  %k2, %k2                                      #198.12 c18
        jne       ..L1504       # Prob 50%                      #198.12 c18
        nop                                                     #198.12 c18
        vcvtps2pd $0, %v0, %v2                                  #198.12 c23 stall 1
        nop                                                     #198.5 c25
        nop                                                     #198.5 c27
..L1505:                                                        #198.5
        vscatterd %v2, (%rcx,%v1,4){%k3}                        #198.5 c30 stall 1
        vkortest  %k3, %k3                                      #198.5 c32
        jne       ..L1505       # Prob 50%                      #198.5 c32
..___tag_value__Z11WriteOutputv.1506:                           #
                                # LOE rbx rsi rdi r9 r10 r12 r13 r14 eax r8d v3 v4
..B11.112:                      # Preds ..B11.110 ..B11.111     # Infreq Latency 5
        addq      $8, %r14                                      #195.3 c1
        addq      $32, %rsi                                     #195.3 c1
        vaddpi    .L_2il0floatpacket.11081(%rip){1to16}, %v4, %v4 #195.3 c3
        cmpq      %r10, %r14                                    #195.3 c5
        jb        ..B11.110     # Prob 82%                      #195.3 c5
..___tag_value__Z11WriteOutputv.1507:                           #
                                # LOE rbx rsi rdi r9 r10 r12 r13 r14 eax r8d v3 v4
..B11.113:                      # Preds ..B11.112               # Infreq Latency 9
        movl      %r9d, %r11d                                   #195.28 c1
        addl      %eax, %r11d                                   #194.22 c3
        negl      %eax                                          #195.3 c5
        addl      %r8d, %eax                                    #195.3 c7
        addl      %r14d, %r11d                                  #194.22 c7
        andl      $-2147483641, %eax                            #194.22 c9
        jge       ..B11.174     # Prob 50%                      #194.22 c9
..___tag_value__Z11WriteOutputv.1508:                           #
                                # LOE rbx r12 r13 eax r8d r11d
..B11.175:                      # Preds ..B11.113               # Infreq Latency 5
        subl      $1, %eax                                      #194.22 c1
        orl       $-8, %eax                                     #194.22 c3
        incl      %eax                                          #194.22 c5
..___tag_value__Z11WriteOutputv.1509:                           #
                                # LOE rbx r12 r13 eax r8d r11d
..B11.174:                      # Preds ..B11.113 ..B11.175     # Infreq Latency 5
        negl      %eax                                          #194.22 c1
        addl      $8, %eax                                      #194.22 c3
        andl      $-2147483641, %eax                            #194.22 c5
        jge       ..B11.176     # Prob 50%                      #194.22 c5
..___tag_value__Z11WriteOutputv.1510:                           #
                                # LOE rbx r12 r13 eax r8d r11d
..B11.177:                      # Preds ..B11.174               # Infreq Latency 5
        subl      $1, %eax                                      #194.22 c1
        orl       $-8, %eax                                     #194.22 c3
        incl      %eax                                          #194.22 c5
..___tag_value__Z11WriteOutputv.1511:                           #
                                # LOE rbx r12 r13 eax r8d r11d
..B11.176:                      # Preds ..B11.174 ..B11.177     # Infreq Latency 2
        subl      %eax, %r11d                                   #194.22 c1
        jmp       ..B11.22      # Prob 100%                     #194.22 c1
..___tag_value__Z11WriteOutputv.1512:                           #
                                # LOE rbx r12 r13 r8d r11d
..B11.115:                      # Preds ..B11.17 ..B11.18       # Infreq Latency 2
        xorl      %eax, %eax                                    #195.3 c1
        jmp       ..B11.108     # Prob 100%                     #195.3 c1
..___tag_value__Z11WriteOutputv.1513:                           #
                                # LOE rbx r9 r12 r13 eax r8d r11d
..___tag_value__Z11WriteOutputv.1160:
..___tag_value__Z11WriteOutputv.1158:
..B11.118:                      # Preds ..B11.5 ..B11.6 ..B11.11 ..B11.10 # Infreq Latency 1
        movq      %rax, (%rsp)                                  #184.23 c1
..___tag_value__Z11WriteOutputv.1514:                           #
                                # LOE
..B11.119:                      # Preds ..B11.118               # Infreq Latency 3
        lea       8(%rsp), %rdi                                 #184.23 c1
..___tag_value__Z11WriteOutputv.1515:                           #184.23
        call      _ZNSsD1Ev                                     #184.23
..___tag_value__Z11WriteOutputv.1517:                           #
        jmp       ..B11.74      # Prob 100%                     #184.23 c3
..___tag_value__Z11WriteOutputv.1518:                           #
                                # LOE
..___tag_value__Z11WriteOutputv.1159:
..B11.121:                      # Preds ..B11.9                 # Infreq Latency 1
        movq      %rax, (%rsp)                                  #184.23 c1
..___tag_value__Z11WriteOutputv.1519:                           #
                                # LOE
..B11.122:                      # Preds ..B11.121               # Infreq Latency 3
        lea       8(%rsp), %rdi                                 #184.23 c1
..___tag_value__Z11WriteOutputv.1520:                           #184.23
        call      _ZNSsD1Ev                                     #184.23
..___tag_value__Z11WriteOutputv.1522:                           #
        jmp       ..B11.74      # Prob 100%                     #184.23 c3
..___tag_value__Z11WriteOutputv.1523:                           #
                                # LOE
..___tag_value__Z11WriteOutputv.1157:
..B11.127:                      # Preds ..B11.4                 # Infreq Latency 1
        movq      %rax, (%rsp)                                  #183.22 c1
..___tag_value__Z11WriteOutputv.1524:                           #
                                # LOE
..B11.128:                      # Preds ..B11.127               # Infreq Latency 3
        lea       8(%rsp), %rdi                                 #183.22 c1
..___tag_value__Z11WriteOutputv.1525:                           #183.22
        call      _ZNSsD1Ev                                     #183.22
..___tag_value__Z11WriteOutputv.1527:                           #
        jmp       ..B11.74      # Prob 100%                     #183.22 c3
        .align    16,0x90
..___tag_value__Z11WriteOutputv.1528:                           #
                                # LOE
# mark_end;
	.type	_Z11WriteOutputv,@function
	.size	_Z11WriteOutputv,.-_Z11WriteOutputv
	.section .gcc_except_table, "a"
	.align 4
_Z11WriteOutputv$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__Z11WriteOutputv.1532 - ..___tag_value__Z11WriteOutputv.1531
..___tag_value__Z11WriteOutputv.1531:
	.byte	1
	.uleb128	..___tag_value__Z11WriteOutputv.1530 - ..___tag_value__Z11WriteOutputv.1529
..___tag_value__Z11WriteOutputv.1529:
	.uleb128	..___tag_value__Z11WriteOutputv.1172 - ..___tag_value__Z11WriteOutputv.1162
	.uleb128	..___tag_value__Z11WriteOutputv.1174 - ..___tag_value__Z11WriteOutputv.1172
	.byte	0
	.byte	0
	.uleb128	..___tag_value__Z11WriteOutputv.1176 - ..___tag_value__Z11WriteOutputv.1162
	.uleb128	..___tag_value__Z11WriteOutputv.1178 - ..___tag_value__Z11WriteOutputv.1176
	.uleb128	..___tag_value__Z11WriteOutputv.1155 - ..___tag_value__Z11WriteOutputv.1162
	.byte	0
	.uleb128	..___tag_value__Z11WriteOutputv.1180 - ..___tag_value__Z11WriteOutputv.1162
	.uleb128	..___tag_value__Z11WriteOutputv.1182 - ..___tag_value__Z11WriteOutputv.1180
	.uleb128	..___tag_value__Z11WriteOutputv.1156 - ..___tag_value__Z11WriteOutputv.1162
	.byte	0
	.uleb128	..___tag_value__Z11WriteOutputv.1184 - ..___tag_value__Z11WriteOutputv.1162
	.uleb128	..___tag_value__Z11WriteOutputv.1186 - ..___tag_value__Z11WriteOutputv.1184
	.uleb128	..___tag_value__Z11WriteOutputv.1157 - ..___tag_value__Z11WriteOutputv.1162
	.byte	0
	.uleb128	..___tag_value__Z11WriteOutputv.1188 - ..___tag_value__Z11WriteOutputv.1162
	.uleb128	..___tag_value__Z11WriteOutputv.1194 - ..___tag_value__Z11WriteOutputv.1188
	.uleb128	..___tag_value__Z11WriteOutputv.1158 - ..___tag_value__Z11WriteOutputv.1162
	.byte	0
	.uleb128	..___tag_value__Z11WriteOutputv.1196 - ..___tag_value__Z11WriteOutputv.1162
	.uleb128	..___tag_value__Z11WriteOutputv.1202 - ..___tag_value__Z11WriteOutputv.1196
	.uleb128	..___tag_value__Z11WriteOutputv.1156 - ..___tag_value__Z11WriteOutputv.1162
	.byte	0
	.uleb128	..___tag_value__Z11WriteOutputv.1204 - ..___tag_value__Z11WriteOutputv.1162
	.uleb128	..___tag_value__Z11WriteOutputv.1206 - ..___tag_value__Z11WriteOutputv.1204
	.uleb128	..___tag_value__Z11WriteOutputv.1159 - ..___tag_value__Z11WriteOutputv.1162
	.byte	0
	.uleb128	..___tag_value__Z11WriteOutputv.1208 - ..___tag_value__Z11WriteOutputv.1162
	.uleb128	..___tag_value__Z11WriteOutputv.1214 - ..___tag_value__Z11WriteOutputv.1208
	.uleb128	..___tag_value__Z11WriteOutputv.1160 - ..___tag_value__Z11WriteOutputv.1162
	.byte	0
	.uleb128	..___tag_value__Z11WriteOutputv.1216 - ..___tag_value__Z11WriteOutputv.1162
	.uleb128	..___tag_value__Z11WriteOutputv.1381 - ..___tag_value__Z11WriteOutputv.1216
	.uleb128	..___tag_value__Z11WriteOutputv.1156 - ..___tag_value__Z11WriteOutputv.1162
	.byte	0
	.uleb128	..___tag_value__Z11WriteOutputv.1383 - ..___tag_value__Z11WriteOutputv.1162
	.uleb128	..___tag_value__Z11WriteOutputv.1385 - ..___tag_value__Z11WriteOutputv.1383
	.uleb128	..___tag_value__Z11WriteOutputv.1155 - ..___tag_value__Z11WriteOutputv.1162
	.byte	0
	.uleb128	..___tag_value__Z11WriteOutputv.1387 - ..___tag_value__Z11WriteOutputv.1162
	.uleb128	..___tag_value__Z11WriteOutputv.1389 - ..___tag_value__Z11WriteOutputv.1387
	.byte	0
	.byte	0
	.uleb128	..___tag_value__Z11WriteOutputv.1412 - ..___tag_value__Z11WriteOutputv.1162
	.uleb128	..___tag_value__Z11WriteOutputv.1414 - ..___tag_value__Z11WriteOutputv.1412
	.byte	0
	.byte	0
	.uleb128	..___tag_value__Z11WriteOutputv.1421 - ..___tag_value__Z11WriteOutputv.1162
	.uleb128	..___tag_value__Z11WriteOutputv.1485 - ..___tag_value__Z11WriteOutputv.1421
	.uleb128	..___tag_value__Z11WriteOutputv.1156 - ..___tag_value__Z11WriteOutputv.1162
	.byte	0
..___tag_value__Z11WriteOutputv.1530:
	.long	0x00000000,0x00000000
..___tag_value__Z11WriteOutputv.1532:
	.data
# -- End  _Z11WriteOutputv
	.text
# -- Begin  __sti__$E
# mark_begin;
# Threads 2
..___tag_value___sti__$E.1534:                                  #
        .align    16,0x90
__sti__$E:
..B12.1:                        # Preds ..B12.0 Latency 3
..___tag_value___sti__$E.1535:                                  #
        pushq     %rbp                                          #
..___tag_value___sti__$E.1537:                                  #
        movq      %rsp, %rbp                                    #
..___tag_value___sti__$E.1538:                                  #
        andq      $-64, %rsp                                    #
        subq      $64, %rsp                                     # c1

###   static ios_base::Init __ioinit;

        movl      $_ZSt8__ioinit, %edi                          #75.25 c1
..___tag_value___sti__$E.1540:                                  #75.25
        call      _ZNSt8ios_base4InitC1Ev                       #75.25
..___tag_value___sti__$E.1542:                                  #
                                # LOE rbx r12 r13 r14 r15
..B12.2:                        # Preds ..B12.1 Latency 5
        movl      $_ZNSt8ios_base4InitD1Ev, %edi                #75.25 c1
        movl      $_ZSt8__ioinit, %esi                          #75.25 c1
        movl      $__dso_handle, %edx                           #75.25 c3
        xorl      %eax, %eax                                    #75.25 c3
..___tag_value___sti__$E.1544:                                  #75.25
        call      __cxa_atexit                                  #75.25
..___tag_value___sti__$E.1546:                                  #
                                # LOE rbx r12 r13 r14 r15
..B12.3:                        # Preds ..B12.2 Latency 3
        lea       8(%rsp), %rdi                                 #35.18 c1
        call      _ZNSaIcEC1Ev                                  #35.18 c3
..___tag_value___sti__$E.1548:                                  #
                                # LOE rbx r12 r13 r14 r15
..B12.4:                        # Preds ..B12.3 Latency 5
        movl      $dataDir, %edi                                #35.18 c1
        movl      $.L_2__STRING.22, %esi                        #35.18 c1
        lea       8(%rsp), %rdx                                 #35.18 c3
..___tag_value___sti__$E.1549:                                  #35.18
        call      _ZNSsC1EPKcRKSaIcE                            #35.18
..___tag_value___sti__$E.1551:                                  #
                                # LOE rbx r12 r13 r14 r15
..B12.5:                        # Preds ..B12.4 Latency 5
        movl      $_ZNSsD1Ev, %edi                              #35.8 c1
        movl      $dataDir, %esi                                #35.8 c1
        movl      $__dso_handle, %edx                           #35.8 c3
        xorl      %eax, %eax                                    #35.8 c3
..___tag_value___sti__$E.1553:                                  #35.8
        call      __cxa_atexit                                  #35.8
..___tag_value___sti__$E.1555:                                  #
                                # LOE rbx r12 r13 r14 r15
..B12.6:                        # Preds ..B12.5 Latency 3
        lea       8(%rsp), %rdi                                 #35.8 c1
        call      _ZNSaIcED1Ev                                  #35.8 c3
..___tag_value___sti__$E.1557:                                  #
                                # LOE rbx r12 r13 r14 r15
..B12.7:                        # Preds ..B12.6 Latency 32
        movl      $0, (%rsp)                                    #70.13 c1
        vloadd    (%rsp){1to16}, %v0                            #70.13 c3
        nop                                                     #70.13 c5
        nop                                                     #70.13 c7
        vstored   %v0, 576+field0(%rip)                         #70.13 c10 stall 1
        vstored   %v0, 512+field0(%rip)                         #70.13 c12
        vstored   %v0, 448+field0(%rip)                         #70.13 c14
        vstored   %v0, 384+field0(%rip)                         #70.13 c16
        vstored   %v0, 320+field0(%rip)                         #70.13 c18
        vstored   %v0, 256+field0(%rip)                         #70.13 c20
        vstored   %v0, 192+field0(%rip)                         #70.13 c22
        vstored   %v0, 128+field0(%rip)                         #70.13 c24
        vstored   %v0, 64+field0(%rip)                          #70.13 c26
        vstored   %v0, field0(%rip)                             #70.13 c28
        movq      %rbp, %rsp                                    #70.13 c32
        popq      %rbp                                          #70.13
..___tag_value___sti__$E.1558:                                  #
        ret                                                     #70.13
..___tag_value___sti__$E.1560:                                  #
                                # LOE
..___tag_value___sti__$E.1533:
..B12.8:                        # Preds ..B12.5 ..B12.4 Latency 1
        movq      %rax, (%rsp)                                  #35.18 c1
..___tag_value___sti__$E.1563:                                  #
                                # LOE rbx r12 r13 r14 r15
..B12.9:                        # Preds ..B12.8 Latency 3
        lea       8(%rsp), %rdi                                 #35.18 c1
        call      _ZNSaIcED1Ev                                  #35.18 c3
..___tag_value___sti__$E.1564:                                  #
                                # LOE rbx r12 r13 r14 r15
..B12.10:                       # Preds ..B12.9 Latency 3
        movq      (%rsp), %rdi                                  #35.18 c1
        xorl      %eax, %eax                                    #35.18 c1
..___tag_value___sti__$E.1565:                                  #35.18
        call      _Unwind_Resume                                #35.18
..___tag_value___sti__$E.1567:                                  #
        .align    16,0x90
..___tag_value___sti__$E.1568:                                  #
                                # LOE
# mark_end;
	.type	__sti__$E,@function
	.size	__sti__$E,.-__sti__$E
	.section .gcc_except_table, "a"
	.align 4
__sti__$E$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value___sti__$E.1572 - ..___tag_value___sti__$E.1571
..___tag_value___sti__$E.1571:
	.byte	1
	.uleb128	..___tag_value___sti__$E.1570 - ..___tag_value___sti__$E.1569
..___tag_value___sti__$E.1569:
	.uleb128	..___tag_value___sti__$E.1540 - ..___tag_value___sti__$E.1535
	.uleb128	..___tag_value___sti__$E.1546 - ..___tag_value___sti__$E.1540
	.byte	0
	.byte	0
	.uleb128	..___tag_value___sti__$E.1549 - ..___tag_value___sti__$E.1535
	.uleb128	..___tag_value___sti__$E.1555 - ..___tag_value___sti__$E.1549
	.uleb128	..___tag_value___sti__$E.1533 - ..___tag_value___sti__$E.1535
	.byte	0
	.uleb128	..___tag_value___sti__$E.1565 - ..___tag_value___sti__$E.1535
	.uleb128	..___tag_value___sti__$E.1567 - ..___tag_value___sti__$E.1565
	.byte	0
	.byte	0
..___tag_value___sti__$E.1570:
	.long	0x00000000,0x00000000
..___tag_value___sti__$E.1572:
	.data
# -- End  __sti__$E
	.section .text._ZN9Stopwatch5StartEi, "xaG",@progbits,_ZN9Stopwatch5StartEi,comdat
..TXTST7:
# -- Begin  _ZN9Stopwatch5StartEi
# mark_begin;
# Threads 2
        .align    16,0x90
	.weak _ZN9Stopwatch5StartEi
_ZN9Stopwatch5StartEi:
# parameter 1: %rdi
# parameter 2: %esi
..B13.1:                        # Preds ..B13.0 Latency 4

### {

..___tag_value__ZN9Stopwatch5StartEi.1573:                      #106.1
        pushq     %rbp                                          #106.1
..___tag_value__ZN9Stopwatch5StartEi.1575:                      #
        movq      %rsp, %rbp                                    #106.1
..___tag_value__ZN9Stopwatch5StartEi.1576:                      #
        andq      $-64, %rsp                                    #106.1
        pushq     %r15                                          #106.1 c1
..___tag_value__ZN9Stopwatch5StartEi.1578:                      #
        subq      $56, %rsp                                     #106.1 c2
        movq      %rdi, %r15                                    #106.1 c2

###    // Start the stopwatch. If reset is kTRUE reset the stopwatch before
###    // starting it (including the stopwatch counter).
###    // Use kFALSE to continue timing after a Stop() without
###    // resetting the stopwatch.
### 
###    if (reset) {

        testl     %esi, %esi                                    #112.8 c4
        je        ..B13.3       # Prob 50%                      #112.8 c4
                                # LOE rbx r12 r13 r14 r15
..B13.2:                        # Preds ..B13.1 Latency 6

###       fState         = kUndefined;

        xorl      %edx, %edx                                    #113.7 c1

###       fTotalCpuTime  = 0;

        xorl      %eax, %eax                                    #114.7 c1
        movl      %edx, 48(%r15)                                #113.7 c3
        movq      %rax, 32(%r15)                                #114.7 c3

###       fTotalRealTime = 0;

        movq      %rax, 40(%r15)                                #115.7 c5

###       fCounter       = 0;

        movl      %edx, 52(%r15)                                #116.7 c5
        jmp       ..B13.4       # Prob 100%                     #116.7 c5
                                # LOE rbx r12 r13 r14 r15
..B13.3:                        # Preds ..B13.1 Latency 3

###    }
###    if (fState != kRunning) {

        cmpl      $2, 48(%r15)                                  #118.18 c1
        je        ..B13.7       # Prob 79%                      #118.18 c3
                                # LOE rbx r12 r13 r14 r15
..B13.4:                        # Preds ..B13.2 ..B13.3 Latency 3

###       fStartRealTime = GetRealTime();

        lea       32(%rsp), %rdi                                #119.24 c1
        xorl      %esi, %esi                                    #119.24 c1
        call      gettimeofday                                  #119.24 c3
                                # LOE rbx r12 r13 r14 r15
..B13.5:                        # Preds ..B13.4 Latency 34
        movl      $1, %edx                                      #119.24 c1

###       fStartCpuTime  = GetCPUTime();

        lea       (%rsp), %rdi                                  #120.24 c1
        vkmov     %edx, %k2                                     #119.24 c3
        vcvtpu2pd $0, 40(%rsp){1to16}, %v0{%k2}                 #119.24 c5
        vcvtpi2pd $0, 44(%rsp){1to16}, %v3{%k2}                 #119.24 c7
        vcvtpu2pd $0, 32(%rsp){1to16}, %v1{%k2}                 #119.24 c9
        vcvtpi2pd $0, 36(%rsp){1to16}, %v2{%k2}                 #119.24 c11
        vmadd132pd .L_2il0floatpacket.11161(%rip){1to8}, %v0, %v3{%k2} #119.24 c14 stall 1
        nop                                                     #119.24 c16
        vmadd132pd .L_2il0floatpacket.11161(%rip){1to8}, %v1, %v2{%k2} #119.24 c18
        nop                                                     #119.7 c20
        vmadd132pd .L_2il0floatpacket.11160(%rip){1to8}, %v2, %v3{%k2} #119.7 c22
        nop                                                     #119.7 c24
        nop                                                     #119.7 c26
        nop                                                     #119.7 c28
        nop                                                     #119.7 c30
        vstoreq   %v3{a}, (%r15)                                #119.7 c32
        call      times                                         #120.24 c34
                                # LOE rbx r12 r13 r14 r15
..B13.6:                        # Preds ..B13.5 Latency 89
        vloadq    .L_2il0floatpacket.11162(%rip){4to8}, %v9     #120.24 c1
        vloadq    gTicks(%rip){1to8}, %v2                       #120.24 c3
        vloadd    .L_2il0floatpacket.11163(%rip){4to16}, %v4    #120.24 c5
        movl      $1, %eax                                      # c7
        movq      (%rsp), %rdx                                  #120.24 c7
        vkmov     %eax, %k2                                     # c9
        movq      8(%rsp), %rax                                 #120.24 c9
        vandpq    %v9{dddd}, %v2, %v12{%k2}                     #120.24 c11
        addq      %rax, %rdx                                    #120.24 c11
        vaddpi    %v4{aaaa}, %v2, %v3                           #120.24 c13
        movq      %rdx, 48(%rsp)                                #120.24 c13
        vorpq     %v9{bbbb}, %v12, %v12{%k2}                    #120.24 c15
        vandpq    %v9{aaaa}, %v2, %v8{%k2}                      #120.24 c17
        vcvtpi2pd $0, 52(%rsp){1to16}, %v1{%k2}                 #120.24 c19
        vcvtpu2pd $0, 48(%rsp){1to16}, %v0{%k2}                 #120.24 c21
        vandpq    %v9{cccc}, %v3, %v3{%k2}                      #120.24 c23
        vcvtpd2ps $0, {rz}, %v12, %v10{%k2}                     #120.24 c25
        vsubrpi   .L_2il0floatpacket.11164(%rip){4to16}, %v8, %v6 #120.24 c27
        vmadd132pd .L_2il0floatpacket.11161(%rip){1to8}, %v0, %v1{%k2} #120.24 c29
        vcmppd    {eq}, %v4{bbbb}, %v3, %k3{%k2}                #120.24 c31
        vsrlpi    %v4{bbbb}, %v6, %v11                          #120.24 c33
        vrcpresps %v10, %v5{%k2}                                #120.24 c35
        vcmppd    {neq}, %v2, %v2, %k1{%k2}                     #120.24 c37
        vrcprefineps %v10, %v5, %v10{%k2}                       #120.24 c39
        vandpq    %v9{aaaa}, %v11, %v11{%k2}                    #120.24 c41
        nop                                                     #120.24 c43
        vsubpi    %v11, %v6, %v7                                #120.24 c45
        vcvtps2pd $0, %v10, %v10{%k2}                           #120.24 c47
        vxorpq    %v9{aaaa}, %v8, %v7{%k3}                      #120.24 c49
        vandpq    %v9{aaaa}, %v1, %v8{%k2}                      #120.24 c51
        vorpq     %v2, %v2, %v7{%k1}                            #120.24 c53
        vmulpd    %v11, %v10, %v11{%k2}                         #120.24 c55
        vmsubr23c1pd %v10, %v12, %v12{%k2}                      #120.24 c57
        vcmppd    {eq}, %v9{aaaa}, %v8, %k0{%k2}                #120.24 c59
        vmadd231pd %v12, %v12, %v12{%k2}                        #120.24 c61
        vmulpd    %v7, %v11, %v11{%k2}                          #120.24 c63
        vorpq     %v1, %v1, %v10{%k2}                           #120.24 c65
        vmadd231pd %v12, %v11, %v11{%k2}                        #120.24 c67
        movb      %al, %al                                      #120.24 c67
        vkor      %k0, %k3                                      #120.24 c69
        vmulpd    %v11, %v1, %v12{%k2}                          #120.24 c71
        vkandn    %k2, %k3                                      #120.24 c71
        nop                                                     #120.24 c73
        vmsubr231pd %v12, %v2, %v10{%k2}                        #120.24 c75
        nop                                                     #120.24 c77
        vmadd231pd %v11, %v10, %v12{%k3}                        #120.24 c79
        nop                                                     #120.7 c81
        nop                                                     #120.7 c83
        nop                                                     #120.7 c85
        nop                                                     #120.7 c87
        vstoreq   %v12{a}, 16(%r15)                             #120.7 c89
                                # LOE rbx r12 r13 r14 r15
..B13.7:                        # Preds ..B13.3 ..B13.6 Latency 10

###    }
###    fState = kRunning;

        movl      $2, 48(%r15)                                  #122.4 c1

###    fCounter++;

        movl      52(%r15), %eax                                #123.4 c3
        incl      %eax                                          #123.4 c5
        movl      %eax, 52(%r15)                                #123.4 c7

### }

        addq      $56, %rsp                                     #124.1 c7
..___tag_value__ZN9Stopwatch5StartEi.1579:                      #124.1
        popq      %r15                                          #124.1
        movq      %rbp, %rsp                                    #124.1 c10
        popq      %rbp                                          #124.1
..___tag_value__ZN9Stopwatch5StartEi.1580:                      #
        ret                                                     #124.1
        .align    16,0x90
..___tag_value__ZN9Stopwatch5StartEi.1582:                      #
                                # LOE
# mark_end;
	.type	_ZN9Stopwatch5StartEi,@function
	.size	_ZN9Stopwatch5StartEi,.-_ZN9Stopwatch5StartEi
	.data
# -- End  _ZN9Stopwatch5StartEi
	.section .text._Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_, "xaG",@progbits,_Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_,comdat
..TXTST8:
# -- Begin  _Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_
# mark_begin;
# Threads 2
        .align    16,0x90
	.weak _Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_
_Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
..B14.1:                        # Preds ..B14.0 Latency 48

### {

..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1583: #308.1
        pushq     %rbp                                          #308.1
..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1585: #
        movq      %rsp, %rbp                                    #308.1
..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1586: #
        andq      $-64, %rsp                                    #308.1
        pushq     %r12                                          #308.1 c1
..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1588: #
        pushq     %r13                                          #308.1 c2
..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1589: #
        pushq     %r14                                          #308.1 c3
..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1590: #
        pushq     %r15                                          #308.1 c4
..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1591: #
        pushq     %rbx                                          #308.1 c5
..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1592: #
        subq      $152, %rsp                                    #308.1 c6
        movq      %rsi, %r14                                    #308.1 c6
        movq      %rdi, %r15                                    #308.1 c8
        movq      %rcx, %r13                                    #308.1 c8

### 
###   // convert input
###   Fvec_t *T = track.T;
###   CovV &C = track.C;
### 
###   register Fvec_t wi, zeta, zetawi, HCH;
###   
###   register Fvec_t F0, F1, F2, F3, F4;
###   register Fvec_t  K1, K2, K3, K4;
### 
### //   Fvec_t wi, zeta, zetawi, HCH;
### //   
### //   Fvec_t F0, F1, F2, F3, F4;
### //   Fvec_t  K1, K2, K3, K4;
###   
###   zeta = info.cos_phi*T[0] + info.sin_phi*T[1] - u;

        vloadd    64(%r14), %v1                                 #324.43 c10
        vloadd    (%r14), %v22                                  #324.30 c12

###   // F = CH'
### 
###   F0 = info.cos_phi*C.C00 + info.sin_phi*C.C10;
###   F1 = info.cos_phi*C.C10 + info.sin_phi*C.C11;

        vmulps    5120(%r15), %v1, %v19                         #328.42 c14
        vmulps    5056(%r15), %v1, %v20                         #327.42 c16
        vmadd231ps 5056(%r15), %v22, %v19                       #328.29 c18
        vmadd231ps 4992(%r15), %v22, %v20                       #327.29 c20

###   
###   HCH = ( F0*info.cos_phi +F1*info.sin_phi );

        vmulps    64(%r14), %v19, %v23                          #330.31 c22
        vmulps    4672(%r15), %v1, %v17                         #324.43 c24
        vmadd231ps (%r14), %v20, %v23                           #330.28 c26
        vmadd231ps 4608(%r15), %v22, %v17                       #324.30 c28

### #ifdef VC
###   float_m initialised = HCH<info.sigma216;

        vcmpps    {lt}, 192(%r14), %v23, %k0                    #332.29 c30
        vsubps    (%rdx), %v17, %v21                            #324.50 c32

### #else
###   Fvec_t initialised = Fvec_t( HCH<info.sigma216 );
### #endif
###   
###   F2 = info.cos_phi*C.C20 + info.sin_phi*C.C21;

        vmulps    5248(%r15), %v1, %v18                         #337.42 c34

###   F3 = info.cos_phi*C.C30 + info.sin_phi*C.C31;

        vmulps    5440(%r15), %v1, %v17                         #338.42 c36

###   F4 = info.cos_phi*C.C40 + info.sin_phi*C.C41;

        vmulps    5696(%r15), %v1, %v2                          #339.42 c38
        vkmov     %k0, %r12d                                    #332.29 c38
        vmadd231ps 5184(%r15), %v22, %v18                       #337.29 c40
        vmadd231ps 5376(%r15), %v22, %v17                       #338.29 c42

###   
###   wi = w*rcp(info.sigma2 +HCH);

        vaddps    128(%r14), %v23, %v0                          #341.27 c44
        vmadd132ps 5632(%r15), %v2, %v22                        #339.29 c46
        call      __svml_rcpf16                                 #341.27 c48
                                # LOE r13 r14 r15 r12d v0 v17 v18 v19 v20 v21 v22 v23
..B14.6:                        # Preds ..B14.1 Latency 18

### #ifdef X87
###   zetawi = w* zeta *rcp( (double)((long long)initialised & (long long)info.sigma2) + HCH);
###   track.Chi2 += (double)((long long)initialised & (long long)(zeta * zetawi));    
### #elif defined VC
###   Fvec_t tmp = Fvec_t::Zero();

        vxorpi    %v24, %v24, %v24                              #346.16 c1

###   tmp(initialised) = info.sigma2;

        movw      %r12w, 72(%rsp)                               #347.7 c1
        vmulps    (%r13), %v0, %v16                             #341.27 c3
        lea       (%rsp), %rbx                                  #347.3 c3
        movq      72(%rsp), %rax                                #347.7 c5
        movq      %rbx, 64(%rsp)                                #347.7 c5
        movq      %rbx, 80(%rsp)                                #347.7 c7
        movq      %rax, 88(%rsp)                                #347.7 c7
        vstored   %v24, (%rsp)                                  #346.14 c9
        movb      %al, %al                                      #347.7 c9
        movq      80(%rsp), %rdx                                #347.7 c11
        movq      %rdx, 96(%rsp)                                #347.7 c13
        movzwl    88(%rsp), %ecx                                #347.7 c15
        movw      %cx, 104(%rsp)                                #347.7 c18
                                # LOE rbx r13 r14 r15 r12d v16 v17 v18 v19 v20 v21 v22 v23 v24
..B14.2:                        # Preds ..B14.6 Latency 18
        movq      96(%rsp), %rdx                                #347.7 c1
        movl      104(%rsp), %eax                               #347.7 c1
        vkmov     %eax, %k1                                     #347.7 c3
        vloadd    (%rdx), %v1                                   #347.20 c5
        vloadd    128(%r14), %v1{%k1}                           #347.20 c7
        nop                                                     #347.20 c9
        nop                                                     #347.20 c11
        vstored   %v1, (%rdx)                                   #347.20 c14 stall 1

###   zetawi = w* zeta *rcp(tmp + HCH);

        vaddps    (%rsp), %v23, %v0                             #348.31 c16
        call      __svml_rcpf16                                 #348.31 c18
                                # LOE rbx r13 r15 r12d v0 v16 v17 v18 v19 v20 v21 v22 v24
..B14.7:                        # Preds ..B14.2 Latency 18
        vmulps    (%r13), %v21, %v1                             #348.31 c1

###   tmp.setZero();
###   tmp(initialised) = zeta * zetawi;

        movb      %al, %al                                      #350.7 c1
        movw      %r12w, 72(%rsp)                               #350.7 c3
        movq      %rbx, 64(%rsp)                                #350.7 c3
        movq      %rbx, 80(%rsp)                                #350.7 c5
        movq      72(%rsp), %rax                                #350.7 c5
        movq      %rax, 88(%rsp)                                #350.7 c7
        movb      %dl, %dl                                      #349.3 c7
        vstored   %v24, (%rsp)                                  #349.3 c9
        movb      %al, %al                                      #350.7 c9
        movq      80(%rsp), %rdx                                #350.7 c11
        movq      %rdx, 96(%rsp)                                #350.7 c13
        movzwl    88(%rsp), %ecx                                #350.7 c15
        vmulps    %v0, %v1, %v9                                 #348.31 c18
        movw      %cx, 104(%rsp)                                #350.7 c18
                                # LOE r13 r15 v9 v16 v17 v18 v19 v20 v21 v22
..B14.3:                        # Preds ..B14.7 Latency 116

###   track.Chi2 += tmp;
### #else
###   zetawi = w* zeta *rcp( (initialised&info.sigma2) + HCH);
###   track.Chi2 += initialised & (zeta * zetawi);    
### #endif
###   
###   track.NDF  += w;
### 
###   K1 = F1*wi;
###   K2 = F2*wi;
###   K3 = F3*wi;
###   K4 = F4*wi;
### 
###   T[0]-= F0*zetawi;

        vorpi     %v20, %v20, %v5                               #364.7 c1
        movq      96(%rsp), %rdx                                #350.7 c1

###   T[1]-= F1*zetawi;

        vorpi     %v19, %v19, %v6                               #365.7 c3
        movl      104(%rsp), %eax                               #350.7 c3
        vloadd    (%rdx), %v0                                   #350.20 c5
        vkmov     %eax, %k1                                     #350.7 c5
        vmulps    %v9, %v21, %v0{%k1}                           #350.20 c7

###   T[2]-= F2*zetawi;

        vorpi     %v18, %v18, %v7                               #366.7 c9

###   T[3]-= F3*zetawi;

        vorpi     %v17, %v17, %v8                               #367.7 c11
        vmulps    %v16, %v19, %v10                              #359.11 c13
        vmulps    %v16, %v18, %v13                              #360.11 c15
        vstored   %v0, (%rdx)                                   #350.20 c15
        vloadd    5952(%r15), %v1                               #351.14 c17
        vmsubr213ps 4608(%r15), %v9, %v5                        #364.7 c19
        vaddps    (%rsp), %v1, %v2                              #351.14 c21
        vmsubr213ps 4672(%r15), %v9, %v6                        #365.7 c23
        vmsubr213ps 4736(%r15), %v9, %v7                        #366.7 c25
        vmsubr213ps 4800(%r15), %v9, %v8                        #367.7 c27

###   T[4]-= F4*zetawi;

        vmsubr213ps 4864(%r15), %v22, %v9                       #368.7 c29
        vloadd    6016(%r15), %v3                               #357.14 c31
        vmulps    %v16, %v17, %v23                              #361.11 c33
        vstored   %v2, 5952(%r15)                               #351.14 c33
        vaddps    (%r13), %v3, %v4                              #357.14 c35
        vmulps    %v16, %v22, %v24                              #362.11 c37
        vstored   %v9, 4864(%r15)                               #368.7 c37

### 
###   C.C00-= F0*F0*wi;

        vmulps    %v20, %v20, %v9                               #370.17 c39
        vstored   %v5, 4608(%r15)                               #364.7 c39

###   C.C10-= K1*F0;
###   C.C11-= K1*F1;
###   C.C20-= K2*F0;

        vorpi     %v13, %v13, %v11                              #373.8 c41
        vstored   %v6, 4672(%r15)                               #365.7 c41
        vmsubr213ps 4992(%r15), %v16, %v9                       #370.8 c43
        vorpi     %v10, %v10, %v16                              #371.8 c45
        vstored   %v4, 6016(%r15)                               #357.14 c45

###   C.C21-= K2*F1;

        vorpi     %v13, %v13, %v12                              #374.8 c47
        vstored   %v7, 4736(%r15)                               #366.7 c47

###   C.C22-= K2*F2;
###   C.C30-= K3*F0;

        vorpi     %v23, %v23, %v14                              #376.8 c49
        vstored   %v8, 4800(%r15)                               #367.7 c49

###   C.C31-= K3*F1;

        vorpi     %v23, %v23, %v15                              #377.8 c51
        vstored   %v9, 4992(%r15)                               #370.8 c51

###   C.C32-= K3*F2;

        vorpi     %v23, %v23, %v21                              #378.8 c53
        vmsubr213ps 5056(%r15), %v20, %v16                      #371.8 c55
        vmsubr213ps 5120(%r15), %v19, %v10                      #372.8 c57
        vmsubr213ps 5184(%r15), %v20, %v11                      #373.8 c59
        vmsubr213ps 5248(%r15), %v19, %v12                      #374.8 c61
        vmsubr213ps 5312(%r15), %v18, %v13                      #375.8 c63
        vmsubr213ps 5376(%r15), %v20, %v14                      #376.8 c65
        vmsubr213ps 5440(%r15), %v19, %v15                      #377.8 c67
        vmsubr213ps 5504(%r15), %v18, %v21                      #378.8 c69

###   C.C33-= K3*F3;

        vmsubr213ps 5568(%r15), %v17, %v23                      #379.8 c71

###   C.C40-= K4*F0;

        vmsubr213ps 5632(%r15), %v24, %v20                      #380.8 c73

###   C.C41-= K4*F1;

        vmsubr213ps 5696(%r15), %v24, %v19                      #381.8 c75

###   C.C42-= K4*F2;

        vmsubr213ps 5760(%r15), %v24, %v18                      #382.8 c77

###   C.C43-= K4*F3;

        vmsubr213ps 5824(%r15), %v24, %v17                      #383.8 c79

###   C.C44-= K4*F4;

        vmsubr213ps 5888(%r15), %v22, %v24                      #384.8 c81
        movb      %al, %al                                      #371.8 c81
        vstored   %v16, 5056(%r15)                              #371.8 c83
        vstored   %v10, 5120(%r15)                              #372.8 c85
        vstored   %v11, 5184(%r15)                              #373.8 c87
        vstored   %v12, 5248(%r15)                              #374.8 c89
        vstored   %v13, 5312(%r15)                              #375.8 c91
        vstored   %v14, 5376(%r15)                              #376.8 c93
        vstored   %v15, 5440(%r15)                              #377.8 c95
        vstored   %v21, 5504(%r15)                              #378.8 c97
        vstored   %v23, 5568(%r15)                              #379.8 c99
        vstored   %v20, 5632(%r15)                              #380.8 c101
        vstored   %v19, 5696(%r15)                              #381.8 c103
        vstored   %v18, 5760(%r15)                              #382.8 c105
        vstored   %v17, 5824(%r15)                              #383.8 c107
        vstored   %v24, 5888(%r15)                              #384.8 c109

### }

        addq      $152, %rsp                                    #385.1 c109
..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1593: #385.1
        popq      %rbx                                          #385.1
..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1594: #385.1
        popq      %r15                                          #385.1
..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1595: #385.1
        popq      %r14                                          #385.1
..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1596: #385.1
        popq      %r13                                          #385.1
..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1597: #385.1
        popq      %r12                                          #385.1
        movq      %rbp, %rsp                                    #385.1 c116
        popq      %rbp                                          #385.1
..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1598: #
        ret                                                     #385.1
        .align    16,0x90
..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1600: #
                                # LOE
# mark_end;
	.type	_Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_,@function
	.size	_Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_,.-_Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_
	.data
# -- End  _Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_
	.text
# -- Begin  _Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl _Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion
_Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8
..B15.1:                        # Preds ..B15.0 Latency 473

### {

..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1601: #25.1
        pushq     %rbx                                          #25.1
..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1603: #
        movq      %rsp, %rbx                                    #25.1
..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1604: #
        andq      $-64, %rsp                                    #25.1
        subq      $56, %rsp                                     #25.1
        pushq     %rbp                                          #25.1
        movq      8(%rbx), %rbp                                 #25.1
        movq      %rbp, 8(%rsp)                                 #25.1
        movq      %rsp, %rbp                                    #25.1
..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1606: #
        subq      $3456, %rsp                                   #25.1 c1
        movq      %r13, -48(%rbp)                               #25.1 c1
..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1607: #

###   //
###   //  Part of the analytic extrapolation formula with error (c_light*B*dz)^4/4!
###   //  
### // TimeStampCounter unitimer2[3];
### // unitimer2[0].Start();
###   cnst  
###     c1 = 1., c2 = 2., c3 = 3., c4 = 4., c6 = 6., c9 = 9., c15 = 15., c18 = 18., c45 = 45.,
###     c2i = 1./2., c3i = 1./3., c6i = 1./6., c12i = 1./12.;
### 
###   Fvec_t qp = T[4];
### // unitimer2[0].Stop();
### 
###   Fvec_t dz = (z_out - T[5]);

        vloadd    (%rdx), %v27                                  #38.24 c3
        movq      %rdi, %r13                                    #25.1 c3

### // unitimer2[1].Start();
###   Fvec_t dz2 = dz*dz;
### // unitimer2[1].Stop();
###   Fvec_t dz3 = dz2*dz;
### 
###   Fvec_t T0 = T[0];
###   Fvec_t T1 = T[1];
###   Fvec_t T2 = T[2];
###   Fvec_t T3 = T[3];
###   Fvec_t T4 = T[4];
###   Fvec_t T5 = T[5];
### 
###   // construct coefficients 
### 
###   Fvec_t x   = T[2]; // tx !!
###   Fvec_t y   = T[3]; // ty !!
###   Fvec_t xx  = x*x;
###   Fvec_t xy = x*y;
###   Fvec_t yy = y*y;
###   Fvec_t y2 = y*c2;
###   Fvec_t x2 = x*c2;
###   Fvec_t x4 = x*c4;
###   Fvec_t xx31 = xx*c3+c1;
###   Fvec_t xx159 = xx*c15+c9;
### 
###   Fvec_t Ay = -xx-c1;
###   Fvec_t Ayy = x*(xx*c3+c3);
###   Fvec_t Ayz = -c2*xy; 
###   Fvec_t Ayyy = -(c15*xx*xx+c18*xx+c3);
### 
###   Fvec_t Ayy_x = c3*xx31;
###   Fvec_t Ayyy_x = -x4*xx159;
### 
###   Fvec_t Bx = yy+c1; 
###   Fvec_t Byy = y*xx31; 
###   Fvec_t Byz = c2*xx+c1;
###   Fvec_t Byyy = -xy*xx159;
### 
###   Fvec_t Byy_x = c6*xy;
###   Fvec_t Byyy_x = -y*(c45*xx+c9);
###   Fvec_t Byyy_y = -x*xx159;
### 
###   // end of coefficients calculation
### 
###   Fvec_t t2   = c1 + xx + yy;
###   Fvec_t t    = sqrt( t2 );

        vloadd    .L_2il0floatpacket.33071(%rip){4to16}, %v11   #84.23 c5
        vloadd    128(%r13), %v26                               #46.15 c7
        movl      $1097859072, %eax                             #62.21 c7
        vsubps    320(%r13), %v27, %v27                         #38.24 c9
        movl      $1091567616, %r9d                             #62.25 c9
        vmulps    %v26, %v26, %v10                              #55.18 c11
        movl      %eax, -2344(%rbp)                             #67.23 c11
        movl      $1099956224, -2336(%rbp)                      #67.33 c13
        vloadd    256(%r13), %v12                               #35.15 c15
        vloadd    -2344(%rbp){1to16}, %v23                      #67.23 c17
        vloadd    64(%r13), %v5                                 #45.15 c19
        vmadd213ps -2336(%rbp){1to16}, %v10, %v23               #67.33 c21
        movl      $1065353216, -2400(%rbp)                      #61.23 c23
        vmulps    %v10, %v23, %v15                              #67.33 c25
        vstored   %v12, -3328(%rbp)                             #35.15 c25
        vloadd    (%r13), %v2                                   #44.15 c27
        vorpi     %v26, %v26, %v20                              #83.22 c29
        vstored   %v5, -3200(%rbp)                              #45.15 c29
        vloadd    -2400(%rbp){1to16}, %v5                       #61.23 c31
        movl      $1065353216, -2264(%rbp)                      #83.22 c33
        vloadd    192(%r13), %v25                               #47.15 c35
        movl      $1082130432, -2416(%rbp)                      #60.17 c37
        vmulps    %v27, %v27, %v12                              #40.19 c39
        vstored   %v2, -3136(%rbp)                              #44.15 c39
        vmadd213ps -2264(%rbp){1to16}, %v26, %v20               #83.22 c41
        vmulps    192(%r13), %v26, %v18                         #56.17 c43
        vmulps    -2416(%rbp){1to16}, %v26, %v2                 #60.17 c45
        vmadd231ps %v25, %v25, %v20                             #83.27 c47
        movq      %r15, -64(%rbp)                               #25.1 c47
..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1608: #
        movl      $1086324736, -2288(%rbp)                      #77.21 c49
        vrsqrtlutps %v20, %v3                                   #84.23 c51
        movl      $1077936128, %r15d                            #61.20 c51
        vxorpi    .L_2il0floatpacket.33041(%rip){1to16}, %v2, %v0 #70.20 c53
        vxorpi    .L_2il0floatpacket.33041(%rip){1to16}, %v18, %v28 #75.18 c55
        vmulps    -2288(%rbp){1to16}, %v18, %v8                 #77.21 c57
        movl      $1065353216, -2376(%rbp)                      #64.19 c59
        movl      $-1073741824, -2352(%rbp)                     #66.20 c61
        movl      $1065353216, -2312(%rbp)                      #72.18 c63
        movl      $1065353216, -2296(%rbp)                      #74.22 c65
        movl      $1110704128, -2280(%rbp)                      #78.27 c67
        vmulps    %v27, %v12, %v1                               #42.20 c69
        vstored   %v8, -3456(%rbp)                              #77.21 c69
        vloadd    320(%r13), %v30                               #49.15 c71
        vxorpi    .L_2il0floatpacket.33041(%rip){1to16}, %v10, %v14 #64.16 c73
        vmulps    -2352(%rbp){1to16}, %v18, %v17                #66.20 c75
        vxorpi    .L_2il0floatpacket.33041(%rip){1to16}, %v25, %v6 #78.20 c77
        vsubps    -2376(%rbp){1to16}, %v14, %v14                #64.19 c79
        movl      %r15d, -2328(%rbp)                            #67.36 c81
        movl      %r15d, -2408(%rbp)                            #61.20 c81
        vaddps    -2328(%rbp){1to16}, %v15, %v16                #67.36 c83
        vmadd231ps -2408(%rbp){1to16}, %v10, %v5                #61.23 c85
        vxorpi    .L_2il0floatpacket.33041(%rip){1to16}, %v16, %v29 #67.36 c87
        vloadd    -2280(%rbp){1to16}, %v15                      #78.27 c89
        movl      %r9d, -2384(%rbp)                             #62.25 c91
        movl      %r15d, -2320(%rbp)                            #69.21 c91
        vloadd    -2384(%rbp){1to16}, %v13                      #62.25 c93
        vmulps    -2320(%rbp){1to16}, %v5, %v19                 #69.21 c95
        movl      %eax, -2392(%rbp)                             #62.21 c97

###   Fvec_t h    = qp0*c_light;

        movl      $966602102, %eax                              #85.21 c97
        vmadd231ps -2392(%rbp){1to16}, %v10, %v13               #62.25 c99
        vstored   %v29, -2752(%rbp)                             #67.36 c101
        vxorpi    .L_2il0floatpacket.33041(%rip){1to16}, %v26, %v29 #79.20 c103
        vmulps    %v13, %v0, %v21                               #70.23 c105
        vstored   %v19, -3392(%rbp)                             #69.21 c105
        vrcpresps %v20, %v19                                    #84.23 c107
        vstored   %v20, -2496(%rbp)                             #83.27 c107
        vmulps    %v13, %v28, %v31                              #75.21 c109
        vstored   %v17, -2688(%rbp)                             #66.20 c109
        vmulps    %v13, %v29, %v13                              #79.22 c111
        vstored   %v1, -3264(%rbp)                              #42.20 c111
        vmadd233ps .L_2il0floatpacket.33071(%rip){4to16}, %v19, %v0 #84.23 c113
        vorpi     %v25, %v25, %v17                              #72.18 c115
        vstored   %v21, -2816(%rbp)                             #70.23 c115
        vloadd    (%rcx), %v21                                  #85.21 c117
        movb      %al, %al                                      #79.22 c117
        vstored   %v13, -3008(%rbp)                             #79.22 c119
        vmulps    %v0, %v19, %v13                               #84.23 c121
        vstored   %v31, -2880(%rbp)                             #75.21 c121

###   Fvec_t ht   = h*t;
### 
###   // get field integrals
###   Fvec_t ddz = T5-F.z;

        vsubps    576(%r8), %v30, %v19                          #89.19 c123
        vmadd132ps %v3, %v3, %v13                               #84.23 c125
        movq      %r14, -56(%rbp)                               #25.1 c125
..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1609: #

###   Fvec_t Fx0 = F.x0 + F.x1*ddz + F.x2*ddz*ddz;

        vloadd    64(%r8), %v30                                 #90.28 c127
        movl      $1073741824, %r14d                            #58.17 c127
        vmulps    %v20, %v13, %v9                               #84.23 c129
        movl      %r14d, -2432(%rbp)                            #58.17 c129
        vmadd213ps (%r8), %v19, %v30                            #90.28 c131
        vmsubr23c1ps %v9, %v13, %v4                             #84.23 c133
        movl      %r14d, -2424(%rbp)                            #59.17 c133
        vmsub132ps %v20, %v9, %v13                              #84.23 c135
        movl      %r15d, -2368(%rbp)                            #65.22 c135
        vmulps    128(%r8), %v19, %v18                          #90.43 c137
        vmadd231ps %v4, %v9, %v13                               #84.23 c139
        movl      %r15d, -2360(%rbp)                            #65.25 c139
        vmadd132ps %v19, %v30, %v18                             #90.43 c141
        movl      %r14d, -2304(%rbp)                            #74.19 c141
        vmsubr132ps %v11{cccc}, %v9, %v13                       #84.23 c143
        movl      %r9d, -2272(%rbp)                             #78.30 c143
        vloadd    -2360(%rbp){1to16}, %v24                      #65.25 c145
        vloadd    -2304(%rbp){1to16}, %v22                      #74.19 c147
        vmadd231ps -2368(%rbp){1to16}, %v10, %v24               #65.25 c149
        vmadd213ps -2296(%rbp){1to16}, %v10, %v22               #74.22 c151
        vmadd213ps -2272(%rbp){1to16}, %v10, %v15               #78.30 c153

###   Fvec_t Fx1 = (F.x1 + c2*F.x2*ddz)*dz;
###   Fvec_t Fx2 = F.x2*dz2;
###   Fvec_t Fy0 = F.y0 + F.y1*ddz + F.y2*ddz*ddz;

        vloadd    256(%r8), %v10                                #93.28 c155
        vmulps    %v15, %v6, %v16                               #78.30 c157
        movl      %eax, -2256(%rbp)                             #85.21 c157
        vfixupps  $132736, %v20, %v13                           #84.23 c159
        vstored   %v22, -2560(%rbp)                             #74.22 c159
        vmadd213ps 192(%r8), %v19, %v10                         #93.28 c161

###   Fvec_t Fy1 = (F.y1 + c2*F.y2*ddz)*dz;
###   Fvec_t Fy2 = F.y2*dz2;
###   Fvec_t Fz0 = F.z0 + F.z1*ddz + F.z2*ddz*ddz;

        vmulps    512(%r8), %v19, %v4                           #96.43 c163
        vmulps    -2256(%rbp){1to16}, %v21, %v22                #85.21 c165
        movl      %r14d, -2248(%rbp)                            #91.27 c167
        movq      %r12, -40(%rbp)                               #25.1 c167
..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1610: #
        vmulps    %v13, %v22, %v28                              #86.19 c169
        vstored   %v16, -2944(%rbp)                             #78.30 c169
        vloadd    128(%r8), %v31                                #91.27 c171
        movq      %rsi, %r12                                    #25.1 c171
        vmulps    128(%r8), %v12, %v30                          #92.21 c173
        vmulps    -2248(%rbp){1to16}, %v31, %v8                 #91.27 c175
        vloadd    448(%r8), %v16                                #96.28 c177
        vmadd213ps 64(%r8), %v19, %v8                           #91.32 c179
        vmadd213ps 384(%r8), %v19, %v16                         #96.28 c181
        vmulps    %v27, %v8, %v9                                #91.37 c183
        vstored   %v28, -3072(%rbp)                             #86.19 c183
        vmulps    320(%r8), %v19, %v8                           #93.43 c185
        vmadd132ps %v19, %v16, %v4                              #96.43 c187
        movl      %r14d, -2240(%rbp)                            #94.27 c187
        vmadd132ps %v19, %v10, %v8                              #93.43 c189
        vloadd    320(%r8), %v6                                 #94.27 c191
        vmulps    320(%r8), %v12, %v10                          #95.21 c193
        vmulps    -2240(%rbp){1to16}, %v6, %v15                 #94.27 c195

###   Fvec_t Fz1 = (F.z1 + c2*F.z2*ddz)*dz;

        movl      %r14d, -2232(%rbp)                            #97.27 c197
        vloadd    512(%r8), %v29                                #97.27 c199

###   Fvec_t Fz2 = F.z2*dz2;

        vmulps    512(%r8), %v12, %v3                           #98.21 c201
        vmulps    -2232(%rbp){1to16}, %v29, %v0                 #97.27 c203

### 
###   // 
### // cout << "1: Cycles = " << unitimer2[0].Cycles() << "\t";
### // cout << "2: Cycles = " << unitimer2[1].Cycles() << "\t";
### // cout << "2Fil: Cycles = " << unitimer2[2].Cycles() << " ";
###   Fvec_t sx = ( Fx0 + Fx1*c2i + Fx2*c3i );
###   Fvec_t sy = ( Fy0 + Fy1*c2i + Fy2*c3i );
###   Fvec_t sz = ( Fz0 + Fz1*c2i + Fz2*c3i );
### 
###   Fvec_t Sx = ( Fx0*c2i + Fx1*c6i + Fx2*c12i );
###   Fvec_t Sy = ( Fy0*c2i + Fy1*c6i + Fy2*c12i );
###   Fvec_t Sz = ( Fz0*c2i + Fz1*c6i + Fz2*c12i );
### 
###   Fvec_t syz;
###   { 
###     cnst 
###       d = 1./360., 
###       c00 = 30.*6.*d, c01 = 30.*2.*d,   c02 = 30.*d,
###       c10 = 3.*40.*d, c11 = 3.*15.*d,   c12 = 3.*8.*d, 
###       c20 = 2.*45.*d, c21 = 2.*2.*9.*d, c22 = 2.*2.*5.*d;
###     syz = Fy0*( c00*Fz0 + c01*Fz1 + c02*Fz2) 
###       +   Fy1*( c10*Fz0 + c11*Fz1 + c12*Fz2) 

        movl      $1040187392, -2072(%rbp)                      #120.31 c205
        vmadd213ps 256(%r8), %v19, %v15                         #94.32 c207
        vmadd213ps 448(%r8), %v19, %v0                          #97.32 c209
        movl      $1051372203, -2080(%rbp)                      #120.21 c211
        vmulps    %v27, %v0, %v6                                #97.37 c213
        vmulps    %v27, %v15, %v20                              #94.37 c215
        vmulps    -2072(%rbp){1to16}, %v6, %v21                 #120.31 c217
        movl      $1042983595, -2168(%rbp)                      #108.31 c219
        movl      $1042983595, -2096(%rbp)                      #119.31 c221
        movl      $1032358025, -2064(%rbp)                      #120.41 c223
        vorpi     %v9, %v9, %v29                                #104.27 c225
        vmadd231ps -2080(%rbp){1to16}, %v4, %v21                #120.31 c227
        vorpi     %v20, %v20, %v15                              #105.27 c229
        vmulps    -2168(%rbp){1to16}, %v9, %v11                 #108.31 c231
        vmulps    -2096(%rbp){1to16}, %v6, %v9                  #119.31 c233
        vmadd231ps -2064(%rbp){1to16}, %v3, %v21                #120.41 c235
        movl      $1056964608, -2224(%rbp)                      #104.27 c237
        movl      $1056964608, -2208(%rbp)                      #105.27 c239
        movl      $1056964608, -2176(%rbp)                      #108.21 c241
        movl      $1042983595, -2120(%rbp)                      #110.31 c243
        movl      $1056964608, -2104(%rbp)                      #119.21 c245

###       +   Fy2*( c20*Fz0 + c21*Fz1 + c22*Fz2) ;

        movl      $1036831949, -2048(%rbp)                      #121.31 c247

###   }
### 
###   Fvec_t Syz;
###   {
###     cnst 
###       d = 1./2520., 
###       c00 = 21.*20.*d, c01 = 21.*5.*d, c02 = 21.*2.*d,
###       c10 =  7.*30.*d, c11 =  7.*9.*d, c12 =  7.*4.*d, 
###       c20 =  2.*63.*d, c21 = 2.*21.*d, c22 = 2.*10.*d;
###     Syz = Fy0*( c00*Fz0 + c01*Fz1 + c02*Fz2 ) 

        movl      $1026206379, -2024(%rbp)                      #131.31 c249

###       +   Fy1*( c10*Fz0 + c11*Fz1 + c12*Fz2 ) 

        movl      $1020054733, -2000(%rbp)                      #132.31 c251

###       +   Fy2*( c20*Fz0 + c21*Fz1 + c22*Fz2 ) ;

        movl      $1015580809, -1976(%rbp)                      #133.31 c253
        vorpi     %v6, %v6, %v16                                #106.27 c255
        vmadd132ps -2224(%rbp){1to16}, %v18, %v29               #104.27 c257
        vmadd132ps -2208(%rbp){1to16}, %v8, %v15                #105.27 c259
        vmadd132ps -2176(%rbp){1to16}, %v11, %v18               #108.27 c261
        vmulps    -2120(%rbp){1to16}, %v6, %v19                 #110.31 c263
        vmadd231ps -2104(%rbp){1to16}, %v4, %v9                 #119.31 c265
        vmulps    %v21, %v20, %v22                              #120.41 c267
        vmulps    -2048(%rbp){1to16}, %v6, %v0                  #121.31 c269
        vmulps    -2024(%rbp){1to16}, %v6, %v21                 #131.31 c271
        vmulps    -2000(%rbp){1to16}, %v6, %v11                 #132.31 c273
        vmulps    -1976(%rbp){1to16}, %v6, %v6                  #133.31 c275
        movl      $1051372203, -2200(%rbp)                      #105.37 c277
        movl      $1056964608, -2192(%rbp)                      #106.27 c279
        movl      $1056964608, -2128(%rbp)                      #110.21 c281
        movl      $1034594987, -2088(%rbp)                      #119.41 c283
        movl      $1048576000, -2056(%rbp)                      #121.21 c285
        movl      $1042983595, -2032(%rbp)                      #131.21 c287
        movl      $1034594987, -2008(%rbp)                      #132.21 c289
        movl      $1028443341, -1984(%rbp)                      #133.21 c291
        movl      $1051372203, -2184(%rbp)                      #106.37 c293
        movl      $1034594987, -2112(%rbp)                      #110.41 c295
        movl      $1029934649, -2040(%rbp)                      #121.41 c297
        movl      $1015580809, -2016(%rbp)                      #131.41 c299
        movl      $1010174817, -1992(%rbp)                      #132.41 c301
        movl      $1006766113, -1968(%rbp)                      #133.41 c303

###   }
### 
###   Fvec_t syy  = sy*sy*c2i;

        movl      $1056964608, -1960(%rbp)                      #136.23 c305

###   Fvec_t syyy = syy*sy*c3i;
### 
###   Fvec_t Syy ;   
###   {
###     cnst  
###     d= 1./2520., c00= 420.*d, c01= 21.*15.*d, c02= 21.*8.*d,
###     c03= 63.*d, c04= 70.*d, c05= 20.*d;
###     Syy =  Fy0*(c00*Fy0+c01*Fy1+c02*Fy2) + Fy1*(c03*Fy1+c04*Fy2) + c05*Fy2*Fy2 ;

        movl      $1040187392, -1936(%rbp)                      #144.29 c307
        movl      $1021546041, -1912(%rbp)                      #144.61 c309
        movl      $1042983595, -1944(%rbp)                      #144.21 c311
        movl      $1020054733, -1920(%rbp)                      #144.53 c313
        movl      $1051372203, -1952(%rbp)                      #137.24 c315
        movl      $1032358025, -1928(%rbp)                      #144.37 c317

###   }
###   
###   Fvec_t Syyy;
###   {
###     cnst 
###       d = 1./181440., 
###       c000 =   7560*d, c001 = 9*1008*d, c002 = 5*1008*d, 
###       c011 = 21*180*d, c012 = 24*180*d, c022 =  7*180*d, 
###       c111 =    540*d, c112 =    945*d, c122 =    560*d, c222 = 112*d;
###     Fvec_t Fy22 = Fy2*Fy2;
###     Syyy = Fy0*( Fy0*(c000*Fy0+c001*Fy1+c002*Fy2)+ Fy1*(c011*Fy1+c012*Fy2)+c022*Fy22 )

        movl      $1019415601, -1864(%rbp)                      #155.71 c319
        movl      $1006766113, -1904(%rbp)                      #144.72 c321
        movl      $1028443341, -1888(%rbp)                      #155.37 c323
        movl      $1017817771, -1872(%rbp)                      #155.62 c325
        movl      $1026206379, -1896(%rbp)                      #155.28 c327

###       +    Fy1*( Fy1*(c111*Fy1+c112*Fy2)+c122*Fy22) + c222*Fy22*Fy2                  ;

        movl      $1001040555, -1840(%rbp)                      #156.37 c329
        movl      $1021546041, -1880(%rbp)                      #155.46 c331
        movl      $994249777, -1848(%rbp)                       #156.28 c333
        movl      $994723208, -1832(%rbp)                       #156.47 c335
        movl      $1051372203, -2216(%rbp)                      #104.37 c337
        movl      $1034594987, -2160(%rbp)                      #108.41 c339
        movl      $1042983595, -2144(%rbp)                      #109.31 c341
        movl      $1004768825, -1856(%rbp)                      #155.81 c343
        movl      $1056964608, -2152(%rbp)                      #109.21 c345
        movl      $975294777, -1824(%rbp)                       #156.60 c347
        movl      $1034594987, -2136(%rbp)                      #109.41 c349
        vmadd231ps -2200(%rbp){1to16}, %v10, %v15               #105.37 c351
        vmadd132ps -2192(%rbp){1to16}, %v4, %v16                #106.27 c353
        vmadd231ps -2128(%rbp){1to16}, %v4, %v19                #110.27 c355
        vmadd231ps -2088(%rbp){1to16}, %v3, %v9                 #119.41 c357
        vmadd231ps -2056(%rbp){1to16}, %v4, %v0                 #121.31 c359
        vmadd231ps -2032(%rbp){1to16}, %v4, %v21                #131.31 c361
        vmadd231ps -2008(%rbp){1to16}, %v4, %v11                #132.31 c363
        vmadd231ps -1984(%rbp){1to16}, %v4, %v6                 #133.31 c365
        vmadd231ps -2184(%rbp){1to16}, %v3, %v16                #106.37 c367
        vmadd231ps -2112(%rbp){1to16}, %v3, %v19                #110.41 c369
        vmadd132ps %v8, %v22, %v9                               #120.11 c371
        vmadd231ps -2040(%rbp){1to16}, %v3, %v0                 #121.41 c373
        vmadd231ps -2016(%rbp){1to16}, %v3, %v21                #131.41 c375
        vmadd231ps -1992(%rbp){1to16}, %v3, %v11                #132.41 c377
        vmadd231ps -1968(%rbp){1to16}, %v3, %v6                 #133.41 c379
        vmulps    %v15, %v15, %v3                               #136.23 c381
        vmadd132ps %v10, %v9, %v0                               #121.41 c383
        vmulps    %v11, %v20, %v28                              #132.41 c385
        vmulps    -1960(%rbp){1to16}, %v3, %v3                  #136.23 c387
        vmulps    -1936(%rbp){1to16}, %v20, %v11                #144.29 c389
        vmulps    -1912(%rbp){1to16}, %v10, %v9                 #144.61 c391
        vmadd132ps %v8, %v28, %v21                              #132.11 c393
        vmulps    %v15, %v3, %v4                                #137.24 c395
        vmadd231ps -1944(%rbp){1to16}, %v8, %v11                #144.29 c397
        vmadd231ps -1920(%rbp){1to16}, %v20, %v9                #144.61 c399
        vmadd132ps %v10, %v21, %v6                              #133.41 c401
        vmulps    -1952(%rbp){1to16}, %v4, %v31                 #137.24 c403
        vmadd231ps -1928(%rbp){1to16}, %v10, %v11               #144.37 c405
        vmulps    %v9, %v20, %v4                                #144.61 c407
        vmulps    -1864(%rbp){1to16}, %v10, %v21                #155.71 c409
        vmadd132ps %v8, %v4, %v11                               #144.44 c411
        vmulps    -1904(%rbp){1to16}, %v10, %v4                 #144.72 c413
        vmulps    -1888(%rbp){1to16}, %v20, %v9                 #155.37 c415
        vmadd231ps -1872(%rbp){1to16}, %v20, %v21               #155.71 c417
        vmadd132ps %v10, %v11, %v4                              #144.76 c419
        vmulps    %v10, %v10, %v11                              #154.23 c421
        vstored   %v31, -2624(%rbp)                             #137.24 c421
        vmadd231ps -1896(%rbp){1to16}, %v8, %v9                 #155.37 c423
        vmulps    %v21, %v20, %v22                              #155.71 c425
        vmulps    -1840(%rbp){1to16}, %v10, %v21                #156.37 c427
        vmadd231ps -1880(%rbp){1to16}, %v10, %v9                #155.46 c429
        vmadd231ps -1848(%rbp){1to16}, %v20, %v21               #156.37 c431
        vmulps    -1832(%rbp){1to16}, %v11, %v28                #156.47 c433
        vmadd132ps %v8, %v22, %v9                               #155.52 c435
        vmadd132ps %v20, %v28, %v21                             #156.47 c437
        vmadd231ps -2216(%rbp){1to16}, %v30, %v29               #104.37 c439
        vmadd132ps -2160(%rbp){1to16}, %v18, %v30               #108.41 c441
        vmulps    -2144(%rbp){1to16}, %v20, %v18                #109.31 c443
        vmadd231ps -1856(%rbp){1to16}, %v11, %v9                #155.81 c445
        vmulps    %v21, %v20, %v20                              #156.47 c447
        vmadd231ps -2152(%rbp){1to16}, %v8, %v18                #109.27 c449
        vmadd132ps %v9, %v20, %v8                               #156.12 c451
        vmulps    -1824(%rbp){1to16}, %v11, %v9                 #156.60 c453

###   }
###   
###   
###   Fvec_t sA1   = sx*xy   + sy*Ay   + sz*y ;

        vorpi     %v16, %v16, %v28                              #160.41 c455
        vmadd132ps %v10, %v8, %v9                               #156.65 c457
        vmulps    -2432(%rbp){1to16}, %v25, %v7                 #58.17 c459
        vmulps    -2424(%rbp){1to16}, %v26, %v1                 #59.17 c461
        vmulps    128(%r13), %v24, %v24                         #65.25 c463
        vmadd213ps -2312(%rbp){1to16}, %v25, %v17               #72.18 c465
        vmulps    192(%r13), %v5, %v23                          #73.18 c467
        vmadd231ps -2136(%rbp){1to16}, %v10, %v18               #109.41 c469
        vmulps    %v14, %v15, %v8                               #160.41 c471
        vmadd231ps 128(%r13), %v29, %v28                        #160.41 c473
                                # LOE rcx r12 r13 eax r14d r15d v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v12 v13 v14 v15 v16 v17 v18 v19 v23 v24 v25 v26 v27 v28 v29 v30
..B15.5:                        # Preds ..B15.1 Latency 246

###   Fvec_t sA1_x = sx*y - sy*x2 ;

        vmulps    %v1, %v15, %v31                               #161.28 c1

###   Fvec_t sA1_y = sx*x + sz ;
### 
###   Fvec_t sB1   = sx*Bx   - sy*xy   - sz*x ;

        vorpi     %v25, %v25, %v11                              #164.41 c3
        vmsub231ps %v25, %v29, %v31                             #161.25 c5
        vorpi     %v29, %v29, %v20                              #162.25 c7
        vmulps    %v17, %v29, %v21                              #164.41 c9
        vmadd213ps %v16, %v15, %v11                             #164.41 c11
        vmadd132ps %v26, %v16, %v20                             #162.25 c13
        vmadd213ps %v8, %v25, %v28                              #160.41 c15
        vmsub213ps %v21, %v26, %v11                             #164.41 c17

###   Fvec_t sB1_x = -sy*y - sz ;

        vxorpi    .L_2il0floatpacket.33041(%rip){1to16}, %v15, %v22 #165.19 c19

###   Fvec_t sB1_y = sx*y2 - sy*x ;
### 
###   Fvec_t SA1   = Sx*xy   + Sy*Ay   + Sz*y ;

        vorpi     %v26, %v26, %v10                              #168.41 c21
        vstored   %v31, -2176(%rbp)                             #161.25 c21
        vmulps    %v26, %v15, %v31                              #166.29 c23
        vstored   %v20, -2432(%rbp)                             #162.25 c23

###   Fvec_t SA1_x = Sx*y - Sy*x2 ;
###   Fvec_t SA1_y = Sx*x + Sz;

        vorpi     %v30, %v30, %v21                              #170.25 c25
        vstored   %v11, -896(%rbp)                              #164.41 c25

### 
###   Fvec_t SB1   = Sx*Bx   - Sy*xy   - Sz*x ;

        vorpi     %v25, %v25, %v8                               #172.41 c27

###   Fvec_t SB1_x = -Sy*y - Sz;

        vxorpi    .L_2il0floatpacket.33041(%rip){1to16}, %v18, %v15 #173.19 c29
        vmsub132ps %v25, %v16, %v22                             #165.26 c31
        vmulps    %v18, %v14, %v16                              #168.41 c33
        vmadd213ps %v19, %v30, %v10                             #168.41 c35
        vmulps    %v1, %v18, %v20                               #169.28 c37
        vmadd132ps %v26, %v19, %v21                             #170.25 c39
        vmadd213ps %v19, %v18, %v8                              #172.41 c41
        vmsub132ps %v25, %v19, %v15                             #173.26 c43

###   Fvec_t SB1_y = Sx*y2 - Sy*x;

        vmulps    %v26, %v18, %v19                              #174.29 c45
        vstored   %v22, -2368(%rbp)                             #165.26 c45

### 
### 
###   Fvec_t sA2   = syy*Ayy   + syz*Ayz ;

        vloadd    -2688(%rbp), %v18                             #177.34 c47
        vmsub132ps %v7, %v31, %v29                              #166.26 c49

###   Fvec_t sA2_x = syy*Ayy_x - syz*y2 ;

        vmulps    %v7, %v0, %v31                                #178.34 c51
        vstored   %v15, -2240(%rbp)                             #173.26 c51
        vmulps    -2688(%rbp), %v0, %v14                        #177.34 c53

###   Fvec_t sA2_y = -syz*x2 ;
###   Fvec_t sB2   = syy*Byy   + syz*Byz  ;
###   Fvec_t sB2_x = syy*Byy_x + syz*x4 ;
###   Fvec_t sB2_y = syy*xx31 ;
###   
###   Fvec_t SA2   = Syy*Ayy   + Syz*Ayz ;

        vmulps    %v18, %v6, %v18                               #184.34 c55
        vstored   %v21, -2304(%rbp)                             #170.25 c55
        vmsub231ps -3392(%rbp), %v3, %v31                       #178.30 c57
        vmsub231ps %v25, %v30, %v20                             #169.25 c59
        vmulps    %v30, %v17, %v17                              #172.41 c61
        vmsub132ps %v7, %v19, %v30                              #174.26 c63
        vloadd    -3392(%rbp), %v19                             #178.30 c65

###   Fvec_t SA2_x = Syy*Ayy_x - Syz*y2 ;

        vmulps    %v7, %v6, %v7                                 #185.34 c67
        vstored   %v31, -1984(%rbp)                             #178.30 c67
        vmadd231ps %v24, %v3, %v14                              #177.30 c69
        vxorpi    .L_2il0floatpacket.33041(%rip){1to16}, %v0, %v22 #179.19 c71
        vmadd132ps %v4, %v18, %v24                              #184.30 c73

###   Fvec_t SA2_y = -Syz*x2 ;

        vxorpi    .L_2il0floatpacket.33041(%rip){1to16}, %v6, %v18 #186.19 c75
        vmsub132ps %v4, %v7, %v19                               #185.30 c77
        vmsub213ps %v17, %v26, %v8                              #172.41 c79
        vmulps    %v1, %v22, %v31                               #179.23 c81
        vstored   %v20, -2112(%rbp)                             #169.25 c81
        vloadd    -3456(%rbp), %v17                             #181.30 c83
        vmulps    %v1, %v18, %v1                                #186.23 c85
        vstored   %v19, -3392(%rbp)                             #185.30 c85

###   Fvec_t SB2   = Syy*Byy   + Syz*Byz ;
###   Fvec_t SB2_x = Syy*Byy_x + Syz*x4 ;

        vmulps    %v2, %v6, %v18                                #188.34 c87
        vstored   %v8, -832(%rbp)                               #172.41 c87
        vmadd213ps %v16, %v25, %v10                             #168.41 c89
        vloadd    -2560(%rbp), %v16                             #180.34 c91
        vmulps    -2560(%rbp), %v0, %v15                        #180.34 c93
        vmulps    %v2, %v0, %v0                                 #181.34 c95
        vstored   %v1, -1856(%rbp)                              #186.23 c95
        vmadd132ps %v4, %v18, %v17                              #188.30 c97

###   Fvec_t SB2_y = Syy*xx31 ;
### 
###   Fvec_t sA3   = syyy*Ayyy  ;

        vloadd    -2624(%rbp), %v19                             #191.23 c99
        vmadd231ps -3456(%rbp), %v3, %v0                        #181.30 c101
        vmulps    %v16, %v6, %v16                               #187.34 c103
        vstored   %v10, -1536(%rbp)                             #168.41 c103

###   Fvec_t sA3_x = syyy*Ayyy_x;

        vloadd    -2816(%rbp), %v22                             #192.23 c105
        vloadd    -2752(%rbp), %v21                             #191.23 c107

###   Fvec_t sB3   = syyy*Byyy  ;
###   Fvec_t sB3_x = syyy*Byyy_x;
###   Fvec_t sB3_y = syyy*Byyy_y;

        vmulps    -3008(%rbp), %v19, %v20                       #195.23 c109
        vmadd231ps %v23, %v3, %v15                              #180.30 c111
        vmadd132ps %v4, %v16, %v23                              #187.30 c113
        vmulps    %v5, %v3, %v3                                 #182.22 c115
        vstored   %v17, -3456(%rbp)                             #188.30 c115
        vmulps    %v5, %v4, %v17                                #189.22 c117
        vstored   %v0, -1920(%rbp)                              #181.30 c117

### 
###  
###   Fvec_t SA3   = Syyy*Ayyy  ;
###   Fvec_t SA3_x = Syyy*Ayyy_x;

        vmulps    %v22, %v9, %v4                                #199.23 c119
        vstored   %v20, -1792(%rbp)                             #195.23 c119
        vmulps    %v21, %v9, %v5                                #198.23 c121
        vstored   %v14, -704(%rbp)                              #177.30 c121

###   Fvec_t SB3   = Syyy*Byyy  ;
###   Fvec_t SB3_x = Syyy*Byyy_x;
###   Fvec_t SB3_y = Syyy*Byyy_y;
### 
###   Fvec_t ht1 = ht*dz;

        vloadd    -3072(%rbp), %v21                             #204.19 c123
        vloadd    -2880(%rbp), %v0                              #193.23 c125
        vmulps    -3072(%rbp), %v27, %v18                       #204.19 c127

###   Fvec_t ht2 = ht*ht*dz2;

        vmulps    %v21, %v21, %v20                              #205.22 c129
        vstored   %v4, -1472(%rbp)                              #199.23 c129
        vmulps    %v0, %v9, %v4                                 #200.23 c131
        vstored   %v17, -1728(%rbp)                             #189.22 c131

###   Fvec_t ht3 = ht*ht*ht*dz3;
###   Fvec_t ht1sA1 = ht1*sA1;
###   Fvec_t ht1sB1 = ht1*sB1;

        vmulps    %v11, %v18, %v0                               #208.23 c133
        vstored   %v3, -2048(%rbp)                              #182.22 c133
        vmulps    -2752(%rbp), %v19, %v2                        #191.23 c135
        vmulps    -2816(%rbp), %v19, %v16                       #192.23 c137
        vmulps    -2880(%rbp), %v19, %v6                        #193.23 c139
        vmulps    -2944(%rbp), %v19, %v17                       #194.23 c141
        vmulps    %v12, %v20, %v19                              #205.22 c143
        vstored   %v0, -192(%rbp)                               #208.23 c143
        vloadd    -2944(%rbp), %v1                              #194.23 c145

###   Fvec_t ht1SA1 = ht1*SA1;
###   Fvec_t ht1SB1 = ht1*SB1;
###   Fvec_t ht2sA2 = ht2*sA2;
###   Fvec_t ht2SA2 = ht2*SA2;
###   Fvec_t ht2sB2 = ht2*sB2;
###   Fvec_t ht2SB2 = ht2*SB2;

        vmulps    %v23, %v19, %v0                               #214.23 c147
        vstored   %v5, -576(%rbp)                               #198.23 c147
        vloadd    -3008(%rbp), %v7                              #195.23 c149
        vmulps    %v21, %v20, %v22                              #206.25 c151
        vstored   %v4, -448(%rbp)                               #200.23 c151
        vmulps    %v1, %v9, %v3                                 #201.23 c153
        vstored   %v2, -320(%rbp)                               #191.23 c153
        vmulps    %v7, %v9, %v9                                 #202.23 c155
        vstored   %v0, -1408(%rbp)                              #214.23 c155

###   Fvec_t ht3sA3 = ht3*sA3;
###   Fvec_t ht3sB3 = ht3*sB3; 
###   Fvec_t ht3SA3 = ht3*SA3;
###   Fvec_t ht3SB3 = ht3*SB3;
### 
###   T[0] = T0 + (x + ht1SA1 + ht2SA2 + ht3SA3)*dz ;

        vorpi     %v18, %v18, %v0                               #220.20 c157
        vstored   %v6, -384(%rbp)                               #193.23 c157
        vmulps    %v24, %v19, %v7                               #212.23 c159
        vstored   %v15, -768(%rbp)                              #180.30 c159
        vmadd213ps %v26, %v10, %v0                              #220.20 c161
        vmulps    -3264(%rbp), %v22, %v20                       #206.25 c163
        vmadd231ps %v19, %v24, %v0                              #220.29 c165
        vmulps    %v8, %v18, %v1                                #210.23 c167
        vstored   %v7, -1152(%rbp)                              #212.23 c167
        vmulps    %v5, %v20, %v7                                #217.23 c169
        vstored   %v9, -1664(%rbp)                              #202.23 c169
        vmadd231ps %v20, %v5, %v0                               #220.38 c171

###   T[1] = T1 + (y + ht1SB1 + ht2SB2 + ht3SB3)*dz ;

        vorpi     %v18, %v18, %v5                               #221.20 c173
        vstored   %v3, -1600(%rbp)                              #201.23 c173
        vmulps    %v15, %v19, %v9                               #213.23 c175
        vstored   %v1, -128(%rbp)                               #210.23 c175
        vmadd213ps %v25, %v8, %v5                               #221.20 c177
        vmulps    %v2, %v20, %v1                                #215.23 c179
        vstored   %v7, -960(%rbp)                               #217.23 c179
        vmadd231ps %v19, %v23, %v5                              #221.29 c181
        vmulps    %v14, %v19, %v3                               #211.23 c183
        vstored   %v9, -1344(%rbp)                              #213.23 c183
        vmulps    %v4, %v20, %v9                                #218.23 c185
        vmadd231ps %v20, %v4, %v5                               #221.38 c187

###   T[2] = T2 + ht1sA1 + ht2sA2 + ht3sA3;

        vorpi     %v18, %v18, %v4                               #222.15 c189
        vstored   %v1, -1216(%rbp)                              #215.23 c189
        vmadd213ps -3136(%rbp), %v27, %v0                       #220.46 c191
        vmadd213ps %v26, %v28, %v4                              #222.15 c193
        vmadd213ps -3200(%rbp), %v27, %v5                       #221.46 c195
        vmadd231ps %v19, %v14, %v4                              #222.24 c197
        vmulps    %v10, %v18, %v22                              #209.23 c199
        vstored   %v3, -1024(%rbp)                              #211.23 c199
        vmadd231ps %v20, %v2, %v4                               #222.33 c201

###   T[3] = T3 + ht1sB1 + ht2sB2 + ht3sB3;

        vorpi     %v18, %v18, %v2                               #223.15 c203
        vstored   %v0, (%r13)                                   #220.3 c203
        vmulps    %v6, %v20, %v3                                #216.23 c205
        vstored   %v5, 64(%r13)                                 #221.3 c205
        vmadd213ps %v25, %v11, %v2                              #223.15 c207

###   T[5]+= dz;
###   
###   Fvec_t ctdz  = c_light*t*dz;
###   Fvec_t ctdz2 = c_light*t*dz2;
### 
###   Fvec_t dqp = qp - qp0;

        vloadd    -3328(%rbp), %v0                              #229.21 c209
        vmadd231ps %v19, %v15, %v2                              #223.24 c211
        vstored   %v4, 128(%r13)                                #222.3 c213
        vmadd231ps %v20, %v6, %v2                               #223.33 c215
        vaddps    320(%r13), %v27, %v6                          #224.7 c217
        vmulps    %v28, %v18, %v21                              #207.23 c219
        vstored   %v3, -1088(%rbp)                              #216.23 c219
        vstored   %v9, -1280(%rbp)                              #218.23 c221
        vstored   %v2, 192(%r13)                                #223.3 c223
        vstored   %v6, 320(%r13)                                #224.7 c225
        vsubps    (%rcx), %v0, %v1                              #229.21 c227
        movb      %dl, %dl                                      #226.26 c227
        movl      %eax, -32(%rbp)                               #226.26 c229
        movl      %eax, -24(%rbp)                               #227.26 c229
        vmulps    -32(%rbp){1to16}, %v13, %v8                   #226.26 c231
        vmulps    -24(%rbp){1to16}, %v13, %v13                  #227.26 c233
        vmulps    %v27, %v8, %v10                               #226.28 c235
        vstored   %v1, -256(%rbp)                               #229.21 c235
        vmulps    %v12, %v13, %v12                              #227.28 c237

###   Fvec_t t2i = c1*rcp(t2);// /t2;

        vloadd    -2496(%rbp), %v0                              #230.23 c239
        vstored   %v10, -640(%rbp)                              #226.28 c242 stall 1
        vstored   %v12, -512(%rbp)                              #227.28 c244
        call      __svml_rcpf16                                 #230.23 c246
                                # LOE r12 r13 r14d r15d v0 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
..B15.4:                        # Preds ..B15.5 Latency 395

###   Fvec_t xt2i = x*t2i;
###   Fvec_t yt2i = y*t2i;
###   Fvec_t tmp0 = ht1SA1 + c2*ht2SA2 + c3*ht3SA3;

        vloadd    -1152(%rbp), %v9                              #233.29 c1
        movl      $1065353216, %eax                             #230.23 c1

###   Fvec_t tmp1 = ht1SB1 + c2*ht2SB2 + c3*ht3SB3;

        vloadd    -1408(%rbp), %v11                             #234.29 c3
        vloadd    -128(%rbp), %v5                               #234.29 c5

###   Fvec_t tmp2 = ht1sA1 + c2*ht2sA2 + c3*ht3sA3;
###   Fvec_t tmp3 = ht1sB1 + c2*ht2sB2 + c3*ht3sB3;

        vloadd    -1344(%rbp), %v15                             #236.29 c7
        vloadd    -192(%rbp), %v4                               #236.29 c9
        vloadd    -960(%rbp), %v10                              #233.41 c11
        vloadd    -1280(%rbp), %v12                             #234.41 c13
        vloadd    -1024(%rbp), %v13                             #235.29 c15
        vloadd    -1216(%rbp), %v14                             #235.41 c17

### 
###   Fvec_t j02 = dz*(c1 + xt2i*tmp0 + ht1*SA1_x + ht2*SA2_x + ht3*SA3_x);

        vloadd    -2112(%rbp), %v3                              #238.41 c19
        vloadd    -3392(%rbp), %v2                              #238.53 c21
        vloadd    -1472(%rbp), %v1                              #238.65 c23
        movb      %dl, %dl                                      #230.23 c23
        movl      %eax, -3328(%rbp)                             #230.23 c25
        movl      %r14d, -3320(%rbp)                            #233.29 c25
        vmulps    -3328(%rbp){1to16}, %v0, %v8                  #230.23 c27
        vmadd231ps -3320(%rbp){1to16}, %v9, %v22                #233.29 c29
        vmulps    %v8, %v26, %v7                                #231.19 c31
        movl      %r14d, -3304(%rbp)                            #234.29 c31
        vmulps    %v8, %v25, %v6                                #232.19 c33
        movl      %r14d, -3272(%rbp)                            #236.29 c33
        vmadd231ps -3304(%rbp){1to16}, %v11, %v5                #234.29 c35
        vmadd231ps -3272(%rbp){1to16}, %v15, %v4                #236.29 c37
        vloadd    -1088(%rbp), %v26                             #236.41 c39
        vorpi     %v7, %v7, %v25                                #238.30 c41
        movl      %r15d, -3312(%rbp)                            #233.41 c41
        vmadd231ps -3312(%rbp){1to16}, %v10, %v22               #233.41 c43

###   Fvec_t j12 = dz*(     xt2i*tmp1 + ht1*SB1_x + ht2*SB2_x + ht3*SB3_x);

        vmulps    -2240(%rbp), %v18, %v0                        #239.41 c45

###   Fvec_t j22 =     c1 + xt2i*tmp2 + ht1*sA1_x + ht2*sA2_x + ht3*sA3_x ;

        vorpi     %v7, %v7, %v10                                #240.30 c47
        movl      %r15d, -3296(%rbp)                            #234.41 c47
        vmadd231ps -3296(%rbp){1to16}, %v12, %v5                #234.41 c49
        vloadd    -3456(%rbp), %v8                              #239.53 c51
        vmadd231ps %v5, %v7, %v0                                #239.37 c53
        movl      %r14d, -3288(%rbp)                            #235.29 c53
        vmadd231ps -3288(%rbp){1to16}, %v13, %v21               #235.29 c55

###   Fvec_t j32 =          xt2i*tmp3 + ht1*sB1_x + ht2*sB2_x + ht3*sB3_x ;

        vmulps    -2368(%rbp), %v18, %v13                       #241.41 c57
        vmadd132ps %v19, %v0, %v8                               #239.53 c59
        movl      %r15d, -3264(%rbp)                            #236.41 c59
        vmadd231ps -3264(%rbp){1to16}, %v26, %v4                #236.41 c61
        vloadd    -1600(%rbp), %v9                              #239.65 c63
        vmadd132ps %v4, %v13, %v7                               #241.37 c65
        movl      %r15d, -3280(%rbp)                            #235.41 c65
        vmadd132ps %v20, %v8, %v9                               #239.65 c67
        movl      %eax, -3256(%rbp)                             #238.30 c67
        vmadd231ps -3280(%rbp){1to16}, %v14, %v21               #235.41 c69
        vmadd213ps -3256(%rbp){1to16}, %v22, %v25               #238.30 c71
        vloadd    -1920(%rbp), %v14                             #241.53 c73
        vmadd132ps %v18, %v25, %v3                              #238.41 c75

###     
###   Fvec_t j03 = dz*(     yt2i*tmp0 + ht1*SA1_y + ht2*SA2_y );
###   Fvec_t j13 = dz*(c1 + yt2i*tmp1 + ht1*SB1_y + ht2*SB2_y + ht3*SB3_y );

        movl      %eax, -3240(%rbp)                             #244.30 c75
        vmadd132ps %v19, %v7, %v14                              #241.53 c77
        movl      %eax, -3248(%rbp)                             #240.30 c77
        vmadd132ps %v19, %v3, %v2                               #238.53 c79

###   Fvec_t j23 =          yt2i*tmp2 + ht1*sA1_y + ht2*sA2_y  ;
###   Fvec_t j33 =     c1 + yt2i*tmp3 + ht1*sB1_y + ht2*sB2_y + ht3*sB3_y ;

        movl      %eax, -3232(%rbp)                             #246.30 c79
        vmulps    %v9, %v27, %v25                               #239.65 c81

###     
###   Fvec_t j04 = ctdz2*( SA1 + c2*ht1*SA2 + c3*ht2*SA3 );

        movl      %r14d, -3224(%rbp)                            #248.33 c81
        vmadd132ps %v20, %v2, %v1                               #238.65 c83

###   Fvec_t j14 = ctdz2*( SB1 + c2*ht1*SB2 + c3*ht2*SB3 );

        movl      %r14d, -3208(%rbp)                            #249.33 c83
        vmadd132ps %v20, %v14, %v17                             #241.65 c85

###   Fvec_t j24 = ctdz *( sA1 + c2*ht1*sA2 + c3*ht2*sA3 );

        movl      %r14d, -3192(%rbp)                            #250.33 c85
        vmulps    %v1, %v27, %v26                               #238.65 c87
        movl      %r15d, -3216(%rbp)                            #248.46 c87
        vmulps    -2304(%rbp), %v18, %v7                        #243.41 c89
        vloadd    -1856(%rbp), %v3                              #243.53 c91
        vmadd132ps %v6, %v7, %v22                               #243.37 c93
        movl      %r15d, -3200(%rbp)                            #249.46 c93
        vmadd213ps -3240(%rbp){1to16}, %v6, %v5                 #244.30 c95
        vmadd132ps %v19, %v22, %v3                              #243.53 c97
        movl      %r15d, -3184(%rbp)                            #250.46 c97
        vmadd132ps %v18, %v5, %v30                              #244.41 c99

###   Fvec_t j34 = ctdz *( sB1 + c2*ht1*sB2 + c3*ht2*sB3 );

        movl      %r14d, -3176(%rbp)                            #251.33 c99
        vmulps    %v3, %v27, %v3                                #243.53 c101
        movl      %r15d, -3168(%rbp)                            #251.46 c101
        vloadd    -1728(%rbp), %v22                             #244.53 c103
        vmadd213ps -3248(%rbp){1to16}, %v21, %v10               #240.30 c105
        vmadd132ps %v19, %v30, %v22                             #244.53 c107

###   
###   // extrapolate inverse momentum
###   
###   T[0]+=j04*dqp;
###   T[1]+=j14*dqp;
###   T[2]+=j24*dqp;
###   T[3]+=j34*dqp;
### 
###   //          covariance matrix transport 
###  
###   Fvec_t c42 = C.C42, c43 = C.C43;
### 
###   Fvec_t cj00 = C.C00 + C.C20*j02 + C.C30*j03 + C.C40*j04;
###   Fvec_t cj10 = C.C10 + C.C21*j02 + C.C31*j03 + C.C41*j04;
###   Fvec_t cj20 = C.C20 + C.C22*j02 + C.C32*j03 + c42*j04;
###   Fvec_t cj30 = C.C30 + C.C32*j02 + C.C33*j03 + c43*j04;
###  
###   Fvec_t cj01 = C.C10 + C.C20*j12 + C.C30*j13 + C.C40*j14;
###   Fvec_t cj11 = C.C11 + C.C21*j12 + C.C31*j13 + C.C41*j14;
###   Fvec_t cj21 = C.C21 + C.C22*j12 + C.C32*j13 + c42*j14;
###   Fvec_t cj31 = C.C31 + C.C32*j12 + C.C33*j13 + c43*j14;
###  
###   Fvec_t cj02 = C.C20*j22 + C.C30*j23 + C.C40*j24;
###   Fvec_t cj12 = C.C21*j22 + C.C31*j23 + C.C41*j24;
###   Fvec_t cj22 = C.C22*j22 + C.C32*j23 + c42*j24;
###   Fvec_t cj32 = C.C32*j22 + C.C33*j23 + c43*j24;
###  
###   Fvec_t cj03 = C.C20*j32 + C.C30*j33 + C.C40*j34;
###   Fvec_t cj13 = C.C21*j32 + C.C31*j33 + C.C41*j34;
###   Fvec_t cj23 = C.C22*j32 + C.C32*j33 + c42*j34;
###   Fvec_t cj33 = C.C32*j32 + C.C33*j33 + c43*j34;
### 
###   C.C40+= c42*j02 + c43*j03 + C.C44*j04; // cj40
###   C.C41+= c42*j12 + c43*j13 + C.C44*j14; // cj41
###   C.C42 = c42*j22 + c43*j23 + C.C44*j24; // cj42
###   C.C43 = c42*j32 + c43*j33 + C.C44*j34; // cj43
### 
###   C.C00 = cj00 + j02*cj20 + j03*cj30 + j04*C.C40;
###   C.C10 = cj01 + j02*cj21 + j03*cj31 + j04*C.C41;
###   C.C11 = cj11 + j12*cj21 + j13*cj31 + j14*C.C41;
### 
###   C.C20 = j22*cj20 + j23*cj30 + j24*C.C40 ;
###   C.C30 = j32*cj20 + j33*cj30 + j34*C.C40 ;
###   C.C21 = j22*cj21 + j23*cj31 + j24*C.C41 ;
###   C.C31 = j32*cj21 + j33*cj31 + j34*C.C41 ;
###   C.C22 = j22*cj22 + j23*cj32 + j24*C.C42 ;
###   C.C32 = j32*cj22 + j33*cj32 + j34*C.C42 ;
###   C.C33 = j32*cj23 + j33*cj33 + j34*C.C43 ;
### 
### }

        movq      -56(%rbp), %r14                               #301.1 c107
..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1611: #
        vloadd    -1664(%rbp), %v30                             #244.65 c109
        vloadd    -2176(%rbp), %v11                             #240.41 c111
        vmadd132ps %v20, %v22, %v30                             #244.65 c113
        movq      -64(%rbp), %r15                               #301.1 c113
..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1612: #
        vmadd132ps %v18, %v10, %v11                             #240.41 c115
        vmulps    %v30, %v27, %v2                               #244.65 c117
        vmulps    -2432(%rbp), %v18, %v27                       #245.41 c119
        vloadd    -1984(%rbp), %v12                             #240.53 c121
        vmadd132ps %v6, %v27, %v21                              #245.37 c123
        vmadd213ps -3232(%rbp){1to16}, %v4, %v6                 #246.30 c125
        vmadd132ps %v19, %v21, %v31                             #245.53 c127
        vmadd132ps %v18, %v6, %v29                              #246.41 c129
        vloadd    -2048(%rbp), %v21                             #246.53 c131
        vmulps    -3208(%rbp){1to16}, %v18, %v4                 #249.33 c133
        vmadd132ps %v19, %v29, %v21                             #246.53 c135
        vmulps    -3224(%rbp){1to16}, %v18, %v29                #248.33 c137
        vmulps    -3192(%rbp){1to16}, %v18, %v6                 #250.33 c139
        vmadd213ps -1536(%rbp), %v24, %v29                      #248.37 c141
        vmulps    -3216(%rbp){1to16}, %v19, %v24                #248.46 c143
        vmadd213ps -832(%rbp), %v23, %v4                        #249.37 c145
        vmulps    -3200(%rbp){1to16}, %v19, %v23                #249.46 c147
        vmadd132ps -704(%rbp), %v28, %v6                        #250.37 c149
        vmulps    -3184(%rbp){1to16}, %v19, %v28                #250.46 c151
        vmulps    -3176(%rbp){1to16}, %v18, %v30                #251.33 c153
        vloadd    -768(%rbp), %v18                              #251.37 c155
        vmadd132ps %v19, %v11, %v12                             #240.53 c157
        vmadd132ps -576(%rbp), %v29, %v24                       #248.50 c159
        vloadd    -512(%rbp), %v5                               #248.50 c161
        vmadd132ps -448(%rbp), %v4, %v23                        #249.50 c163
        vmadd132ps -320(%rbp), %v6, %v28                        #250.50 c165
        vmadd213ps -896(%rbp), %v18, %v30                       #251.37 c167
        vmulps    -3168(%rbp){1to16}, %v19, %v19                #251.46 c169
        vmulps    -512(%rbp), %v24, %v1                         #248.50 c171
        vmulps    %v23, %v5, %v0                                #249.50 c173
        vloadd    -640(%rbp), %v15                              #250.50 c175
        vmulps    -640(%rbp), %v28, %v22                        #250.50 c177
        vmadd132ps -384(%rbp), %v30, %v19                       #251.50 c179
        vmadd132ps %v20, %v12, %v16                             #240.65 c181
        vmadd132ps -1792(%rbp), %v21, %v20                      #246.65 c183
        vmulps    %v19, %v15, %v30                              #251.50 c185
        vorpi     %v1, %v1, %v21                                #255.7 c187
        vloadd    -256(%rbp), %v29                              #255.7 c189
        vorpi     %v0, %v0, %v27                                #256.7 c191
        vorpi     %v22, %v22, %v24                              #257.7 c193
        vmadd213ps (%r13), %v29, %v21                           #255.7 c195
        vmadd213ps 64(%r13), %v29, %v27                         #256.7 c197
        vmadd213ps 128(%r13), %v29, %v24                        #257.7 c199
        vmadd213ps 192(%r13), %v30, %v29                        #258.7 c201
        vorpi     %v26, %v26, %v11                              #266.31 c203
        vstored   %v21, (%r13)                                  #255.7 c203
        vstored   %v27, 64(%r13)                                #256.7 c205
        vstored   %v24, 128(%r13)                               #257.7 c207
        vstored   %v29, 192(%r13)                               #258.7 c209
        vloadd    256(%r12), %v28                               #270.31 c211
        vloadd    192(%r12), %v8                                #264.31 c213
        vorpi     %v28, %v28, %v9                               #270.31 c215
        movq      -48(%rbp), %r13                               #301.1 c215
..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1613: #
        vloadd    512(%r12), %v18                               #266.43 c217
        vmadd213ps 128(%r12), %v25, %v9                         #270.31 c219
        vmadd231ps 320(%r12), %v25, %v28                        #271.31 c221
        vorpi     %v8, %v8, %v7                                 #264.31 c223
        vorpi     %v18, %v18, %v10                              #267.31 c225
        vmadd231ps 448(%r12), %v2, %v9                          #270.43 c227
        vmadd231ps 512(%r12), %v2, %v28                         #271.43 c229
        vmadd213ps 448(%r12), %v25, %v18                        #272.31 c231
        vmulps    832(%r12), %v2, %v5                           #285.25 c233
        vmadd213ps (%r12), %v26, %v7                            #264.31 c235
        vmadd132ps 320(%r12), %v8, %v11                         #266.31 c237
        vmadd213ps 64(%r12), %v25, %v8                          #269.31 c239
        vmadd231ps 704(%r12), %v0, %v9                          #270.55 c241
        vmadd231ps 768(%r12), %v0, %v28                         #271.53 c243
        vmadd231ps 576(%r12), %v2, %v18                         #272.43 c245
        vmadd231ps 768(%r12), %v25, %v5                         #285.21 c247
        vmadd231ps 384(%r12), %v3, %v7                          #264.43 c249
        vmadd231ps 512(%r12), %v3, %v11                         #266.43 c251
        vmadd213ps 384(%r12), %v26, %v10                        #267.31 c253
        vmadd231ps 384(%r12), %v2, %v8                          #269.43 c255
        vmadd231ps 832(%r12), %v0, %v18                         #272.53 c257
        vmulps    832(%r12), %v3, %v4                           #284.25 c259
        vmadd231ps 896(%r12), %v0, %v5                          #285.37 c261
        vmadd132ps %v28, %v9, %v25                              #291.22 c263
        vmulps    576(%r12), %v31, %v23                         #277.35 c265
        vmadd231ps 640(%r12), %v1, %v7                          #264.55 c267
        vmadd231ps 768(%r12), %v1, %v11                         #266.53 c269
        vmadd231ps 576(%r12), %v3, %v10                         #267.43 c271
        vmadd231ps 640(%r12), %v0, %v8                          #269.55 c273
        vmadd231ps 768(%r12), %v26, %v4                         #284.21 c275
        vaddps    704(%r12), %v5, %v13                          #285.8 c277
        vmadd132ps %v18, %v25, %v2                              #291.33 c279
        vmulps    512(%r12), %v31, %v24                         #276.35 c281
        vmadd231ps 512(%r12), %v16, %v23                        #277.29 c283
        vmadd231ps 832(%r12), %v1, %v10                         #267.53 c285
        vmadd231ps 896(%r12), %v1, %v4                          #284.37 c287
        vmadd231ps %v11, %v26, %v7                              #289.22 c289
        vmadd132ps %v28, %v8, %v26                              #290.22 c291
        vmadd132ps %v13, %v2, %v0                               #291.44 c293
        vmadd231ps 320(%r12), %v16, %v24                        #276.29 c295
        vmadd231ps 832(%r12), %v22, %v23                        #277.45 c297
        vmulps    576(%r12), %v20, %v29                         #282.35 c299
        vmulps    832(%r12), %v31, %v19                         #286.25 c301
        vaddps    640(%r12), %v4, %v12                          #284.8 c303
        vmadd231ps %v10, %v3, %v7                               #289.33 c305
        vmadd132ps %v18, %v26, %v3                              #290.33 c307
        vmadd231ps 768(%r12), %v22, %v24                        #276.45 c309
        vmulps    512(%r12), %v20, %v21                         #281.35 c311
        vmadd231ps 512(%r12), %v17, %v29                        #282.29 c313
        vmadd231ps 768(%r12), %v16, %v19                        #286.21 c315
        vmulps    %v18, %v31, %v2                               #295.26 c317
        vstored   %v0, 128(%r12)                                #291.3 c317
        vmulps    %v10, %v31, %v0                               #293.26 c319
        vstored   %v12, 640(%r12)                               #284.8 c319
        vmulps    %v23, %v31, %v31                              #297.26 c321
        vstored   %v13, 704(%r12)                               #285.8 c321
        vmadd231ps %v12, %v1, %v7                               #289.44 c323
        vmadd132ps %v13, %v3, %v1                               #290.44 c325
        vloadd    768(%r12), %v27                               #262.16 c327
        vmadd231ps 320(%r12), %v17, %v21                        #281.29 c329
        vmadd231ps 832(%r12), %v30, %v29                        #282.45 c331
        vmadd231ps 896(%r12), %v22, %v19                        #286.37 c333
        vmulps    832(%r12), %v20, %v6                          #287.25 c335
        vmadd231ps %v11, %v16, %v0                              #293.22 c337
        vmadd231ps %v28, %v16, %v2                              #295.22 c339
        vmadd132ps %v24, %v31, %v16                             #297.22 c341
        vmadd231ps 768(%r12), %v30, %v21                        #281.45 c343
        vmadd132ps %v17, %v6, %v27                              #287.21 c345
        vmadd231ps %v12, %v22, %v0                              #293.37 c347
        vmadd231ps %v13, %v22, %v2                              #295.37 c349
        vmulps    %v18, %v20, %v3                               #296.26 c351
        vstored   %v1, 64(%r12)                                 #290.3 c351
        vmulps    %v10, %v20, %v1                               #294.26 c353
        vstored   %v19, 768(%r12)                               #286.3 c353
        vmadd132ps %v19, %v16, %v22                             #297.37 c355
        vmulps    %v23, %v20, %v16                              #298.26 c357
        vstored   %v7, (%r12)                                   #289.3 c357
        vmulps    %v29, %v20, %v20                              #299.26 c359
        vstored   %v0, 192(%r12)                                #293.3 c359
        vmadd231ps 896(%r12), %v30, %v27                        #287.37 c361
        vmadd132ps %v17, %v1, %v11                              #294.22 c363
        vmadd132ps %v17, %v3, %v28                              #296.22 c365
        vmadd132ps %v17, %v16, %v24                             #298.22 c367
        vmadd132ps %v21, %v20, %v17                             #299.22 c369
        vmadd132ps %v30, %v11, %v12                             #294.37 c371
        vmadd132ps %v30, %v28, %v13                             #296.37 c373
        vmadd132ps %v30, %v24, %v19                             #298.37 c375
        vmadd132ps %v27, %v17, %v30                             #299.37 c377
        vstored   %v27, 832(%r12)                               #287.3 c379
        vstored   %v12, 384(%r12)                               #294.3 c381
        vstored   %v2, 256(%r12)                                #295.3 c383
        vstored   %v13, 448(%r12)                               #296.3 c385
        vstored   %v22, 320(%r12)                               #297.3 c387
        vstored   %v19, 512(%r12)                               #298.3 c389
        vstored   %v30, 576(%r12)                               #299.3 c391
        movb      %al, %al                                      #301.1 c391
        movq      -40(%rbp), %r12                               #301.1 c393
..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1614: #
        movq      %rbp, %rsp                                    #301.1 c395
        popq      %rbp                                          #301.1
..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1615: #
        movq      %rbx, %rsp                                    #301.1
        popq      %rbx                                          #301.1
..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1616: #
        ret                                                     #301.1
        .align    16,0x90
..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1618: #
                                # LOE
# mark_end;
	.type	_Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion,@function
	.size	_Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion,.-_Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion
	.data
# -- End  _Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion
	.bss
	.align 64
	.align 64
	.globl vTracks
vTracks:
	.type	vTracks,@object
	.size	vTracks,19200000
	.space 19200000	# pad
	.align 64
	.globl vMCTracks
vMCTracks:
	.type	vMCTracks,@object
	.size	vMCTracks,1280000
	.space 1280000	# pad
	.align 64
	.globl field0
field0:
	.type	field0,@object
	.size	field0,640
	.space 640	# pad
	.align 8
gTicks:
	.type	gTicks,@object
	.size	gTicks,8
	.space 8	# pad
	.align 8
	.globl dataDir
dataDir:
	.type	dataDir,@object
	.size	dataDir,8
	.space 8	# pad
	.align 8
	.globl vStations
vStations:
	.type	vStations,@object
	.size	vStations,8
	.space 8	# pad
	.align 4
	.globl NStations
NStations:
	.type	NStations,@object
	.size	NStations,4
	.space 4	# pad
	.align 4
	.globl NTracks
NTracks:
	.type	NTracks,@object
	.size	NTracks,4
	.space 4	# pad
	.align 4
	.globl NTracksV
NTracksV:
	.type	NTracksV,@object
	.size	NTracksV,4
	.space 4	# pad
	.align 1
_ZSt8__ioinit:
	.type	_ZSt8__ioinit,@object
	.size	_ZSt8__ioinit,1
	.space 1	# pad
	.data
	.align 4
	.align 4
	.globl tasks
tasks:
	.long	80
	.type	tasks,@object
	.size	tasks,4
	.section .rodata, "a"
	.align 64
	.align 64
.L_2il0floatpacket.267:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.type	.L_2il0floatpacket.267,@object
	.size	.L_2il0floatpacket.267,64
	.align 64
.L_2il0floatpacket.268:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008,0x00000009,0x0000000a,0x0000000b,0x0000000c,0x0000000d,0x0000000e,0x0000000f
	.type	.L_2il0floatpacket.268,@object
	.size	.L_2il0floatpacket.268,64
	.align 64
.L_2il0floatpacket.10333:
	.long	0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000
	.type	.L_2il0floatpacket.10333,@object
	.size	.L_2il0floatpacket.10333,64
	.align 64
.L_2il0floatpacket.11082:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.type	.L_2il0floatpacket.11082,@object
	.size	.L_2il0floatpacket.11082,64
	.align 64
.L_2il0floatpacket.11083:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008,0x00000009,0x0000000a,0x0000000b,0x0000000c,0x0000000d,0x0000000e,0x0000000f
	.type	.L_2il0floatpacket.11083,@object
	.size	.L_2il0floatpacket.11083,64
	.align 32
.L_2il0floatpacket.270:
	.long	0xffffffff,0x801fffff,0x00000000,0x3fe00000,0x00000000,0x7ff00000,0x00000000,0x00000000
	.type	.L_2il0floatpacket.270,@object
	.size	.L_2il0floatpacket.270,32
	.align 32
.L_2il0floatpacket.271:
	.long	0x0000006e,0x3fe00000,0xffffdda3,0x3fd7ffff,0xfe16f2b8,0x3fd3ffff,0x162260ba,0x3fd18000
	.type	.L_2il0floatpacket.271,@object
	.size	.L_2il0floatpacket.271,32
	.align 32
.L_2il0floatpacket.272:
	.long	0xc540deb2,0x3fcf8143,0x8e1754e1,0x3fccdb26,0x00000000,0x00000000,0x00000000,0x00000000
	.type	.L_2il0floatpacket.272,@object
	.size	.L_2il0floatpacket.272,32
	.align 32
.L_2il0floatpacket.274:
	.long	0xffffffff,0x800fffff,0x00000000,0x3ff00000,0x00000000,0x7ff00000,0x00000000,0x00000000
	.type	.L_2il0floatpacket.274,@object
	.size	.L_2il0floatpacket.274,32
	.align 32
.L_2il0floatpacket.275:
	.long	0x00000000,0x7fe00000,0x00000000,0x7fe00000,0x00000000,0x7fe00000,0x00000000,0x7fe00000
	.type	.L_2il0floatpacket.275,@object
	.size	.L_2il0floatpacket.275,32
	.align 32
.L_2il0floatpacket.1524:
	.long	0x00000000,0x7ff00000,0x00000000,0x3ff00000,0x00000000,0x7fe00000,0xffffffff,0x800fffff
	.type	.L_2il0floatpacket.1524,@object
	.size	.L_2il0floatpacket.1524,32
	.align 32
.L_2il0floatpacket.11085:
	.long	0xffffffff,0x801fffff,0x00000000,0x3fe00000,0x00000000,0x7ff00000,0x00000000,0x00000000
	.type	.L_2il0floatpacket.11085,@object
	.size	.L_2il0floatpacket.11085,32
	.align 32
.L_2il0floatpacket.11086:
	.long	0x0000006e,0x3fe00000,0xffffdda3,0x3fd7ffff,0xfe16f2b8,0x3fd3ffff,0x162260ba,0x3fd18000
	.type	.L_2il0floatpacket.11086,@object
	.size	.L_2il0floatpacket.11086,32
	.align 32
.L_2il0floatpacket.11087:
	.long	0xc540deb2,0x3fcf8143,0x8e1754e1,0x3fccdb26,0x00000000,0x00000000,0x00000000,0x00000000
	.type	.L_2il0floatpacket.11087,@object
	.size	.L_2il0floatpacket.11087,32
	.align 32
.L_2il0floatpacket.11089:
	.long	0xffffffff,0x800fffff,0x00000000,0x3ff00000,0x00000000,0x7ff00000,0x00000000,0x00000000
	.type	.L_2il0floatpacket.11089,@object
	.size	.L_2il0floatpacket.11089,32
	.align 32
.L_2il0floatpacket.11090:
	.long	0x00000000,0x7fe00000,0x00000000,0x7fe00000,0x00000000,0x7fe00000,0x00000000,0x7fe00000
	.type	.L_2il0floatpacket.11090,@object
	.size	.L_2il0floatpacket.11090,32
	.align 32
.L_2il0floatpacket.11162:
	.long	0x00000000,0x7ff00000,0x00000000,0x3ff00000,0x00000000,0x7fe00000,0xffffffff,0x800fffff
	.type	.L_2il0floatpacket.11162,@object
	.size	.L_2il0floatpacket.11162,32
	.align 16
.L_2il0floatpacket.273:
	.long	0x40000000,0x00000001,0x00000000,0x00000000
	.type	.L_2il0floatpacket.273,@object
	.size	.L_2il0floatpacket.273,16
	.align 16
.L_2il0floatpacket.1525:
	.long	0x00100000,0x00000001,0x00000000,0x00000000
	.type	.L_2il0floatpacket.1525,@object
	.size	.L_2il0floatpacket.1525,16
	.align 16
.L_2il0floatpacket.1526:
	.long	0x00000000,0xbfd00000,0x00000000,0xbfd00000
	.type	.L_2il0floatpacket.1526,@object
	.size	.L_2il0floatpacket.1526,16
	.align 16
.L_2il0floatpacket.5866:
	.long	0x3f00021b,0x3ec004ec,0xbf000000,0x00000000
	.type	.L_2il0floatpacket.5866,@object
	.size	.L_2il0floatpacket.5866,16
	.align 16
.L_2il0floatpacket.5867:
	.long	0x80ffffff,0x006e9372,0x00000001,0x00000000
	.type	.L_2il0floatpacket.5867,@object
	.size	.L_2il0floatpacket.5867,16
	.align 16
.L_2il0floatpacket.11088:
	.long	0x40000000,0x00000001,0x00000000,0x00000000
	.type	.L_2il0floatpacket.11088,@object
	.size	.L_2il0floatpacket.11088,16
	.align 16
.L_2il0floatpacket.11163:
	.long	0x00100000,0x00000001,0x00000000,0x00000000
	.type	.L_2il0floatpacket.11163,@object
	.size	.L_2il0floatpacket.11163,16
	.align 16
.L_2il0floatpacket.11164:
	.long	0x00000000,0xbfd00000,0x00000000,0xbfd00000
	.type	.L_2il0floatpacket.11164,@object
	.size	.L_2il0floatpacket.11164,16
	.align 16
.L_2il0floatpacket.33071:
	.long	0x3f00021b,0x3ec004ec,0xbf000000,0x00000000
	.type	.L_2il0floatpacket.33071,@object
	.size	.L_2il0floatpacket.33071,16
	.align 16
.L_2il0floatpacket.33072:
	.long	0x80ffffff,0x006e9372,0x00000001,0x00000000
	.type	.L_2il0floatpacket.33072,@object
	.size	.L_2il0floatpacket.33072,16
	.align 8
.L_2il0floatpacket.269:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.269,@object
	.size	.L_2il0floatpacket.269,8
	.align 8
.L_2il0floatpacket.1517:
	.long	0xa0b5ed8d,0x3eb0c6f7
	.type	.L_2il0floatpacket.1517,@object
	.size	.L_2il0floatpacket.1517,8
	.align 8
.L_2il0floatpacket.1520:
	.long	0x00000000,0x412e8480
	.type	.L_2il0floatpacket.1520,@object
	.size	.L_2il0floatpacket.1520,8
	.align 8
.L_2il0floatpacket.1521:
	.long	0x00000000,0x40590000
	.type	.L_2il0floatpacket.1521,@object
	.size	.L_2il0floatpacket.1521,8
	.align 8
.L_2il0floatpacket.1522:
	.long	0x00000000,0x41f00000
	.type	.L_2il0floatpacket.1522,@object
	.size	.L_2il0floatpacket.1522,8
	.align 8
.L_2il0floatpacket.11084:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.11084,@object
	.size	.L_2il0floatpacket.11084,8
	.align 8
.L_2il0floatpacket.11160:
	.long	0xa0b5ed8d,0x3eb0c6f7
	.type	.L_2il0floatpacket.11160,@object
	.size	.L_2il0floatpacket.11160,8
	.align 8
.L_2il0floatpacket.11161:
	.long	0x00000000,0x41f00000
	.type	.L_2il0floatpacket.11161,@object
	.size	.L_2il0floatpacket.11161,8
	.align 4
.L_2il0floatpacket.263:
	.long	0x3b03126f
	.type	.L_2il0floatpacket.263,@object
	.size	.L_2il0floatpacket.263,4
	.align 4
.L_2il0floatpacket.266:
	.long	0x00000008
	.type	.L_2il0floatpacket.266,@object
	.size	.L_2il0floatpacket.266,4
	.align 4
.L_2il0floatpacket.1044:
	.long	0x40000000
	.type	.L_2il0floatpacket.1044,@object
	.size	.L_2il0floatpacket.1044,4
	.align 4
.L_2il0floatpacket.1523:
	.long	0x3f800000
	.type	.L_2il0floatpacket.1523,@object
	.size	.L_2il0floatpacket.1523,4
	.align 4
.L_2il0floatpacket.2942:
	.long	0x41800000
	.type	.L_2il0floatpacket.2942,@object
	.size	.L_2il0floatpacket.2942,4
	.align 4
.L_2il0floatpacket.2943:
	.long	0x3f800000
	.type	.L_2il0floatpacket.2943,@object
	.size	.L_2il0floatpacket.2943,4
	.align 4
.L_2il0floatpacket.5858:
	.long	0x3a0779dd
	.type	.L_2il0floatpacket.5858,@object
	.size	.L_2il0floatpacket.5858,4
	.align 4
.L_2il0floatpacket.5859:
	.long	0x3c5ed289
	.type	.L_2il0floatpacket.5859,@object
	.size	.L_2il0floatpacket.5859,4
	.align 4
.L_2il0floatpacket.5860:
	.long	0x398779dd
	.type	.L_2il0floatpacket.5860,@object
	.size	.L_2il0floatpacket.5860,4
	.align 4
.L_2il0floatpacket.5861:
	.long	0x38b4a27c
	.type	.L_2il0floatpacket.5861,@object
	.size	.L_2il0floatpacket.5861,4
	.align 4
.L_2il0floatpacket.5862:
	.long	0xb90779dd
	.type	.L_2il0floatpacket.5862,@object
	.size	.L_2il0floatpacket.5862,4
	.align 4
.L_2il0floatpacket.5863:
	.long	0xb88779dd
	.type	.L_2il0floatpacket.5863,@object
	.size	.L_2il0floatpacket.5863,4
	.align 4
.L_2il0floatpacket.5864:
	.long	0x3c9fa5a2
	.type	.L_2il0floatpacket.5864,@object
	.size	.L_2il0floatpacket.5864,4
	.align 4
.L_2il0floatpacket.5865:
	.long	0x3f800000
	.type	.L_2il0floatpacket.5865,@object
	.size	.L_2il0floatpacket.5865,4
	.align 4
.L_2il0floatpacket.6931:
	.long	0x80000000
	.type	.L_2il0floatpacket.6931,@object
	.size	.L_2il0floatpacket.6931,4
	.align 4
.L_2il0floatpacket.10332:
	.long	0x80000000
	.type	.L_2il0floatpacket.10332,@object
	.size	.L_2il0floatpacket.10332,4
	.align 4
.L_2il0floatpacket.10334:
	.long	0x45507a42
	.type	.L_2il0floatpacket.10334,@object
	.size	.L_2il0floatpacket.10334,4
	.align 4
.L_2il0floatpacket.10335:
	.long	0x3f800000
	.type	.L_2il0floatpacket.10335,@object
	.size	.L_2il0floatpacket.10335,4
	.align 4
.L_2il0floatpacket.11035:
	.long	0x3c23d70a
	.type	.L_2il0floatpacket.11035,@object
	.size	.L_2il0floatpacket.11035,4
	.align 4
.L_2il0floatpacket.11036:
	.long	0xc0400000
	.type	.L_2il0floatpacket.11036,@object
	.size	.L_2il0floatpacket.11036,4
	.align 4
.L_2il0floatpacket.11037:
	.long	0x3f800000
	.type	.L_2il0floatpacket.11037,@object
	.size	.L_2il0floatpacket.11037,4
	.align 4
.L_2il0floatpacket.11081:
	.long	0x00000008
	.type	.L_2il0floatpacket.11081,@object
	.size	.L_2il0floatpacket.11081,4
	.align 4
.L_2il0floatpacket.33036:
	.long	0x40000000
	.type	.L_2il0floatpacket.33036,@object
	.size	.L_2il0floatpacket.33036,4
	.align 4
.L_2il0floatpacket.33037:
	.long	0x40800000
	.type	.L_2il0floatpacket.33037,@object
	.size	.L_2il0floatpacket.33037,4
	.align 4
.L_2il0floatpacket.33038:
	.long	0x40400000
	.type	.L_2il0floatpacket.33038,@object
	.size	.L_2il0floatpacket.33038,4
	.align 4
.L_2il0floatpacket.33039:
	.long	0x41700000
	.type	.L_2il0floatpacket.33039,@object
	.size	.L_2il0floatpacket.33039,4
	.align 4
.L_2il0floatpacket.33040:
	.long	0x41100000
	.type	.L_2il0floatpacket.33040,@object
	.size	.L_2il0floatpacket.33040,4
	.align 4
.L_2il0floatpacket.33041:
	.long	0x80000000
	.type	.L_2il0floatpacket.33041,@object
	.size	.L_2il0floatpacket.33041,4
	.align 4
.L_2il0floatpacket.33042:
	.long	0xc0000000
	.type	.L_2il0floatpacket.33042,@object
	.size	.L_2il0floatpacket.33042,4
	.align 4
.L_2il0floatpacket.33043:
	.long	0x41900000
	.type	.L_2il0floatpacket.33043,@object
	.size	.L_2il0floatpacket.33043,4
	.align 4
.L_2il0floatpacket.33044:
	.long	0x40c00000
	.type	.L_2il0floatpacket.33044,@object
	.size	.L_2il0floatpacket.33044,4
	.align 4
.L_2il0floatpacket.33045:
	.long	0x42340000
	.type	.L_2il0floatpacket.33045,@object
	.size	.L_2il0floatpacket.33045,4
	.align 4
.L_2il0floatpacket.33046:
	.long	0x399d2d76
	.type	.L_2il0floatpacket.33046,@object
	.size	.L_2il0floatpacket.33046,4
	.align 4
.L_2il0floatpacket.33047:
	.long	0x3f000000
	.type	.L_2il0floatpacket.33047,@object
	.size	.L_2il0floatpacket.33047,4
	.align 4
.L_2il0floatpacket.33048:
	.long	0x3eaaaaab
	.type	.L_2il0floatpacket.33048,@object
	.size	.L_2il0floatpacket.33048,4
	.align 4
.L_2il0floatpacket.33049:
	.long	0x3e2aaaab
	.type	.L_2il0floatpacket.33049,@object
	.size	.L_2il0floatpacket.33049,4
	.align 4
.L_2il0floatpacket.33050:
	.long	0x3daaaaab
	.type	.L_2il0floatpacket.33050,@object
	.size	.L_2il0floatpacket.33050,4
	.align 4
.L_2il0floatpacket.33051:
	.long	0x3e000000
	.type	.L_2il0floatpacket.33051,@object
	.size	.L_2il0floatpacket.33051,4
	.align 4
.L_2il0floatpacket.33052:
	.long	0x3d888889
	.type	.L_2il0floatpacket.33052,@object
	.size	.L_2il0floatpacket.33052,4
	.align 4
.L_2il0floatpacket.33053:
	.long	0x3e800000
	.type	.L_2il0floatpacket.33053,@object
	.size	.L_2il0floatpacket.33053,4
	.align 4
.L_2il0floatpacket.33054:
	.long	0x3dcccccd
	.type	.L_2il0floatpacket.33054,@object
	.size	.L_2il0floatpacket.33054,4
	.align 4
.L_2il0floatpacket.33055:
	.long	0x3d638e39
	.type	.L_2il0floatpacket.33055,@object
	.size	.L_2il0floatpacket.33055,4
	.align 4
.L_2il0floatpacket.33056:
	.long	0x3d2aaaab
	.type	.L_2il0floatpacket.33056,@object
	.size	.L_2il0floatpacket.33056,4
	.align 4
.L_2il0floatpacket.33057:
	.long	0x3c888889
	.type	.L_2il0floatpacket.33057,@object
	.size	.L_2il0floatpacket.33057,4
	.align 4
.L_2il0floatpacket.33058:
	.long	0x3ccccccd
	.type	.L_2il0floatpacket.33058,@object
	.size	.L_2il0floatpacket.33058,4
	.align 4
.L_2il0floatpacket.33059:
	.long	0x3c360b61
	.type	.L_2il0floatpacket.33059,@object
	.size	.L_2il0floatpacket.33059,4
	.align 4
.L_2il0floatpacket.33060:
	.long	0x3d4ccccd
	.type	.L_2il0floatpacket.33060,@object
	.size	.L_2il0floatpacket.33060,4
	.align 4
.L_2il0floatpacket.33061:
	.long	0x3c020821
	.type	.L_2il0floatpacket.33061,@object
	.size	.L_2il0floatpacket.33061,4
	.align 4
.L_2il0floatpacket.33062:
	.long	0x3ce38e39
	.type	.L_2il0floatpacket.33062,@object
	.size	.L_2il0floatpacket.33062,4
	.align 4
.L_2il0floatpacket.33063:
	.long	0x3caaaaab
	.type	.L_2il0floatpacket.33063,@object
	.size	.L_2il0floatpacket.33063,4
	.align 4
.L_2il0floatpacket.33064:
	.long	0x3cc30c31
	.type	.L_2il0floatpacket.33064,@object
	.size	.L_2il0floatpacket.33064,4
	.align 4
.L_2il0floatpacket.33065:
	.long	0x3be38e39
	.type	.L_2il0floatpacket.33065,@object
	.size	.L_2il0floatpacket.33065,4
	.align 4
.L_2il0floatpacket.33066:
	.long	0x3b430c31
	.type	.L_2il0floatpacket.33066,@object
	.size	.L_2il0floatpacket.33066,4
	.align 4
.L_2il0floatpacket.33067:
	.long	0x3baaaaab
	.type	.L_2il0floatpacket.33067,@object
	.size	.L_2il0floatpacket.33067,4
	.align 4
.L_2il0floatpacket.33068:
	.long	0x3b4a4588
	.type	.L_2il0floatpacket.33068,@object
	.size	.L_2il0floatpacket.33068,4
	.align 4
.L_2il0floatpacket.33069:
	.long	0x3a21d139
	.type	.L_2il0floatpacket.33069,@object
	.size	.L_2il0floatpacket.33069,4
	.align 4
.L_2il0floatpacket.33070:
	.long	0x3f800000
	.type	.L_2il0floatpacket.33070,@object
	.size	.L_2il0floatpacket.33070,4
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.21:
	.byte	111
	.byte	109
	.byte	112
	.byte	0
	.type	.L_2__STRING.21,@object
	.size	.L_2__STRING.21,4
	.align 4
.L_2__STRING.20:
	.byte	116
	.byte	98
	.byte	98
	.byte	0
	.type	.L_2__STRING.20,@object
	.size	.L_2__STRING.20,4
	.align 4
.L_2__STRING.19:
	.byte	80
	.byte	108
	.byte	101
	.byte	97
	.byte	115
	.byte	101
	.byte	32
	.byte	115
	.byte	112
	.byte	101
	.byte	99
	.byte	105
	.byte	102
	.byte	121
	.byte	32
	.byte	35
	.byte	112
	.byte	97
	.byte	114
	.byte	97
	.byte	108
	.byte	108
	.byte	101
	.byte	108
	.byte	32
	.byte	116
	.byte	97
	.byte	115
	.byte	107
	.byte	115
	.byte	0
	.type	.L_2__STRING.19,@object
	.size	.L_2__STRING.19,31
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.9:
	.byte	102
	.byte	105
	.byte	116
	.byte	46
	.byte	100
	.byte	97
	.byte	116
	.byte	0
	.type	.L_2__STRING.9,@object
	.size	.L_2__STRING.9,8
	.align 4
.L_2__STRING.10:
	.byte	102
	.byte	105
	.byte	116
	.byte	100
	.byte	105
	.byte	102
	.byte	102
	.byte	46
	.byte	100
	.byte	97
	.byte	116
	.byte	0
	.type	.L_2__STRING.10,@object
	.size	.L_2__STRING.10,12
	.align 4
.L_2__STRING.12:
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.type	.L_2__STRING.12,@object
	.size	.L_2__STRING.12,4
	.align 4
.L_2__STRING.13:
	.byte	32
	.byte	0
	.type	.L_2__STRING.13,@object
	.size	.L_2__STRING.13,2
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.11:
	.byte	32
	.byte	105
	.byte	110
	.byte	102
	.byte	105
	.byte	110
	.byte	105
	.byte	116
	.byte	101
	.byte	32
	.byte	0
	.type	.L_2__STRING.11,@object
	.size	.L_2__STRING.11,11
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.7:
	.byte	103
	.byte	101
	.byte	111
	.byte	46
	.byte	100
	.byte	97
	.byte	116
	.byte	0
	.type	.L_2__STRING.7,@object
	.size	.L_2__STRING.7,8
	.align 4
.L_2__STRING.8:
	.byte	116
	.byte	114
	.byte	97
	.byte	99
	.byte	107
	.byte	115
	.byte	46
	.byte	100
	.byte	97
	.byte	116
	.byte	0
	.type	.L_2__STRING.8,@object
	.size	.L_2__STRING.8,11
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.16:
	.byte	116
	.byte	105
	.byte	109
	.byte	101
	.byte	46
	.byte	100
	.byte	97
	.byte	116
	.byte	0
	.type	.L_2__STRING.16,@object
	.size	.L_2__STRING.16,9
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.18:
	.byte	9
	.byte	0
	.type	.L_2__STRING.18,@object
	.size	.L_2__STRING.18,2
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.22:
	.byte	46
	.byte	47
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	47
	.byte	0
	.type	.L_2__STRING.22,@object
	.size	.L_2__STRING.22,8
	.section .rodata.str1.32, "aMS",@progbits,1
	.align 32
	.align 32
.L_2__STRING.17:
	.byte	80
	.byte	114
	.byte	101
	.byte	112
	.byte	91
	.byte	117
	.byte	115
	.byte	93
	.byte	44
	.byte	32
	.byte	67
	.byte	80
	.byte	85
	.byte	32
	.byte	102
	.byte	105
	.byte	116
	.byte	47
	.byte	116
	.byte	114
	.byte	91
	.byte	117
	.byte	115
	.byte	93
	.byte	44
	.byte	32
	.byte	82
	.byte	101
	.byte	97
	.byte	108
	.byte	32
	.byte	102
	.byte	105
	.byte	116
	.byte	47
	.byte	116
	.byte	114
	.byte	91
	.byte	117
	.byte	115
	.byte	93
	.byte	44
	.byte	32
	.byte	67
	.byte	80
	.byte	85
	.byte	91
	.byte	115
	.byte	101
	.byte	99
	.byte	93
	.byte	44
	.byte	32
	.byte	82
	.byte	101
	.byte	97
	.byte	108
	.byte	91
	.byte	115
	.byte	101
	.byte	99
	.byte	93
	.byte	32
	.byte	61
	.byte	32
	.byte	0
	.type	.L_2__STRING.17,@object
	.size	.L_2__STRING.17,66
	.section .data._ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE5mass2, "waG",@progbits,_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE5mass2,comdat
	.align 4
	.weak _ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE5mass2
_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE5mass2:
	.type	_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE5mass2,@object
	.size	_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE5mass2,4
	.long	0x3c9fa5a2
	.section .data._ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c1, "waG",@progbits,_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c1,comdat
	.align 4
	.weak _ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c1
_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c1:
	.type	_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c1,@object
	.size	_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c1,4
	.long	0x3c5ed289
	.section .data._ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c2, "waG",@progbits,_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c2,comdat
	.align 4
	.weak _ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c2
_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c2:
	.type	_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c2,@object
	.size	_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c2,4
	.long	0x3a0779dd
	.section .data._ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c3, "waG",@progbits,_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c3,comdat
	.align 4
	.weak _ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c3
_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c3:
	.type	_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c3,@object
	.size	_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c3,4
	.long	0x398779dd
	.section .data._ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c4, "waG",@progbits,_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c4,comdat
	.align 4
	.weak _ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c4
_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c4:
	.type	_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c4,@object
	.size	_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c4,4
	.long	0xb90779dd
	.section .data._ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c5, "waG",@progbits,_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c5,comdat
	.align 4
	.weak _ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c5
_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c5:
	.type	_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c5,@object
	.size	_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c5,4
	.long	0x38b4a27c
	.section .data._ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c6, "waG",@progbits,_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c6,comdat
	.align 4
	.weak _ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c6
_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c6:
	.type	_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c6,@object
	.size	_ZZ11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEEE2c6,4
	.long	0xb88779dd
	.section .ctors, "wa"
	.align 8
__init_0:
	.type	__init_0,@object
	.size	__init_0,8
	.quad	__sti__$E
	.data
	.hidden __dso_handle
# mark_proc_addr_taken __sti__$E;
# mark_proc_addr_taken _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;
# mark_proc_addr_taken _ZNSt8ios_base4InitD1Ev;
# mark_proc_addr_taken _ZNSsD1Ev;
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
	.4byte 0x0000001c
	.8byte 0x4c507a0100000000
	.4byte 0x10780100
	.2byte 0x000a
	.8byte __gxx_personality_v0
	.4byte 0x08070c00
	.2byte 0x0190
	.4byte 0x0000001c
	.8byte 0x00507a0100000000
	.4byte 0x09107801
	.byte 0x00
	.8byte __gxx_personality_v0
	.4byte 0x9008070c
	.2byte 0x0001
	.byte 0x00
	.4byte 0x000001ac
	.4byte 0x00000044
	.8byte ..___tag_value_main.10
	.8byte ..___tag_value_main.504-..___tag_value_main.10
	.byte 0x08
	.8byte main$$LSDA
	.byte 0x04
	.4byte ..___tag_value_main.12-..___tag_value_main.10
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.13-..___tag_value_main.12
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.15-..___tag_value_main.13
	.8byte 0xff800d1c380e0c10
	.8byte 0xfffffff80d1affff
	.2byte 0x0422
	.4byte ..___tag_value_main.16-..___tag_value_main.15
	.8byte 0xff800d1c380e0d10
	.8byte 0xfffffff00d1affff
	.2byte 0x0422
	.4byte ..___tag_value_main.17-..___tag_value_main.16
	.8byte 0xff800d1c380e0e10
	.8byte 0xffffffe80d1affff
	.2byte 0x0422
	.4byte ..___tag_value_main.18-..___tag_value_main.17
	.8byte 0xff800d1c380e0f10
	.8byte 0xffffffe00d1affff
	.2byte 0x0422
	.4byte ..___tag_value_main.19-..___tag_value_main.18
	.8byte 0xff800d1c380e0310
	.8byte 0xffffffd80d1affff
	.2byte 0x0422
	.4byte ..___tag_value_main.106-..___tag_value_main.19
	.2byte 0x04c3
	.4byte ..___tag_value_main.108-..___tag_value_main.106
	.2byte 0x04cf
	.4byte ..___tag_value_main.109-..___tag_value_main.108
	.2byte 0x04ce
	.4byte ..___tag_value_main.110-..___tag_value_main.109
	.2byte 0x04cd
	.4byte ..___tag_value_main.111-..___tag_value_main.110
	.2byte 0x04cc
	.4byte ..___tag_value_main.112-..___tag_value_main.111
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value_main.114-..___tag_value_main.112
	.8byte 0x1c380e031010060c
	.8byte 0xd80d1affffff800d
	.8byte 0x0c10028622ffffff
	.8byte 0xffffff800d1c380e
	.8byte 0x1022fffffff80d1a
	.8byte 0xffff800d1c380e0d
	.8byte 0x22fffffff00d1aff
	.8byte 0xff800d1c380e0e10
	.8byte 0xffffffe80d1affff
	.8byte 0x800d1c380e0f1022
	.8byte 0xffffe00d1affffff
	.2byte 0x22ff
	.byte 0x04
	.4byte ..___tag_value_main.353-..___tag_value_main.114
	.2byte 0x04c3
	.4byte ..___tag_value_main.355-..___tag_value_main.353
	.2byte 0x04cf
	.4byte ..___tag_value_main.356-..___tag_value_main.355
	.2byte 0x04ce
	.4byte ..___tag_value_main.357-..___tag_value_main.356
	.2byte 0x04cd
	.4byte ..___tag_value_main.358-..___tag_value_main.357
	.2byte 0x04cc
	.4byte ..___tag_value_main.359-..___tag_value_main.358
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value_main.361-..___tag_value_main.359
	.8byte 0x1c380e031010060c
	.8byte 0xd80d1affffff800d
	.8byte 0x0c10028622ffffff
	.8byte 0xffffff800d1c380e
	.8byte 0x1022fffffff80d1a
	.8byte 0xffff800d1c380e0d
	.8byte 0x22fffffff00d1aff
	.8byte 0xff800d1c380e0e10
	.8byte 0xffffffe80d1affff
	.8byte 0x800d1c380e0f1022
	.8byte 0xffffe00d1affffff
	.4byte 0x000022ff
	.2byte 0x0000
	.4byte 0x00000134
	.4byte 0x000001f4
	.8byte ..___tag_value__Z9ReadInputv.516
	.8byte ..___tag_value__Z9ReadInputv.776-..___tag_value__Z9ReadInputv.516
	.byte 0x08
	.8byte _Z9ReadInputv$$LSDA
	.byte 0x04
	.4byte ..___tag_value__Z9ReadInputv.518-..___tag_value__Z9ReadInputv.516
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__Z9ReadInputv.519-..___tag_value__Z9ReadInputv.518
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__Z9ReadInputv.521-..___tag_value__Z9ReadInputv.519
	.8byte 0xffc00d1c380e0c10
	.8byte 0xfffffff80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z9ReadInputv.522-..___tag_value__Z9ReadInputv.521
	.8byte 0xffc00d1c380e0d10
	.8byte 0xfffffff00d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z9ReadInputv.523-..___tag_value__Z9ReadInputv.522
	.8byte 0xffc00d1c380e0e10
	.8byte 0xffffffe80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z9ReadInputv.524-..___tag_value__Z9ReadInputv.523
	.8byte 0xffc00d1c380e0f10
	.8byte 0xffffffe00d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z9ReadInputv.525-..___tag_value__Z9ReadInputv.524
	.8byte 0xffc00d1c380e0310
	.8byte 0xffffffd80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z9ReadInputv.592-..___tag_value__Z9ReadInputv.525
	.2byte 0x102e
	.byte 0x04
	.4byte ..___tag_value__Z9ReadInputv.597-..___tag_value__Z9ReadInputv.592
	.2byte 0x002e
	.byte 0x04
	.4byte ..___tag_value__Z9ReadInputv.731-..___tag_value__Z9ReadInputv.597
	.2byte 0x04c3
	.4byte ..___tag_value__Z9ReadInputv.733-..___tag_value__Z9ReadInputv.731
	.2byte 0x04cf
	.4byte ..___tag_value__Z9ReadInputv.734-..___tag_value__Z9ReadInputv.733
	.2byte 0x04ce
	.4byte ..___tag_value__Z9ReadInputv.735-..___tag_value__Z9ReadInputv.734
	.2byte 0x04cd
	.4byte ..___tag_value__Z9ReadInputv.736-..___tag_value__Z9ReadInputv.735
	.2byte 0x04cc
	.4byte ..___tag_value__Z9ReadInputv.737-..___tag_value__Z9ReadInputv.736
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value__Z9ReadInputv.739-..___tag_value__Z9ReadInputv.737
	.8byte 0x1c380e031010060c
	.8byte 0xd80d1affffffc00d
	.8byte 0x0c10028622ffffff
	.8byte 0xffffffc00d1c380e
	.8byte 0x1022fffffff80d1a
	.8byte 0xffffc00d1c380e0d
	.8byte 0x22fffffff00d1aff
	.8byte 0xffc00d1c380e0e10
	.8byte 0xffffffe80d1affff
	.8byte 0xc00d1c380e0f1022
	.8byte 0xffffe00d1affffff
	.4byte 0x000022ff
	.2byte 0x0000
	.4byte 0x000000b4
	.4byte 0x0000032c
	.8byte ..___tag_value__Z10FitTracksVv.785
	.8byte ..___tag_value__Z10FitTracksVv.1052-..___tag_value__Z10FitTracksVv.785
	.byte 0x08
	.8byte _Z10FitTracksVv$$LSDA
	.byte 0x04
	.4byte ..___tag_value__Z10FitTracksVv.787-..___tag_value__Z10FitTracksVv.785
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__Z10FitTracksVv.788-..___tag_value__Z10FitTracksVv.787
	.4byte 0x8310030c
	.2byte 0x0402
	.4byte ..___tag_value__Z10FitTracksVv.790-..___tag_value__Z10FitTracksVv.788
	.4byte 0x76020610
	.2byte 0x0400
	.4byte ..___tag_value__Z10FitTracksVv.791-..___tag_value__Z10FitTracksVv.790
	.4byte 0x76030f10
	.2byte 0x7490
	.byte 0x04
	.4byte ..___tag_value__Z10FitTracksVv.792-..___tag_value__Z10FitTracksVv.791
	.4byte 0x76030e10
	.2byte 0x7498
	.byte 0x04
	.4byte ..___tag_value__Z10FitTracksVv.793-..___tag_value__Z10FitTracksVv.792
	.4byte 0x76030d10
	.2byte 0x71f8
	.byte 0x04
	.4byte ..___tag_value__Z10FitTracksVv.794-..___tag_value__Z10FitTracksVv.793
	.4byte 0x76030c10
	.2byte 0x7488
	.byte 0x04
	.4byte ..___tag_value__Z10FitTracksVv.994-..___tag_value__Z10FitTracksVv.794
	.2byte 0x04cc
	.4byte ..___tag_value__Z10FitTracksVv.995-..___tag_value__Z10FitTracksVv.994
	.2byte 0x04cd
	.4byte ..___tag_value__Z10FitTracksVv.996-..___tag_value__Z10FitTracksVv.995
	.2byte 0x04ce
	.4byte ..___tag_value__Z10FitTracksVv.997-..___tag_value__Z10FitTracksVv.996
	.2byte 0x04cf
	.4byte ..___tag_value__Z10FitTracksVv.998-..___tag_value__Z10FitTracksVv.997
	.2byte 0x04c6
	.4byte ..___tag_value__Z10FitTracksVv.999-..___tag_value__Z10FitTracksVv.998
	.4byte 0xc308070c
	.byte 0x04
	.4byte ..___tag_value__Z10FitTracksVv.1001-..___tag_value__Z10FitTracksVv.999
	.8byte 0x020610028310030c
	.8byte 0x748876030c100076
	.8byte 0x0e1071f876030d10
	.8byte 0x76030f1074987603
	.4byte 0x00007490
	.4byte 0x000000bc
	.4byte 0x000003c4
	.8byte ..___tag_value__Z3FitR6TrackVP7Stationi.1057
	.8byte ..___tag_value__Z3FitR6TrackVP7Stationi.1097-..___tag_value__Z3FitR6TrackVP7Stationi.1057
	.2byte 0x0400
	.4byte ..___tag_value__Z3FitR6TrackVP7Stationi.1059-..___tag_value__Z3FitR6TrackVP7Stationi.1057
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__Z3FitR6TrackVP7Stationi.1060-..___tag_value__Z3FitR6TrackVP7Stationi.1059
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__Z3FitR6TrackVP7Stationi.1062-..___tag_value__Z3FitR6TrackVP7Stationi.1060
	.8byte 0xffc00d1c380e0c10
	.8byte 0xfffffff80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z3FitR6TrackVP7Stationi.1063-..___tag_value__Z3FitR6TrackVP7Stationi.1062
	.8byte 0xffc00d1c380e0d10
	.8byte 0xfffffff00d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z3FitR6TrackVP7Stationi.1064-..___tag_value__Z3FitR6TrackVP7Stationi.1063
	.8byte 0xffc00d1c380e0e10
	.8byte 0xffffffe80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z3FitR6TrackVP7Stationi.1065-..___tag_value__Z3FitR6TrackVP7Stationi.1064
	.8byte 0xffc00d1c380e0f10
	.8byte 0xffffffe00d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z3FitR6TrackVP7Stationi.1066-..___tag_value__Z3FitR6TrackVP7Stationi.1065
	.8byte 0xffc00d1c380e0310
	.8byte 0xffffffd80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z3FitR6TrackVP7Stationi.1090-..___tag_value__Z3FitR6TrackVP7Stationi.1066
	.2byte 0x04c3
	.4byte ..___tag_value__Z3FitR6TrackVP7Stationi.1091-..___tag_value__Z3FitR6TrackVP7Stationi.1090
	.2byte 0x04cf
	.4byte ..___tag_value__Z3FitR6TrackVP7Stationi.1092-..___tag_value__Z3FitR6TrackVP7Stationi.1091
	.2byte 0x04ce
	.4byte ..___tag_value__Z3FitR6TrackVP7Stationi.1093-..___tag_value__Z3FitR6TrackVP7Stationi.1092
	.2byte 0x04cd
	.4byte ..___tag_value__Z3FitR6TrackVP7Stationi.1094-..___tag_value__Z3FitR6TrackVP7Stationi.1093
	.2byte 0x04cc
	.4byte ..___tag_value__Z3FitR6TrackVP7Stationi.1095-..___tag_value__Z3FitR6TrackVP7Stationi.1094
	.4byte 0xc608070c
	.byte 0x00
	.4byte 0x0000001c
	.4byte 0x00000484
	.8byte ..___tag_value__ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_.1098
	.8byte ..___tag_value__ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_.1100-..___tag_value__ZN10FieldSlice8GetFieldERKN2Vc5LRBni6VectorIfEES5_RS3_S6_S6_.1098
	.8byte 0x0000000000000000
	.4byte 0x00000024
	.4byte 0x000004a4
	.8byte ..___tag_value__Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE.1101
	.8byte ..___tag_value__Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE.1107-..___tag_value__Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE.1101
	.2byte 0x0400
	.4byte ..___tag_value__Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE.1103-..___tag_value__Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE.1101
	.2byte 0x600e
	.byte 0x04
	.4byte ..___tag_value__Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE.1106-..___tag_value__Z11AddMaterialR6TrackVR7StationRN2Vc5LRBni6VectorIfEE.1103
	.2byte 0x080e
	.byte 0x00
	.4byte 0x000000a4
	.4byte 0x000004cc
	.8byte ..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1108
	.8byte ..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1123-..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1108
	.2byte 0x0400
	.4byte ..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1110-..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1108
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1111-..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1110
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1113-..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1111
	.8byte 0xffc00d1c380e0c10
	.8byte 0xfffffff80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1114-..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1113
	.8byte 0xffc00d1c380e0d10
	.8byte 0xfffffff00d1affff
	.2byte 0x0422
	.4byte ..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1115-..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1114
	.8byte 0xffc00d1c380e0f10
	.8byte 0xffffffe80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1116-..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1115
	.8byte 0xffc00d1c380e0310
	.8byte 0xffffffe00d1affff
	.2byte 0x0422
	.4byte ..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1117-..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1116
	.2byte 0x04c3
	.4byte ..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1118-..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1117
	.2byte 0x04cf
	.4byte ..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1119-..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1118
	.2byte 0x04cd
	.4byte ..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1120-..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1119
	.2byte 0x04cc
	.4byte ..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1121-..___tag_value__ZN11FieldRegion3SetERK11FieldVectorRKN2Vc5LRBni6VectorIfEES2_S8_S2_S8_.1120
	.8byte 0x00000000c608070c
	.byte 0x00
	.4byte 0x0000004c
	.4byte 0x00000574
	.8byte ..___tag_value__Z8GuessVecR6TrackVP7Stationi.1124
	.8byte ..___tag_value__Z8GuessVecR6TrackVP7Stationi.1133-..___tag_value__Z8GuessVecR6TrackVP7Stationi.1124
	.2byte 0x0400
	.4byte ..___tag_value__Z8GuessVecR6TrackVP7Stationi.1126-..___tag_value__Z8GuessVecR6TrackVP7Stationi.1124
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__Z8GuessVecR6TrackVP7Stationi.1127-..___tag_value__Z8GuessVecR6TrackVP7Stationi.1126
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__Z8GuessVecR6TrackVP7Stationi.1129-..___tag_value__Z8GuessVecR6TrackVP7Stationi.1127
	.8byte 0xffc00d1c380e0f10
	.8byte 0xfffffff80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z8GuessVecR6TrackVP7Stationi.1130-..___tag_value__Z8GuessVecR6TrackVP7Stationi.1129
	.2byte 0x04cf
	.4byte ..___tag_value__Z8GuessVecR6TrackVP7Stationi.1131-..___tag_value__Z8GuessVecR6TrackVP7Stationi.1130
	.4byte 0xc608070c
	.byte 0x00
	.4byte 0x00000024
	.4byte 0x000005c4
	.8byte ..___tag_value__Z11FilterFirstR6TrackVR4HitVR7Station.1134
	.8byte ..___tag_value__Z11FilterFirstR6TrackVR4HitVR7Station.1140-..___tag_value__Z11FilterFirstR6TrackVR4HitVR7Station.1134
	.2byte 0x0400
	.4byte ..___tag_value__Z11FilterFirstR6TrackVR4HitVR7Station.1136-..___tag_value__Z11FilterFirstR6TrackVR4HitVR7Station.1134
	.4byte 0x0401900e
	.4byte ..___tag_value__Z11FilterFirstR6TrackVR4HitVR7Station.1139-..___tag_value__Z11FilterFirstR6TrackVR4HitVR7Station.1136
	.2byte 0x080e
	.4byte 0x0000006c
	.4byte 0x000005ec
	.8byte ..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1141
	.8byte ..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1154-..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1141
	.2byte 0x0400
	.4byte ..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1143-..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1141
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1144-..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1143
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1146-..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1144
	.8byte 0xffc00d1c380e0c10
	.8byte 0xfffffff80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1147-..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1146
	.8byte 0xffc00d1c380e0310
	.8byte 0xfffffff00d1affff
	.2byte 0x0422
	.4byte ..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1150-..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1147
	.2byte 0x04c3
	.4byte ..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1151-..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1150
	.2byte 0x04cc
	.4byte ..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1152-..___tag_value__ZrsRSiRN2Vc5LRBni6VectorIfEE.1151
	.8byte 0x00000000c608070c
	.byte 0x00
	.4byte 0x00000124
	.4byte 0x0000067c
	.8byte ..___tag_value__Z11WriteOutputv.1162
	.8byte ..___tag_value__Z11WriteOutputv.1528-..___tag_value__Z11WriteOutputv.1162
	.byte 0x08
	.8byte _Z11WriteOutputv$$LSDA
	.byte 0x04
	.4byte ..___tag_value__Z11WriteOutputv.1164-..___tag_value__Z11WriteOutputv.1162
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__Z11WriteOutputv.1165-..___tag_value__Z11WriteOutputv.1164
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__Z11WriteOutputv.1167-..___tag_value__Z11WriteOutputv.1165
	.8byte 0xffc00d1c380e0c10
	.8byte 0xfffffff80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z11WriteOutputv.1168-..___tag_value__Z11WriteOutputv.1167
	.8byte 0xffc00d1c380e0d10
	.8byte 0xfffffff00d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z11WriteOutputv.1169-..___tag_value__Z11WriteOutputv.1168
	.8byte 0xffc00d1c380e0e10
	.8byte 0xffffffe80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z11WriteOutputv.1170-..___tag_value__Z11WriteOutputv.1169
	.8byte 0xffc00d1c380e0f10
	.8byte 0xffffffe00d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z11WriteOutputv.1171-..___tag_value__Z11WriteOutputv.1170
	.8byte 0xffc00d1c380e0310
	.8byte 0xffffffd80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z11WriteOutputv.1391-..___tag_value__Z11WriteOutputv.1171
	.2byte 0x04c3
	.4byte ..___tag_value__Z11WriteOutputv.1393-..___tag_value__Z11WriteOutputv.1391
	.2byte 0x04cf
	.4byte ..___tag_value__Z11WriteOutputv.1394-..___tag_value__Z11WriteOutputv.1393
	.2byte 0x04ce
	.4byte ..___tag_value__Z11WriteOutputv.1395-..___tag_value__Z11WriteOutputv.1394
	.2byte 0x04cd
	.4byte ..___tag_value__Z11WriteOutputv.1396-..___tag_value__Z11WriteOutputv.1395
	.2byte 0x04cc
	.4byte ..___tag_value__Z11WriteOutputv.1397-..___tag_value__Z11WriteOutputv.1396
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value__Z11WriteOutputv.1399-..___tag_value__Z11WriteOutputv.1397
	.8byte 0x1c380e031010060c
	.8byte 0xd80d1affffffc00d
	.8byte 0x0c10028622ffffff
	.8byte 0xffffffc00d1c380e
	.8byte 0x1022fffffff80d1a
	.8byte 0xffffc00d1c380e0d
	.8byte 0x22fffffff00d1aff
	.8byte 0xffc00d1c380e0e10
	.8byte 0xffffffe80d1affff
	.8byte 0xc00d1c380e0f1022
	.8byte 0xffffe00d1affffff
	.4byte 0x000022ff
	.4byte 0x00000044
	.4byte 0x000007a4
	.8byte ..___tag_value___sti__$E.1535
	.8byte ..___tag_value___sti__$E.1568-..___tag_value___sti__$E.1535
	.byte 0x08
	.8byte __sti__$E$$LSDA
	.byte 0x04
	.4byte ..___tag_value___sti__$E.1537-..___tag_value___sti__$E.1535
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value___sti__$E.1538-..___tag_value___sti__$E.1537
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value___sti__$E.1558-..___tag_value___sti__$E.1538
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value___sti__$E.1560-..___tag_value___sti__$E.1558
	.8byte 0x000000028610060c
	.4byte 0x0000004c
	.4byte 0x000007cc
	.8byte ..___tag_value__ZN9Stopwatch5StartEi.1573
	.8byte ..___tag_value__ZN9Stopwatch5StartEi.1582-..___tag_value__ZN9Stopwatch5StartEi.1573
	.2byte 0x0400
	.4byte ..___tag_value__ZN9Stopwatch5StartEi.1575-..___tag_value__ZN9Stopwatch5StartEi.1573
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__ZN9Stopwatch5StartEi.1576-..___tag_value__ZN9Stopwatch5StartEi.1575
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__ZN9Stopwatch5StartEi.1578-..___tag_value__ZN9Stopwatch5StartEi.1576
	.8byte 0xffc00d1c380e0f10
	.8byte 0xfffffff80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__ZN9Stopwatch5StartEi.1579-..___tag_value__ZN9Stopwatch5StartEi.1578
	.2byte 0x04cf
	.4byte ..___tag_value__ZN9Stopwatch5StartEi.1580-..___tag_value__ZN9Stopwatch5StartEi.1579
	.4byte 0xc608070c
	.byte 0x00
	.4byte 0x000000bc
	.4byte 0x0000081c
	.8byte ..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1583
	.8byte ..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1600-..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1583
	.2byte 0x0400
	.4byte ..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1585-..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1583
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1586-..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1585
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1588-..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1586
	.8byte 0xffc00d1c380e0c10
	.8byte 0xfffffff80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1589-..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1588
	.8byte 0xffc00d1c380e0d10
	.8byte 0xfffffff00d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1590-..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1589
	.8byte 0xffc00d1c380e0e10
	.8byte 0xffffffe80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1591-..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1590
	.8byte 0xffc00d1c380e0f10
	.8byte 0xffffffe00d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1592-..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1591
	.8byte 0xffc00d1c380e0310
	.8byte 0xffffffd80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1593-..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1592
	.2byte 0x04c3
	.4byte ..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1594-..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1593
	.2byte 0x04cf
	.4byte ..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1595-..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1594
	.2byte 0x04ce
	.4byte ..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1596-..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1595
	.2byte 0x04cd
	.4byte ..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1597-..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1596
	.2byte 0x04cc
	.4byte ..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1598-..___tag_value__Z6FilterR6TrackVR7HitInfoRN2Vc5LRBni6VectorIfEES7_.1597
	.4byte 0xc608070c
	.byte 0x00
	.4byte 0x00000084
	.4byte 0x000008dc
	.8byte ..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1601
	.8byte ..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1618-..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1601
	.2byte 0x0400
	.4byte ..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1603-..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1601
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1604-..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1603
	.4byte 0x8310030c
	.2byte 0x0402
	.4byte ..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1606-..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1604
	.4byte 0x76020610
	.2byte 0x0400
	.4byte ..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1607-..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1606
	.4byte 0x76020d10
	.2byte 0x0450
	.4byte ..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1608-..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1607
	.4byte 0x76020f10
	.2byte 0x0440
	.4byte ..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1609-..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1608
	.4byte 0x76020e10
	.2byte 0x0448
	.4byte ..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1610-..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1609
	.4byte 0x76020c10
	.2byte 0x0458
	.4byte ..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1611-..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1610
	.2byte 0x04ce
	.4byte ..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1612-..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1611
	.2byte 0x04cf
	.4byte ..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1613-..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1612
	.2byte 0x04cd
	.4byte ..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1614-..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1613
	.2byte 0x04cc
	.4byte ..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1615-..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1614
	.2byte 0x04c6
	.4byte ..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1616-..___tag_value__Z17ExtrapolateALightPN2Vc5LRBni6VectorIfEER4CovVRKS2_RS2_R11FieldRegion.1615
	.8byte 0x00000000c308070c
	.byte 0x00
# End
