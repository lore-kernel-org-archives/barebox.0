Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f51.google.com ([74.125.82.51])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TkYfC-0003wP-ES
 for barebox@lists.infradead.org; Mon, 17 Dec 2012 11:15:18 +0000
Received: by mail-wg0-f51.google.com with SMTP id gg4so2393753wgb.18
 for <barebox@lists.infradead.org>; Mon, 17 Dec 2012 03:15:12 -0800 (PST)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1355435350-20348-1-git-send-email-s.hauer@pengutronix.de>
 <1355435350-20348-6-git-send-email-s.hauer@pengutronix.de>
Date: Mon, 17 Dec 2012 12:15:06 +0100
In-Reply-To: <1355435350-20348-6-git-send-email-s.hauer@pengutronix.de>
 (Sascha Hauer's message of "Thu, 13 Dec 2012 22:49:08 +0100")
Message-ID: <87txrl7ww5.fsf@dell.be.48ers.dk>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/7] ARM i.MX51: Add support for the Efika MX Smartbook
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:

Hi,

 Sascha> +
 Sascha> +	/* USB HOST2 */
 Sascha> +	MX51_PAD_EIM_D27__GPIO2_9,
 Sascha> +	MX51_PAD_GPIO1_5__GPIO1_5,
 Sascha> +	MX51_PAD_EIM_D16__USBH2_DATA0,
 Sascha> +	MX51_PAD_EIM_D17__USBH2_DATA1,
 Sascha> +	MX51_PAD_EIM_D18__USBH2_DATA2,
 Sascha> +	MX51_PAD_EIM_D19__USBH2_DATA3,
 Sascha> +	MX51_PAD_EIM_D20__USBH2_DATA4,
 Sascha> +	MX51_PAD_EIM_D21__USBH2_DATA5,
 Sascha> +	MX51_PAD_EIM_D22__USBH2_DATA6,
 Sascha> +	MX51_PAD_EIM_D23__USBH2_DATA7,
 Sascha> +	MX51_PAD_EIM_A24__USBH2_CLK,
 Sascha> +	MX51_PAD_EIM_A25__USBH2_DIR,
 Sascha> +	MX51_PAD_EIM_A26__GPIO2_20,
 Sascha> +	MX51_PAD_EIM_A27__USBH2_NXT,
 Sascha> +
 Sascha> +	/* USB HOST1 */
 Sascha> +        MX51_PAD_USBH1_CLK__USBH1_CLK,
 Sascha> +        MX51_PAD_USBH1_DIR__USBH1_DIR,
 Sascha> +        MX51_PAD_USBH1_NXT__USBH1_NXT,
 Sascha> +        MX51_PAD_USBH1_DATA0__USBH1_DATA0,
 Sascha> +        MX51_PAD_USBH1_DATA1__USBH1_DATA1,
 Sascha> +        MX51_PAD_USBH1_DATA2__USBH1_DATA2,
 Sascha> +        MX51_PAD_USBH1_DATA3__USBH1_DATA3,
 Sascha> +        MX51_PAD_USBH1_DATA4__USBH1_DATA4,
 Sascha> +        MX51_PAD_USBH1_DATA5__USBH1_DATA5,
 Sascha> +        MX51_PAD_USBH1_DATA6__USBH1_DATA6,
 Sascha> +        MX51_PAD_USBH1_DATA7__USBH1_DATA7,
 Sascha> +	MX51_PAD_USBH1_STP__GPIO1_27,
 Sascha> +	MX51_PAD_EIM_A16__GPIO2_10,

Tab/spaces mixup.

Any specific reason to list USB2 before USB1?


 Sascha> +	/* USB U-Boot */
 Sascha> +	MX51_PAD_EIM_A22__GPIO2_16, /* WLAN enable (1 = on) */
 Sascha> +	MX51_PAD_EIM_A17__GPIO2_11,

That USB U-Boot comment is a bit odd.

 Sascha> +/*
 Sascha> + * Generally this should work on the Efika MX smarttop aswell,
 Sascha> + * but I do not have the hardware to test it, so hardcode this
 Sascha> + * for the smartbook for now.
 Sascha> + */

I have both a smarttop and smartbook, so I'll try to find some time to
test.

 Sascha> +
 Sascha> +	/* Raise the core frequency to 800MHz */
 Sascha> +	console_flush();	

Trailing spaces.


 Sascha> +++ b/arch/arm/boards/efika-mx-smartbook/config.h
 Sascha> @@ -0,0 +1,24 @@
 Sascha> +/**
 Sascha> + * @file
 Sascha> + * @brief Global defintions for the ARM i.MX51 based babbage board

Should probably say efikamx smartbook instead. s/defintions/definitions/

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
