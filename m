Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dDO8z-0007j9-Np
 for barebox@lists.infradead.org; Wed, 24 May 2017 04:43:35 +0000
Received: by mail-pg0-x242.google.com with SMTP id h64so15651858pge.3
 for <barebox@lists.infradead.org>; Tue, 23 May 2017 21:43:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <99117b21-0d83-87ab-e196-1e02e0df6601@cogentembedded.com>
References: <20170522152213.14028-1-andrew.smirnov@gmail.com>
 <99117b21-0d83-87ab-e196-1e02e0df6601@cogentembedded.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 23 May 2017 21:43:12 -0700
Message-ID: <CAHQ1cqHRZW1EJ-Q35U_WgGhNJJSq8ggf-t_o6N8SxqwO7PukTg@mail.gmail.com>
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
To: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Chris Healy <cphealy@gmail.com>

On Mon, May 22, 2017 at 10:42 PM, Nikita Yushchenko
<nikita.yoush@cogentembedded.com> wrote:
>>  static void mx5_clocks_mx51_mx53_init(void __iomem *base)
>> @@ -392,6 +394,12 @@ int __init mx51_clocks_init(struct device_d *dev, void __iomem *regs)
>>       clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM1_BASE_ADDR, "per");
>>       clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM2_BASE_ADDR, "per");
>>
>> +     clkdev_add_physbase(clks[IMX5_CLK_USBOH3_GATE], MX51_OTG_BASE_ADDR + 0x000, NULL);
>> +     clkdev_add_physbase(clks[IMX5_CLK_USBOH3_GATE], MX51_OTG_BASE_ADDR + 0x200, NULL);
>> +     clkdev_add_physbase(clks[IMX5_CLK_USBOH3_GATE], MX51_OTG_BASE_ADDR + 0x400, NULL);
>> +     clkdev_add_physbase(clks[IMX5_CLK_USBOH3_GATE], MX51_OTG_BASE_ADDR + 0x600, NULL);
>> +     clkdev_add_physbase(clks[IMX5_CLK_USBOH3_GATE], MX51_OTG_BASE_ADDR + 0x800, NULL);
>> +
>>       if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
>>               mx51_clocks_ipu_init(regs);
>
> It may be cleaner to setup USB related clocks under
> if (IS_ENABLED(CONFIG_...) { ... }  - i.e. in the same way as IPU
> related clocks are added in neighbour line.
>
> Also, this is the only place in this file where address arithmetic is
> used.  Not sure if this is ok or not but it catches eye.

Looks like this patch is not really necessary, so I'll just drop it.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
