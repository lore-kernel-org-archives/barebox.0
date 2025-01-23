Delivery-date: Thu, 23 Jan 2025 16:02:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tayiV-003UVQ-2G
	for lore@lore.pengutronix.de;
	Thu, 23 Jan 2025 16:02:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tayiS-0003Cf-IY
	for lore@pengutronix.de; Thu, 23 Jan 2025 16:02:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iGJDqTOwbnLv4jrU0RAW2tkZpqNZamjVvJta9OXT35k=; b=hXkvM2V2eAKiZaRdnKqg24v+yW
	+SILcCYx5NiPXF8wLrD63N3z5rvfOiyXEUo9t+3iIa0T1BfUcXwE9vZcmQG6zzZ6xKV+jOmW+lT+H
	KuXV3qFPHRAjNm23FDqJknAI7P4V7bDVLg6C5xgHd+MUYYaEj+nUjVCdfarqmBDHK9RNnN5RcZCPr
	hTANHF1DPqqsYnGmFGNDAhneStj3RgcUi0dfpDmq17RIYaTnnuR96ijnHFrHr2vChxsHOTWRkA/rF
	6k0CQNvIM4KoqKBT6oSwwXRgq9VH4CeBqVXlyy7ksVX61PasX/AB12GnQ3G8UNzSEgqYTa94/P7aS
	ibhu8d6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tayhs-0000000Cekd-40KR;
	Thu, 23 Jan 2025 15:01:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tayhq-0000000Ceir-0R0i
	for barebox@lists.infradead.org;
	Thu, 23 Jan 2025 15:01:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-0002Hx-L7; Thu, 23 Jan 2025 16:01:00 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-001Thn-0P;
	Thu, 23 Jan 2025 16:01:00 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-006Chv-02;
	Thu, 23 Jan 2025 16:01:00 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 23 Jan 2025 15:56:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250123-v2024-05-0-topic-hab-v3-3-e90d0e43c2de@pengutronix.de>
References: <20250123-v2024-05-0-topic-hab-v3-0-e90d0e43c2de@pengutronix.de>
In-Reply-To: <20250123-v2024-05-0-topic-hab-v3-0-e90d0e43c2de@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_070118_148276_54136132 
X-CRM114-Status: UNSURE (   9.77  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 03/10] hab: convert flags to use BIT() macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

Make use of the BIT() macro to define the flags, no functional change.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 include/hab.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/include/hab.h b/include/hab.h
index da79a8ffea36435c9520f9f72fc0f259bcc08926..2cef3841d149972faebcc51bd5c43fab03d1c6fa 100644
--- a/include/hab.h
+++ b/include/hab.h
@@ -7,6 +7,7 @@
 #define __HABV4_H
 
 #include <errno.h>
+#include <linux/bits.h>
 
 /* State definitions */
 enum habv4_state {
@@ -32,15 +33,15 @@ static inline int habv4_get_state(void)
 #define SRK_HASH_SIZE	32
 
 /* Force writing of key, even when a key is already written */
-#define IMX_SRK_HASH_FORCE		(1 << 0)
+#define IMX_SRK_HASH_FORCE		BIT(0)
 /* Permanently write fuses, without this flag only the shadow registers
  * are written.
  */
-#define IMX_SRK_HASH_WRITE_PERMANENT	(1 << 1)
+#define IMX_SRK_HASH_WRITE_PERMANENT	BIT(1)
 /* When writing the super root key hash, also burn the write protection
  * fuses so that the key hash can not be modified.
  */
-#define IMX_SRK_HASH_WRITE_LOCK		(1 << 2)
+#define IMX_SRK_HASH_WRITE_LOCK		BIT(2)
 
 bool imx_hab_srk_hash_valid(const void *buf);
 int imx_hab_write_srk_hash(const void *buf, unsigned flags);

-- 
2.39.5



