Delivery-date: Sat, 10 Apr 2021 12:44:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVB6O-00010F-W1
	for lore@lore.pengutronix.de; Sat, 10 Apr 2021 12:44:32 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVB6O-000841-5x
	for lore@pengutronix.de; Sat, 10 Apr 2021 12:44:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MMirTvOxXktVpu8/vcRJxC9oTGJ4LMgtYj4XyGHezJ8=; b=hSvca5K3bN2bSuRJrDb8Yc0+l
	G6QPfUHNfjKwK9HLxnwSabdZxCgLe+owEocPh8xHunOnZO+yJzSfO7gKD6knKqDtZ/HKSFER+igXP
	AEzhQ5TMo2pYa3J3wVBVW6wQzNi3d+y9sy5ZWL8aPvc45Iqdf1bGAtJWxRcL66za3rQqJ0ZH77wYX
	3kkiuuSiy6Oe0hC7G9WM0TIp6TQWrfSFNKBSSssHhl8xXXMsG3QwzeQI1piuyYczARVdEsARVPbSX
	5rSh1DixNhfGRQ5ra1HkDaXOBlUq9D/Bdt02OxnHwfdX3PQ2/cl1gW3g7ipR+dglP6Mr09blAmpZt
	EaG5edr6g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVB5I-002gFB-7j; Sat, 10 Apr 2021 10:43:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVB56-002gF0-DY
 for barebox@desiato.infradead.org; Sat, 10 Apr 2021 10:43:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=UbWgoMS2VTN/Ug62iVo3aGzvYiWmh1rlpwn6yGpbPnQ=; b=p6bKMWj5ewr/G9cCo1mjMyZQdJ
 p2G64leimkPsD8mHcVSva70iOC2s9+gZnmpFgVyJD5uxE7Lh/RprsX3Vm/9/bDHC9qTi/dXw2iJNr
 Cafbabj1FIOkhsHX39haiXkbwk/LVPNPyRW10rNMTKMWaJfO8SOzfTVde9fbSsMc2cj+BntMT0OVw
 eZXAzkqVD5pz0vl0/HjDdtLTrI0Nvye44/jfSgnlNzuGOy114ZfmSo1Eq1f9HZRK9liJ6e9Fu4VJu
 YrvrBBXhhWfClwTWSb//HLHzcDRIu+kYY1vd2MWf51D8AqS5eebnvS+eTHAkOuJDdsBsnJPvVQGVx
 ZVQynsFw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVB53-0052cy-Fq
 for barebox@lists.infradead.org; Sat, 10 Apr 2021 10:43:11 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lVB4x-00081Q-9T; Sat, 10 Apr 2021 12:43:03 +0200
To: Lars Pedersen <lapeddk@gmail.com>, barebox@lists.infradead.org
Cc: Bruno Thomsen <bruno.thomsen@gmail.com>
References: <20210409132035.197739-1-lapeddk@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <67622809-1252-bfff-d114-ce11f2c7c7dd@pengutronix.de>
Date: Sat, 10 Apr 2021 12:43:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210409132035.197739-1-lapeddk@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_034309_566985_4CB694CE 
X-CRM114-Status: GOOD (  21.66  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Kamstrup mx7 concentrator board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Lars,

On 09.04.21 15:20, Lars Pedersen wrote:
> diff --git a/arch/arm/boards/kamstrup-mx7-concentrator/board.c b/arch/arm/boards/kamstrup-mx7-concentrator/board.c
> new file mode 100644
> index 000000000..ac32e9b05
> --- /dev/null
> +++ b/arch/arm/boards/kamstrup-mx7-concentrator/board.c
> @@ -0,0 +1,51 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2021 Kamstrup A/S
> +
> +/* Author: Lars Pedersen <lapeddk@gmail.com> */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +#include <gpio.h>
> +#include <restart.h>
> +#include <mach/imx7-regs.h>
> +#include <mach/iomux-mx7.h>
> +#include <mach/generic.h>
> +#include <mfd/imx7-iomuxc-gpr.h>
> +
> +#define BOARD_RESTART_GPIO IMX_GPIO_NR(7, 12)
> +#define TPM_RESET_GPIO IMX_GPIO_NR(3, 8)
> +
> +static void kamstrup_mx7_tpm_reset(void)
> +{
> +	imx7_setup_pad(MX7D_PAD_LCD_DATA03__GPIO3_IO8);
> +
> +	gpio_request(TPM_RESET_GPIO, "tpm-reset");
> +	gpio_direction_output(TPM_RESET_GPIO, 1);
> +	mdelay(100);
> +	gpio_set_value(TPM_RESET_GPIO, 0);
> +	mdelay(100);
> +	gpio_set_value(TPM_RESET_GPIO, 1);
> +	gpio_free(TPM_RESET_GPIO);

We are trying to cut down on code that doesn't use the driver model.
Couldn't this be represented as a gpio-hog in the device tree or
a reset line for the SPI device?

> +}
> +
> +static void __noreturn kamstrup_mx7_board_restart_gpio(struct restart_handler *rst)
> +{
> +	imx7_setup_pad(MX7D_PAD_ENET1_TX_CLK__GPIO7_IO12);
> +
> +	gpio_direction_output(BOARD_RESTART_GPIO, 0);
> +	mdelay(1);
> +	gpio_set_value(BOARD_RESTART_GPIO, 0);

I just sent out a patch[1] with a driver implementing the "gpio-restart" device
tree binding. Could you test that one and use it here instead?

> +
> +	hang();
> +}
> +
> +static int kamstrup_mx7_concentrator_coredevices_init(void)
> +{
> +	kamstrup_mx7_tpm_reset();
> +	restart_handler_register_fn("board", kamstrup_mx7_board_restart_gpio);
> +	barebox_set_model("Kamstrup OMNIA Concentrator");

The default model name is "Kamstrup OMNIA Flex Concentrator".
If that's too long, you could override /model in the barebox device tree.
With the changes suggested above, you could drop board.c then altogether.

The rest of the patch looks good to me. With the feedback addressed:
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

[1]: https://lore.pengutronix.de/barebox/20210410103511.2073504-1-ahmad@a3f.at/T/#mc4dbda46e6bd868fc9ecfcfa42f3dbfe943bef47
 
Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

