Delivery-date: Wed, 13 Jul 2022 11:59:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZ9F-005uYq-Jf
	for lore@lore.pengutronix.de; Wed, 13 Jul 2022 11:59:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZ9D-0000DA-GA
	for lore@pengutronix.de; Wed, 13 Jul 2022 11:59:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IY+7idq1j86bCoAfNbRb7wyEdGKSkvey2Wb51H0Ah6A=; b=lUQb/mQ1RR4m+sMFgu3mkOkf3W
	3T7ee0jLzX/XMkQmQlyH60Z6lCWDmbkI0OOVGu5s2ZJFRi3rEBbTUh1UQmBGB+XjGDuJ5322g8VJZ
	4tZ0U6qt4b5F8lYiBfvvpGEGvuEMug/jxmcfNYFl0gjTeoiwwwZgVmYRi6t4qYEKh6EXXDJvXWQCY
	6MEE1li1m/QksXqk7qNztHU0Y8mqyI+UatoTdNWy5wYkwlKXYWvqPubUelQwmL4hXJk4RwXhOEv3Y
	WADpO/inhOMVGUdo5MTrSWa+pEdl40v1ZMj8pXSasWDXTJCjyIfSfx9cuhZVNeqe5HNHOiAvvu9na
	UbgppjRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZ7y-002V1d-5z; Wed, 13 Jul 2022 09:57:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZ7m-002UtV-SR
	for barebox@lists.infradead.org; Wed, 13 Jul 2022 09:57:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7d-0008Da-MF; Wed, 13 Jul 2022 11:57:33 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7c-000gTh-VG; Wed, 13 Jul 2022 11:57:32 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZ7b-007spr-Pq; Wed, 13 Jul 2022 11:57:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Jul 2022 11:57:29 +0200
Message-Id: <20220713095730.1878941-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220713095730.1878941-1-a.fatoum@pengutronix.de>
References: <20220713095730.1878941-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_025742_948976_F6B5D766 
X-CRM114-Status: GOOD (  11.17  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 5/6] pbl: compressed-dtb: use flexible array member to access data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While data = compressed_dtb + 1 has the equivalent effect of skipping
over the struct barebox_boarddata_compressed_dtb header, using a
flexible array member aids code readability, so use that instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 arch/arm/cpu/start.c     | 7 ++-----
 arch/riscv/boot/start.c  | 6 ++----
 include/compressed-dtb.h | 1 +
 3 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 14cc310312ab..755d48851956 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -52,7 +52,6 @@ u32 barebox_arm_machine(void)
 void *barebox_arm_boot_dtb(void)
 {
 	void *dtb;
-	void *data;
 	int ret;
 	struct barebox_boarddata_compressed_dtb *compressed_dtb;
 	static void *boot_dtb;
@@ -76,10 +75,8 @@ void *barebox_arm_boot_dtb(void)
 	if (!dtb)
 		return NULL;
 
-	data = compressed_dtb + 1;
-
-	ret = uncompress(data, compressed_dtb->datalen, NULL, NULL,
-			dtb, NULL, NULL);
+	ret = uncompress(compressed_dtb->data, compressed_dtb->datalen,
+			 NULL, NULL, dtb, NULL, NULL);
 	if (ret) {
 		pr_err("uncompressing dtb failed\n");
 		free(dtb);
diff --git a/arch/riscv/boot/start.c b/arch/riscv/boot/start.c
index 72ab93cb7691..8b4c8bb2f019 100644
--- a/arch/riscv/boot/start.c
+++ b/arch/riscv/boot/start.c
@@ -32,7 +32,6 @@ unsigned barebox_riscv_pbl_flags;
 void *barebox_riscv_boot_dtb(void)
 {
 	void *dtb;
-	void *data;
 	int ret;
 	struct barebox_boarddata_compressed_dtb *compressed_dtb;
 	static void *boot_dtb;
@@ -56,9 +55,8 @@ void *barebox_riscv_boot_dtb(void)
 	if (!dtb)
 		return NULL;
 
-	data = compressed_dtb + 1;
-
-	ret = uncompress(data, compressed_dtb->datalen, NULL, NULL, dtb, NULL, NULL);
+	ret = uncompress(compressed_dtb->data, compressed_dtb->datalen,
+			 NULL, NULL, dtb, NULL, NULL);
 	if (ret) {
 		pr_err("uncompressing dtb failed\n");
 		free(dtb);
diff --git a/include/compressed-dtb.h b/include/compressed-dtb.h
index 1ba98a7e2b92..3359d1ee115d 100644
--- a/include/compressed-dtb.h
+++ b/include/compressed-dtb.h
@@ -10,6 +10,7 @@ struct barebox_boarddata_compressed_dtb {
 	u32 magic;
 	u32 datalen;
 	u32 datalen_uncompressed;
+	u8 data[];
 };
 
 static inline bool blob_is_compressed_fdt(const void *blob)
-- 
2.30.2



