Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TMbNB-0006Tx-DU
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 09:17:38 +0000
Received: from mail413.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id EC18410501DC
 for <barebox@lists.infradead.org>; Fri, 12 Oct 2012 11:24:03 +0200 (CEST)
Date: Fri, 12 Oct 2012 11:15:08 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121012091508.GD13639@game.jcrosoft.org>
References: <20121012040621.GA3300@greatfirst.com>
 <20121012085133.GP27665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121012085133.GP27665@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On 10:51 Fri 12 Oct     , Sascha Hauer wrote:
> On Fri, Oct 12, 2012 at 12:06:21PM +0800, zzs wrote:
> > my src is f9df22b002af99532b66360e08128e
> > 
> > now config it:
> >     CROSS_COMPILE= ARCH=sandbox make sandbox_defconfig
> > 
> > Then add the the flowwing line in front of include/common.h
> > 
> >     #define DEBUG
> > 
> > and run "CROSS_COMPILE= ARCH=sandbox make", this command output
> > the flowwing message:
> > 
> > --------------------------------------
> >   CC      common/meminfo.o
> > common/meminfo.c: In function 'display_meminfo':
> > common/meminfo.c:12:49: error: '_stext' undeclared (first use in this function)
> > common/meminfo.c:12:49: note: each undeclared identifier is reported only once for each function it appears in
> > common/meminfo.c:12:57: error: '_etext' undeclared (first use in this function)
> > common/meminfo.c:13:49: error: '__bss_start' undeclared (first use in this function)
> > common/meminfo.c:13:62: error: '__bss_stop' undeclared (first use in this function)
> > make[1]: *** [common/meminfo.o] Error 1
> > make: *** [common] Error 2
> 
> This is because ./arch/sandbox/board/barebox.lds.S is missing these
> variables. I don't know how much sense it makes to add these. You could
> just try and add them as done in the other linker scripts.
> 
> This is a bug in the sense that you should be able to compile with DEBUG
> defined, but otherwise you can just comment the lines out and ignore
> this. It will have no bad effect on the resulting binary

on sandbox we should ignore this as the lds is based on the gcc one
and we just insert section inside

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
