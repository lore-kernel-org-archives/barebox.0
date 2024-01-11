Delivery-date: Thu, 11 Jan 2024 16:32:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNx2M-00D7X5-1I
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 16:32:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNx2L-00006I-NE
	for lore@pengutronix.de; Thu, 11 Jan 2024 16:32:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DqcPVbdo2qziGVIJ4w6DoIrJRyiCnw3zVC2VhyacX6o=; b=kE02UpWSuVTLd8WAQ70drTeWb3
	Q2uCH1i0AZMweSVI4488n8KiiFMVEjtErP2LWdpE9I66p6TG4TyWmuhNDBm8t3cReAWmzMv71GtbA
	7pzUe++wAr2eUl0ze9F8kRu8QrKMYKpZYcn4RI5LxbVV375EjpKjiFsK73TSNx29KI20NDmvhWiFb
	8jYCbChoRAoQgGfpS2xCDpXnU6SAuTRorVXILPoHdzUEEP5DrG2xb4Gm8rTM3lP+iLeA+i+rX7jkN
	c5PhFp3wftgC6DD9+WSn+s5fHFg1xZfyqw4la6F2e/pjaFC7w+ki5Xjsny1/tvo09aqbke9SGKQfW
	/U8i2TZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNx1M-000Rxq-1C;
	Thu, 11 Jan 2024 15:31:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNx1I-000RxA-19
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 15:31:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNx1G-0008Go-UC; Thu, 11 Jan 2024 16:30:58 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNx1G-001xRd-Hm; Thu, 11 Jan 2024 16:30:58 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNx1G-00BO59-FW; Thu, 11 Jan 2024 16:30:58 +0100
Date: Thu, 11 Jan 2024 16:30:58 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240111153058.GB2711697@pengutronix.de>
References: <20240111115120.2678876-1-m.felsch@pengutronix.de>
 <20240111115120.2678876-2-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240111115120.2678876-2-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_073100_419638_96031366 
X-CRM114-Status: GOOD (  19.66  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX8M: convert the machine init to the soc
 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jan 11, 2024 at 12:51:20PM +0100, Marco Felsch wrote:
> Convert the i.MX8M machine init code to the previously introduced soc
> framework. The soc driver was mostly copied from Linux with slightly
> adaptions for barebox. To the soc driver is called during the
> postcore_initcall to keep the level aligned with the previous imx_init().
> 
> +static int __init imx8_soc_init(void)
> +{
> +	struct device_node *of_root = of_get_root_node();
> +	struct soc_device_attribute *soc_dev_attr;
> +	struct soc_device *soc_dev;
> +	const struct of_device_id *id;
> +	u32 soc_rev = 0;
> +	const struct imx8_soc_data *data;
> +	int ret;
> +
> +	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
> +	if (!soc_dev_attr)
> +		return -ENOMEM;
> +
> +	soc_dev_attr->family = "Freescale i.MX";
> +
> +	ret = of_property_read_string(of_root, "model", &soc_dev_attr->machine);
> +	if (ret)
> +		goto free_soc;
> +
> +	id = of_match_node(imx8_soc_match, of_root);
> +	if (!id) {
> +		ret = -ENODEV;
> +		goto free_soc;
> +	}

This is executed as an initcall and as such shouldn't assume it's
running on an i.MX8. Please check for foreign SoCs early and return
without an error in that case.

> +
> +	soc_dev_attr->serial_number = basprintf("%016llX", soc_uid);

xasprintf should be fine here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


