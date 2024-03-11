Delivery-date: Mon, 11 Mar 2024 15:34:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjgjl-001B15-2B
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 15:34:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjgjl-0008Vn-2K
	for lore@pengutronix.de; Mon, 11 Mar 2024 15:34:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p7FyRFM/tXTybIG2Xh4Co1+2xS2MuFsnNuQOJih2uLo=; b=yN7tzPkaHKysbOmTKuCdlt6HDJ
	XjIqnX/n7y1yD74OTTlXiXij6kPGjyoBmv34QjqJIf1PcUF4vBHo0vOBC2i2isvE1zmwmqvFIvUX4
	q7t+pLwOWq8UDe50/3p6rbVHwIJ1vfyEfQLhrdjC1riLC9wHcf1UeqcPQf090p6AoPp8LQUpP5djQ
	C6DBpyeyw3uc3o3fyA/7tdzM0mxmC7rSWuZOTvVg4M0GseOsm2YD0DE0KHcovswqbTww0AuOKFh2T
	x0R59tyqW5JwXyW+ll9H+vboJ2fcWQ1eeLEV+IUPX5ydfkK9bKprmlQmH7l+rBERXNkOUvJYbNKMN
	AN3pjDnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjgj8-00000001oqf-0oL2;
	Mon, 11 Mar 2024 14:34:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjgj4-00000001opq-1tr3
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 14:34:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rjgj1-0007tE-Rt; Mon, 11 Mar 2024 15:33:59 +0100
Message-ID: <591d7ddb-2b92-4241-9a74-41af3566241a@pengutronix.de>
Date: Mon, 11 Mar 2024 15:33:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240311-karo-imx8mp-som-board-upstreaming-v1-0-7c77f9ba02e5@pengutronix.de>
 <20240311-karo-imx8mp-som-board-upstreaming-v1-4-7c77f9ba02e5@pengutronix.de>
 <c77f0333-386e-4201-b7d1-4cf186b15666@pengutronix.de>
 <2fc64924-48e5-4265-950e-0527c034628b@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <2fc64924-48e5-4265-950e-0527c034628b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_073402_716095_A11DF02A 
X-CRM114-Status: GOOD (  18.78  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/6] arm: dts: karo: import dts for karo-qsxp-ml81
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Stefan,

On 11.03.24 15:23, Stefan Kerkmann wrote:
> Hello Ahmad,
> 
> On 11.03.24 11:02, Ahmad Fatoum wrote:
>> Hello Stefan,
>>
>> On 11.03.24 10:10, Stefan Kerkmann wrote:
>>> From: Marc Kleine-Budde <mkl@pengutronix.de>
>>>
>>> This imports the device tree for the Ka-Ro QSXP, which is a i.MX8M Plus
>>> solder down system on module. The sources have been adapted from the
>>> offical Ka-Ro github[1], commit a49b38ec97854c0cd9cd83a9f4ae3b56e99a58b6.
>>>
>>> [1]: https://github.com/karo-electronics/meta-karo-nxp.git
>>
>> To make it easier to sync with Linux, once the device tree goes upstream,
>> could you separate the barebox-specific changes into a separate file?
>>
> 
> Ack.
> 
>>> +	model = "Ka-Ro electronics QSXP-ML81 (NXP i.MX8MP) module";
>>> +	compatible = "karo,imx8mp-qsxp-ml81", "fsl,imx8mp";
>>
>> Add a compatible for the SoM here: "karo,imx8mp-qsxp".

Then, why is it a DTS and not a DTSI?


> You're right, AFAIK the eMMC JEDEC standard mandates 1.8V IOs for HS200
> mode. For DDR mode the IO voltage can be 3.3V or 1.8V, according to the
> datasheet of the used THGBMNG5D1LBAIL eMMC (if the product pictures are
> anything to go by). So the correct voltage ranges property would be
> `voltage-ranges = <1800 1800 3300 3300>`?

Your I/O Voltage (vccq) is fixed at 1.8V, so 3300 sounds wrong.

> The line itself was copied verbatim from
> https://github.com/karo-electronics/meta-karo-nxp/blob/mickledore/recipes-kernel/linux/linux-karo-6.1/mx8-nxp-bsp/dts/freescale/imx8mp-karo.dtsi#L263
> 
> 
>> Either way, it doesn't matter to barebox.
> So in the end we just delete it?

Just delete it.

Cheers,
Ahmad

> 
>>> +	non-removable;
>>> +	status = "okay";
>>> +};
>>> +
>>> +&wdog1 {
>>> +	pinctrl-names = "default";
>>> +	pinctrl-0 = <&pinctrl_wdog>;
>>> +	fsl,ext-reset-output;
>>> +	status = "okay";
>>> +};
>>> +
>>> +&iomuxc {
>>> +	pinctrl_i2c1: i2c1grp {
>>> +		fsl,pins = <
>>> +			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL			0x400001c2
>>> +			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA			0x400001c2
>>> +		>;
>>> +	};


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



