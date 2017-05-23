Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x230.google.com ([2a00:1450:4010:c07::230])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dD2aY-0002XD-0O
 for barebox@lists.infradead.org; Tue, 23 May 2017 05:42:35 +0000
Received: by mail-lf0-x230.google.com with SMTP id a5so28543949lfh.2
 for <barebox@lists.infradead.org>; Mon, 22 May 2017 22:42:13 -0700 (PDT)
References: <20170522152213.14028-1-andrew.smirnov@gmail.com>
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Message-ID: <99117b21-0d83-87ab-e196-1e02e0df6601@cogentembedded.com>
Date: Tue, 23 May 2017 08:42:09 +0300
MIME-Version: 1.0
In-Reply-To: <20170522152213.14028-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] clk: i.MX51: Add missing USBOH3_GATE clock
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org
Cc: cphealy@gmail.com

>  static void mx5_clocks_mx51_mx53_init(void __iomem *base)
> @@ -392,6 +394,12 @@ int __init mx51_clocks_init(struct device_d *dev, void __iomem *regs)
>  	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM1_BASE_ADDR, "per");
>  	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM2_BASE_ADDR, "per");
>  
> +	clkdev_add_physbase(clks[IMX5_CLK_USBOH3_GATE], MX51_OTG_BASE_ADDR + 0x000, NULL);
> +	clkdev_add_physbase(clks[IMX5_CLK_USBOH3_GATE], MX51_OTG_BASE_ADDR + 0x200, NULL);
> +	clkdev_add_physbase(clks[IMX5_CLK_USBOH3_GATE], MX51_OTG_BASE_ADDR + 0x400, NULL);
> +	clkdev_add_physbase(clks[IMX5_CLK_USBOH3_GATE], MX51_OTG_BASE_ADDR + 0x600, NULL);
> +	clkdev_add_physbase(clks[IMX5_CLK_USBOH3_GATE], MX51_OTG_BASE_ADDR + 0x800, NULL);
> +
>  	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
>  		mx51_clocks_ipu_init(regs);

It may be cleaner to setup USB related clocks under
if (IS_ENABLED(CONFIG_...) { ... }  - i.e. in the same way as IPU
related clocks are added in neighbour line.

Also, this is the only place in this file where address arithmetic is
used.  Not sure if this is ok or not but it catches eye.

Nikita

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
