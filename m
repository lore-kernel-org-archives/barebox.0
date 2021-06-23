Delivery-date: Wed, 23 Jun 2021 06:35:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvuc6-00041S-Ep
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 06:35:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvuc5-0002ut-IP
	for lore@pengutronix.de; Wed, 23 Jun 2021 06:35:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gD9EeVfYsKD1WcA6zZzD2HTX/QzN9Yqp2+tlONK5TnM=; b=Y6sSlt/FKVZOg9
	P26oS3OPv+EjYKJD1053or6Q8FWc5acABkKznxKMa9Xxy+oYB6Qd0+/sO7/7viravUC1NjsYUmcqt
	134S5eY464wk4/B6oEo7po96pAQraPsNnOQShln/vqVrHDkp95mw0eZFF/06cvVtRNUdgzIdV9liC
	ZMcOaT1jKphjSTxzIcpW98QY4CVGSERIwM/ZuFkNQYAkusuSO7TqdlcY2ottNyRk5t85O1FwJy0JX
	AVA29ttsW+2cDbiTb8tshe0agyVq6oe9mmop0KDVV6ZoxLBaA0X5qWe8qGcX3ZLQ17umqYcFN8ifm
	f0EuRxgaLx0mgO6rP1TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvuam-009Gxk-Dk; Wed, 23 Jun 2021 04:34:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvuag-009Gx8-Oe
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 04:34:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvuaP-0002Zj-IA; Wed, 23 Jun 2021 06:34:01 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvuaP-00029y-9F; Wed, 23 Jun 2021 06:34:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 23 Jun 2021 06:33:57 +0200
Message-Id: <20210623043359.18391-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210623043359.18391-1-s.hauer@pengutronix.de>
References: <20210623043359.18391-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_213418_840139_8F7ED7FF 
X-CRM114-Status: UNSURE (   9.46  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] filetype: Add function to check if a filetype is a
 compressed file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/filetype.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/include/filetype.h b/include/filetype.h
index fd339f9564..ae0920320e 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -70,6 +70,20 @@ enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec)
 int is_fat_boot_sector(const void *_buf);
 bool filetype_is_barebox_image(enum filetype ft);
 
+static inline bool file_is_compressed_file(enum filetype ft)
+{
+	switch (ft) {
+	case filetype_lzo_compressed:
+	case filetype_lz4_compressed:
+	case filetype_gzip:
+	case filetype_bzip2:
+	case filetype_xz_compressed:
+		return true;
+	default:
+		return false;
+	}
+}
+
 #define ARM_HEAD_SIZE			0x30
 #define ARM_HEAD_MAGICWORD_OFFSET	0x20
 #define ARM_HEAD_SIZE_OFFSET		0x2C
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

