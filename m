Delivery-date: Mon, 24 Jan 2022 10:12:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBvOt-00BjPf-Im
	for lore@lore.pengutronix.de; Mon, 24 Jan 2022 10:12:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBvOr-0003xz-He
	for lore@pengutronix.de; Mon, 24 Jan 2022 10:12:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CekNCG/ldZGxH1gqUeJ3I0Ictxh+EvkuUBDROuxI3q8=; b=d2LcWZDRly+tq7
	W9v4+M/476Zvfd1pMhBr+YiE74RgGrP8+gqshvm4YlRDTM5a4OBqNKPughJOffPjuywjUAzzywKAS
	2OPqq+25cFOVkSW/Un4+NLcl/DtwSgqCrg0Cd42zH4jMIOxglG6wpN52bcIoG4KkPuSHSpYH7SAnJ
	/qL1V9KHhO6yqfLnywCliN7fjktu4zgOnkF6ckDADLGisKuzbuIGrFfpTDheNOuUXv5C3y6YeaVoe
	aGeKfM99oYJTrPb0MLW+VJY8xprEUY74p5BQjdbkpVolDaF0ckJq6j9TEOg3368MC6QRBqpIUHOqO
	0vCnO9JKjVcE1Dle0DKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBvNb-002jzX-VU; Mon, 24 Jan 2022 09:11:16 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBvNX-002jye-3C
 for barebox@lists.infradead.org; Mon, 24 Jan 2022 09:11:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1643015463;
 bh=hv3ocmKmII7sLqC3L05Vnzw7blBRzO4wKAi+Qp4yfmc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=i++bERr/h5LgzETRu0sHeTCHTD/zMTBQBmEzQhY4r044+/93c6GUvFghCU40tcI8r
 /0K3iKcWQY79HVJgRGfDSutfJs1MuDB6P39zlkI3Tcp+B73KbWggdy5J0DOHeJNezf
 d/OkCJQiK//2rRr4LI4/l7poSKf3OUdcEZMjfsFw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.79.70] ([80.245.79.70]) by web-mail.gmx.net
 (3c-app-gmx-bs10.server.lan [172.19.170.61]) (via HTTP); Mon, 24 Jan 2022
 10:11:03 +0100
MIME-Version: 1.0
Message-ID: <trinity-f96a614e-0fb1-40e9-b179-fcff525119d1-1643015462944@3c-app-gmx-bs10>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Frank Wunderlich <linux@fw-web.de>, barebox@lists.infradead.org
Date: Mon, 24 Jan 2022 10:11:03 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220124085513.GX23490@pengutronix.de>
References: <20220123165149.158515-1-linux@fw-web.de>
 <20220124085513.GX23490@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:hkxWcDxZfrfnav4OPSLn1Cc04gyBRZ8CK00+irELpjiegUFR6dGo53xR7MI342KgmjDuW
 ZPwPDWG7O4Xc0bPMTibC291wsPa7av+mYRaE8Y/JQuIYgjBsCn5q/tCD85V47L65MXnPF5psW6iN
 VyOWAbExzVUeTbiWS3kJL4aCvU9oyU/agZOn/Wvxi8Xajc/Jgon3Qi1p+tpHi+6J4/Orkll7tl4R
 /Le4WbXLTJdAhxK6zqfl3W5eTCYSAqaR8m3IAhGcYaj1EmjkVU2E4Bsveno3C6UuSSJ2kku3pZgj
 K4=
X-UI-Out-Filterresults: notjunk:1;V03:K0:GDYg8RNmvPg=:ExlTEhkvuz0n1HMKWnBx7W
 D5BEvSb/0WzKcUmBE1QKslFYiPXPY2DWbnDLmJAhCmzZL2ZlhriI5xMXhfvnd+DzZazHTJNvr
 10WocsWe6eH02qd8DRaYs6V9ySGq2dsRExtCV5eYyV+pJyflOFTD3qE+GxLyuuh3jU79O6cFy
 PbijWwuFXWO6Q84xBaO1mhqAZQwN5g/rypW6jk0xzYMn9YgwXQZtg4i5aZ2xyn1curkYKF+pT
 G8ZxnjJ/7UQHENInyIQNapODijfEEAzAVC6B9+bEj7u5OPFXH8v8j1w666ziNKx0iwM0XfiSp
 SMitiElOcqUN4xhyp/pmlLIeBAJXlMJGP/ekyIcacajDFSJC4Nas9Bpf1VhJMdIv/pZLsqNXV
 kGXxW6crKn2Kxs7tkOW1H1cF7oj77Ze9q1Zg5Yz3zJu1t3pupWHcCRY8aJ/Ccvbq2vmaVOkUN
 HKlWclkJW981Rw+hmHy903HpM4AjX1+AEb15O+gCnERYXI5ZVoGIQLWiZBWDjzay9SMsgz3p1
 l0pAFoKxpspFEcynHuCzi9usumRQmwTTIa9DfRV5MYmg4oNARrX+JOcbMSLnaMqKQYM1vlB5q
 ifO0lij5vyWWccHcJmec7U53RpJsP45/ixc15DpBXtptln9RY9G9JTuzvwW5bFceTznb4x2NP
 mguLl6onGSKMu7tf46PSKPHxjj9I3kExYY235a6qj/ZdpSXp2NMhGK1nxkDQpEcZJt28IXwRr
 1ooLV2KL14UupQy1PQpRN/Wn5cbLzQlRrf0Rs6xLk+76oOqV7tdHHTv8ewDMvFEthQFn9Eepc
 kghU5Up
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_011111_459055_39419835 
X-CRM114-Status: GOOD (  21.65  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Aw: Re: [PATCH v1] ARM: Rockchip: Add rk3568 BananaPi R2 Pro board
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,
> Gesendet: Montag, 24. Januar 2022 um 09:55 Uhr
> Von: "Sascha Hauer" <s.hauer@pengutronix.de>

> > +static bool machine_is_rk3568_r2pro = false;
> > +
> > +static int rk3568_r2pro_probe(struct device_d *dev)
> > +{
> > +	enum bootsource bootsource = bootsource_get();
> > +	int instance = bootsource_get_instance();
> > +
> > +	barebox_set_model("RK3568 R2PRO");
> > +	barebox_set_hostname("rk3568-r2pro");
> > +	machine_is_rk3568_r2pro = true;
>
> Maybe add a bpi to the hostname, model, variable names and instead drop
> the rk3568?

i can do...

> > +	if (!IS_ENABLED(CONFIG_AIODEV))
> > +		return 0;
> > +
> > +	if (!machine_is_rk3568_r2pro)
> > +		return 0;
> > +
> > +	hwid_chan = aiochannel_by_name("aiodev0.in_value1_mV");
> > +	if (IS_ERR(hwid_chan)) {
> > +		ret = PTR_ERR(hwid_chan);
> > +		goto err_hwid;
> > +	}
> > +
> > +	ret = aiochannel_get_value(hwid_chan, &hwid_voltage);
> > +	if (ret)
> > +		goto err_hwid;
> > +
> > +	pr_info("hwid_voltage: %d\n", hwid_voltage);
>
> The voltage is not really interesting. This should be a pr_debug.

ok, i change this

> > +
> > +	if (hwid_voltage == 1800)
> > +		hwid = "V00";
> > +	else
> > +		hwid = "unknown";
>
> Have you verified this board really encodes the hardware revision using
> this adc channel?

yes, in shematics it is named SARADC_VIN1_HW_ID (which should map the in_value1_mV), but i have only this one prototype for testing.

> > diff --git a/arch/arm/dts/rk3568-bpi-r2-pro.dts b/arch/arm/dts/rk3568-bpi-r2-pro.dts
>
> I saw this device tree looks different from the one you sent for kernel
> inclusion. This is not a problem now, but once the kernel dts is
> upstream it will show up in dts/ in the barebox tree. We then usually
> include the upstream dts from the barebox board dts, so that only the
> barebox specific additions are in the barebox dts. Given that it would
> be nice if you could minimize the differences now already, so that later
> inclusion of the upstream dts becomes easier.

ok, we can wait for kernel dts to be merged, but most stuff in kernel dts will be unused in barebox. so i started with the evb one which is enough for barebox atm. Only added the leds.

regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

