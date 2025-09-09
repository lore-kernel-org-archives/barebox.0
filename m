Delivery-date: Tue, 09 Sep 2025 17:40:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0S5-0017JN-0k
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 17:40:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0S4-0002DG-MM
	for lore@pengutronix.de; Tue, 09 Sep 2025 17:40:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v3EO2/tDJHBGhHScLVHY+WtP4VaAa0OlAakFcsUqz44=; b=CHVN5NiKy1S5s56fR1c5Juq7DM
	wQJFuyFzTRBhDPpxADQr3TO8ekU6VfJcVa4yDLtol/pAQ0tOji7OmEG4JIBo1LMMkPC4uWYliJXoX
	bfjwZ53RfmBYkZwSRCCLIKwiiPhmGEnz0S4otTOxIuWOvf0fCqxWpVfWMwR4E8tXmM4qWcIPNhZHt
	B+8RvRDkIirJaOfRxDZZ61Wcc8alIVLLTyUy8eOxcKJo7P2Dc0mrMyhZwzMyKMSRyZ58xfQDdZnHt
	mXH18LAIRbofAEuEHvO9epC1wR8htK9pncNjT0+tVZNuCyjXPPRVPHEyvzOX8mZpQURhHfw++z0KL
	ZWEU2lWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0RR-000000089Np-31bT;
	Tue, 09 Sep 2025 15:39:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvuqR-000000063rj-3p5W
	for barebox@lists.infradead.org;
	Tue, 09 Sep 2025 09:41:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvuqQ-0004ZG-Pk; Tue, 09 Sep 2025 11:40:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvuqQ-000OkB-1x;
	Tue, 09 Sep 2025 11:40:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvuqQ-00000003vOo-2HIa;
	Tue, 09 Sep 2025 11:40:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250908-imx8-snvs-v1-0-1049458a0286@pengutronix.de>
References: <20250908-imx8-snvs-v1-0-1049458a0286@pengutronix.de>
Message-Id: <175741085853.935589.6283956937934583734.b4-ty@pengutronix.de>
Date: Tue, 09 Sep 2025 11:40:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_024059_963463_A9265E47 
X-CRM114-Status: GOOD (  10.64  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] i.MX8M: Add SNVS support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 08 Sep 2025 10:31:54 +0200, Sascha Hauer wrote:
> This series adds support for Secure Non Volatile Storage (SNVS) to
> i.MX8M.
> 
> The driver itself already exists for i.MX6, so we only need to add the
> missing pieces and enable it in the config.
> 
> With this the SNVS is available as /dev/snvs. On i.MX8M its size is 16
> bytes and the values are preserved over reset.
> 
> [...]

Applied, thanks!

[1/4] ARM: i.MX8M: initialize SNVS
      https://git.pengutronix.de/cgit/barebox/commit/?id=2df60e417fec (link may not be stable)
[2/4] nvmem: snvs_lpgpr: Add i.MX7/8 support
      https://git.pengutronix.de/cgit/barebox/commit/?id=8933863e9074 (link may not be stable)
[3/4] nvmem: snvs_lpgpr: set nvmem config name to snvs
      https://git.pengutronix.de/cgit/barebox/commit/?id=8f5294726069 (link may not be stable)
[4/4] ARM: defconfigs: enable SNVS driver in i.MX8 configs
      https://git.pengutronix.de/cgit/barebox/commit/?id=d1897b613150 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



