Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr700138.outbound.protection.outlook.com
 ([40.107.70.138] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuGlv-0002Ud-2R
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 12:37:32 +0000
From: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Date: Mon, 27 Aug 2018 12:37:18 +0000
Message-ID: <96de0308ea2468972690c0f1709ab6029d8e22c7.camel@allegion.com>
References: <20180823095820.32590-1-florian.baeuerle@allegion.com>
 <5de1c331378034ec7bdbbe58c7e8b1f65debd568.camel@allegion.com>
 <20180827121004.hfeb3bahhyvkoiw4@pengutronix.de>
In-Reply-To: <20180827121004.hfeb3bahhyvkoiw4@pengutronix.de>
Content-Language: en-US
Content-ID: <544DBF0DEDE9654FBDF9B0571A6C9880@prod.exchangelabs.com>
MIME-Version: 1.0
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
To: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Am Montag, den 27.08.2018, 14:10 +0200 schrieb Sascha Hauer:
> On Thu, Aug 23, 2018 at 12:20:32PM +0000, Baeuerle, Florian wrote:
> > Some background on that patch:
> > 
> > I've tried to get barebox master compiled with OSELAS 2018 running on a
> > phycard-imx27. I had a few problems with that:
> > 
> > It turned out, that I can boot the resulting image as a seconds stage (from an
> > older version of barebox), after commenting out pca100_usb_init(). I suppose
> > that is not a real problem, but probably related to some clock setup that
> > barebox master does somewhere during early boot (which I suppose, is skipped
> > when booting it as 2nd stage).
> > 
> > However, when flashing the resulting image to NAND, there seems to be a bigger
> > issue somewhere during early boot. This problem does not exist when compiling
> > barebox master with OSELAS 2016.
> 
> I gave it a test and can confirm that the board boots when compiled with
> OSELAS 2016 and no longer boots with OSELAS 2018.

Thanks for confirming this!
> 
> It's strange and I'm out of ideas for now. In
> imx27_barebox_boot_nand_external() we have a place that copies the
> initial image poprtion into SDRAM. It seems the SDRAM is never written
> to - at least according to the information my BDI2000 gives me.

What could you observe with your debugger?
I sadly do not have any hardware debugger available, so I was stuck with writing
characters on the UART which IIRC was completely unsuccessful in
imx27_barebox_boot_nand_external().
> 
> I assume it must be something to do with the SDRAM setup, but the code
> and also the resulting assembly really looks harmless, though a little
> different between both toolchains.
> 
> Sascha
> 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
