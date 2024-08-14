Delivery-date: Wed, 14 Aug 2024 09:52:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1se8nb-009Sxi-0M
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 09:52:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1se8na-0005OD-GU
	for lore@pengutronix.de; Wed, 14 Aug 2024 09:52:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F2PlGV9DN80FEDs0FVhyvOco9dkVPOYS5tz1+56xw+k=; b=E+wfc4vRuZ5LRRwdRiIevZ/W5E
	fq8csd5RQtGY75QYqnFL5kFd53MfgPSIKofmo82/nk20032EtRBq8lnWktzctukrE1h3ODlu1bWnM
	zDf2RyVPx4AABq2KQZdFacB+sNCR+PGa5shGG0smWbTKCJYIZ0b6pHT8q/gt4iMrDyQ4VtDCfsy/K
	h7w2iOzhQkCgCjawIMa2Zp9Tina7A4pclJ+g/wcEmiZhRvBZwU0V3yObPkSqJwyIs2KNYRW4muAZr
	zBcU11cRmNSbVfdd97z1VuJ+Liq9Z7zNAIgd8q/J0KOzUCJ+lDzAv1UWM+phuJkmGMMIdBkmxBOii
	MZfKHKAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se8n2-000000067zu-4BJF;
	Wed, 14 Aug 2024 07:51:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se8l6-000000067IB-3NoO
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 07:49:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se8l5-0004tv-8z; Wed, 14 Aug 2024 09:49:27 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se8l4-000JFg-S3; Wed, 14 Aug 2024 09:49:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se8l4-005MwS-2c;
	Wed, 14 Aug 2024 09:49:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240813070201.1069847-1-a.fatoum@pengutronix.de>
References: <20240813070201.1069847-1-a.fatoum@pengutronix.de>
Message-Id: <172362176681.1279805.3941747508133608494.b4-ty@pengutronix.de>
Date: Wed, 14 Aug 2024 09:49:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_004928_917202_EAF3F3FB 
X-CRM114-Status: UNSURE (   8.42  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/7] ci: container: update to Debian Bookworm with GCC
 v14.2.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 13 Aug 2024 09:01:55 +0200, Ahmad Fatoum wrote:
> We have been using the same distro/toolchain for more than a year now,
> so let's update them to their newest versions.
> 
> pip3 now warns that we are not in a venv. Acknowledge this and ignore
> it as we want labgrid to be available to pytest in the container without
> having to source a virtualenv first.
> 
> [...]

Applied, thanks!

[1/7] ci: container: update to Debian Bookworm with GCC v14.2.0
      https://git.pengutronix.de/cgit/barebox/commit/?id=7a24da87b1a9 (link may not be stable)
[2/7] ci: container: add kvx-elf- toolchain
      https://git.pengutronix.de/cgit/barebox/commit/?id=9bb6c933685c (link may not be stable)
[3/7] ci: container: update to newest Labgrid release
      https://git.pengutronix.de/cgit/barebox/commit/?id=747dee2bf2a5 (link may not be stable)
[4/7] test: sandbox: support testing with Labgrid
      https://git.pengutronix.de/cgit/barebox/commit/?id=fee23792aa75 (link may not be stable)
[5/7] ci: pytest: test sandbox configuration with labgrid
      https://git.pengutronix.de/cgit/barebox/commit/?id=fd84dfd0f99a (link may not be stable)
[6/7] ci: build: add kvx build test
      https://git.pengutronix.de/cgit/barebox/commit/?id=7346b5ff3f30 (link may not be stable)
[7/7] test: py: strategy: drop no longer needed labgrid workarounds
      https://git.pengutronix.de/cgit/barebox/commit/?id=6f37e5c2a4aa (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



