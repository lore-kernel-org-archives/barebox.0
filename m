Delivery-date: Wed, 03 Jul 2024 19:20:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3f9-001F1u-0C
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 19:20:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3f8-0007Qj-4A
	for lore@pengutronix.de; Wed, 03 Jul 2024 19:20:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UpmUc0scviywFSzElWSA3yT/fu9Oo5qXYlTe5eEGsiA=; b=fZoi1CzexZFJDJMtc8JKtYW4sm
	Xy5a9FFm8hCzOoXJfn+VCXXAG2O4wFjaweeYayqf7I1GHpfGyM5jTNWwpHfMStYFrGXJNu5dYWG79
	RrBimzcMb6+VHnTfmYhh/d/ag6aSr6BpMxpeWs9YiRJ2mDP25j/fV+Zcd4m15IBsoZ+FJg7Kcwr+q
	OzsaTVkt3XrUFIxUL9aGEqGNQhwt4iOvwVQ2ux43Us+5/kFZxS0XoerhNFFYzlrDrmszf3pbWrxlh
	M0cOKxAuZKtdJepHm5cBO4TwoYNK3LFUTAdlcSM+Jx/MPqYqPsAZsqNKbbjKdqfBaRqQyoOpqBXFo
	9I7hfpNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3ee-0000000Aybd-1xV1;
	Wed, 03 Jul 2024 17:20:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3eW-0000000AyX9-3QBG
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 17:20:24 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sP3eU-00073M-Of; Wed, 03 Jul 2024 19:20:18 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 03 Jul 2024 19:20:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240703-v2024-05-0-topic-hab-v2-4-17419aa5d3a3@pengutronix.de>
References: <20240703-v2024-05-0-topic-hab-v2-0-17419aa5d3a3@pengutronix.de>
In-Reply-To: <20240703-v2024-05-0-topic-hab-v2-0-17419aa5d3a3@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_102021_259296_A9F5B389 
X-CRM114-Status: UNSURE (   9.16  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/9] hab: convert flags to use BIT() macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Make use of the BIT() macro to define the flags, no functional change.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/hab.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/include/hab.h b/include/hab.h
index da79a8ffea36..2cef3841d149 100644
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
2.39.2



