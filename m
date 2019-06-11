Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafDO-0000hK-8I
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 11:45:23 +0000
Message-ID: <429f1bb0f0ae5c86d2d11be2e105eb5de6f59d1d.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 11 Jun 2019 13:45:13 +0200
In-Reply-To: <20190610155835.18304-1-vivien.didelot@gmail.com>
References: <20190610155835.18304-1-vivien.didelot@gmail.com>
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
Subject: Re: [PATCH] ARM: zii-rdu2: disable eth0 and eth1
To: Vivien Didelot <vivien.didelot@gmail.com>, barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Am Montag, den 10.06.2019, 11:58 -0400 schrieb Vivien Didelot:
> The current support for the ZII RDU2 Board times out on eth0 and eth1
> when booting 'net' from an alternative interface, like a USB Ethernet
> dongle. eth0 is the DSA master interface and has no use within barebox,
> as well as the gigabit interface eth1 which is wired to the switch
> port 0. Disable them to allow Barebox to boot right away from network.

NACK.

With the just merged patches to the RDU2 environment the FEC interface
is fully usable for regular network boot, which is what I use for my
development setups.

As USB network boot requires additional hardware, I would say it's fair
to require to change the environment on the boards used for DSA
development.

Regards,
Lucas

> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
> ---
>  arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth0.mode | 1 +
>  arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth1.mode | 1 +
>  2 files changed, 2 insertions(+)
>  create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth0.mode
>  create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth1.mode
> 
> diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth0.mode b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth0.mode
> new file mode 100644
> index 000000000..87e7bdaae
> --- /dev/null
> +++ b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth0.mode
> @@ -0,0 +1 @@
> +disabled
> \ No newline at end of file
> diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth1.mode b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth1.mode
> new file mode 100644
> index 000000000..87e7bdaae
> --- /dev/null
> +++ b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth1.mode
> @@ -0,0 +1 @@
> +disabled
> \ No newline at end of file


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
