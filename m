Delivery-date: Wed, 09 Apr 2025 08:57:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2PMr-00AJTC-1d
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 08:57:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2PMq-00072S-Ul
	for lore@pengutronix.de; Wed, 09 Apr 2025 08:57:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RF4lbUhwxNPVfSH/HqnpDXqgJlRi9JFu1j1N8K68ftE=; b=p3ohafBHYZzUgGQhUiurq9/T9e
	86qV2lZGFKC29B0u+JDlyD9ExchOrXCRwJ1s1oi3/kHMnuQpO6eoeNdidLUF98Z8Nb6rcQyIDdUe7
	+whjyIt/3MnBM5MCTSBCKINnB+M6/7b694Fei680WGZFUZfm8371XbEdwJc5a9c1dXnfrwiuJZVof
	SmPeQUJ4l2HNGiEuETFLSVEfU92nUVHAaSHNX38VUppAvqhW+6nz2mo0mP/SRVOSeI7/HVMMem0Ni
	DyZw0wA/gzrTQtat4TtT3BuyT9GGVTI4BfPDlzNJ7u3o0P4DDrVU2bX4nLuCRkY798Jv0nBoKAR4u
	+PVQDI8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2PMB-00000006KxV-3Jv3;
	Wed, 09 Apr 2025 06:56:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2PM7-00000006Kvi-3GfF
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 06:56:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2PM5-0006jl-Ge; Wed, 09 Apr 2025 08:56:13 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2PM5-0043ny-13;
	Wed, 09 Apr 2025 08:56:13 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2PM5-007lip-0h;
	Wed, 09 Apr 2025 08:56:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Apr 2025 08:56:12 +0200
Message-Id: <20250409065612.1851282-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_235615_825717_96CF832A 
X-CRM114-Status: UNSURE (   8.78  )
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
Subject: [PATCH] include: linux/limits: add definition for RESOURCE_SIZE_MAX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is the maximum value that can be stored in a resource_size_t
and can be used as dummy invalid value if needed.

Import it with the same definition as in Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/limits.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/limits.h b/include/linux/limits.h
index 8baf8494943e..2318e4f606d5 100644
--- a/include/linux/limits.h
+++ b/include/linux/limits.h
@@ -22,6 +22,8 @@
 #define INTPTR_MAX	LONG_MAX
 #define UINTPTR_MAX	ULONG_MAX
 
+#define RESOURCE_SIZE_MAX	((resource_size_t)~0)
+
 #define U8_MAX		((u8)~0U)
 #define S8_MAX		((s8)(U8_MAX >> 1))
 #define S8_MIN		((s8)(-S8_MAX - 1))
-- 
2.39.5



