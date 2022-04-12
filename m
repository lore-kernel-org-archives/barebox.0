Delivery-date: Tue, 12 Apr 2022 10:04:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neBVl-00GxxZ-RA
	for lore@lore.pengutronix.de; Tue, 12 Apr 2022 10:04:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neBVj-0004aG-7D
	for lore@pengutronix.de; Tue, 12 Apr 2022 10:04:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FZeSIwKWdaMiMwKaFEp7WSpUEEtsXDiMHAPD20kXnvE=; b=Zx5bb68q6LID8iEao7BLWLYdLn
	uEmtwfnrCDd67Z7Rs1xFnTg4+FwpDScq3N6CGsL7ujKWvb7aKabkre1Bv/AMAFVwxRGMQQCPdXc1y
	nr16VWFC//3ETOkFAwQh4vK/q8sGTVlgzEZbftIrph3jHcp7YWlPL37Vz+FWBxGteXz/lumkB79/K
	5zgytk4wvVBiAhLDBorhQV4GwiVarAF1Fzg9kZwnF/ctRl1q9QBpvT8oz6dzKrmGXIxE2dozRkUFN
	4gis72U8VJOIWs1y1LwAMI559Ie3qm8ycJ3YRqJVFfoTtGFu1wfvWWy+uHLb5pWQRDvIhNe439C0F
	JMqLxlHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neBUU-00CQv1-Ja; Tue, 12 Apr 2022 08:03:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neBUC-00CQrz-E3
 for barebox@lists.infradead.org; Tue, 12 Apr 2022 08:02:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neBUB-0004Jn-36; Tue, 12 Apr 2022 10:02:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neBUA-0000SO-PN; Tue, 12 Apr 2022 10:02:50 +0200
Date: Tue, 12 Apr 2022 10:02:50 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220412080250.GW4012@pengutronix.de>
References: <20220408082950.824927-1-o.rempel@pengutronix.de>
 <20220408082950.824927-5-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220408082950.824927-5-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:00:15 up 12 days, 20:29, 66 users,  load average: 0.40, 0.15, 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_010252_570052_8E9F4A3B 
X-CRM114-Status: GOOD (  19.77  )
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
Subject: Re: [PATCH v4 04/13] net: add DSA framework to support basic switch
 functionality
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 08, 2022 at 10:29:41AM +0200, Oleksij Rempel wrote:
> diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
> new file mode 100644
> index 0000000000..5be38d32b0
> --- /dev/null
> +++ b/drivers/net/dsa.c

> +static int dsa_switch_register_master(struct dsa_switch *ds,
> +				      struct device_node *np,
> +				      struct device_node *master, int port)
> +{
> +	struct device_node *phy_node;
> +	struct phy_device *phydev;
> +	struct dsa_port *dp;
> +	int ret;
> +
> +	of_device_ensure_probed(master);

I think this can be dropped as it's also done by
of_find_eth_device_by_node() called below.

Sascha

> +
> +	if (ds->edev_master) {
> +		dev_err(ds->dev, "master was already registered!\n");
> +		return -EINVAL;
> +	}
> +
> +	ds->edev_master = of_find_eth_device_by_node(master);
> +	if (!ds->edev_master) {
> +		dev_err(ds->dev, "can't find ethernet master device\n");
> +		return -ENODEV;
> +	}
> +

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

