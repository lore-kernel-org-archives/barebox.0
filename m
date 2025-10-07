Delivery-date: Tue, 07 Oct 2025 12:11:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v64fG-005D7v-0j
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 12:11:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v64fF-0007z2-NL
	for lore@pengutronix.de; Tue, 07 Oct 2025 12:11:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xidnAT6+VDYXbYFvie+ujOtXfpFyaHdlSET175V4H4o=; b=kzAjm6B4yy/5ZxbroN6kUyPZt3
	aeNDrEyOYXPjnzqyX3xCptaVuw3zGSdHSx+8WLYEyqszrRhNBjHIwclwyzIaU/ZMLEympHFXa7KOJ
	a70ChmdMRfxxk3ouw34htK/zVjJJwMNLbIk8niRUmQH4daSMz8JkCb7y0gvYqKxmldzyOVra0Ta7W
	h6R6zdQVZlciHkNIfd1k7dVy2l7BtDgus5dAaGnQWn+j8TEut0dD31v5S43ueKKBDS6M0s5PG6In8
	yuJlqk4WjM0mCcVFoiMwzcdxskvlZse1eHOby05ZrO0ezqV3XgMS6LMj7Sin8+t12CtELmJ+IvF+3
	0eOeleuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v64eh-00000001m8r-0g0B;
	Tue, 07 Oct 2025 10:10:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v64ee-00000001m8X-2TsK
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 10:10:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v64ed-0007s1-2N; Tue, 07 Oct 2025 12:10:47 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v64ec-002Nh6-2q;
	Tue, 07 Oct 2025 12:10:46 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v64ec-000000047iE-3PZn;
	Tue, 07 Oct 2025 12:10:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20251006-v2025-09-0-topic-socfpga-agilex5-sdhci-v1-1-17ad42db8c55@pengutronix.de>
References: <20251006-v2025-09-0-topic-socfpga-agilex5-sdhci-v1-1-17ad42db8c55@pengutronix.de>
Message-Id: <175983184680.982945.18135448805807581356.b4-ty@pengutronix.de>
Date: Tue, 07 Oct 2025 12:10:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_031048_638274_14A3FC17 
X-CRM114-Status: UNSURE (   6.63  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: add cadence sdhci host
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 06 Oct 2025 08:57:44 +0200, Steffen Trumtrar wrote:
> Import the sdhci-cadence driver from linux v6.12.
> 
> Currently only works on Agilex5 which uses it in combination with a ComboPhy.
> 
> 

Applied, thanks!

[1/1] mci: add cadence sdhci host
      https://git.pengutronix.de/cgit/barebox/commit/?id=081492b39e1d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



