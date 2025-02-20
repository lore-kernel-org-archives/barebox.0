Delivery-date: Thu, 20 Feb 2025 09:27:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tl1tn-004dzm-2h
	for lore@lore.pengutronix.de;
	Thu, 20 Feb 2025 09:27:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tl1tm-0001l3-M3
	for lore@pengutronix.de; Thu, 20 Feb 2025 09:27:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EU4a8vJafdBMcRvvVhZudtdwnBFDizN+elV+2P8mZWA=; b=A0Mz/RVJan5uB4w1ZrHALaR/ct
	4bwtidiXUhoylnHofmQjG0z6YmkKFTOS8+Y0jZiq0fKlWcj2mUgmVuEJkCrp3A7GoyNYGxU4gUwR4
	nT4sxyKO44RBndCQtt7OlnuCQXterzXg9JjzDKDJsX+lU+XLUbtxG12qoIUsSJU03/EZMaHD+fpaN
	fXVD2/WCii8oVVC9VtmRB4W7XUHDRZAVETaFRydH2Pnu5/Y9jnbZalw9Oa2xOMETgN5kO0uRV4uoI
	kgxARypjgqwQtOK5Nup8uVGaia7fYLm963pDuh/cPIlt02rcR+/9ZZ0qbCuHLoB/m6DNM8ErOjU0F
	Q+xzVgOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl1t5-0000000HMNg-2gNe;
	Thu, 20 Feb 2025 08:26:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl1t2-0000000HMMd-0VLd
	for barebox@lists.infradead.org;
	Thu, 20 Feb 2025 08:26:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tl1t0-0001dZ-BQ; Thu, 20 Feb 2025 09:26:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tl1t0-001uAZ-0X;
	Thu, 20 Feb 2025 09:26:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tl1t0-00AAy5-0J;
	Thu, 20 Feb 2025 09:26:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250217180833.3955657-1-a.fatoum@pengutronix.de>
References: <20250217180833.3955657-1-a.fatoum@pengutronix.de>
Message-Id: <174003998208.2425412.5151355715286141072.b4-ty@pengutronix.de>
Date: Thu, 20 Feb 2025 09:26:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_002624_159316_53782D41 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [PATCH 0/6] of: partition: add Linux
 CONFIG_OF_PARTITION-compatible adaptive fixup mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Feb 2025 19:08:27 +0100, Ahmad Fatoum wrote:
> barebox has for many years supported a superset of the upstream OF
> partitions binding by parsing partitions out of SD/eMMC and EEPROM
> in addition to MTD.
> 
> Unfortunately, we didn't upstream our binding and a different binding
> went upstream into Linux v6.13-rc1 along with Linux commit
> 2e3a191e89f9 ("block: add support for partition table defined in OF").
> 
> [...]

Applied, thanks!

[1/6] of: factor out of_node_is_fixed_partitions check
      https://git.pengutronix.de/cgit/barebox/commit/?id=45c5c9c807e4 (link may not be stable)
[2/6] of: of_path: support barebox,fixed-partitions
      https://git.pengutronix.de/cgit/barebox/commit/?id=deb18a4be9cd (link may not be stable)
[3/6] ARM: IMX8MP: var-dart-dt8mcustomboard.dts: use new-style partition binding
      https://git.pengutronix.de/cgit/barebox/commit/?id=c19cbce92960 (link may not be stable)
[4/6] ARM: dts: prefix all non-MTD fixed-partitions with barebox,
      https://git.pengutronix.de/cgit/barebox/commit/?id=cf4cf9997a3b (link may not be stable)
[5/6] of: partition: refactor of_partition_binding checks into switch
      https://git.pengutronix.de/cgit/barebox/commit/?id=162884adec56 (link may not be stable)
[6/6] of: partition: add Linux CONFIG_OF_PARTITION-compatible adaptive fixup mode
      https://git.pengutronix.de/cgit/barebox/commit/?id=f0d91d7ba6cb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



