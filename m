Delivery-date: Mon, 14 Aug 2023 10:36:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVT3f-003YO8-8C
	for lore@lore.pengutronix.de; Mon, 14 Aug 2023 10:36:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVT3d-0004Y9-5J
	for lore@pengutronix.de; Mon, 14 Aug 2023 10:36:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ujSO6W1YCI1N/h6sJLw/Vosj3NFgWcgfaE0JhwigYiM=; b=rEEjvSewhqkqwmfvW44PCzL3cv
	0DLADGLfT8Vp2ULLjUMAV0d2n59tolqCnmWVitqXrTT0513dHdsiZM4Pq8Oa1n453W8NmuSYNIjXG
	v4pe0rSjbIZBcA4MS5XXG/pTHuxOaP1DDyQD32Q9MhYwpIbarioclA2HiD/eMJ0Nsst5NxQX2AXzl
	Yw/MfOto4vKfHWLQ6CEdTYh7qMWxGBx/vpGlCEDtCS6HXte4Siznfz+T15yGyVFJBI6Rle5kLvJPS
	0OnTVrFUCQN0LoIcr0truqssLi7hYsKMnnrYygff2KEYTXXRt33YnybRBw6AicWyiw8haoNo5gnEY
	7TuxQLNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVT2H-00GXQH-1u;
	Mon, 14 Aug 2023 08:34:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVT2B-00GXO0-2o
	for barebox@lists.infradead.org;
	Mon, 14 Aug 2023 08:34:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qVT29-0004Dw-Sh; Mon, 14 Aug 2023 10:34:41 +0200
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qVT29-0003AC-LC; Mon, 14 Aug 2023 10:34:41 +0200
Date: Mon, 14 Aug 2023 10:34:41 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230814083441.GC26389@pengutronix.de>
References: <20230811114819.2646027-1-o.rempel@pengutronix.de>
 <24507806-3299-67de-966a-9537b21a03d3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <24507806-3299-67de-966a-9537b21a03d3@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_013443_911656_3E75CBF7 
X-CRM114-Status: GOOD (  20.85  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] ARM: add Skov i'MX8MP based board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hallo Ahmad,

On Fri, Aug 11, 2023 at 02:50:07PM +0200, Ahmad Fatoum wrote:
> Hello Oleksij,
> 
> On 11.08.23 13:48, Oleksij Rempel wrote:
> > +static const struct of_device_id skov_imx8m_of_match[] = {
> > +	{ .compatible = "skov,imx8mp" },
> 
> Are you sure, you don't want to have a -someboard suffix in case you need
> to differentiate future variants?

Yes, it is same way as it is done for the skov,imx6 boards. There is one
in barebox devicetree which is generic for all. Then board code reads
version from gpio pins and detect precise version.

This patch provide only initial support, version detection will be added
later.

> 
> > +	pmic@25 {
> > +		compatible = "nxp,pca9450c";
> 
> FYI, there is a driver here:
> https://lore.barebox.org/barebox/20230724075258.1840671-1-h.assmann@pengutronix.de/
> 
> That would allow you to get $global.system.reset if that's something that's
> intereting to you.

Yes, this can be added later if needed.

> 
> > +config MACH_SKOV_IMX8M
> > +	bool "Skov IMX8Mx based boards"
> > +	select ARCH_IMX8MP
> > +	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> > +	select FIRMWARE_IMX8MP_ATF
> > +	select ARM_SMCCC
> > +	select MCI_IMX_ESDHC_PBL
> > +	select IMX8M_DRAM
> > +	select I2C_IMX_EARLY
> > +	select DSA
> > +	select DRIVER_NET_KSZ9477
> 
> Please drop last two selects. You should only select what's actually required
> for booting. At most, you could do an imply here. Also, please enable in defconfig
> for compile coverage. There you can enable DSA and KSZ9477 support.

Ok.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


