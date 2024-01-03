Delivery-date: Wed, 03 Jan 2024 19:34:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL64v-002Nvt-3A
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:34:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL64r-00061F-0R
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:34:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ik4fCWXLnknEx9+LmeWIyjZIK4DKiDhODSqBwtJU9jY=; b=yRKS7rUYuFSEkEcShQtUoq97MC
	CRj0s2f7AOj++Iey8EIFinluWz1DHdaaMTYZdxzlcwz1o2CWxmUpMq5Hu73uBVASgA3ISgvdTiyUw
	lQZEwGwDfHkex6edy0ngw2HxAVGcG/jmkjrAN97GkS2hKWpvLQUxEq0KdjSFcBkzqWQuLw7GnRYrz
	hE2Z1wa0PaG2PgmJEIiLm5tKGb0ATf5eZAAhcv4OqvjhmfkjucMQlmZQ+ZHa3VcRo+C76DYzIA+bC
	3g70RX2PgZaagonnmKmVo1e8vLWWESKRaBBoMV4OLXWynZ6Q+QZ8FVCEhlWzmFQJnt10xNeawFT3d
	KJPixeLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL639-00BjY4-1G;
	Wed, 03 Jan 2024 18:33:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61D-00Bh7i-2S
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-0001Zk-9E; Wed, 03 Jan 2024 19:30:56 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-000Aw5-S0; Wed, 03 Jan 2024 19:30:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-1E;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:36 +0100
Message-Id: <20240103181312.409668-77-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103107_843125_0368A5A5 
X-CRM114-Status: GOOD (  10.27  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 076/112] efi: improve usability of EFI_PAGE_* macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

EFI code may want to mask addresses to check if they are page aligned.
Add a macro that masks the lower bits and while at it turn the type of
EFI_PAGE_SIZE to be 64 bits, so we avoid issues of truncation during
multiplication with a 32 bit value.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/efi.h b/include/efi.h
index a6dbc14ff3d9..a73c96ef3a82 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -117,7 +117,8 @@ enum efi_memory_type {
 #define EFI_MEMORY_DESCRIPTOR_VERSION	1
 
 #define EFI_PAGE_SHIFT		12
-#define EFI_PAGE_SIZE		(1UL << EFI_PAGE_SHIFT)
+#define EFI_PAGE_SIZE		(1ULL << EFI_PAGE_SHIFT)
+#define EFI_PAGE_MASK		(EFI_PAGE_SIZE - 1)
 
 /*
  * Allocation types for calls to boottime->allocate_pages.
-- 
2.39.2



