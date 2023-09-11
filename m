Delivery-date: Mon, 11 Sep 2023 17:26:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfinc-00BddD-DB
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 17:26:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfina-0007Rc-En
	for lore@pengutronix.de; Mon, 11 Sep 2023 17:26:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2dmlHJEiKutS6pF7l6Bhm/W6xdwEUScJE5C+K8n9XSw=; b=4FYuAkL2bK+EebsbG7l8LNfJFT
	PqfeKiMuKylfxdN61ADmtsvtS4Sn+S9g5EdhMNnqX4UhLFFwVoI/uiFc0F9dBfzEITFLFXAmbZ6Lv
	UfJJtZ8LH1272tjenL6SsHffZ+BwwQOYmOMxMFuYYEVS61/n60QzxSpPCnXVq4YgaISWRrWY1ggJE
	LouPtDlckDtHrJnrYwWfpwkIH1vHkZxyaczm3jwBuXSHThZ97htIM1EbvgWFWng96edGjKoGTSNNb
	AXYRBpWHd8fPUuS9FzV/C4qZBuMc9KudWyUEFwVwZza4Qc+DmDb9H3gJOQtVEltXlCRlnU30q3Ao/
	IxXs1Uxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfimS-000sBs-0U;
	Mon, 11 Sep 2023 15:24:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfimO-000s9D-1r
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 15:24:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimN-00071N-57; Mon, 11 Sep 2023 17:24:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimM-005a91-NF; Mon, 11 Sep 2023 17:24:46 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimL-00FHKU-2C;
	Mon, 11 Sep 2023 17:24:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 17:24:27 +0200
Message-Id: <20230911152433.3640781-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911152433.3640781-1-a.fatoum@pengutronix.de>
References: <20230911152433.3640781-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_082448_619827_26BC59DC 
X-CRM114-Status: GOOD (  12.39  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/7] tlsf: turn static const variables into compiletime constant expressions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

static const is not a compiletime expression in C, unlike C++ and
treating them the same just means that we just restrict where we can
use the constants, e.g. they are not appropriate for static_assert.

Turn them into proper macros to fix this. To keep the code easier to
sync with other TLSF implementations we maintain the same lowercase
naming, despite it being at odds with the general kernel coding style.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/tlsf.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index 3ca58e3abbfb..3673b424a4c5 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -134,27 +134,25 @@ typedef struct block_header_t
 ** - bit 0: whether block is busy or free
 ** - bit 1: whether previous block is busy or free
 */
-static const size_t block_header_free_bit = 1 << 0;
-static const size_t block_header_prev_free_bit = 1 << 1;
+#define block_header_free_bit		(1 << 0)
+#define block_header_prev_free_bit	(1 << 1)
 
 /*
 ** The size of the block header exposed to used blocks is the size field.
 ** The prev_phys_block field is stored *inside* the previous free block.
 */
-static const size_t block_header_overhead = sizeof(size_t);
+#define block_header_overhead		sizeof(size_t)
 
 /* User data starts directly after the size field in a used block. */
-static const size_t block_start_offset =
-	offsetof(block_header_t, size) + sizeof(size_t);
+#define block_start_offset		(offsetof(block_header_t, size) + sizeof(size_t))
 
 /*
 ** A free block must be large enough to store its header minus the size of
 ** the prev_phys_block field, and no larger than the number of addressable
 ** bits for FL_INDEX.
 */
-static const size_t block_size_min =
-	sizeof(block_header_t) - sizeof(block_header_t*);
-static const size_t block_size_max = tlsf_cast(size_t, 1) << FL_INDEX_MAX;
+#define block_size_min			(sizeof(block_header_t) - sizeof(block_header_t*))
+#define block_size_max			(tlsf_cast(size_t, 1) << FL_INDEX_MAX)
 
 
 /* The TLSF control structure. */
-- 
2.39.2



