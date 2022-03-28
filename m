Delivery-date: Mon, 28 Mar 2022 12:42:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYmpH-008u9l-Sl
	for lore@lore.pengutronix.de; Mon, 28 Mar 2022 12:42:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYmpK-0005ur-Bo
	for lore@pengutronix.de; Mon, 28 Mar 2022 12:42:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QDg3Co/Xnuh60eA8k0y6S3xw1sVjNCGsB2j5PQNY5RY=; b=OQ7oaa20//GW2uiasY1pDeRRAF
	8sr1r+XuiUkEgURstf6xRau6VTfsRM/r/KQ/+E/JMBH8hrHaxw+Ltub7C3HpRoPXxJm6aPAbNfG3C
	JKxqN25LYE22KsrghhsOsUZJVEbRrRAoizyIyku8q2nWdgAVbAPoUNJnOTdnrmv1LY+G0l9an/D5K
	rN9uQ+TU5+V9tgNncCfcY7N1g0jsnVAFx8VsMDW+GMznkKXHlq1NdUK/+Vt6BQVJ3egOhbCserk7E
	2PbEsNdF9ExYHQsAlk6Ngf53nUWaJzMfSeo69+4tG/7ti+zGhZP551GN6fGhfDzYag3UYrWrEk4wh
	fbKz1svA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYmo6-008Dh4-Ac; Mon, 28 Mar 2022 10:41:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYmo0-008Dg7-S7
 for barebox@lists.infradead.org; Mon, 28 Mar 2022 10:41:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYmnz-0005ix-Js; Mon, 28 Mar 2022 12:40:59 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYmnz-0005iY-9P; Mon, 28 Mar 2022 12:40:59 +0200
Date: Mon, 28 Mar 2022 12:40:59 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220328104059.GU12181@pengutronix.de>
References: <20220321092606.1459834-1-o.rempel@pengutronix.de>
 <20220321092606.1459834-10-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220321092606.1459834-10-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:33:25 up 107 days, 19:19, 91 users,  load average: 0.02, 0.09,
 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_034100_934157_785ED380 
X-CRM114-Status: GOOD (  23.59  )
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
Subject: Re: [PATCH v1 9/9] net: dsa: add support for SJA11xx switches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 21, 2022 at 10:26:06AM +0100, Oleksij Rempel wrote:
> Port SJA11xx driver from u-boot v2022.04-rc2 to provide support for NXP SJA11xx
> series of switches.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/Kconfig   |   17 +
>  drivers/net/Makefile  |    1 +
>  drivers/net/sja1105.c | 2918 +++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 2936 insertions(+)
>  create mode 100644 drivers/net/sja1105.c
> 
> +
> +static int sja1105_check_device_id(struct sja1105_private *priv)
> +{
> +	const struct sja1105_regs *regs = priv->info->regs;
> +	u8 packed_buf[SJA1105_SIZE_DEVICE_ID] = {0};
> +	enum sja1105_switch_id id;
> +	u64 device_id;
> +	u64 part_no;
> +	int rc;
> +
> +	rc = sja1105_xfer_buf(priv, SPI_READ, regs->device_id, packed_buf,
> +			      SJA1105_SIZE_DEVICE_ID);
> +	if (rc < 0)
> +		return rc;
> +
> +	sja1105_packing(packed_buf, &device_id, 31, 0, SJA1105_SIZE_DEVICE_ID,
> +			UNPACK);
> +
> +	rc = sja1105_xfer_buf(priv, SPI_READ, regs->prod_id, packed_buf,
> +			      SJA1105_SIZE_DEVICE_ID);
> +	if (rc < 0)
> +		return rc;
> +
> +	sja1105_packing(packed_buf, &part_no, 19, 4, SJA1105_SIZE_DEVICE_ID,
> +			UNPACK);
> +
> +	for (id = 0; id < SJA1105_MAX_SWITCH_ID; id++) {
> +		const struct sja1105_info *info = &sja1105_info[id];
> +
> +		/* Is what's been probed in our match table at all? */
> +		if (info->device_id != device_id || info->part_no != part_no)
> +			continue;
> +
> +		/* But is it what's in the device tree? */
> +		if (priv->info->device_id != device_id ||
> +		    priv->info->part_no != part_no) {
> +			printf("Device tree specifies chip %s but found %s, please fix it!\n",
> +			       priv->info->name, info->name);

Replace printf with dev_err throughout this patch,

> +	priv->max_xfer_len = SJA1105_SIZE_SPI_MSG_MAXLEN;
> +	if (priv->max_xfer_len > max_xfer)
> +		priv->max_xfer_len = max_xfer;
> +	if (priv->max_xfer_len > max_msg - SJA1105_SIZE_SPI_MSG_HEADER)
> +		priv->max_xfer_len = max_msg - SJA1105_SIZE_SPI_MSG_HEADER;
> +
> +	rc = sja1105_check_device_id(priv);
> +	if (rc < 0) {
> +		dev_err(dev, "Device ID check failed: %d\n", rc);
> +		return rc;
> +	}
> +
> +	ds = &priv->ds;
> +	ds->dev = dev;
> +	ds->num_ports = sja1105_info[id].num_ports;
> +	ds->ops = &sja1105_dsa_ops;
> +	ds->needed_headroom = VLAN_HLEN;
> +
> +	dsa_register_switch(ds);

Return value should be checked.

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

