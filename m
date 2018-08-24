Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [85.220.165.71] (helo=metis.ext.pengutronix.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft6Om-0001yr-PS
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 07:23:28 +0000
Date: Fri, 24 Aug 2018 09:16:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180824071656.iwpyy5txv24gsrzq@pengutronix.de>
References: <20180823095820.32590-1-florian.baeuerle@allegion.com>
 <5de1c331378034ec7bdbbe58c7e8b1f65debd568.camel@allegion.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5de1c331378034ec7bdbbe58c7e8b1f65debd568.camel@allegion.com>
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
Subject: Re: [PATCH] ARM: phytec-phycard-imx27: Add debug UART support
To: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Aug 23, 2018 at 12:20:32PM +0000, Baeuerle, Florian wrote:
> Some background on that patch:
> 
> I've tried to get barebox master compiled with OSELAS 2018 running on a
> phycard-imx27. I had a few problems with that:
> 
> It turned out, that I can boot the resulting image as a seconds stage (from an
> older version of barebox), after commenting out pca100_usb_init(). I suppose
> that is not a real problem, but probably related to some clock setup that
> barebox master does somewhere during early boot (which I suppose, is skipped
> when booting it as 2nd stage).
> 
> However, when flashing the resulting image to NAND, there seems to be a bigger
> issue somewhere during early boot. This problem does not exist when compiling
> barebox master with OSELAS 2016.
> 
> The result is that I do not see anything on the console. The imx27 also does not
> seem to enter bootstrap mode though.
> 
> Further I found out that with CONSOLE_PBL, barebox also has issues somewhere
> during early boot. It breaks either after calling pbl_set_putc(), or even
> without calling pbl_set_putc(), when I increase the compile and default
> loglevel.

You probably can't use CONSOLE_PBL on the pca100. The i.MX27 NAND boot
requires the initial image portion to fit into 2KiB. These 2KiB are
already almost full with the required code, no place to add console
support there. You could probably through in some putc_ll() into the
initial code (after you've configured the UART with your patch).

The 2KiB constraint makes the boot process rather tricky. I have a
PCA100 at work, I'll give it a try and reproduce the issue next week
when I'm back in the office.

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
