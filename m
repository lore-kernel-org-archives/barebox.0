Delivery-date: Mon, 28 Oct 2024 17:38:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5SlH-001w42-2d
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 17:38:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5SlI-00007i-D5
	for lore@pengutronix.de; Mon, 28 Oct 2024 17:38:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1w95tG48RYs8u08NfqiW+1qSIZbvpSWHN/R1Azv6nWo=; b=OFsp3T+LHtXoHJ
	HtFtT772EQbQfWDm/5kl0c4XCgjNS1cxminRAzX/mN5TaVq4Habyfwlmpr2y+o/BJM0s4tP6mK5UJ
	Q9Et9WjpOt6FrBJgBd3vN8uagZf1sqCuvBvVf7blpj/oxYh65JE/l7Idmn4H0/lcUuigBhQdoCbSI
	NfZJl1QCFHrvrTvr3P77YrYH99PR2mLPbvf02E20MEkBVq/szmiwZhRp2spusAq1GG5BaG045GZ06
	cB1WrfuWTWrBccb+BzVdy9/jZYev7fIPdvwfkU3NpxqNoq6E7C/2bVsGgKp6JTjOCwyfY+KJCqB3W
	3JqHu8f905Z3XlTO3Amw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Skh-0000000BW6F-43NP;
	Mon, 28 Oct 2024 16:37:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5SQd-0000000BT7i-1AWu
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 16:17:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5SQU-00073e-48; Mon, 28 Oct 2024 17:17:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5SQT-000t3m-30;
	Mon, 28 Oct 2024 17:17:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5SQT-0072jj-2o;
	Mon, 28 Oct 2024 17:17:05 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 28 Oct 2024 17:17:00 +0100
Message-Id: <20241028-fix-noisy-debug-calls-v1-0-e84ce4272313@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPy4H2cC/x2MQQqAIBAAvxJ7bkGlLPpKdLDcbCEsXIoi+nvSc
 WBmHhBKTAJd8UCik4W3mEGXBUyLi4GQfWYwylRamRZnvjBuLDd6Go+Ak1tXQWe91W09UqNqyO2
 eKIv/tx/e9wNjE/IPZwAAAA==
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_091715_348301_F7B1B223 
X-CRM114-Status: UNSURE (   7.08  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] downgrade noisy debug calls in block devices and ramfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These two patches are the outcome of an investigation why loading a
fitimage from an eMMC took nearly 7s - the sheer amount of generated
debugging messages slowed down the system by a factor of ~21 with
KConfig options:

	CONFIG_COMPILE_LOGLEVEL=7
	CONFIG_DEFAULT_LOGLEVEL=6

Which is the current default combination for barebox.

Before:

	Booting entry 'system0'
	FIT: Reading time: 6722 ms

After:

	Booting entry 'system0'
	FIT: Reading time: 324 ms

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Stefan Kerkmann (2):
      block: downgrade noisy debug calls to verbose debug
      fs: ramfs: downgrade noisy debug calls to verbose debug

 common/block.c |  4 ++--
 fs/ramfs.c     | 10 +++++-----
 2 files changed, 7 insertions(+), 7 deletions(-)
---
base-commit: 59658c877bcc605fe3ca36653b4f40f57856b81a
change-id: 20241028-fix-noisy-debug-calls-a6d6185be705

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



