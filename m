Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T74Us-0003Qp-G1
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 13:09:23 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 30 Aug 2012 15:08:19 +0200
References: <201208292317.03322.jbe@pengutronix.de>
 <20120830100418.GA7632@sig21.net>
In-Reply-To: <20120830100418.GA7632@sig21.net>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201208301508.19646.jbe@pengutronix.de>
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
> On Wed, Aug 29, 2012 at 11:17:03PM +0200, Juergen Beisert wrote:
> > any SD/MMC card experts here? I have trouble with the current SD/MMC
> > detection code in Barebox.
> > The function sd_change_freq() in the file 'drivers/mci/mci-core.c' tries
> > to detect the max. transfer frequency the attached card can handle.
> > Nothing special here, but the following line in this routine fails on my
> > system:
> >
> >   if ((__be32_to_cpu(switch_status[4]) & 0x0f000000) == 0x01000000)
> >
> > It checks the clock speed capabilities returned from the card. As far as
> > I understand the "simplified SD card spec" the "0x01000000" means SDR25
> > speed,
>
> I think your analysis is correct.

Thanks.

> > which means still "single transfer per clock at 25 MHz clock rate". But
> > the sd_change_freq() routine sets the MMC_MODE_HS bit for this case in
> > the card's capabilities variable. The remaining routines in
> > 'drivers/mci/mci-core.c' then use 50 MHz for the transfer speed.
>
> IMHO mci_startup_sd() is buggy.

Ack.

> > This behaviour became an issue here, as my SDHC supports 50 MHz, but the
> > attached card only up to 25 MHz. After switching to 50 MHz, the card
> > wasn't able to respond anymore.
> > For SDHCs which supports only up to 25 MHz this misinterpretation is no
> > issue, as the routines still use the 25 MHz, and the SD card can still
> > respond.
> >
> > "simplified SD card spec" talks about the bit's meaning: seems the
> > regular speed was SDR12 which means 12.5 MHz. Then SDR25 cards appear,
> > which are also called "high speed card". Could the MMC_MODE_HS just mean
> > this "high speed" and using it at 50 MHz is just some kind of typo? Or do
> > MMCs act differently and the code mixes SD and MMC features?
> >
> > Any pointers would help.
>
> MMC has the following speed modes:
>
> - legacy 0-26MHz
> - high speed SDR 0-52MHz
> - high speed DDR 0-52MHz
> - HS200 SDR 0-200MHz

Ahh, here come the curious 26 MHz and 52 MHz into the game. Its related to MMC 
only.

> while SD has:
>
> - SDR12
> - SDR25
> - SDR50
> - SDR104
> - DDR50
>
> So my guess is that MMC_MODE_HS maps to SDR25 for SD-only,
> and MMC_MODE_HS_52MHz maps to SDR50 for SD and MMC.
>
> (Apparently mmc_change_freq always sets MMC_MODE_HS, it is
> meaningless for MMC.)
>
> Thus, mci_startup_sd() should do:
> 	if (mci->card_caps & MMC_MODE_HS)
> 		mci_set_clock(mci, 25000000);
> 	else
> 		mci_set_clock(mci, 12500000);

As far as I understand the spec, there is a max. speed field in the CSD which 
tells us the regular max. speed of this card. And the fields from the CSR can 
overwrite the CSD settings. So, a card which reports 25 MHz in the CSD can 
still enable 50 MHz (SDR50) in the CSR and the SDHC then can use 50 MHz for 
the clock. But maybe I'm wrong here.

On the other hand: why switching the clock speed inside the SD card? The spec 
defines, the SDHC can switch the clock speed at any time, at least it must be 
below or equal to the max. clock speed the card supports.

When the specification is called "simplified", how complicated must be 
the "non-simplified" version of this document... ;)

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
