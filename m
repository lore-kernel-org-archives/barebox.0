Delivery-date: Wed, 19 Feb 2025 13:20:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkj4J-004J5s-0I
	for lore@lore.pengutronix.de;
	Wed, 19 Feb 2025 13:20:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkj4H-00010h-Tj
	for lore@pengutronix.de; Wed, 19 Feb 2025 13:20:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7I0+ShPe3i3eDChsGeozl1AEv3lqgVn5paq2xx8zd1A=; b=XYANkvbbpGq9oYf0+q8uPLVFkA
	jg0GaUNvISLbeChRVQfU9jh1YribjM55fTtNiVWXwz++ZN8aOdiJdD/8WsuYc2IY6bJNYHub4f/xg
	ckU7Xvw0sYbA4g/X4kn5D5y9xV+F6w3amqp+mnH8wzNOjFY1M2l6D+Xk5WUZYR68ORytegiOo1kBr
	xBD+iYtf0UxNRA9xO0pOV/RClmBQ4tgxVKw1xLtu577eihCRuS75NEGg2GFLeZVYABMziwS50qYQd
	kMyFlxmwbkKy0/C9uDQapkRGDUL1eb33QCxocJWd4dRCAccz4uowjK6DWECNA8afGdg+j4GY475HO
	Ca/sbnUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkj3o-0000000Cd4e-0yr6;
	Wed, 19 Feb 2025 12:20:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkj3l-0000000Cd3M-2Wl3
	for barebox@lists.infradead.org;
	Wed, 19 Feb 2025 12:20:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tkj3k-0000rO-AM; Wed, 19 Feb 2025 13:20:12 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tkj3k-001lVC-0P;
	Wed, 19 Feb 2025 13:20:12 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tkj3k-006FpJ-07;
	Wed, 19 Feb 2025 13:20:12 +0100
Date: Wed, 19 Feb 2025 13:20:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z7XMfIV1bnTVFpuZ@pengutronix.de>
References: <20250218-v2024-10-0-topic-socfpga-agilex5-v2-0-30b6f507810b@pengutronix.de>
 <20250218-v2024-10-0-topic-socfpga-agilex5-v2-8-30b6f507810b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250218-v2024-10-0-topic-socfpga-agilex5-v2-8-30b6f507810b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_042013_640408_E53607A4 
X-CRM114-Status: GOOD (  17.09  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 08/10] net: phy: add Analog Devices ADIN1300
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Feb 18, 2025 at 10:21:33AM +0100, Steffen Trumtrar wrote:
> The Analog Devices ADIN1300 is a low power 10Mbps,100Mbps, and 1Gbps
> ethernet phy.
> (https://www.analog.com/media/en/technical-documentation/data-sheets/adin1300.pdf)

Where is this driver from? Can you add a reference to the commit
message?

> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/net/phy/Kconfig  |   7 +
>  drivers/net/phy/Makefile |   1 +
>  drivers/net/phy/adin.c   | 360 +++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 368 insertions(+)
> 

...

> +static u16 adin_ext_read(struct phy_device *phydev, const u32 regnum)
> +{
> +	u16 val;
> +
> +	phy_write(phydev, ADIN1300_MII_EXT_REG_PTR, regnum);
> +	val = phy_read(phydev, ADIN1300_MII_EXT_REG_DATA);
> +
> +	debug("%s: adin@0x%x 0x%x=0x%x\n", __func__, phydev->addr, regnum, val);

phydev_dbg() please.

> +
> +	return val;
> +}
> +
> +static int adin_ext_write(struct phy_device *phydev, const u32 regnum, const u16 val)
> +{
> +	debug("%s: adin@0x%x 0x%x=0x%x\n", __func__, phydev->addr, regnum, val);

ditto

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


