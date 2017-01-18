Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cTkLi-0004gE-PC
 for barebox@lists.infradead.org; Wed, 18 Jan 2017 07:08:05 +0000
Date: Wed, 18 Jan 2017 08:07:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170118070738.g5a7rdahunjes4jl@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
 <CAOMZO5Du=RGWT2HWRZde15oMAU5hTvwXXdphVDTB3rQ7OubacQ@mail.gmail.com>
 <20170116125820.dx7cxtwhnz5rwrw5@pengutronix.de>
 <CAOMZO5AF3Zo6pJsF41=-maoVAd1w4TeqcS71atROn7gh0eYTzg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5AF3Zo6pJsF41=-maoVAd1w4TeqcS71atROn7gh0eYTzg@mail.gmail.com>
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
Subject: Re: i.MX7 support
To: Fabio Estevam <festevam@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Jan 17, 2017 at 10:07:14AM -0200, Fabio Estevam wrote:
> Hi Sascha,
> 
> On Mon, Jan 16, 2017 at 10:58 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Yes, I did. I configured MX7D_PAD_GPIO1_IO00 as WDOD1_WDOG_B, still my
> > board only hangs. I also tried configuring it as GPIO. When toggling the
> > gpio the board only hangs. I also tried different variations of the
> > watchdog SRS/WDA bits. I think there is some other piece I am missing.
> 
> What is the version of your warp7 board: rev1.0 or rev2.0? The version
> number is written on the CPU board.
> 
> warp rev1.0 did not connect the WDOD1_WDOG_B pin to the PMIC and is
> not capable of resetting the system.
> 
> warp7 rev2.0 does connect the WDOD1_WDOG_B pin to the PMIC and the
> reset works fine.

I have a rev 2.0 board here.

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
