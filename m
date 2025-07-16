Delivery-date: Wed, 16 Jul 2025 08:48:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubvwM-000PE3-0C
	for lore@lore.pengutronix.de;
	Wed, 16 Jul 2025 08:48:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubvwL-0001vh-Ax
	for lore@pengutronix.de; Wed, 16 Jul 2025 08:48:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=11Xbk5PUx+g1xyF5S4wBSLj1Pochmoe7Ypym++IW9S0=; b=eP4kZLswxiR84+fUxPdf8y0ZjE
	/2UoTgtMdynBaUiFVxDwIZ8z0u4plod2PnvQz/hJcO9WwmOnKlAV9y1qV8LX04CaM3HqknGxklv4J
	qXPbiKJKARI4cbHYACp/JJOJiJ7fhA2nAuWCURTmOz8To2XB68wRT7P2Wg4fXLJPcQzxPGp5ULwJ2
	hD87O1sKJW8kqlMITE1Pr0g9CxgG8n1GhkTxYMtA3IuSGYCTI8uherRzpJujpj/A/YSzHEpA/k/RM
	Wn4Qe1SW3TIb2XckVomGT8eNJ52VRVzCvBACgq6VtcKT2ruyx1w40OhHF1W0C94LS8TZY4ZVRnnkN
	WBrgqQbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubvvZ-00000006v8h-1S5D;
	Wed, 16 Jul 2025 06:47:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubvcE-00000006t9t-1U6g
	for barebox@lists.infradead.org;
	Wed, 16 Jul 2025 06:27:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ubvcC-0003Ht-7P; Wed, 16 Jul 2025 08:27:40 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 16 Jul 2025 08:27:38 +0200
Message-Id: <20250716062738.2534887-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_232742_392415_B48CC59C 
X-CRM114-Status: UNSURE (   7.26  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] kbuild: drop ineffectual variable assignments in Makefile.dtbs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't define, multi-search or real-search, so variables using them
are always empty. So drop them to avoid confusion.
We can bring them back and fix them, when we start applying overlays
at build time.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 scripts/Makefile.dtbs | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/scripts/Makefile.dtbs b/scripts/Makefile.dtbs
index 046361c20a6a..7b5b9e1d16ee 100644
--- a/scripts/Makefile.dtbs
+++ b/scripts/Makefile.dtbs
@@ -3,19 +3,9 @@
 # If CONFIG_OF_ALL_DTBS is enabled, all DT blobs are built
 dtb-$(CONFIG_OF_ALL_DTBS) += $(dtb-)
 
-# Composite DTB (i.e. DTB constructed by overlay)
-multi-dtb-y := $(call multi-search, $(dtb-y), .dtb, -dtbs)
-# Primitive DTB compiled from *.dts
-real-dtb-y := $(call real-search, $(dtb-y), .dtb, -dtbs)
-# Base DTB that overlay is applied onto
-base-dtb-y := $(filter %.dtb, $(call real-search, $(multi-dtb-y), .dtb, -dtbs))
-
 dtb-y           := $(addprefix $(obj)/, $(dtb-y))
-multi-dtb-y     := $(addprefix $(obj)/, $(multi-dtb-y))
-real-dtb-y      := $(addprefix $(obj)/, $(real-dtb-y))
 
 always-y        += $(dtb-y)
-targets         += $(real-dtb-y)
 
 # dtbs-list
 # ---------------------------------------------------------------------------
-- 
2.39.5



