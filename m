Delivery-date: Mon, 31 Jan 2022 10:36:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nET76-001XFc-QB
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 10:36:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nET75-0001qA-Ix
	for lore@pengutronix.de; Mon, 31 Jan 2022 10:36:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SAWPulh94vu93P3V8pgHQnfTLeQVhSYEyEbMJGwlANM=; b=UJgR36rpmeDeTVQuDBzeNvo3Hq
	13cX6mFxjvx2nCihM1kzKFcja0A8jI9AWiN/RfBHaYD3HuASJHmV4wu3Ru7bMe7j3j4yCUa0KRpiB
	hFRRTMYSKWEkTwAJSSCaZChRrAyUVKV8N4AJxo9vB1f/+9QV5QGHvh1Kn23D+jxHS2MzWa2BiUX62
	BmkjEyc4MgvxC+nmbO75dytc5eRHChv90mfRs4V7xVPaP/6NhPYCUKk+2lQjyEHANc/4IXYiL07JC
	RBq3FFk2WFIrQyNzHnvwvP/HVz/jSfSKpfPJyk/SytyYs6gGgjculKmWQfuR72n1biE/Z7fMxj5CP
	Zk/IPk4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nET5h-008fRw-4d; Mon, 31 Jan 2022 09:35:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nET5c-008fRI-Lz
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 09:35:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nET5b-0001XZ-1z; Mon, 31 Jan 2022 10:35:11 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nET5a-0004dD-NT; Mon, 31 Jan 2022 10:35:10 +0100
Date: Mon, 31 Jan 2022 10:35:10 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220131093510.GY23490@pengutronix.de>
References: <20220128082317.2410427-1-o.rempel@pengutronix.de>
 <20220128082317.2410427-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220128082317.2410427-3-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:26:15 up 51 days, 18:11, 85 users,  load average: 0.03, 0.07, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220131_013512_748193_0591A89F 
X-CRM114-Status: GOOD (  22.15  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/4] ARM: rpi: move clk support to a separate driver
 and enable deep-probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 28, 2022 at 09:23:15AM +0100, Oleksij Rempel wrote:
> To make deep-probe work properly, we need clock support be registered as
> driver to related device.
> 
> To avoid regression, deep-probe is enabled in the same patch.

Is this really needed?

> +static int bcm2835_cprman_probe(struct device_d *dev)
> +{
> +	struct device_node *mbox_node;
> +	struct clk *clk_cs;
> +	int ret;
> +
> +	mbox_node = of_find_compatible_node(NULL, NULL, "brcm,bcm2835-mbox");
> +	if (!mbox_node) {
> +		pr_err("Missing mbox node\n");
> +		return -ENOENT;
> +	}
> +
> +	ret = of_device_ensure_probed(mbox_node);
> +	if (ret) {
> +		pr_err("Can't probe mbox node. %i\n", ret);
> +		return ret;
> +	}
> +
> +	clks[BCM2835_CLOCK_EMMC] =
> +		rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_EMMC,
> +					 "bcm2835_mci0");
> +	if (IS_ERR(clks[BCM2835_CLOCK_EMMC]))
> +		return PTR_ERR(clks[BCM2835_CLOCK_EMMC]);
> +
> +	clkdev_add_physbase(clks[BCM2835_CLOCK_EMMC], 0x20300000, NULL);
> +	clkdev_add_physbase(clks[BCM2835_CLOCK_EMMC], 0x3f300000, NULL);

You shouldn't need these calls anymore because the consumers are now
connected to the clock provider by the device tree binding.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

