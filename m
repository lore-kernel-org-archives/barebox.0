Delivery-date: Tue, 28 Jan 2025 16:28:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcnVU-005ZMH-1r
	for lore@lore.pengutronix.de;
	Tue, 28 Jan 2025 16:28:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcnVU-0006tA-Kx
	for lore@pengutronix.de; Tue, 28 Jan 2025 16:28:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C/jH4fF8ibZRGlsoXo3sX5sm9qeogwSQKRZKCXzoSPk=; b=ocsxHBAKkzilOqqyXb3tkYoCDH
	S4QNaPd8kT1JhdqI7RQMtN7FxCfn3mTLDJ8jae8UsztSq7teJwGaZrLf7tRmk/m0a8izV+neXI2t0
	rFctrFl6F5vmcElceinYx6Re6Icoc2NCUt8I0nzKLXYLINYDpbB4WjfNu9qSP2XHi8zbvob5RXFQH
	CcessC22PkOKUqpz5+9pyF4dKsY9Qi4elO/EAyoGK3nZk56P0+lDdnf5LNY73gNlzMgInCZo6INS8
	WFtcs0zkGS4hQjWiqlFncXbZc0mkSYTSCSfIhUja4xlP0ytMfRJjUWqAhLu236/AX/nWbdGtHhHea
	FRMUL1LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcnV4-000000058hU-3k0i;
	Tue, 28 Jan 2025 15:27:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcnV1-000000058fL-2Ukz
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 15:27:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tcnUy-0006mD-Tv; Tue, 28 Jan 2025 16:27:32 +0100
Message-ID: <99fd4b6d-2350-4616-8fe5-1afbb490afd9@pengutronix.de>
Date: Tue, 28 Jan 2025 16:27:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michael Grzeschik <m.grzeschik@pengutronix.de>,
 barebox@lists.infradead.org
References: <20250128151444.1141018-1-m.grzeschik@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250128151444.1141018-1-m.grzeschik@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_072735_645097_6970099E 
X-CRM114-Status: GOOD (  16.72  )
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
Subject: Re: [PATCH v2] PWM: imx: pwm-imx-tpm: Add driver support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Michael,

On 28.01.25 16:14, Michael Grzeschik wrote:
> +	for (i = 0; i < npwm; i++) {
> +		struct imx_tpm_pwm_chip *tpmc = &tpm->pwm[i];
> +
> +		chip = &tpmc->chip;
> +
> +		tpmc->tpm = tpm;
> +		tpmc->tpm->base = base;
> +		tpmc->tpm->clk = clk;
> +
> +		chip->ops = &imx_tpm_pwm_ops;
> +		chip->devname = xasprintf("pwm%d", i);

You're not registering different PWM controllers here, but channels
of the same PWM controller. If another PWM controller is enabled
and probed, it will try to claim pwm0 again for itself and the
later probe would fail.

Until we have PWM channel support in the core, you will need to
take care of this here yourself by using e.g. pwmXchY as name.
See drivers/pwm/pwm-stm32.c for an example. You'll likely want
to drop the + 1 there though, because TPM channels start counting
from zero (as seen in imx93-pinfunc.h)

Thanks,
Ahmad

> +		chip->id = i;
> +		chip->dev = dev;
> +
> +		ret = pwmchip_add(chip);
> +		if (ret)
> +			return dev_err_probe(dev, ret, "failed to add PWM chip\n");
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id imx_tpm_pwm_dt_ids[] = {
> +	{ .compatible = "fsl,imx7ulp-pwm", },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, imx_tpm_pwm_dt_ids);
> +
> +static struct driver imx_tpm_pwm_driver = {
> +	.name = "imx7ulp-tpm-pwm",
> +	.probe	= pwm_imx_tpm_probe,
> +	.of_compatible = imx_tpm_pwm_dt_ids,
> +};
> +coredevice_platform_driver(imx_tpm_pwm_driver);
> +
> +MODULE_AUTHOR("Anson Huang <Anson.Huang@nxp.com>");
> +MODULE_DESCRIPTION("i.MX TPM PWM Driver");
> +MODULE_LICENSE("GPL v2");


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


