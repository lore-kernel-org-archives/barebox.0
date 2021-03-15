Delivery-date: Mon, 15 Mar 2021 10:29:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLjXI-0000gK-6I
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 10:29:16 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLjXH-00024X-46
	for lore@pengutronix.de; Mon, 15 Mar 2021 10:29:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qxtdc9KW/kvhRUlfuY0xq/1LP4/WEpou197WVhiAG4I=; b=ReX8JPAVVoa0wyllj9qRev58R
	NylB8F1GWZEkjWMB3USRv4iZzgoOBDwyQ1lsZ5T9QeRg1tZeAsnipOfPFcfLBD7gAiGTxOkh9HweO
	Ym/kIVYj3MM2gd5+L1JLqH7vHzGOYSdWqLzKLSzdJ0/7Dd5qqMiPFJQdwa8FWuL6CeXW4rLz9vqAh
	EfvPEPe1g3AYwnr8vDlwX7MBrhXO5UjxwmUfzTvnZUdhtxHgWikF/NBw5aHJWhCQb12GPrBNfwxGL
	3ekp5qL0kEnuOaW9l/BO7GHz7snSqvexwLYw+3xiEE2wAcnFTvqwd+fYUyL84O0mvm/8em4aMi5eR
	0T34siowA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLjW2-00FNzT-Lj; Mon, 15 Mar 2021 09:28:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLjVo-00FNx6-1Z
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 09:27:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLjVn-0001qs-K6; Mon, 15 Mar 2021 10:27:43 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLjVn-0003RZ-6x; Mon, 15 Mar 2021 10:27:43 +0100
Date: Mon, 15 Mar 2021 10:27:43 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210315092743.GQ23724@pengutronix.de>
References: <20210309080131.902862-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210309080131.902862-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:27:34 up 25 days, 12:51, 82 users,  load average: 0.28, 0.59, 0.48
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_092744_388928_CA9D8964 
X-CRM114-Status: GOOD (  32.77  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] sandbox: add Xterm escape sequence backed LED driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 09, 2021 at 09:01:31AM +0100, Ahmad Fatoum wrote:
> There is value in testing LED trigger conditions in sandbox,
> especially with the coming bthread work that should replace pollers,
> like the one used by the heartbeat trigger.
> 
> To make this testable on sandbox as well, add a simple LED driver.
> It supports 5 brightness levels, which are reflected as dots in
> the terminal title. This requires a Xterm compatible terminal,
> but the LED is inactive by default, so other terminals aren't
> affected if they lack support.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/sandbox/board/Makefile  |  1 +
>  arch/sandbox/board/led.c     | 67 ++++++++++++++++++++++++++++++++++++
>  arch/sandbox/dts/sandbox.dts |  4 +++
>  3 files changed, 72 insertions(+)
>  create mode 100644 arch/sandbox/board/led.c

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
> index c504c967decd..ffb1dbc21ebf 100644
> --- a/arch/sandbox/board/Makefile
> +++ b/arch/sandbox/board/Makefile
> @@ -7,5 +7,6 @@ obj-y += dtb.o
>  obj-y += power.o
>  obj-y += dev-random.o
>  obj-y += watchdog.o
> +obj-$(CONFIG_LED) += led.o
>  
>  extra-y += barebox.lds
> diff --git a/arch/sandbox/board/led.c b/arch/sandbox/board/led.c
> new file mode 100644
> index 000000000000..b7ab81112baf
> --- /dev/null
> +++ b/arch/sandbox/board/led.c
> @@ -0,0 +1,67 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <led.h>
> +#include <mach/linux.h>
> +#include <of.h>
> +
> +static struct sandbox_led {
> +	struct led led;
> +	bool active;
> +} sandbox_led;
> +
> +static inline void terminal_puts(const char *s)
> +{
> +	linux_write(1, s, strlen(s));
> +}
> +
> +static void sandbox_led_set(struct led *led, unsigned int brightness)
> +{
> +	terminal_puts("\x1b]2;barebox ");
> +	while (brightness--)
> +		terminal_puts(".");
> +	terminal_puts("\a");
> +
> +	sandbox_led.active = true;
> +}
> +
> +static int sandbox_led_of_probe(struct device_d *dev)
> +{
> +	struct device_node *np = dev->device_node;
> +	int ret;
> +
> +	if (sandbox_led.led.set)
> +		return -EBUSY;
> +
> +	sandbox_led.led.name = xstrdup(np->name);
> +	sandbox_led.led.max_value = 5;
> +	sandbox_led.led.set = sandbox_led_set;
> +
> +	ret = led_register(&sandbox_led.led);
> +	if (ret)
> +		return ret;
> +
> +	led_of_parse_trigger(&sandbox_led.led, np);
> +
> +	return 0;
> +}
> +
> +static void sandbox_led_of_remove(struct device_d *dev)
> +{
> +	if (sandbox_led.active)
> +		sandbox_led_set(NULL, 0);
> +}
> +
> +static struct of_device_id sandbox_led_of_ids[] = {
> +	{ .compatible = "barebox,sandbox-led", },
> +	{ }
> +};
> +
> +static struct driver_d sandbox_led_of_driver = {
> +	.name  = "sandbox-led",
> +	.probe = sandbox_led_of_probe,
> +	.remove = sandbox_led_of_remove,
> +	.of_compatible = sandbox_led_of_ids,
> +};
> +device_platform_driver(sandbox_led_of_driver);
> diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
> index ef1fa7b8661f..e99986bb9062 100644
> --- a/arch/sandbox/dts/sandbox.dts
> +++ b/arch/sandbox/dts/sandbox.dts
> @@ -98,4 +98,8 @@ barebox,sandbox-watchdog
>  	sound {
>  		compatible = "barebox,sandbox-sound";
>  	};
> +
> +	led {
> +		compatible = "barebox,sandbox-led";
> +	};
>  };
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

