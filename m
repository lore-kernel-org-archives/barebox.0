Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TV4OY-0005mR-8o
 for barebox@lists.infradead.org; Sun, 04 Nov 2012 17:54:04 +0000
Received: from beldin (unknown [IPv6:2a01:e35:2f37:a360:bdc2:bfed:6e53:2b33])
 by smtp1-g21.free.fr (Postfix) with ESMTP id D6843940139
 for <barebox@lists.infradead.org>; Sun,  4 Nov 2012 18:53:52 +0100 (CET)
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sun, 04 Nov 2012 18:53:51 +0100
Message-ID: <87zk2xuuds.fsf@free.fr>
MIME-Version: 1.0
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
Subject: Ramfs and NULL pointer
To: barebox@lists.infradead.org

Hi there,

Lately, I see null pointer dereferences in barebox.
I traced the culprit to ramfs ...
From what I've seen, the inodes list is a bit ... weird ... especially the last
item in the list contains null pointers ...

I wonder if anybody sees such an effect ...
My board (arm/mioa701) has not changed much wrt the environment embedded ... The
only thing I did lately was to rebase against "next" branch.

I joined my debugging session at the end to show my problem. The rjk_abort()
function was introduced for breakpoint purpose only.

If anybody has any clue please tell me.

Cheers.

--
Robert

#0  rjk_abort () at lib/string.c:144
#1  0xa3f19a10 in strcmp (cs=0x0, ct=0xa3025c99 "env") at lib/string.c:157
#2  0xa3f28758 in lookup (priv=<value optimized out>, path=<value optimized out>) at fs/ramfs.c:72
#3  rlookup (priv=<value optimized out>, path=<value optimized out>) at fs/ramfs.c:95
#4  0xa3f287a0 in ramfs_stat (dev=<value optimized out>, filename=0xa3025c99 "env", s=0x2e) at fs/ramfs.c:549
#5  0xa3f2d8a4 in lstat (filename=<value optimized out>, s=0xa2effb10) at fs/fs.c:1412
#6  0xa3f2e10c in realfile (pathname=<value optimized out>, s=0xa2effb10) at fs/fs.c:582
#7  0xa3f2e2cc in open (pathname=0x0, flags=0) at fs/fs.c:624
#8  0xa3f2e508 in read_file (filename=0xa2f55220 "/env/bin/mtd_env_override", size=0x0) at fs/fs.c:47
#9  0xa3f01dfc in source_script (path=0x0, argc=<value optimized out>, argv=0xfffffff2) at common/hush.c:1809
#10 0xa3f01e80 in execute_script (path=0xa2f55220 "/env/bin/mtd_env_override", argc=1, argv=0xa2fa5668) at common/hush.c:1794
#11 0xa3f00140 in binfmt_run (file=0xa2f55220 "/env/bin/mtd_env_override", argc=1, argv=0xa2fa5668) at common/binfmt.c:26
#12 0xa3f001cc in execute_binfmt (argc=1, argv=0xa2fa5668) at common/binfmt.c:65
#13 0xa3f01964 in run_pipe_real (ctx=0xa2effda8, pi=0xa2fa5028) at common/hush.c:790
#14 run_list_real (ctx=0xa2effda8, pi=0xa2fa5028) at common/hush.c:914
#15 0xa3f01bfc in run_list (ctx=0xa2effda8, inp=0xa2effd7c, flag=2) at common/hush.c:1033
#16 parse_stream_outer (ctx=0xa2effda8, inp=0xa2effd7c, flag=2) at common/hush.c:1618
#17 0xa3f01d80 in parse_string_outer (ctx=0xa2effda8, 
    s=0xa2f015a0 "#!/bin/sh\n\nPATH=/env/bin\nexport PATH\n\n. /env/config\naddpart /dev/mtd0 $mtdparts\n\nusbserial -s \"Mio A701 usb gadget\"\nled keyboard 0\n\nsdcard_override\n\nfb0.enable=1\nsplash /dev/mtd0.barebox-logo\n\nmtd_env"..., flag=2) at common/hush.c:1662
#18 0xa3f01e24 in source_script (path=<value optimized out>, argc=<value optimized out>, argv=<value optimized out>) at common/hush.c:1815
#19 0xa3f01fdc in do_source (argc=2, argv=<value optimized out>) at common/hush.c:1877
#20 0xa3f05b2c in execute_command (argc=2, argv=0xa2f01530) at common/command.c:77
#21 0xa3f01964 in run_pipe_real (ctx=0xa2efff58, pi=0xa2f0fe10) at common/hush.c:790
#22 run_list_real (ctx=0xa2efff58, pi=0xa2f0fe10) at common/hush.c:914
#23 0xa3f01bfc in run_list (ctx=0xa2efff58, inp=0xa2efff2c, flag=2) at common/hush.c:1033
#24 parse_stream_outer (ctx=0xa2efff58, inp=0xa2efff2c, flag=2) at common/hush.c:1618
#25 0xa3f01d80 in parse_string_outer (ctx=0xa2efff58, s=0xa3f31bda "source /env/bin/init", flag=2) at common/hush.c:1662
#26 0xa3f01eb8 in run_command (cmd=0x0, flag=<value optimized out>) at common/hush.c:1783
#27 0xa3f073a0 in start_barebox () at common/startup.c:124
#28 0xa3f305b8 in board_init_lowlevel_return () at arch/arm/cpu/start.c:62
Backtrace stopped: frame did not save the PC

(gdb) up
#5  0xa3f2d8a4 in lstat (filename=<value optimized out>, s=0xa2effb10) at fs/fs.c:1412
1412		ret = fsdrv->stat(dev, f, s);
(gdb) p dev
$14 = (struct device_d *) 0xa2f00644
(gdb) p *dev
$15 = {name = "ramfs", '\000' <repeats 26 times>, id = 0, resource = 0x0, num_resources = 0, platform_data = 0x0, priv = 0xa2f00708, type_data = 0x0, driver = 0xa3f3b2dc, list = {
    next = 0xa2f00cd8, prev = 0xa2f004f4}, bus_list = {next = 0xa2f00ce0, prev = 0xa3f3b464}, children = {next = 0xa2f00690, prev = 0xa2f00690}, sibling = {next = 0x0, prev = 0x0}, active = {
    next = 0xa3f3a658, prev = 0xa2f00cf8}, parent = 0x0, bus = 0xa3f3b44c, parameters = {next = 0xa2f006b0, prev = 0xa2f006b0}, cdevs = {next = 0xa2f006b8, prev = 0xa2f006b8}, id_entry = 0x0, 
  device_node = 0x0, of_id_entry = 0x0}

(gdb) p *(struct ramfs_node *)0xa2f00738
No struct type named ramfs_node.
(gdb) p *(struct ramfs_inode *)0xa2f00738
$19 = {name = 0xa2f00768 ".", parent = 0xa2f00708, next = 0xa2f00778, child = 0xa2f00738, symlink = 0x0, mode = 16384, handle = 0x0, size = 0, data = 0x0, recent_chunk = 0, 
  recent_chunkp = 0x0}
(gdb) p *(struct ramfs_inode *)Quitf00738
(gdb) p *(struct ramfs_inode *)0xa2f00738
$20 = {name = 0xa2f00768 ".", parent = 0xa2f00708, next = 0xa2f00778, child = 0xa2f00738, symlink = 0x0, mode = 16384, handle = 0x0, size = 0, data = 0x0, recent_chunk = 0, 
  recent_chunkp = 0x0}
(gdb) p *(struct ramfs_inode *)0xa2f00778
$21 = {name = 0xa2f007a8 "..", parent = 0xa2f00708, next = 0xa2f007c8, child = 0xa2f00738, symlink = 0x0, mode = 16895, handle = 0x0, size = 0, data = 0x0, recent_chunk = 0, 
  recent_chunkp = 0x0}
(gdb) p *(struct ramfs_inode *)0xa2f007c8
$22 = {name = 0x0, parent = 0x0, next = 0x0, child = 0x0, symlink = 0x0, mode = 0, handle = 0x0, size = 0, data = 0x0, recent_chunk = 0, recent_chunkp = 0x0}
(gdb) p *(struct ramfs_inode *)0xa2f00738
$23 = {name = 0xa2f00768 ".", parent = 0xa2f00708, next = 0xa2f00778, child = 0xa2f00738, symlink = 0x0, mode = 16384, handle = 0x0, size = 0, data = 0x0, recent_chunk = 0, 
  recent_chunkp = 0x0}
(gdb) p *(struct ramfs_priv *)0xa2f00708
$18 = {root = {name = 0xa3f314f8 "/", parent = 0xa2f00708, next = 0x0, child = 0xa2f00738, symlink = 0x0, mode = 16895, handle = 0x0, size = 0, data = 0x0, recent_chunk = 0, 
    recent_chunkp = 0x0}}
(gdb) quit

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
