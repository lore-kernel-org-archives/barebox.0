Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VJ1-0000SM-0h
 for barebox@lists.infradead.org; Tue, 25 Feb 2020 08:11:04 +0000
Date: Tue, 25 Feb 2020 09:11:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200225081101.GN3335@pengutronix.de>
References: <20200220100109.18147-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220100109.18147-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 0/6] phy: usb: add support for STM32 usbphyc
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, mgr@pengutronix.de, rcz@pengutronix.de

On Thu, Feb 20, 2020 at 11:01:05AM +0100, Ahmad Fatoum wrote:
> This is only USB PHY support. Changes to the DWC2 (OTG) and/or OHCI
> (Host) are still needed to make USB on the MP1 work.
> 
> I haven't yet groked the relation between generic phy and usb phy
> frameworks, but the code is a straight port from Linux and it seems to
> work[1], so let's upstream it now to make collaboration easier.
> 
> [1]: clock the EHCI and power on the PHY and 20% of the time, the bus
>      can be enumerated completely. Still needs further debugging,
>      but it's unlikely that the PHY driver is at fault.
> 
> Cheers,
> Ahmad Fatoum (6):
>   regulator: import Linux regulator_bulk API
>   phy: remove unused init_data parameter
>   phy: populate existing ->pwr member with phy-supply
>   phy: introduce phy_get_by_index
>   regulator: port over Linux stm32 PWR regulator driver
>   phy: port over Linux stm32 usbphyc driver

Applied, thanks

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
