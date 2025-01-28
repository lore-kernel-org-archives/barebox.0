Delivery-date: Tue, 28 Jan 2025 11:26:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcinO-005TuO-10
	for lore@lore.pengutronix.de;
	Tue, 28 Jan 2025 11:26:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcinO-00043j-BY
	for lore@pengutronix.de; Tue, 28 Jan 2025 11:26:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wInRokaH7Xq2In0UD6f/Vaeie3plr1GI9TbLFremSfg=; b=MAjxmOFLLhAYsb1yTO76gOkr9+
	hK5z5OR98gZ518Hyd58kiyC0KrHLslQEcL05yxUGyojC5cK2oZFAGrzrBOxI7bSGAxKVRlWJLaIZH
	X78w7zshqVFp6ijslm6DWw4kqoO9ZMmLhybSNIXEy8864jvIKnhi0UDx3/38hsc95g3APUnxij7mB
	a97xQzPbglpM1CQsR8UOUlBizSGyEIMJRqnLSzLLkRvFpbMPUxQQZVa8fEPf1JAroQcRm2CrQEdvF
	Y6C7WxeRXlEnd1IJHC3JBKMb9L8s8gMlAlUxTWHCEnIQXlT4UZm7wp1eCZLfN75diIZoY3D4oCqTY
	o9wBKgxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcimv-00000004deg-2IIC;
	Tue, 28 Jan 2025 10:25:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcimt-00000004deD-0tYF
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 10:25:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tcimr-0003wr-U0; Tue, 28 Jan 2025 11:25:41 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tcimq-002HJ0-2e;
	Tue, 28 Jan 2025 11:25:40 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tcimq-000wcr-2O;
	Tue, 28 Jan 2025 11:25:40 +0100
Date: Tue, 28 Jan 2025 11:25:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z5iwpH1rFFa92l85@pengutronix.de>
References: <20250126213930.256425-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250126213930.256425-1-m.grzeschik@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_022543_250726_04CD8748 
X-CRM114-Status: GOOD (  23.52  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] PWM: imx: pwm-imx-tpm: Add driver support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Sun, Jan 26, 2025 at 10:39:30PM +0100, Michael Grzeschik wrote:
> Import the Linux v6.12 state of the driver to enable barebox control of PWM
> LEDs, backlights and other peripherals.
> 
> This has been tested on the IMX93.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
> +static int pwm_imx_tpm_probe(struct device *dev)
> +{
> +	struct pwm_chip *chip;
> +	struct imx_tpm_pwm *tpm;
> +	struct clk *clk;
> +	void __iomem *base;
> +	int ret;
> +	unsigned int npwm;
> +	u32 val;
> +	int i;
> +
> +	base = dev_platform_ioremap_resource(dev, 0);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	clk = clk_get_enabled(dev, NULL);
> +	if (IS_ERR(clk))
> +		return dev_err_probe(dev, PTR_ERR(clk),
> +				     "failed to get PWM clock\n");
> +
> +	/* get number of channels */
> +	val = readl(base + PWM_IMX_TPM_PARAM);
> +	npwm = FIELD_GET(PWM_IMX_TPM_PARAM_CHAN, val);
> +
> +	tpm = xzalloc(sizeof(*tpm));
> +	if (IS_ERR(tpm))
> +		return PTR_ERR(tpm);

xzalloc never returns an error (and if it would, it would likely be
NULL)

> +
> +	for (i = 0; i < npwm; i++) {
> +		struct imx_tpm_pwm_chip *tpmc = &tpm->pwm[i];

check npwm against ARRAY_SIZE(tpm->pwm)?

> +
> +		chip = &tpmc->chip;
> +
> +		tpmc->tpm = tpm;
> +		tpmc->tpm->base = base;
> +		tpmc->tpm->clk = clk;
> +
> +		chip->ops = &imx_tpm_pwm_ops;
> +		chip->devname = basprintf("pwm%d", i);

Use xasprintf() when not checking for an error.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


