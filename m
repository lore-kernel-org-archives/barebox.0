Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTTYy-00005l-HS
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 13:44:54 +0000
Message-ID: <1499435067.23968.8.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 07 Jul 2017 15:44:27 +0200
In-Reply-To: <20170707080401.2785-1-o.rempel@pengutronix.de>
References: <20170707080401.2785-1-o.rempel@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2 0/3] make power off work on iMX6S RIoTBoard
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Freitag, den 07.07.2017, 10:03 +0200 schrieb Oleksij Rempel:
> v2:
> - remove "suspend to ram" from comment (copy/paste from linux comment)
> - add "depends on ARCH_IMX6"
> - remove unused defines
> 
> Oleksij Rempel (3):
>   ARM: riotboard: provide standby on power off option
>   ARM: i.MX: provide handler for power off over standby
>   regulator: pfuze: provide power over standby handler
> 
>  arch/arm/dts/imx6s-riotboard.dts      |  7 ++++
>  arch/arm/mach-imx/imx6.c              | 49 +++++++++++++++++++++++++
>  arch/arm/mach-imx/include/mach/imx6.h |  1 +
>  drivers/regulator/Kconfig             |  1 +
>  drivers/regulator/pfuze.c             | 67 +++++++++++++++++++++++++++++++++++
>  5 files changed, 125 insertions(+)
> 
Applied, thanks.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
