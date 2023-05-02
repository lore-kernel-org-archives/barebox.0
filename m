Delivery-date: Tue, 02 May 2023 11:23:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptmEi-002Apq-RW
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:23:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptmEg-0003gS-Qc
	for lore@pengutronix.de; Tue, 02 May 2023 11:23:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xGhsTXLgn+DjJy0N2IgYaJ5nhy+4c7k/YMv0q/R5mMo=; b=Hz+f0w/QyoaqJOr2r7S4jHYUtF
	bjzrIMdQnwDofiKj/3fo+IW3PqerE/TWJvrAKM9kU0G6eM++Hr0txMsEm0h/px19gl84b/HdIKQXN
	b9thqed14+4w1ZHydMjNDkB8mI9Q7/s3Za2Umf3cR8hnf1Z7KNV1QjeDvz+evVGlNdCqvc3j+GtJC
	nkVZEtVZ1rhOlHBkQ5pNF8+ZtP2PnbyY5h5GVo2MNaFNfxfB66OGh+ibihUoWvJG24AbpKtq2gEya
	9O9eHEItSKTICDEQbbzHnAuPOA4p69k4KLHItCdjgUz7xjOagyuKGxIpZpmbF8Od+PJCvfqmeNycn
	/1Bnxo2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmDk-000lGr-0Q;
	Tue, 02 May 2023 09:22:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmDh-000lG9-1b
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:22:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptmDg-0003aB-74; Tue, 02 May 2023 11:22:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptmDf-00071V-Kq; Tue, 02 May 2023 11:22:47 +0200
Date: Tue, 2 May 2023 11:22:47 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230502092247.GV13543@pengutronix.de>
References: <20230424115908.115474-1-ahmad@a3f.at>
 <20230424115908.115474-2-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230424115908.115474-2-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_022249_534841_498F023E 
X-CRM114-Status: GOOD (  19.07  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] test: self: add basic regulator selftest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Apr 24, 2023 at 01:59:08PM +0200, Ahmad Fatoum wrote:
> This simple test verifies registration and always-on enabling and disabling
> work as they should. It may be extended in future to support more
> complex cases.
> 
> +static const struct of_device_id test_regulator_of_match[] = {
> +	{ .compatible = "barebox,regulator-self-test" },
> +	{ /* sentintel */ },
> +};
> +
> +static struct driver regulator_test_driver = {
> +	.name = "regulator-test",
> +	.probe = regulator_probe,
> +	.of_match_table = test_regulator_of_match,
> +};
> +
> +static struct device_d *dev;
> +
> +static void test_regulator(void)
> +{
> +	extern char __dtbo_test_regulator_start[];
> +	struct device_node *overlay;
> +	int ret;
> +
> +	if (!dev) {
> +		ret = platform_driver_register(&regulator_test_driver);
> +		if (ret)
> +			return;
> +
> +		overlay = of_unflatten_dtb(__dtbo_test_regulator_start, INT_MAX);
> +		of_overlay_apply_tree(of_get_root_node(), overlay);
> +		of_probe();

This needs CONFIG_OF_OVERLAY_LIVE enabled to work. Should we make sure
this option is enabled before running this test?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


