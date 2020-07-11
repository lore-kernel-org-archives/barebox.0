Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ju6zZ-0003La-HF
 for barebox@lists.infradead.org; Sat, 11 Jul 2020 04:20:02 +0000
Date: Sat, 11 Jul 2020 06:19:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200711041958.GI15485@pengutronix.de>
References: <20200707082243.5916-1-a.fatoum@pengutronix.de>
 <d1dc22ae-9311-5ed5-7c35-776e4b1665e1@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d1dc22ae-9311-5ed5-7c35-776e4b1665e1@pengutronix.de>
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
Subject: Re: [PATCH] mci: omap: add new am335x and am437x SDHCI specific
 compatibles
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Jul 07, 2020 at 10:25:33AM +0200, Ahmad Fatoum wrote:
> 
> 
> On 7/7/20 10:22 AM, Ahmad Fatoum wrote:
> > For a while now, Linux has had a sdhci-omap driver for TI's OMAP SoCs
> > making use of the SDHCI core library. This was in addition to the
> > older omap-hsmmc driver, which didn't.
> > 
> > Linux commit 0b4edf11187 ("ARM: dts: Move am33xx and am43xx mmc nodes to
> > sdhci-omap driver") changes the device tree compatible of the mmc nodes
> > on the am33xx and am43xx SoCs away from the omap-hsmmc to the SDHCI
> > driver. Add the new compatibles, so we aren't broken by the change.
> > 
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > ---
> > Hello Sascha,
> > 
> > recent v5.8-rc3 sync breaks barebox SD/MMC use on OMAP3 and OMAP4 SoCs,
> 
> Correction: I don't really understand the naming scheme, but seems only
> OMAP4 should be broken at the moment. (I tested on a beaglebone black)

Beaglebone black is a am335x. Anyway, applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
