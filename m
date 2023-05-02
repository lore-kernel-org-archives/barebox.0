Delivery-date: Tue, 02 May 2023 13:23:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pto6J-002Eb8-Sa
	for lore@lore.pengutronix.de; Tue, 02 May 2023 13:23:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pto6H-0003hk-RZ
	for lore@pengutronix.de; Tue, 02 May 2023 13:23:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/djQLGEWA6Inddsnay6xhMiCo/tji6T/k41ltUhYyDM=; b=xIdpt9gJg3SmpMuTnffiIsLjZv
	e5lfI/q7KIabsQs0mwz7HS0O2rkZ1M4X2wDKw8QRc97ABg/zVCSqxMNA2/ehoLFGwfg1tvqijDm6g
	QoTE4+So7ko0MoeXwEOxL/sxdTa9Q1+kxy0RzT1H3oEataqKWWe0um45OZjCVDqSV8XPtSp4rrd5r
	PJ14t+EEzxKroztkH1Su9MMhWQ970PH58xZS/cLoa8Sw7pCTTiANULg40LsREAecy8VDDlTvHotbX
	4fi7smzlYpNJDVMmQ2uUT8xmYWmQRaoQhvmNVwMQBlsno+nKkm7YT1+LazkGtzXLczlNhqy7tJxFf
	M9NAP2iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pto5K-001D32-0e;
	Tue, 02 May 2023 11:22:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pto5H-001D1b-1J
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 11:22:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pto5F-0003cP-PV; Tue, 02 May 2023 13:22:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pto5F-0005E8-6K; Tue, 02 May 2023 13:22:13 +0200
Date: Tue, 2 May 2023 13:22:13 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <ahmad@a3f.at>, barebox@lists.infradead.org
Message-ID: <20230502112213.GB29365@pengutronix.de>
References: <20230424115908.115474-1-ahmad@a3f.at>
 <20230424115908.115474-2-ahmad@a3f.at>
 <20230502092247.GV13543@pengutronix.de>
 <239f2cda-c2ff-e746-cffb-52760fc03d53@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <239f2cda-c2ff-e746-cffb-52760fc03d53@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_042215_468120_A05DBB48 
X-CRM114-Status: GOOD (  24.74  )
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

On Tue, May 02, 2023 at 12:04:04PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 02.05.23 11:22, Sascha Hauer wrote:
> > On Mon, Apr 24, 2023 at 01:59:08PM +0200, Ahmad Fatoum wrote:
> >> This simple test verifies registration and always-on enabling and disabling
> >> work as they should. It may be extended in future to support more
> >> complex cases.
> >>
> >> +static const struct of_device_id test_regulator_of_match[] = {
> >> +	{ .compatible = "barebox,regulator-self-test" },
> >> +	{ /* sentintel */ },
> >> +};
> >> +
> >> +static struct driver regulator_test_driver = {
> >> +	.name = "regulator-test",
> >> +	.probe = regulator_probe,
> >> +	.of_match_table = test_regulator_of_match,
> >> +};
> >> +
> >> +static struct device_d *dev;
> >> +
> >> +static void test_regulator(void)
> >> +{
> >> +	extern char __dtbo_test_regulator_start[];
> >> +	struct device_node *overlay;
> >> +	int ret;
> >> +
> >> +	if (!dev) {
> >> +		ret = platform_driver_register(&regulator_test_driver);
> >> +		if (ret)
> >> +			return;
> >> +
> >> +		overlay = of_unflatten_dtb(__dtbo_test_regulator_start, INT_MAX);
> >> +		of_overlay_apply_tree(of_get_root_node(), overlay);
> >> +		of_probe();
> > 
> > This needs CONFIG_OF_OVERLAY_LIVE enabled to work. Should we make sure
> > this option is enabled before running this test?
> 
> No, it doesn't. The overlay has no phandle references into the barebox
> live tree, so it can be applied without symbols. This is similar to the
> QEMU overlay, where the QEMU-provided DT also lacks symbols.

Ok, I see. It still needs CONFIG_OF_OVERLAY though. Without it
of_overlay_apply_tree will be a stub.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


