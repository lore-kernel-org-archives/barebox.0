Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI9J6-0000HH-Cm
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 08:25:58 +0000
Date: Fri, 24 Nov 2017 09:25:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171124082533.tp2pqnefj6y6hbgo@pengutronix.de>
References: <1511365141-21693-1-git-send-email-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1511365141-21693-1-git-send-email-linux@rempel-privat.de>
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
Subject: Re: [PATCH v2 0/3] provide watchdog support on ar9344 SoC
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 22, 2017 at 04:38:58PM +0100, Oleksij Rempel wrote:
> This patch set is providing watchdog driver for QCA/Atheros AR9344 WiSoC
> 
> changes v2:
> - spell fixes
> - remove casting from container_of
> - release priv if dev_request_mem_resource filed
> - provide error message if clk_get filed
> 
> Oleksij Rempel (3):
>   watchdog: add ar9344-wdt driver
>   MIPS: dts: ar9344: add watchdog node
>   MIPS: dts: tl_wdr4300: enable watchdog node

Applied, thanks

Sascha

> 
>  arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts |   4 +
>  arch/mips/dts/ar9344.dtsi                |   7 ++
>  drivers/watchdog/Kconfig                 |   6 ++
>  drivers/watchdog/Makefile                |   1 +
>  drivers/watchdog/ar9344_wdt.c            | 138 +++++++++++++++++++++++++++++++
>  5 files changed, 156 insertions(+)
>  create mode 100644 drivers/watchdog/ar9344_wdt.c
> 
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
