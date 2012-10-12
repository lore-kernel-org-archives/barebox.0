Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-112.126.com ([220.181.15.112])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TMWWX-0008Kf-8w
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 04:07:01 +0000
Date: Fri, 12 Oct 2012 12:06:21 +0800
From: zzs <zzs213@126.com>
Message-ID: <20121012040621.GA3300@greatfirst.com>
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
Subject: error building sandbox with debug on
To: barebox <barebox@lists.infradead.org>

my src is f9df22b002af99532b66360e08128e

now config it:
    CROSS_COMPILE= ARCH=sandbox make sandbox_defconfig

Then add the the flowwing line in front of include/common.h

    #define DEBUG

and run "CROSS_COMPILE= ARCH=sandbox make", this command output
the flowwing message:

--------------------------------------
  CC      common/meminfo.o
common/meminfo.c: In function 'display_meminfo':
common/meminfo.c:12:49: error: '_stext' undeclared (first use in this function)
common/meminfo.c:12:49: note: each undeclared identifier is reported only once for each function it appears in
common/meminfo.c:12:57: error: '_etext' undeclared (first use in this function)
common/meminfo.c:13:49: error: '__bss_start' undeclared (first use in this function)
common/meminfo.c:13:62: error: '__bss_stop' undeclared (first use in this function)
make[1]: *** [common/meminfo.o] Error 1
make: *** [common] Error 2
--------------------------------------

is this a bug?

-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
