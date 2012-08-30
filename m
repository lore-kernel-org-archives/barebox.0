Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T6vPj-0002j7-Nh
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 03:27:29 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 6C0A3DC5F1F
 for <barebox@lists.infradead.org>; Thu, 30 Aug 2012 05:32:32 +0200 (CEST)
Date: Thu, 30 Aug 2012 05:27:36 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120830032736.GG18708@game.jcrosoft.org>
References: <201208292317.03322.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201208292317.03322.jbe@pengutronix.de>
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

On 23:17 Wed 29 Aug     , Juergen Beisert wrote:
> Hi there,
> 
> any SD/MMC card experts here? I have trouble with the current SD/MMC detection 
> code in Barebox.
> The function sd_change_freq() in the file 'drivers/mci/mci-core.c' tries to 
> detect the max. transfer frequency the attached card can handle. Nothing 
> special here, but the following line in this routine fails on my system:
> 
>   if ((__be32_to_cpu(switch_status[4]) & 0x0f000000) == 0x01000000)
> 
> It checks the clock speed capabilities returned from the card. As far as I 
> understand the "simplified SD card spec" the "0x01000000" means SDR25 speed, 
> which means still "single transfer per clock at 25 MHz clock rate". But the 
> sd_change_freq() routine sets the MMC_MODE_HS bit for this case in the card's 
> capabilities variable. The remaining routines in 'drivers/mci/mci-core.c' 
> then use 50 MHz for the transfer speed.
> 
> This behaviour became an issue here, as my SDHC supports 50 MHz, but the 
> attached card only up to 25 MHz. After switching to 50 MHz, the card wasn't 
> able to respond anymore.
> For SDHCs which supports only up to 25 MHz this misinterpretation is no issue, 
> as the routines still use the 25 MHz, and the SD card can still respond.
> 
> "simplified SD card spec" talks about the bit's meaning: seems the regular 
> speed was SDR12 which means 12.5 MHz. Then SDR25 cards appear, which are also 
> called "high speed card". Could the MMC_MODE_HS just mean this "high speed" 
> and using it at 50 MHz is just some kind of typo? Or do MMCs act differently 
> and the code mixes SD and MMC features?
I saw it too this isssue

the mmc and sd feature are different with different spec so we need different
code to interpret it

see in the kernel

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
