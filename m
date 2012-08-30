Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T77uG-0001zw-W6
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 16:47:50 +0000
Date: Thu, 30 Aug 2012 18:47:20 +0200
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20120830164720.GA22722@sig21.net>
References: <201208292317.03322.jbe@pengutronix.de>
 <20120830100418.GA7632@sig21.net>
 <201208301508.19646.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201208301508.19646.jbe@pengutronix.de>
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
Subject: Re: SD card experts wanted
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

On Thu, Aug 30, 2012 at 03:08:19PM +0200, Juergen Beisert wrote:
> Johannes Stezenbach wrote:
> >
> > MMC has the following speed modes:
> >
> > - legacy 0-26MHz
> > - high speed SDR 0-52MHz
> > - high speed DDR 0-52MHz
> > - HS200 SDR 0-200MHz
> 
> Ahh, here come the curious 26 MHz and 52 MHz into the game. Its related to MMC 
> only.
> 
> > while SD has:
> >
> > - SDR12
> > - SDR25
> > - SDR50
> > - SDR104
> > - DDR50
> >
> > So my guess is that MMC_MODE_HS maps to SDR25 for SD-only,
> > and MMC_MODE_HS_52MHz maps to SDR50 for SD and MMC.
> >
> > (Apparently mmc_change_freq always sets MMC_MODE_HS, it is
> > meaningless for MMC.)
> >
> > Thus, mci_startup_sd() should do:
> > 	if (mci->card_caps & MMC_MODE_HS)
> > 		mci_set_clock(mci, 25000000);
> > 	else
> > 		mci_set_clock(mci, 12500000);
> 
> As far as I understand the spec, there is a max. speed field in the CSD which 
> tells us the regular max. speed of this card. And the fields from the CSR can 
> overwrite the CSD settings. So, a card which reports 25 MHz in the CSD can 
> still enable 50 MHz (SDR50) in the CSR and the SDHC then can use 50 MHz for 
> the clock. But maybe I'm wrong here.

What I wrote is not even correct ;-/

SD has legacy Default Mode and legacy High Speed mode,
and "Ultra High Speed" modes.  SDR12, SDR25, SDR50, SDR104 and DDR50
are all UHS modes.  And Default Mode and SDR12 support up to 12.5MB/s,
but the bus clock is up to 25MHz (4 bit parallel).
So the code in mci_startup_sd() is correct as is.

See table in 3.9.6 Summary of Bus Speed Mode.

Regarding CSD, my understanding is that TRAN_SPEED only
applies to legacy Default Mode.  If the card supports HS mode
or UHS modes then it must be able to use 50MHz clock.
(This is stated below Table 5-6: Maximum Data Transfer Rate Definition)


> On the other hand: why switching the clock speed inside the SD card? The spec 
> defines, the SDHC can switch the clock speed at any time, at least it must be 
> below or equal to the max. clock speed the card supports.

I suppose the card's controller needs to know how to program
internal clock dividers.


Best Regards
Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
