Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P0r6m-0004Yb-GG
	for barebox@lists.infradead.org; Wed, 29 Sep 2010 07:29:45 +0000
Date: Wed, 29 Sep 2010 09:29:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100929072942.GD23406@pengutronix.de>
References: <1285567954-1394-1-git-send-email-plagnioj@jcrosoft.com>
	<20100927143508.GY23406@pengutronix.de>
	<20100927160229.GI2111@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100927160229.GI2111@game.jcrosoft.org>
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
Subject: Re: [PATCH v2] MAKEALL: make it generic
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi J,

On Mon, Sep 27, 2010 at 06:02:29PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 16:35 Mon 27 Sep     , Sascha Hauer wrote:
> > On Mon, Sep 27, 2010 at 08:12:34AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > add MAKEALL.cfg example
> > > 
> > > it's allow you to compile specific defconfig or ARCH or all
> > > as
> > > CROSS_COMPILE=arm-linux- ARCH=arm ./MAKEALL at91sam9263ek_defconfig
> > > CROSS_COMPILE=arm-linux- ARCH=arm ./MAKEALL
> > > 
> > > or via config
> > > 
> > > CONFIG=./MAKEALL.cfg ARCH=arm ./MAKEALL at91sam9263ek_defconfig
> > > CONFIG=./MAKEALL.cfg ARCH=arm ./MAKEALL
> > > 
> > > and for all
> > > 
> > > CONFIG=./MAKEALL.cfg ./MAKEALL
> > > 
> > > you can specify
> > > JOBS            jobs
> > > BUILDDIR        build dir
> > > LOGDIR          log dir
> > 
> > Would be good to have this example somewhere in the code, maybe as help
> > text in MAKEALL
> MAKEALL -h is ok?

Yes, -h and if called without arguments.

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
