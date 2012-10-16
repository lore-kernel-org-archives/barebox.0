Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-112.126.com ([220.181.15.112])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TO270-0002xV-QP
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 08:02:54 +0000
Date: Tue, 16 Oct 2012 16:02:09 +0800
From: zzs <zzs213@126.com>
Message-ID: <20121016080209.GA19402@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: sandbox whith oftree on making error
To: barebox <barebox@lists.infradead.org>

my code baseed 7423f13

when making sandox with command oftree on then I got the flowwing
build error:

CC      drivers/of/gpio.o
In file included from /home/zzs/work/repos/barebox/drivers/of/gpio.c:6:0:
/home/zzs/work/repos/barebox/include/gpio.h:4:22: fatal error: asm/gpio.h: No such file or directory
compilation terminated.
make[3]: *** [drivers/of/gpio.o] Error 1
make[2]: *** [drivers/of] Error 2
make[1]: *** [drivers] Error 2
make: *** [_all] Error 2

My building commandline like this:
    CROSS_COMPILE= ARCH=sandbox make O=objtree sandbox_defconfig
    CROSS_COMPILE= ARCH=sandbox make O=objtree xconfig
        .... turn oftree on
    CROSS_COMPILE= ARCH=sandbox make O=objtree

I think this is a bug

-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
