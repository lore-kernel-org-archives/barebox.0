Delivery-date: Tue, 07 Apr 2026 09:38:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA10x-009U8L-2j
	for lore@lore.pengutronix.de;
	Tue, 07 Apr 2026 09:38:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA10x-0001i4-6W
	for lore@pengutronix.de; Tue, 07 Apr 2026 09:38:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0NbpwVeG67cTcFTwI9CqAlVaMmGmCC6SxDWkd0TrhME=; b=2W+vuTUkNZupx4LK7wy6C35s8z
	ZqOSQOePg6oeX/BSXfE9FdNa5d2DAZUPb3yG9WiT7cbILzIH4oASknq3Q9Mh7FQLKeH/H3la42f5q
	0x4h1CeJX1xo5afNcdbfFrg5OKW6dJqIkKMycL4lALqWS0vN1XaSyLSm6EKYmxdsG2x0kPDUmqB7f
	9Uy9hIqw5O8I9C1OXuUyJk1KY9jb/NI0nVUER+kFiyBjARRAYqZsGW5D+ltOQYNAkYngIrHqp2Wht
	QRGsvlcHjAeWjBky5gOVY9o+Q4MM89DCQ5D7BxIXw47LxVHNfxUEDgKwdNZN/Ym+XuhQE7KInFE/j
	i6disbow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA10I-000000065KQ-0M04;
	Tue, 07 Apr 2026 07:37:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA10E-000000065IG-3smi
	for barebox@lists.infradead.org;
	Tue, 07 Apr 2026 07:37:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1wA10A-0001a9-Ub; Tue, 07 Apr 2026 09:37:34 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 07 Apr 2026 09:34:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260407-v2026-03-1-topic-filetype-v1-1-e2fd029ab0d4@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAHaz1GkC/yXMwQrCMBCE4Vcpe3Yhm9gIvop40HSqK9KGJBZL6
 bs31dt8h/kXykiKTOdmoYRJs45DhRwaCs/b8ABrV03WWG+O5sTTvtg4Fi5j1MC9vlHmCBbbtp0
 4gXee6j8m9Pr9tS/Xv/Pn/kIoe5DWdQPl6XDbfQAAAA==
X-Change-ID: 20260407-v2026-03-1-topic-filetype-1255d131e636
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_003738_969894_C34E0376 
X-CRM114-Status: GOOD (  10.22  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] filetype: fix unaligned access for x86_linux_bootimage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

is_x86_linux_bootimage tries to access an unaligned pointer which may
lead to errors on SoCs that don't allow it (e.g. ARMv5)

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/filetype.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/filetype.h b/include/filetype.h
index d404e0cf3c..759ef9c2a3 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -5,6 +5,7 @@
 #include <linux/string.h>
 #include <linux/types.h>
 #include <asm/byteorder.h>
+#include <asm/unaligned.h>
 
 /*
  * List of file types we know
@@ -170,7 +171,7 @@ static inline bool is_riscv_linux_bootimage(const void *header)
 
 static inline bool is_x86_linux_bootimage(const void *header)
 {
-	return le32_to_cpup(header + 0x202) == 0x53726448;
+	return get_unaligned_le32(header + 0x202) == 0x53726448;
 }
 
 #endif /* __FILE_TYPE_H */

---
base-commit: 1d386a53086d28a0c4eda138ae9408a418b97b7e
change-id: 20260407-v2026-03-1-topic-filetype-1255d131e636

Best regards,
--  
Steffen Trumtrar <s.trumtrar@pengutronix.de>



