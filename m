Delivery-date: Tue, 13 Apr 2021 07:02:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWBC0-0006pQ-FX
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 07:02:28 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWBBz-0003Oc-6T
	for lore@pengutronix.de; Tue, 13 Apr 2021 07:02:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ua5+c81mFMunR9J78gH6Yy46jl6WXh4iJHdykmASSNc=; b=NPtgHLD3zeL++sOB5hVNQNQ7d
	gyBNCVbcWHU624dHu8inB02QDxoZ6upccBaAeCi65ZNGa+tniahiXcHg1TAwJn2ieEQVSGZVUzRVC
	W6BKAWsezYBQxqYchpBnjCki3VJkEbtpc39TMt8wW/gXAKtDK5JikSeuKlMp276k+a/WwYgW3/x/r
	hvhOP3U8ZKwg0k3h7aO+WbWFXqE9+pmjBWsHxu967TBhtUxQNmLKucIv+mjWQATTrOks8j/JlrgZR
	FzBncTLHXmFaWqjTxFNdP/B+vmgrP/3lm1DGCN86A7fkpHky3aJ7j45OednA6ccSNuHNgBViNSQkv
	tWvTU9i6g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWB9s-008GmS-DD; Tue, 13 Apr 2021 05:00:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWB7z-008Gga-SB
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 04:58:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=NSYD4y9NHgF8rXBwJMkE+4wdn8dlfCG0wREIdj9GuOs=; b=pdbpe5Uq2kv6+JmuWgEQdfQ2b0
 ATwkijhNEw6efC6M5TvgpFqKJ9NAR8IBw0ufAe0kSZBO2WSrwfiYi8k0dFWLMu9K8qvdmqrL0R3oW
 1g3WLbr0AFncNP8k5CuJmyGX4qRkVxW9RDs9RCcBJMemDrnvWXDawhKkB+ncJbwqc3pplHI7JfEWV
 fhSk1r8M24LwMadJgcLjZo1f2VdXZcZfzPRSzP0uqSP3VicbT2hqLvHgYiK4CDE8Eri0C0ocGSOrU
 iNV23ZEyWi5udz7jIHBklurjmyX1m5mi63iCPfnVKVuWsD6M40aBnZiMtHZ2wRJGS1cwO6NkWcEdS
 Ui3noqzg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWB7w-006j3Y-Im
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 04:58:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWB7s-0002zN-Bm; Tue, 13 Apr 2021 06:58:12 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWB7r-0001lg-0B; Tue, 13 Apr 2021 06:58:11 +0200
Date: Tue, 13 Apr 2021 06:58:10 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210413045810.GE6950@pengutronix.de>
References: <20210409131149.2184-1-o.rempel@pengutronix.de>
 <20210409131149.2184-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210409131149.2184-2-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:53:15 up 54 days,  8:17, 69 users,  load average: 0.09, 0.10, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_215816_642669_C67A3518 
X-CRM114-Status: GOOD (  18.48  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/6] mci: atmel_mci: add PBL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 09, 2021 at 03:11:44PM +0200, Oleksij Rempel wrote:
> +int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
> +		      unsigned int clock, unsigned int slot)
> +{
> +	struct atmel_mci_priv *priv = &atmci_sdcard;
> +	struct atmel_mci *host = &priv->host;
> +	struct mci_ios ios = { .bus_width = MMC_BUS_WIDTH_4, .clock = 25000000 };
> +
> +	bio->priv = priv;
> +	bio->read = at91_mci_bio_read;
> +
> +	host->regs = base;
> +
> +	atmci_get_cap(host);
> +
> +	/* get real HZ */
> +	host->bus_hz = clock;
> +
> +	host->slot_b = slot;
> +	if (host->slot_b)
> +		host->sdc_reg = ATMCI_SDCSEL_SLOT_B;
> +	else
> +		host->sdc_reg = ATMCI_SDCSEL_SLOT_A;
> +
> +	atmci_writel(host, ATMCI_DTOR, 0x7f);
> +
> +	atmci_common_set_ios(host, &ios);

Is it necessary to call this? The ROM should have already configured the
controller. By relying on this you could drop the controller
initialization code from PBL.

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

