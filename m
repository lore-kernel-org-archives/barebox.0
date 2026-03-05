Delivery-date: Thu, 05 Mar 2026 08:45:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy3Oe-008GBW-2P
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 08:45:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy3Od-0002t2-HV
	for lore@pengutronix.de; Thu, 05 Mar 2026 08:45:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LIz1ddugDVttmJiKk2GVPmEkTZV3Kwq7bbgI4Je0I0w=; b=2Bvt0czVKHP/0R1txnH0h/vei5
	tRWSELQmFS1HbNZTwp+HR5YkU7SfciZ+kxZTI2ifBrUhoklbxhctJECBWMSIa19rl/qdcj+pINJ54
	ApSpNEO/qfRjt2s8atxH8tGszZfnPps+uPIGC7gmkqDsKVF/vW3L4i0O/6j6my9AODx8/acU/opfj
	zGy4GgT3yo1HNDjkXqMmtlaa67Hu8KhiTEcD+hgUR7VtaPCsYFtGFtlHECPq92GHB4dgceZQc4XEr
	55diSh+lPNNWyiJ99VOit0urVV2fLiPtBliaepfJOJz/zKQd3oDPvNC1bBpAQF/LmO0wjZtaAr7qh
	zzCw1qhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3OB-000000016cB-2Jq7;
	Thu, 05 Mar 2026 07:44:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3O8-000000016bK-3rMG
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 07:44:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy3O5-0002lr-V2; Thu, 05 Mar 2026 08:44:49 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy3O4-003qVU-1N;
	Thu, 05 Mar 2026 08:44:49 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy3O5-0000000ENP3-2gkX;
	Thu, 05 Mar 2026 08:44:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  5 Mar 2026 08:44:48 +0100
Message-ID: <20260305074448.3426540-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_234452_954353_0DF81CBD 
X-CRM114-Status: GOOD (  15.96  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] tlv: check incoming TLV headers for size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

tlv_register_device() gets untrusted data in the incoming TLV header.
Add a size argument and check if the TLV is within the size boundaries
before processing it.
While at it check that the reserved field in the TLV header is set to
zero which is necessary should we later want to use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/tlv/bus.c      | 20 +++++++++++++++++++-
 common/tlv/parser.c   |  2 +-
 common/tlv/register.c |  2 +-
 include/tlv/tlv.h     |  3 ++-
 test/self/tlv.c       |  4 ++--
 5 files changed, 25 insertions(+), 6 deletions(-)

diff --git a/common/tlv/bus.c b/common/tlv/bus.c
index 29b6ce87bf..9c06baf360 100644
--- a/common/tlv/bus.c
+++ b/common/tlv/bus.c
@@ -14,9 +14,23 @@ static void tlv_devinfo(struct device *dev)
 	printf("Magic: %08x\n", tlvdev->magic);
 }
 
+static int tlv_header_check(struct tlv_header *header, size_t size)
+{
+	if (size < sizeof(*header))
+		return -ENODATA;
+
+	if (header->reserved != 0)
+		return -EINVAL;
+
+	if (size < tlv_total_len(header))
+		return -ENODATA;
+
+	return 0;
+}
+
 static struct device_node *tlv_parent_node;
 
-struct tlv_device *tlv_register_device(struct tlv_header *header,
+struct tlv_device *tlv_register_device(struct tlv_header *header, size_t size,
 				       struct device *parent)
 {
 	struct tlv_device *tlvdev;
@@ -25,6 +39,10 @@ struct tlv_device *tlv_register_device(struct tlv_header *header,
 	static int id = 0;
 	int ret;
 
+	ret = tlv_header_check(header, size);
+	if (ret)
+		return ERR_PTR(ret);
+
 	tlvdev = xzalloc(sizeof(*tlvdev));
 
 	dev = &tlvdev->dev;
diff --git a/common/tlv/parser.c b/common/tlv/parser.c
index 010e4cce38..4c0b6b5c6f 100644
--- a/common/tlv/parser.c
+++ b/common/tlv/parser.c
@@ -165,7 +165,7 @@ struct tlv_device *tlv_register_device_by_path(const char *path, struct device *
 	if (IS_ERR(header))
 		return ERR_CAST(header);
 
-	tlvdev = tlv_register_device(header, parent);
+	tlvdev = tlv_register_device(header, size, parent);
 	if (IS_ERR(tlvdev))
 		free(header);
 
diff --git a/common/tlv/register.c b/common/tlv/register.c
index a6d95fb8e0..66dd38f5d4 100644
--- a/common/tlv/register.c
+++ b/common/tlv/register.c
@@ -56,7 +56,7 @@ static int tlv_probe_from_compatible(struct device *dev)
 		goto err;
 	}
 
-	tlvdev = tlv_register_device(header, dev);
+	tlvdev = tlv_register_device(header, size, dev);
 	if (IS_ERR(tlvdev)) {
 		ret = PTR_ERR(tlvdev);
 		goto err;
diff --git a/include/tlv/tlv.h b/include/tlv/tlv.h
index 8b4ee1b399..c2812398dc 100644
--- a/include/tlv/tlv.h
+++ b/include/tlv/tlv.h
@@ -61,7 +61,8 @@ static inline struct device_node *tlv_of_node(struct tlv_device *tlvdev)
 	return tlvdev->dev.device_node;
 }
 
-struct tlv_device *tlv_register_device(struct tlv_header *header, struct device *parent);
+struct tlv_device *tlv_register_device(struct tlv_header *header, size_t size,
+				       struct device *parent);
 static inline struct tlv_header *tlv_device_header(struct tlv_device *tlvdev)
 {
 	return tlvdev->dev.platform_data;
diff --git a/test/self/tlv.c b/test/self/tlv.c
index 8f1b810b5a..cefa8b4a7a 100644
--- a/test/self/tlv.c
+++ b/test/self/tlv.c
@@ -60,14 +60,14 @@ static void test_lxa_tlv(void)
 		return;
 	}
 
-	cpu_tlvdev = tlv_register_device(cpu_blob, NULL);
+	cpu_tlvdev = tlv_register_device(cpu_blob, cpu_bloblen, NULL);
 	if (IS_ERR(cpu_tlvdev)) {
 		free(cpu_blob);
 		failed_tests++;
 		skipped_tests++;
 	}
 
-	io_tlvdev = tlv_register_device(io_blob, NULL);
+	io_tlvdev = tlv_register_device(io_blob, io_bloblen, NULL);
 	if (IS_ERR(io_tlvdev)) {
 		free(io_blob);
 		failed_tests++;
-- 
2.47.3



