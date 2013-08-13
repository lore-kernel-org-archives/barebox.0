Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V99mi-0000iX-0o
 for barebox@lists.infradead.org; Tue, 13 Aug 2013 08:16:56 +0000
Date: Tue, 13 Aug 2013 10:16:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130813081633.GS26614@pengutronix.de>
References: <1376378772-25649-1-git-send-email-s.hauer@pengutronix.de>
 <20130813101215.71bb0c44@skate>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130813101215.71bb0c44@skate>
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
Subject: Re: [PATCH] cubox multi image support
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 13, 2013 at 10:12:15AM +0200, Thomas Petazzoni wrote:
> Dear Sascha Hauer,
> 
> On Tue, 13 Aug 2013 09:26:06 +0200, Sascha Hauer wrote:
> > The following converts the cubox to multi image support as a first
> > step towards merging the different mvebu ports.
> 
> Is there more background about what "multi image support" is ?

Multi image support is the mechanism for generating multiple (board- or
SoC-) specific images out of the same barebox binary. Basically it makes
it possible to have a single defconfig for all mvebu boards. Try for
example the imx_v7_defconfig, it currently builds:

 barebox-freescale-imx51-babbage.img
 barebox-genesi-efikasb.img
 barebox-freescale-imx53-loco.img
 barebox-datamodul-edm-qmx6.img
 barebox-gk802.img
 barebox-tq-tqma6s-mba6x.img
 barebox-tq-tqma6q-mba6x.img
 barebox-phytec-pbab01-2gib.img
 barebox-phytec-pbab01-1gib.img

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
