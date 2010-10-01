Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P1io0-0000Kt-La
	for barebox@lists.infradead.org; Fri, 01 Oct 2010 16:49:58 +0000
Date: Fri, 1 Oct 2010 18:48:11 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101001164811.GF25320@game.jcrosoft.org>
References: <1285567954-1394-1-git-send-email-plagnioj@jcrosoft.com>
	<1285903152-5840-1-git-send-email-plagnioj@jcrosoft.com>
	<20101001071618.GA28242@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101001071618.GA28242@pengutronix.de>
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
Subject: Re: [PATCH v3] MAKEALL: make it generic
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:16 Fri 01 Oct     , Sascha Hauer wrote:
> On Fri, Oct 01, 2010 at 05:19:12AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > it's allow you to compile specific defconfig or ARCH or all
> > as
> > 
> > CROSS_COMPILE=arm-linux- ARCH=arm ./MAKEALL at91sam9263ek_defconfig
> > CROSS_COMPILE=arm-linux- ARCH=arm ./MAKEALL
> > 
> > The cross-compiler can be specify via
> >     CROSS_COMPILE               default
> >     CROSS_COMPILE_<arch>        arch default
> >     CROSS_COMPILE_<target>      deconfig specifc
> > 
> > it will be evaluated in the invert order
> > 
> > or via config
> > 
> > you can specify it via env CONFIG or option -c (overwrite env)
> > 
> > CONFIG=./MAKEALL.cfg ARCH=arm ./MAKEALL at91sam9263ek_defconfig
> > CONFIG=./MAKEALL.cfg ARCH=arm ./MAKEALL
> > 
> > and for all
> > 
> > CONFIG=./MAKEALL.cfg ./MAKEALL
> > 
> > you can specify via env or option
> > env       option
> > ARCH      -a      arch
> > CONFIG    -c      config
> > JOBS      -j      jobs
> > BUILDDIR  -O      build dir
> > LOGDIR    -l      log dir
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> > v3:
> > add getopts supports
> > 
> > add usage support
> > 
> > Best Rebards,
> > J.
> >  MAKEALL |  286 ++++++++++++++++++++++++++++++++++++++++++++++++++-------------
> >  1 files changed, 227 insertions(+), 59 deletions(-)
> > 
> > diff --git a/MAKEALL b/MAKEALL
> > index dd0f66b..d42be6e 100755
> > --- a/MAKEALL
> > +++ b/MAKEALL
> > @@ -1,89 +1,257 @@
> > -#!/bin/bash
> > +#!/bin/sh
> 
> With /bin/sh here ./MAKEALL -c MAKEALL.cfg does not work. I have to
> explicitely call ./MAKEALL -c ./MAKEALL.cfg. Can we keep /bin/bash here
> or has anybody a better idea?

I found the them issue and how to fix it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
