Delivery-date: Mon, 05 Jan 2026 09:07:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcw-001S29-2L
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:07:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcv-0008Au-VI
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:07:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gSpfe+zuR6ZWPQRwDotziAEMVMMDvJJ7ngE/2mOaClU=; b=G5IykQ5USg5vaAGuyWsoPRSll0
	uLbZNACRm3z8MbhaEedp56mC93PsI2Go87DTu1su0tE3ywbDMq8qaB0aN77kluxc6SNOyNdmhznsV
	SkRTIzAWvplCd+HmkmOGy3N58+mkvAZrWjFzLs/MOGVTvQat4dORQanAeg97A76EfHddrpiibhpdS
	h/8s1Zl055ycSYqFDW/XNmCs8hV7X7X8dT1+fuy6XZ0mfxK2SPNSiLTKXzDHQ0+j3Qa+NVVGlhKSw
	n+5p+ih/QY/kIEnv2+SLaHE1xx2HZIafoGyRogveU5fURLXerlSFf7S2cfh/8/LLzJAFLLRrfqJag
	9N1pvwUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcI-0000000Ax4X-072y;
	Mon, 05 Jan 2026 08:07:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcC-0000000AwzN-13Ii
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:07:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcfc9-0007f0-Bi; Mon, 05 Jan 2026 09:06:57 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:03:38 +0100
Message-ID: <20260105080653.3240497-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260105080653.3240497-1-a.fatoum@barebox.org>
References: <20260105080653.3240497-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_000700_287337_47FD65ED 
X-CRM114-Status: UNSURE (   7.92  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 06/10] memory: move release_sdram_region into header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make it clear that release_sdram_region and release_region are the
same, move it into a header and give it a comment saying as much.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/memory.c  | 5 -----
 include/memory.h | 6 +++++-
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 2cd6d29a8f2b..7dc7f40db7fc 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -352,11 +352,6 @@ struct resource *reserve_sdram_region(const char *name, resource_size_t start,
 	return res;
 }
 
-int release_sdram_region(struct resource *res)
-{
-	return release_region(res);
-}
-
 void memory_bank_find_space(struct memory_bank *bank, resource_size_t *retstart,
 			   resource_size_t *retend)
 {
diff --git a/include/memory.h b/include/memory.h
index 6189a0f65c50..3475e9211b0c 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -63,7 +63,11 @@ static inline struct resource *request_sdram_region(const char *name,
 struct resource *reserve_sdram_region(const char *name, resource_size_t start,
 				      resource_size_t size);
 
-int release_sdram_region(struct resource *res);
+/* It's always fine to call release_region directly as well */
+static inline int release_sdram_region(struct resource *res)
+{
+	return release_region(res);
+}
 
 void memory_bank_find_space(struct memory_bank *bank, resource_size_t *retstart,
 			    resource_size_t *retend);
-- 
2.47.3



