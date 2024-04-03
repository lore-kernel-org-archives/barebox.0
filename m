Delivery-date: Wed, 03 Apr 2024 10:26:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrvx9-005WzL-0L
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 10:26:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrvx6-0002CT-Vo
	for lore@pengutronix.de; Wed, 03 Apr 2024 10:26:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NJcroc57fPs4yo9mQ6eQhnDPFtJKUwdXWwWpGzId53w=; b=V8PtxJ4x3b0BwJHbkAtVtlxTuX
	nUMtj9gK/kr8b5OEjSEUjX5CYjhioW7XRofOiRzCnaDdUxKDnRZNQxGxtxTTnK2Z2ekkDuEPX5rTr
	Q8zvshN9z2VZHToUCh/CsPlS1YOExOfZZpx28bcG+S/1M9firGXyPCbyqCWsEc7FV34TFxQgJPZqz
	z30euxtm3v9sk7niiyyHNsBavt+lWVJZHDOsvbqyQdqqdsUd5qOkZiLfLXtc6blq2BoCAB8fC7+Fy
	X8LC1prhqjYoi5AsSuJbRAS+QXKXnXKgQeUy6aZcEy1BQq2GTTP5qe1qW4iuIPpxGpd2kTvWOi/r0
	f/Q11HlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvwU-0000000ErmM-3Gkp;
	Wed, 03 Apr 2024 08:25:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvwQ-0000000ErkP-2hlc
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 08:25:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rrvwO-0001oV-Gh; Wed, 03 Apr 2024 10:25:52 +0200
Message-ID: <57e24a7d-32e0-4d6a-9c3f-4a7b0cce6a71@pengutronix.de>
Date: Wed, 3 Apr 2024 10:25:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: David Jander <david@protonic.nl>
References: <20240403081005.4149761-1-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240403081005.4149761-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_012554_721314_8B15AA20 
X-CRM114-Status: GOOD (  16.11  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: boards: Add support for protonic-mecsbc board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 03.04.24 10:10, Sascha Hauer wrote:
> +static int saradc_get_value(const char *chan)
> +{
> +	int ret, voltage;
> +	struct aiochannel *aio;
> +
> +	if (!IS_ENABLED(CONFIG_AIODEV)) {
> +		pr_warn_once("AIODEV disabled, cannot read hardware id/rev\n");
> +		return 0;
> +	}
> +
> +	aio = aiochannel_by_name(chan);
> +	if (IS_ERR(aio))
> +		return PTR_ERR(aio);
> +
> +	ret = aiochannel_get_value(aio, &voltage);
> +	if (ret)
> +		return ret;
> +
> +	return voltage;
> +}

Other rockchip boards have similar board code. Maybe we should
have a helper in <aiodev.h> instead?

> +
> +static int mecsbc_get_usb_boot(void)
> +{
> +	return saradc_get_value("aiodev0.in_value0_mV") < 74;
> +}
> +
> +static int mecsbc_adc_id_values[] = {
> +	1800, 1662, 1521, 1354, 1214, 1059, 900, 742, 335, 589, 278, 137, 0
> +};
> +
> +static int mecsbc_get_adc_id(const char *chan)
> +{
> +	int val;
> +	unsigned int t;
> +
> +	val = saradc_get_value(chan);
> +	if (val < 0)
> +		return 0;
> +
> +	val += 74;
> +
> +	for (t = 0; t < ARRAY_SIZE(mecsbc_adc_id_values); t++) {
> +		if (val > mecsbc_adc_id_values[t])
> +			return t;
> +	}
> +
> +	return t;
> +}
> +
> +static void mecsbc_process_adc(void)
> +{
> +	/* Check if we need to enable the USB gadget instead of booting */
> +	if (mecsbc_get_usb_boot()) {
> +		setenv("global.boot.default", "net");
> +		setenv("global.usbgadget.acm", "1");
> +		setenv("global.usbgadget.autostart", "1");
> +		setenv("global.system.partitions", "/dev/mmc0(mmc0)");

There's globalvar_set() which avoids parsing the string to do a
device lookup by name.

Looks good otherwise:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



