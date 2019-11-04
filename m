Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXM4-0007gt-KZ
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 08:04:54 +0000
Date: Mon, 4 Nov 2019 09:04:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191104080450.3be6yfluewwuo3nb@pengutronix.de>
References: <20191028213943.32071-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028213943.32071-1-ahmad@a3f.at>
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
Subject: Re: [PATCH v2 0/6] ARM: stm32mp: finalize second stage support
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Mon, Oct 28, 2019 at 10:39:37PM +0100, Ahmad Fatoum wrote:
> Add barebox update handler and Ethernet driver.
> 
> v1 -> v2:
>  - Split off patch to override unsupported device tree specified
>    bus-widths
>  - Delete fixing the frequency to 208MHz. I can no longer reproduce
>    120MHz to trigger timeouts
>  - Last 4 patches are new
> 
> Ahmad Fatoum (6):
>   mci: stm32_sdmmc2: parse generic MCI oftree properties
>   ARM: stm32mp: dk2: add barebox SD-Card update handler
>   net: add Designware Ethernet QoS for STM32MP
>   net: eqos: extend Designware Ethernet QoS for Tegra 186 support
>   ARM: stm32mp: include new drivers in defconfig
>   Documentation: boards: stm32mp: remove done TODOs

Applied, thanks

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
