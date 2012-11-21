Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo1.mail-out.ovh.net ([188.165.38.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tb6KC-00014j-PX
 for barebox@lists.infradead.org; Wed, 21 Nov 2012 09:10:30 +0000
Received: from mail174.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id DD36EFF9E8C
 for <barebox@lists.infradead.org>; Wed, 21 Nov 2012 10:21:44 +0100 (CET)
Date: Wed, 21 Nov 2012 10:06:25 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121121090625.GN8327@game.jcrosoft.org>
References: <87boesdjk4.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87boesdjk4.fsf@free.fr>
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
Subject: Re: bmp splash memory corruption
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On 22:57 Tue 20 Nov     , Robert Jarzmik wrote:
> Hi Jean-Christophe,
try the replied patch
> 
> I'm having another bmp memory corruption, could you have a look at this too :
> (gdb) bt
> #0  free (mem=0xa3026688) at common/dlmalloc.c:1362
> #1  0xa3f242a4 in image_renderer_close (img=0xa2fa5228) at lib/gui/image_renderer.c:69
> #2  0xa3f18ea0 in image_renderer_file (argc=2, argv=<value optimized out>) at include/gui/image_renderer.h:69
> #3  do_splash (argc=2, argv=<value optimized out>) at commands/splash.c:70
> #4  0xa3f05b2c in execute_command (argc=2, argv=0xa2fa4968) at common/command.c:77
> #5  0xa3f01964 in run_pipe_real (ctx=0xa2effda8, pi=0xa2fa4288) at common/hush.c:790
> #6  run_list_real (ctx=0xa2effda8, pi=0xa2fa4288) at common/hush.c:914
> #7  0xa3f01bfc in run_list (ctx=0xa2effda8, inp=0xa2effd7c, flag=2) at common/hush.c:1033
> #8  parse_stream_outer (ctx=0xa2effda8, inp=0xa2effd7c, flag=2) at common/hush.c:1618
> #9  0xa3f01d80 in parse_string_outer (ctx=0xa2effda8, 
>     s=0xa2f01890 "#!/bin/sh\n\nPATH=/env/bin\nexport PATH\n\n. /env/config\naddpart /dev/mtd0 $mtdparts\n\nusbserial -s \"Mio A701 usb gadget\"\nled keyboard 0\n\nsdcard_override\n\nfb0.enable=1\nsplash /dev/mtd0.barebox-logo\n\nmtd_env"..., flag=2) at common/hush.c:1662
> #10 0xa3f01e24 in source_script (path=<value optimized out>, argc=<value optimized out>, argv=<value optimized out>) at common/hush.c:1815
> #11 0xa3f01fdc in do_source (argc=2, argv=<value optimized out>) at common/hush.c:1877
> #12 0xa3f05b2c in execute_command (argc=2, argv=0xa2f01708) at common/command.c:77
> #13 0xa3f01964 in run_pipe_real (ctx=0xa2efff58, pi=0xa2f0ffc8) at common/hush.c:790
> #14 run_list_real (ctx=0xa2efff58, pi=0xa2f0ffc8) at common/hush.c:914
> #15 0xa3f01bfc in run_list (ctx=0xa2efff58, inp=0xa2efff2c, flag=2) at common/hush.c:1033
> #16 parse_stream_outer (ctx=0xa2efff58, inp=0xa2efff2c, flag=2) at common/hush.c:1618
> #17 0xa3f01d80 in parse_string_outer (ctx=0xa2efff58, s=0xa3f3477a "source /env/bin/init", flag=2) at common/hush.c:1662
> #18 0xa3f01eb8 in run_command (cmd=0xa2f7b7fe "\377\377", flag=<value optimized out>) at common/hush.c:1783
> #19 0xa3f07428 in start_barebox () at common/startup.c:124
> #20 0xa3f33158 in board_init_lowlevel_return () at arch/arm/cpu/start.c:62
> 
> (gdb) p *p
> $10 = {prev_size = 15, size = 2750562700, fd = 0xa3f24184, bk = 0xa3f23f24}
> (gdb) p/x p->size
> $11 = 0xa3f2418c
> (gdb) p bmp_open
> $12 = {struct image *(char *, int)} 0xa3f2418c <bmp_open>
> 
> As you can see here, p->size equals bmp_open(), while p is the
> mem2chunk(mem). This _seems_ to imply that the memchunk headers were somehow
> corrupted by bmp_open address ... hence my mail to see if that rings a bell to
> you.
> 
> Cheers.
> 
> -- 
> Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
