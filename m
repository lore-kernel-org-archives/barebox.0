Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QDIWX-0001zw-TD
	for barebox@lists.infradead.org; Fri, 22 Apr 2011 15:44:03 +0000
Received: by iyb39 with SMTP id 39so685936iyb.36
	for <barebox@lists.infradead.org>; Fri, 22 Apr 2011 08:43:59 -0700 (PDT)
MIME-Version: 1.0
From: MJ <mjainp@gmail.com>
Date: Fri, 22 Apr 2011 21:13:39 +0530
Message-ID: <BANLkTik_geZ4hpcXTdN81DEgcOeqRZT8UA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Sandbox Segfaults
To: barebox@lists.infradead.org

Hi,

I was trying sandbox for x86 host machine from latest git repo of
barebox (master branch) and it segfaults when ran with following
command line arguments,

./barebox -e env.bin -i cramfs.bin

I have read initial documentation to create env.bin and small
filesystem. Attached is patch that fixes segfault problem but is not
helpful in creating environment and mounting filesystem.

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 38a52a8..52212f7 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -107,7 +107,8 @@ int barebox_register_filedev(struct hf_platform_data *hf)

        dev->platform_data = hf;

-       strcpy(dev->name, "hostfile");
+       /* Registering 2 devices with same name creates problem? */
+       strcpy(dev->name, hf->filename);
        dev->size = hf->size;
        dev->map_base = hf->map_base;


Strace log for problem
=================

execve("./barebox", ["./barebox", "-e", "env.bin", "-i",
"cramfs.bin"], [/* 22 vars */]) = 0
brk(0)                                  = 0x216d1000
access("/etc/ld.so.nohwcap", F_OK)      = -1 ENOENT (No such file or directory)
mmap2(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1,
0) = 0xa3f000
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (No such file or directory)
open("/etc/ld.so.cache", O_RDONLY)      = 3
fstat64(3, {st_mode=S_IFREG|0644, st_size=61576, ...}) = 0
mmap2(NULL, 61576, PROT_READ, MAP_PRIVATE, 3, 0) = 0x141000
close(3)                                = 0
access("/etc/ld.so.nohwcap", F_OK)      = -1 ENOENT (No such file or directory)
open("/lib/tls/i686/cmov/librt.so.1", O_RDONLY) = 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\300\30\0\0004\0\0\0"...,
512) = 512
fstat64(3, {st_mode=S_IFREG|0644, st_size=30684, ...}) = 0
mmap2(NULL, 33364, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3,
0) = 0xe49000
mmap2(0xe50000, 8192, PROT_READ|PROT_WRITE,
MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x6) = 0xe50000
close(3)                                = 0
access("/etc/ld.so.nohwcap", F_OK)      = -1 ENOENT (No such file or directory)
open("/lib/tls/i686/cmov/libpthread.so.0", O_RDONLY) = 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0
J\0\0004\0\0\0"..., 512) = 512
fstat64(3, {st_mode=S_IFREG|0755, st_size=117086, ...}) = 0
mmap2(NULL, 98792, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3,
0) = 0x4cb000
mmap2(0x4e0000, 8192, PROT_READ|PROT_WRITE,
MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x14) = 0x4e0000
mmap2(0x4e2000, 4584, PROT_READ|PROT_WRITE,
MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x4e2000
close(3)                                = 0
access("/etc/ld.so.nohwcap", F_OK)      = -1 ENOENT (No such file or directory)
open("/lib/tls/i686/cmov/libc.so.6", O_RDONLY) = 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0000m\1\0004\0\0\0"...,
512) = 512
fstat64(3, {st_mode=S_IFREG|0755, st_size=1405508, ...}) = 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1,
0) = 0xbad000
mmap2(NULL, 1415592, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE,
3, 0) = 0x28e000
mprotect(0x3e1000, 4096, PROT_NONE)     = 0
mmap2(0x3e2000, 12288, PROT_READ|PROT_WRITE,
MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x153) = 0x3e2000
mmap2(0x3e5000, 10664, PROT_READ|PROT_WRITE,
MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x3e5000
close(3)                                = 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1,
0) = 0xbda000
set_thread_area({entry_number:-1 -> 6, base_addr:0xbda6c0,
limit:1048575, seg_32bit:1, contents:0, read_exec_only:0,
limit_in_pages:1, seg_not_present:0, useable:1}) = 0
mprotect(0x3e2000, 8192, PROT_READ)     = 0
mprotect(0x4e0000, 4096, PROT_READ)     = 0
mprotect(0xe50000, 4096, PROT_READ)     = 0
mprotect(0x28c000, 4096, PROT_READ)     = 0
munmap(0x141000, 61576)                 = 0
set_tid_address(0xbda728)               = 9951
set_robust_list(0xbda730, 0xc)          = 0
futex(0xbf9bb9c0, FUTEX_WAKE_PRIVATE, 1) = 0
futex(0xbf9bb9c0, FUTEX_WAIT_BITSET_PRIVATE|FUTEX_CLOCK_REALTIME, 1,
NULL, bf9bb9d0) = -1 EAGAIN (Resource temporarily unavailable)
rt_sigaction(SIGRTMIN, {0x4cf410, [], SA_SIGINFO}, NULL, 8) = 0
rt_sigaction(SIGRT_1, {0x4cf8f0, [], SA_RESTART|SA_SIGINFO}, NULL, 8) = 0
rt_sigprocmask(SIG_UNBLOCK, [RTMIN RT_1], NULL, 8) = 0
getrlimit(RLIMIT_STACK, {rlim_cur=8192*1024, rlim_max=RLIM_INFINITY}) = 0
uname({sys="Linux", node="mjain-laptop", ...}) = 0
mmap2(NULL, 8392704, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS,
-1, 0) = 0xe52000
brk(0)                                  = 0x216d1000
brk(0x216f2000)                         = 0x216f2000
fstat64(1, {st_mode=S_IFCHR|0600, st_rdev=makedev(136, 0), ...}) = 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1,
0) = 0xa0c000
write(1, "add file env.bin()\n", 19add file env.bin()
)    = 19
open("env.bin", O_RDWR)                 = 3
fstat64(3, {st_mode=S_IFREG|0644, st_size=65536, ...}) = 0
mmap2(NULL, 65536, PROT_READ|PROT_WRITE, MAP_SHARED, 3, 0) = 0x110000
write(1, "add file cramfs.bin()\n", 22add file cramfs.bin()
) = 22
open("cramfs.bin", O_RDWR)              = 4
fstat64(4, {st_mode=S_IFREG|0644, st_size=4096, ...}) = 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_SHARED, 4, 0) = 0x120000
--- SIGSEGV (Segmentation fault) @ 0 (0) ---
+++ killed by SIGSEGV +++
Segmentation fault


I would appreciate any kind help offered.

Thanks,
MJ

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
