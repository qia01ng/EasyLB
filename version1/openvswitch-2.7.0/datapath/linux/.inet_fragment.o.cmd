cmd_/home/tank/flowlet/version1/openvswitch-2.7.0/datapath/linux/inet_fragment.o := gcc -Wp,-MD,/home/tank/flowlet/version1/openvswitch-2.7.0/datapath/linux/.inet_fragment.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/5/include -I/home/tank/flowlet/version1/openvswitch-2.7.0/include -I/home/tank/flowlet/version1/openvswitch-2.7.0/datapath/linux/compat -I/home/tank/flowlet/version1/openvswitch-2.7.0/datapath/linux/compat/include  -I./arch/x86/include -Iarch/x86/include/generated/uapi -Iarch/x86/include/generated  -Iinclude -I./arch/x86/include/uapi -Iarch/x86/include/generated/uapi -I./include/uapi -Iinclude/generated/uapi -include ./include/linux/kconfig.h -Iubuntu/include  -D__KERNEL__ -fno-pie -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -fno-pie -no-pie -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -m64 -falign-jumps=1 -falign-loops=1 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup -mtune=generic -mno-red-zone -mcmodel=kernel -funit-at-a-time -maccumulate-outgoing-args -DCONFIG_X86_X32_ABI -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1 -DCONFIG_AS_FXSAVEQ=1 -DCONFIG_AS_SSSE3=1 -DCONFIG_AS_CRC32=1 -DCONFIG_AS_AVX=1 -DCONFIG_AS_AVX2=1 -DCONFIG_AS_SHA1_NI=1 -DCONFIG_AS_SHA256_NI=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -mindirect-branch=thunk-extern -mindirect-branch-register -DRETPOLINE -fno-delete-null-pointer-checks -Wno-maybe-uninitialized -O2 --param=allow-store-data-races=0 -DCC_HAVE_ASM_GOTO -Wframe-larger-than=1024 -fstack-protector-strong -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -pg -mfentry -DCC_USING_FENTRY -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -DVERSION=\"2.7.0\" -I/home/tank/flowlet/version1/openvswitch-2.7.0/datapath/linux/.. -I/home/tank/flowlet/version1/openvswitch-2.7.0/datapath/linux/.. -g -include /home/tank/flowlet/version1/openvswitch-2.7.0/datapath/linux/kcompat.h  -DMODULE  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(inet_fragment)"  -D"KBUILD_MODNAME=KBUILD_STR(openvswitch)" -c -o /home/tank/flowlet/version1/openvswitch-2.7.0/datapath/linux/.tmp_inet_fragment.o /home/tank/flowlet/version1/openvswitch-2.7.0/datapath/linux/inet_fragment.c

source_/home/tank/flowlet/version1/openvswitch-2.7.0/datapath/linux/inet_fragment.o := /home/tank/flowlet/version1/openvswitch-2.7.0/datapath/linux/inet_fragment.c

deps_/home/tank/flowlet/version1/openvswitch-2.7.0/datapath/linux/inet_fragment.o := \
  /home/tank/flowlet/version1/openvswitch-2.7.0/datapath/linux/kcompat.h \
  include/generated/uapi/linux/version.h \

/home/tank/flowlet/version1/openvswitch-2.7.0/datapath/linux/inet_fragment.o: $(deps_/home/tank/flowlet/version1/openvswitch-2.7.0/datapath/linux/inet_fragment.o)

$(deps_/home/tank/flowlet/version1/openvswitch-2.7.0/datapath/linux/inet_fragment.o):
