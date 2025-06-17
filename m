Delivery-date: Tue, 17 Jun 2025 09:32:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRQny-008C9i-2Z
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 09:32:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRQny-0001ZG-5c
	for lore@pengutronix.de; Tue, 17 Jun 2025 09:32:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=507JcqLG2qVZPNzhBmzyVHrqwf28j9lShKSy69xJn2I=; b=0R1ldg5dGmcc0wuDhmFbbyUnoo
	rhBdH0CNPuY/82XcavXazoZeiQO7XCRkfwxTiXUqwzt5kNGsvufdI8VMpwspxQKsZOn0G8fl9f3K8
	AGPUcyM3WZTQQ7/8Rt+jhWcZoXGjbCgZg2WA9uD+gCgCItPSqZci9nRJu34a0UTIvrp1KT91Kulj6
	eGJ0mGtg/smuPZOqgycIYXkI6QfLMrjJdBCgmeluWZIGjW7fwbZk0oXLeuJB1M0hbwv5x5bhy6dB/
	B/w9E5iMFA7Bp8l4pP+iEYOox/VE0YsX47nkMFiFu72OEv5Wv3Rwjk8xUgL+HYA8143GmAvrOrFzs
	okJ2BG0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRQnK-00000006Sh5-0pt9;
	Tue, 17 Jun 2025 07:31:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRQlE-00000006ST9-1Rda
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 07:29:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRQlC-0006AL-5b; Tue, 17 Jun 2025 09:29:34 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRQlB-003w5v-3C;
	Tue, 17 Jun 2025 09:29:33 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRQlB-00CRl5-2y;
	Tue, 17 Jun 2025 09:29:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250612085603.4190573-1-a.fatoum@barebox.org>
References: <20250612085603.4190573-1-a.fatoum@barebox.org>
Message-Id: <175014537392.2966362.8931806438936127109.b4-ty@pengutronix.de>
Date: Tue, 17 Jun 2025 09:29:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_002936_387796_3B6D20A3 
X-CRM114-Status: UNSURE (   8.19  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] test: py: add FIT image boot test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Jun 2025 10:55:59 +0200, Ahmad Fatoum wrote:
> This series assembles a FIT image with a compressed barebox, an
> uncompressed device tree and a small initramfs.
> 
> Then the newly introduced test_fit.py checks that it can be booted
> and device tree is fixed up with command line, initrd location,
> generic and custom fixups.
> 
> [...]

Applied, thanks!

[1/4] ci: pytest: mount virtfs with signed FIT image into VMs
      https://git.pengutronix.de/cgit/barebox/commit/?id=34be32525387 (link may not be stable)
[2/4] test: py: add FIT boot test
      https://git.pengutronix.de/cgit/barebox/commit/?id=43a60905ccf6 (link may not be stable)
[3/4] ci: pytest: multi_v8_defconfig: pass --runxfail
      https://git.pengutronix.de/cgit/barebox/commit/?id=048a95a9f939 (link may not be stable)
[4/4] ci: container: add device-tree-compiler
      https://git.pengutronix.de/cgit/barebox/commit/?id=0bd224adc216 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



