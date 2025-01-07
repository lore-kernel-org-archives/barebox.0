Delivery-date: Tue, 07 Jan 2025 07:50:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV3QL-000DFw-15
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 07:50:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV3QI-0007PQ-9L
	for lore@pengutronix.de; Tue, 07 Jan 2025 07:50:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+ropdzZSa+z9RqG0/daIskAHduWF6ai/Fi+lHrk1VDA=; b=h8l7uHst0zt89QOcs4zw59Rmi2
	cCf1DVOzDGvvLQO5beEji/J3GKGj9T0lCRSC2Sov+X0nb67mj1O5voQSQSOsMomvbdvBPzOGee0Hm
	U/ZJU5BBYinHQzhhvR1CK59edPDm9HMDDwewS7uVKKqLhYmh9OEUl9Dyql5yvmgyIBIY9FYBIdbhz
	3Bl2JVeX/es2G6OIMMU88aPJN2pA33949MkFQw1lfsbEsNhOHsWI/YclY+Dm45kZINd0oaBK3Eiob
	qyDvDcSs4TcSSMj3L1DokzzWGVgxntrjPEuq2HW3pRxLzKnfpVUHUd7vGrttzDtZGc2BlxLNFezXM
	JDvXu8wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV3PT-00000003gWy-0cuP;
	Tue, 07 Jan 2025 06:49:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV3PQ-00000003gVw-0z7q
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 06:49:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV3PO-0007Cb-EE; Tue, 07 Jan 2025 07:49:46 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV3PN-007INq-1Z;
	Tue, 07 Jan 2025 07:49:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV3PO-00BggZ-0Y;
	Tue, 07 Jan 2025 07:49:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Jan 2025 07:49:45 +0100
Message-Id: <20250107064945.2785670-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250107064945.2785670-1-a.fatoum@pengutronix.de>
References: <20250107064945.2785670-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_224948_273436_B92F3072 
X-CRM114-Status: GOOD (  10.21  )
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
Subject: [PATCH 2/2] sandbox: os: define referenced config symbols
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We built the sandbox/os/ subdirectory with different compiler flags
to avoid barebox headers masking system provided headers.

This also means that CONFIG_ options aren't defined, but common.c
already references two of them.

Define them manually in the Makefile for now to fix build breakage in
some configurations.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/os/Makefile | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index 055ce1a316a7..7a76fb0290e8 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -6,8 +6,11 @@ machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 
 KBUILD_CPPFLAGS = $(patsubst %,-I$(srctree)/%include,$(machdirs))
 
+cppflags-$(CONFIG_CONSOLE_NONE) += -DCONFIG_CONSOLE_NONE=$(CONFIG_CONSOLE_NONE)
+cppflags-$(CONFIG_ASAN) += -DCONFIG_ASAN=$(CONFIG_ASAN)
+
 KBUILD_CPPFLAGS += -DCONFIG_MALLOC_SIZE=$(CONFIG_MALLOC_SIZE) -D_FILE_OFFSET_BITS=64 \
-		   -DCONFIG_STACK_SIZE=$(CONFIG_STACK_SIZE)
+		   -DCONFIG_STACK_SIZE=$(CONFIG_STACK_SIZE) $(cppflags-y)
 
 KBUILD_CFLAGS := -Wall
 
-- 
2.39.5



