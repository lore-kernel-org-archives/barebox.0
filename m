Delivery-date: Wed, 11 Jan 2023 09:01:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW3Z-008dmb-0m
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:01:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW3W-0008Vj-32
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:01:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a3w3HCnAnId+vHFfFjFhd/bVNwZ3GdXMKeAu93jWwCs=; b=2NrJZqJYvP4GHyrpYoWgZGiVBk
	J5cP4Rvl+zRoFeuP+tzSARgUadUsULUeDZPSUHL0queeKTLYlobqPiaJbG/mMz3RGAPQ0OUlt38fQ
	H00k++Zeb5OL2snbabzx0LOpqW1LdjA7Y0jBFzxcIfS4dOibPlAD72+NZjxgvACfKENMEk3YWbDcY
	1D3gPafi1O/IyCNmbTTa/IPXfEq2H+tr2w2LByhEh4CD/PIOtwbsGVxuEl/vsXzpg/RMKdRC1tL9t
	3k7cyhJrzJesSmigzULIEI4FFMuUxpLU5YXHhv2VW72qGfGchu78tvZBJUJbgMluT4rGPhe1D9a+d
	PKPBd3DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW27-00ADl6-00; Wed, 11 Jan 2023 08:00:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW1U-00ADTY-82
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 07:59:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1S-0007Xw-W5; Wed, 11 Jan 2023 08:59:47 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1R-005Fc2-JM; Wed, 11 Jan 2023 08:59:45 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1Q-003uWR-G5; Wed, 11 Jan 2023 08:59:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 08:59:37 +0100
Message-Id: <20230111075940.922817-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111075940.922817-1-a.fatoum@pengutronix.de>
References: <20230111075940.922817-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_235948_349029_CD662E24 
X-CRM114-Status: UNSURE (   8.50  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] crypto: caam - make command constants unsigned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CMD_OPERATION is 0x10 << 27, which shifts a one into the sign bit.
Make the constants unsigned to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/crypto/caam/desc.h | 40 +++++++++++++++++++-------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/crypto/caam/desc.h b/drivers/crypto/caam/desc.h
index a7966a878178..523f2d15f0bd 100644
--- a/drivers/crypto/caam/desc.h
+++ b/drivers/crypto/caam/desc.h
@@ -36,26 +36,26 @@
 #define CMD_SHIFT		27
 #define CMD_MASK		0xf8000000
 
-#define CMD_KEY			(0x00 << CMD_SHIFT)
-#define CMD_SEQ_KEY		(0x01 << CMD_SHIFT)
-#define CMD_LOAD		(0x02 << CMD_SHIFT)
-#define CMD_SEQ_LOAD		(0x03 << CMD_SHIFT)
-#define CMD_FIFO_LOAD		(0x04 << CMD_SHIFT)
-#define CMD_SEQ_FIFO_LOAD	(0x05 << CMD_SHIFT)
-#define CMD_STORE		(0x0a << CMD_SHIFT)
-#define CMD_SEQ_STORE		(0x0b << CMD_SHIFT)
-#define CMD_FIFO_STORE		(0x0c << CMD_SHIFT)
-#define CMD_SEQ_FIFO_STORE	(0x0d << CMD_SHIFT)
-#define CMD_MOVE_LEN		(0x0e << CMD_SHIFT)
-#define CMD_MOVE		(0x0f << CMD_SHIFT)
-#define CMD_OPERATION		(0x10 << CMD_SHIFT)
-#define CMD_SIGNATURE		(0x12 << CMD_SHIFT)
-#define CMD_JUMP		(0x14 << CMD_SHIFT)
-#define CMD_MATH		(0x15 << CMD_SHIFT)
-#define CMD_DESC_HDR		(0x16 << CMD_SHIFT)
-#define CMD_SHARED_DESC_HDR	(0x17 << CMD_SHIFT)
-#define CMD_SEQ_IN_PTR		(0x1e << CMD_SHIFT)
-#define CMD_SEQ_OUT_PTR		(0x1f << CMD_SHIFT)
+#define CMD_KEY			(0x00u << CMD_SHIFT)
+#define CMD_SEQ_KEY		(0x01u << CMD_SHIFT)
+#define CMD_LOAD		(0x02u << CMD_SHIFT)
+#define CMD_SEQ_LOAD		(0x03u << CMD_SHIFT)
+#define CMD_FIFO_LOAD		(0x04u << CMD_SHIFT)
+#define CMD_SEQ_FIFO_LOAD	(0x05u << CMD_SHIFT)
+#define CMD_STORE		(0x0au << CMD_SHIFT)
+#define CMD_SEQ_STORE		(0x0bu << CMD_SHIFT)
+#define CMD_FIFO_STORE		(0x0cu << CMD_SHIFT)
+#define CMD_SEQ_FIFO_STORE	(0x0du << CMD_SHIFT)
+#define CMD_MOVE_LEN		(0x0eu << CMD_SHIFT)
+#define CMD_MOVE		(0x0fu << CMD_SHIFT)
+#define CMD_OPERATION		(0x10u << CMD_SHIFT)
+#define CMD_SIGNATURE		(0x12u << CMD_SHIFT)
+#define CMD_JUMP		(0x14u << CMD_SHIFT)
+#define CMD_MATH		(0x15u << CMD_SHIFT)
+#define CMD_DESC_HDR		(0x16u << CMD_SHIFT)
+#define CMD_SHARED_DESC_HDR	(0x17u << CMD_SHIFT)
+#define CMD_SEQ_IN_PTR		(0x1eu << CMD_SHIFT)
+#define CMD_SEQ_OUT_PTR		(0x1fu << CMD_SHIFT)
 
 /* General-purpose class selector for all commands */
 #define CLASS_SHIFT		25
-- 
2.30.2



