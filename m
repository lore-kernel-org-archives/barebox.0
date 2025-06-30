Delivery-date: Mon, 30 Jun 2025 09:47:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9EE-00CYCy-1j
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 09:47:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9ED-0005jV-DB
	for lore@pengutronix.de; Mon, 30 Jun 2025 09:47:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OIO6i+9/9ebLVZx2s1mpZwSuaYPelHjWy3EjzfSkNRE=; b=RtFyzTGUXXjCx8xBIv7fMDdquK
	qhM5xaSa2OF9zXl00jaYKrq6WKjimS+08kH/bc5G1shSrwMVxljshmorU+0u33ojYyxu40crAlpGv
	UoGFebs75oSf1B1X73vJGG6HgaluunwYNV6ZysoXZQyb5FKd0iqcYE1nPfwA8nfhTieNiAGDHyl85
	H+rbMq3i7YUNzUm0pbj348VurPGJASlNQQGj5yRjwZLoxJNsORwoLiHZ2x5FUXMyNnxhbSvmtuuKg
	GT9j1TDQ772CbI6UBENvMzGP2pmzXsJ51DyQfwNl7hIoL/0JBnYJGyAYr1yr1+ueMturxykbyv1n3
	AXkl4fBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9Df-00000001Ucv-2SIP;
	Mon, 30 Jun 2025 07:46:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9D3-00000001UQr-3aI8
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 07:45:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-0004OD-L0; Mon, 30 Jun 2025 09:45:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-00648I-0q;
	Mon, 30 Jun 2025 09:45:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-004Sjo-0N;
	Mon, 30 Jun 2025 09:45:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Jun 2025 09:45:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250630-arm-optee-early-helper-v2-2-c8cce3ae42b0@pengutronix.de>
References: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
In-Reply-To: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751269547; l=1139;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=JA+8Otu9j8y01RYwNhJXUIkdweSEj7WBjGHOwPu7gcM=;
 b=YcU0CfD1XSkgCgWiTJziewOZHV2+soeMG691PeqSWVUBul6Q/CXBh8titDmxw8CrGeR2ImPPm
 JfMV6PLoyx3CX6E5WgV6ICb9Kao2I0eZsquqdiI/8zqSLM8qYjmdbTS
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_004549_907571_DF6131EC 
X-CRM114-Status: UNSURE (   9.86  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/14] arch: Allow data_abort_mask() in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With this architecures which want to support data_abort_mask() in
PBL can select ARCH_HAS_DATA_ABORT_MASK_PBL.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/Kconfig    | 3 +++
 include/abort.h | 3 ++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index 446c4b8fd9605cdd84e66514570a2088b0885ff7..919c8cfebab51d1d2623c82360a30cf5173ffe78 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -68,6 +68,9 @@ config ARCH_HAS_STACK_DUMP
 config ARCH_HAS_DATA_ABORT_MASK
 	bool
 
+config ARCH_HAS_DATA_ABORT_MASK_PBL
+	bool
+
 config ARCH_HAS_ZERO_PAGE
 	bool
 
diff --git a/include/abort.h b/include/abort.h
index 95db1b54d6d9f361c9607c6a8ea1f96b4c5f18d0..c623a4c510414c9e92f21e911473bbe8565cace5 100644
--- a/include/abort.h
+++ b/include/abort.h
@@ -2,7 +2,8 @@
 #ifndef __ABORT_H
 #define __ABORT_H
 
-#if defined CONFIG_ARCH_HAS_DATA_ABORT_MASK && IN_PROPER
+#if (defined CONFIG_ARCH_HAS_DATA_ABORT_MASK && IN_PROPER) || \
+    (defined CONFIG_ARCH_HAS_DATA_ABORT_MASK_PBL && IN_PBL)
 
 /*
  * data_abort_mask - ignore data aborts

-- 
2.39.5



