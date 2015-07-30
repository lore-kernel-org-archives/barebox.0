Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZKkcb-0001cc-0z
 for barebox@lists.infradead.org; Thu, 30 Jul 2015 09:59:30 +0000
Date: Thu, 30 Jul 2015 11:59:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150730095905.GM18700@pengutronix.de>
References: <1438156045-1590-1-git-send-email-s.hauer@pengutronix.de>
 <CAOpc7mFskW0iFB9V5Xyjxcr-N9Lx_FFyS5HjxXVpfPUA97b9QA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mFskW0iFB9V5Xyjxcr-N9Lx_FFyS5HjxXVpfPUA97b9QA@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX: xload: implement esdhc xload for i.MX6
To: Holger Schurig <holgerschurig@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Holger,

On Thu, Jul 30, 2015 at 11:31:38AM +0200, Holger Schurig wrote:
> 2015-07-29 9:47 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> > + * imx6_esdhc_start_image - Load and start an image from USDHC controller
> > + * @instance: The USDHC controller instance (0..4)
> > + *
> > + * This uses imx6_esdhc_load_image() to load an image from SPI NOR flash.
> 
> Hmm, either it's from USDHC or from SPI-NOR :-)

Right, will fix.

> 
> 
> Question: does this load an image from an eMMC boot partition (e.g.
> the tiny ones that some of them have?)

Hm, I don't know. The partition must actively be switched. I know that
the i.MX6 boot ROM actually loads the image from the boot partition
configured in the eMMC. imx6_esdhc_load_image() relies on the
initialization done by the boot ROM, so if the boot ROM just leaves
the eMMC in the state it is before jumping to barebox then barebox
should automatically load the image from the correct place. I haven't
tested it though.

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
