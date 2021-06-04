Delivery-date: Fri, 04 Jun 2021 10:49:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lp5WE-0005KT-2G
	for lore@lore.pengutronix.de; Fri, 04 Jun 2021 10:49:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lp5W3-0001M7-H3
	for lore@pengutronix.de; Fri, 04 Jun 2021 10:49:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kaPVqJIZ4um7lkRIYfEu/jrWwcExYZJXGBucFP59Wck=; b=DfYRTvRole6ugC
	ZfmaFAm2xWXKPi+AuqLDJ4hmUGZA7n+lOzzK/wP6zYDZA2wQ1JafGAIPYERxldh0e5cfwtIcsHWsS
	wTifKKm8iuWfUpnvVNnhrC17JGnbNcosXg8QmRXC8EIPIyzLU5lhLaM3D+LcICEpTqGERXtF4y784
	8x2NmfrEZwQJp7xU0RblxsAJluG4WZF1FUu37IoeGr7X7bxF3BKxiHPcvYh2X8doD0WTPXl594glC
	mucosLXrV0g1oh61umWQ5jeXjn3tUKMnHwhejPE6qj65ERASMBjz/zUIcqTIxcnA2UmIT6Ri00RQh
	tsqD2aHRyecv+KBU5H3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lp5UT-00CMFM-Vl; Fri, 04 Jun 2021 08:47:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lp5UA-00CM92-4j
 for barebox@lists.infradead.org; Fri, 04 Jun 2021 08:47:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lp5U8-0000iW-Jz; Fri, 04 Jun 2021 10:47:20 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lp5U7-00052d-Ku; Fri, 04 Jun 2021 10:47:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  4 Jun 2021 10:46:56 +0200
Message-Id: <20210604084704.17410-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210604084704.17410-1-a.fatoum@pengutronix.de>
References: <20210604084704.17410-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_014722_251202_37201360 
X-CRM114-Status: UNSURE (   9.66  )
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
Cc: jmaselbas@kalray.eu, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RESEND v4 05/13] openrisc: set default KBUILD_IMAGE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For non-multi-image configuration, KBUILD_IMAGE is taken as the image to
install. It was so far not set for openRISC. Define it, so it can be
used by the make install stage, e.g. to collect artifacts after a CI
run.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/openrisc/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/openrisc/Makefile b/arch/openrisc/Makefile
index 72d7fa3d53fe..1776f56df97b 100644
--- a/arch/openrisc/Makefile
+++ b/arch/openrisc/Makefile
@@ -28,3 +28,5 @@ dts := arch/openrisc/dts
 
 %.dtb: scripts
 	$(Q)$(MAKE) $(build)=$(dts) $(dts)/$@
+
+KBUILD_IMAGE := barebox
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

