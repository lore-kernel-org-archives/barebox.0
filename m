Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WiIvs-0004eI-Ew
 for barebox@lists.infradead.org; Thu, 08 May 2014 07:39:57 +0000
Date: Thu, 8 May 2014 09:39:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140508073934.GM5858@pengutronix.de>
References: <1398671161-29045-1-git-send-email-s.hauer@pengutronix.de>
 <1399305468.375736044@f93.i.mail.ru>
 <20140505174816.GY5858@pengutronix.de>
 <1399312884.186724143@f370.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1399312884.186724143@f370.i.mail.ru>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Add Linux dts files and use them
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, May 05, 2014 at 10:01:24PM +0400, Alexander Shiyan wrote:
> > #include <arm/imx25-karo-tx25.dts>
> > 
> > Then everything will be used from the upstream dts files. Additional
> > barebox specific stuff can be added to that file, like the environment
> > description.
> > With i.MX25 it happened that we also need SoC specific updates like for
> > example the iram which is not mainline. So we need a second line in
> > arch/arm/dts/imx25-karo-tx25.dts:
> > 
> > #include "imx25.dtsi"
> > 
> > The goal should be to mainline the SoC specific stuff so that imx25.dtsi
> > can be dropped, but I think we need the possibility to have SoC specific
> > barebox changes.
> 
> OK. Will move in this direction.
> 
> PS: As a start I see all arch/arm/dts/*-pinfunc.h could be removed now.

Yes, indeed, I removed them.

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
