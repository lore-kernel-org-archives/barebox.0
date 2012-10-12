Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMaxz-0003wq-O9
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 08:51:36 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TMaxy-0004WQ-3g
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 10:51:34 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TMaxx-0006aE-1s
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 10:51:33 +0200
Date: Fri, 12 Oct 2012 10:51:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121012085133.GP27665@pengutronix.de>
References: <20121012040621.GA3300@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121012040621.GA3300@greatfirst.com>
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
Subject: Re: error building sandbox with debug on
To: barebox <barebox@lists.infradead.org>

On Fri, Oct 12, 2012 at 12:06:21PM +0800, zzs wrote:
> my src is f9df22b002af99532b66360e08128e
> 
> now config it:
>     CROSS_COMPILE= ARCH=sandbox make sandbox_defconfig
> 
> Then add the the flowwing line in front of include/common.h
> 
>     #define DEBUG
> 
> and run "CROSS_COMPILE= ARCH=sandbox make", this command output
> the flowwing message:
> 
> --------------------------------------
>   CC      common/meminfo.o
> common/meminfo.c: In function 'display_meminfo':
> common/meminfo.c:12:49: error: '_stext' undeclared (first use in this function)
> common/meminfo.c:12:49: note: each undeclared identifier is reported only once for each function it appears in
> common/meminfo.c:12:57: error: '_etext' undeclared (first use in this function)
> common/meminfo.c:13:49: error: '__bss_start' undeclared (first use in this function)
> common/meminfo.c:13:62: error: '__bss_stop' undeclared (first use in this function)
> make[1]: *** [common/meminfo.o] Error 1
> make: *** [common] Error 2

This is because ./arch/sandbox/board/barebox.lds.S is missing these
variables. I don't know how much sense it makes to add these. You could
just try and add them as done in the other linker scripts.

This is a bug in the sense that you should be able to compile with DEBUG
defined, but otherwise you can just comment the lines out and ignore
this. It will have no bad effect on the resulting binary.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
