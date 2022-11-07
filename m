Delivery-date: Mon, 07 Nov 2022 16:02:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os3de-000W5d-TB
	for lore@lore.pengutronix.de; Mon, 07 Nov 2022 16:02:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os3dc-0007ev-DG
	for lore@pengutronix.de; Mon, 07 Nov 2022 16:02:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+LT+2wk5B3Sey9lYy/n2hj/kbL/utIVPBWwGWicmuTc=; b=CzL3aDFPHz2A402o1NHVw6czTW
	7BtK9aXNSqi4cNceYC9bzWkS153ll2CF4ERyu8VRoULDw2dm9k+vScdj0vTbRxqxBbPsBs19ZMzMh
	mpRh+2dBVcXpujDMp2D8ZE2OKUUz0eVsRgB2xErPO39Ux8un18M6f8pVoQrLZPj0zTCc4smdzl8oc
	EnJVrRXdljvV2Gr2yLGkHP1gpj7cImswlWM9H4+kfqV7JJkpFGgmRbrHMtl6lYijLer4WGrGKue0L
	6xG3r8ujeEh5gbMXwCzseyp1OeBwYCCzpTrXSo4ml+O0WdBRZFDgFLYXBIRK8O5r5NoPWpeGzp/nY
	ElrY/6mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3cC-00FTSN-83; Mon, 07 Nov 2022 15:00:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3NT-00FKuC-N4
	for barebox@lists.infradead.org; Mon, 07 Nov 2022 14:45:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1os3NQ-00037v-3R; Mon, 07 Nov 2022 15:45:28 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1os3NO-002sIC-GZ; Mon, 07 Nov 2022 15:45:27 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1os3NO-0023fF-2d; Mon, 07 Nov 2022 15:45:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Nov 2022 15:45:21 +0100
Message-Id: <20221107144524.489471-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221107144524.489471-1-s.hauer@pengutronix.de>
References: <20221107144524.489471-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_064531_829889_2DA6CCF4 
X-CRM114-Status: GOOD (  10.65  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] bitmap: Implement bitmap_*zalloc()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Implement functions for allocating a bitmap.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/bitmap.h |  7 +++++++
 lib/bitmap.c           | 10 ++++++++++
 2 files changed, 17 insertions(+)

diff --git a/include/linux/bitmap.h b/include/linux/bitmap.h
index adaf5428fe..7d06fac68d 100644
--- a/include/linux/bitmap.h
+++ b/include/linux/bitmap.h
@@ -80,6 +80,13 @@
  * contain all bit positions from 0 to 'bits' - 1.
  */
 
+/*
+ * Allocation and deallocation of bitmap.
+ * Provided in lib/bitmap.c to avoid circular dependency.
+ */
+unsigned long *bitmap_zalloc(unsigned int nbits);
+unsigned long *bitmap_xzalloc(unsigned int nbits);
+
 /*
  * lib/bitmap.c provides these functions:
  */
diff --git a/lib/bitmap.c b/lib/bitmap.c
index 5be6651941..dfc0f06b13 100644
--- a/lib/bitmap.c
+++ b/lib/bitmap.c
@@ -837,3 +837,13 @@ void bitmap_copy_le(void *dst, const unsigned long *src, int nbits)
 	}
 }
 EXPORT_SYMBOL(bitmap_copy_le);
+
+unsigned long *bitmap_zalloc(unsigned int nbits)
+{
+	return calloc(BITS_TO_LONGS(nbits), sizeof(unsigned long));
+}
+
+unsigned long *bitmap_xzalloc(unsigned int nbits)
+{
+	return xzalloc(BITS_TO_LONGS(nbits) * sizeof(unsigned long));
+}
-- 
2.30.2



