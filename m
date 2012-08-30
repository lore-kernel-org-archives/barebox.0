Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T798x-0003Z2-P1
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 18:07:05 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 30 Aug 2012 20:05:56 +0200
References: <201208292317.03322.jbe@pengutronix.de>
 <201208301508.19646.jbe@pengutronix.de> <20120830164720.GA22722@sig21.net>
In-Reply-To: <20120830164720.GA22722@sig21.net>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201208302005.56531.jbe@pengutronix.de>
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
To: barebox@lists.infradead.org

Hi Johannes,

Johannes Stezenbach wrote:
> On Thu, Aug 30, 2012 at 03:08:19PM +0200, Juergen Beisert wrote:
> > Johannes Stezenbach wrote:
> > > MMC has the following speed modes:
> > >
> > > - legacy 0-26MHz
> > > - high speed SDR 0-52MHz
> > > - high speed DDR 0-52MHz
> > > - HS200 SDR 0-200MHz
> >
> > Ahh, here come the curious 26 MHz and 52 MHz into the game. Its related
> > to MMC only.
> >
> > > while SD has:
> > >
> > > - SDR12
> > > - SDR25
> > > - SDR50
> > > - SDR104
> > > - DDR50
> > >
> > > So my guess is that MMC_MODE_HS maps to SDR25 for SD-only,
> > > and MMC_MODE_HS_52MHz maps to SDR50 for SD and MMC.
> > >
> > > (Apparently mmc_change_freq always sets MMC_MODE_HS, it is
> > > meaningless for MMC.)
> > >
> > > Thus, mci_startup_sd() should do:
> > > 	if (mci->card_caps & MMC_MODE_HS)
> > > 		mci_set_clock(mci, 25000000);
> > > 	else
> > > 		mci_set_clock(mci, 12500000);
> >
> > As far as I understand the spec, there is a max. speed field in the CSD
> > which tells us the regular max. speed of this card. And the fields from
> > the CSR can overwrite the CSD settings. So, a card which reports 25 MHz
> > in the CSD can still enable 50 MHz (SDR50) in the CSR and the SDHC then
> > can use 50 MHz for the clock. But maybe I'm wrong here.
>
> What I wrote is not even correct ;-/
>
> SD has legacy Default Mode and legacy High Speed mode,
> and "Ultra High Speed" modes.  SDR12, SDR25, SDR50, SDR104 and DDR50
> are all UHS modes.  And Default Mode and SDR12 support up to 12.5MB/s,
> but the bus clock is up to 25MHz (4 bit parallel).
> So the code in mci_startup_sd() is correct as is.

Now I found the Abbreviations in the spec:

UHS    Ultra High Speed
SDR12  One of UHS modes with single data rate. Up to 12.5MB/sec at 25MHz
SDR25  One of UHS modes with single data rate. Up to 25MB/sec at 50MHz
SDR50  One of UHS modes with single data rate. Up to 50MB/sec at 100MHz
SDR104 One of UHS modes with single data rate. Up to 104MB/sec at 208MHz

So they mean the transfer capacity in "bytes per second" and not the clock 
speed with their SDR<number>. Thanks for this hint.

Reading further discovers:

 * all these UHS modes are _not_ valid for SDSC type of SD cards (up to 2 GiB
   capacity)

This information should help to get the code right.

> Regarding CSD, my understanding is that TRAN_SPEED only
> applies to legacy Default Mode.  If the card supports HS mode
> or UHS modes then it must be able to use 50MHz clock.

Ack.

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
