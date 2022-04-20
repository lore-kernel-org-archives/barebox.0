Delivery-date: Wed, 20 Apr 2022 08:40:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nh40s-008pt9-Vb
	for lore@lore.pengutronix.de; Wed, 20 Apr 2022 08:40:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nh40q-0001Oz-D0
	for lore@pengutronix.de; Wed, 20 Apr 2022 08:40:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3Krr/YDw1yEaXmLLS4yOxp20OWrs6wGAS2Edk4/Mg7s=; b=K4/Q2WRAVtbbph
	LPe5H3Cd0FdQdIkXnCGhYPtKAjBA5l1Pra68PvVLzAXM4kwsZWSzRBV0fepyMr3hVU+PnC98SQcZV
	Vji12jBIKLmPSCHONSznpg3feUrtDZ47K+W8E3a0L/J9fQy5E4879STJ1oBKAMKcEILV7HNC8pMXK
	aBSffIC/zgaiKAZGe/GPvJ7T11ncayRe7wDfL5OTBj1JuugnfqeosG5ah1g4OmUG35JLDs8B3JJBP
	8oujLMQQ97KFwcKnG+zptduzAqrtmaPOGOnmVWpv4tKX2IMaWXYxc3MM96ru2ucpEFSI/dpAys4sZ
	mAvBdNqDzr585wMkYeyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nh3zO-007aQe-OE; Wed, 20 Apr 2022 06:38:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nh3zJ-007aPO-Hw
 for barebox@lists.infradead.org; Wed, 20 Apr 2022 06:38:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nh3zA-0001Cb-BC; Wed, 20 Apr 2022 08:38:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nh3zA-004710-Pq; Wed, 20 Apr 2022 08:38:43 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nh3z8-004SIs-ND; Wed, 20 Apr 2022 08:38:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 20 Apr 2022 08:38:39 +0200
Message-Id: <20220420063840.1062067-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_233853_641898_C70484A2 
X-CRM114-Status: GOOD (  14.17  )
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
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] mtd: peb: Add mtd_peb_read_file()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Analog to mtd_peb_write_file() this adds a mtd_peb_read_file()

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/peb.c     | 45 +++++++++++++++++++++++++++++++++++++++++++
 include/mtd/mtd-peb.h |  2 ++
 2 files changed, 47 insertions(+)

diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index 6c61e0734c..8443ed86bc 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -508,6 +508,51 @@ out:
 	return ret;
 }
 
+/**
+ * mtd_peb_read_file - read data from a mtd device
+ * @mtd: mtd device
+ * @peb_start: The first PEB where to start reading
+ * @peb_last: last PEB where to read from
+ * @buf: buffer to read to
+ * @len: how many bytes to read
+ *
+ * This function reads @len bytes of data to buffer @buf from the mtd device
+ * @mtd starting at @peb_start. Reading will stop at @peb_last. This function
+ * skips all bad blocks and returns 0 on success or a negative error code
+ * otherwise.
+ */
+int mtd_peb_read_file(struct mtd_info *mtd, unsigned int peb_start,
+		      unsigned int peb_last, void *buf, size_t len)
+{
+	int ret, pnum;
+
+	pnum = peb_start;
+
+	while (len) {
+		size_t now = min_t(size_t, mtd->erasesize, len);
+
+		if (pnum > peb_last)
+			return -EIO;
+
+		if (mtd_peb_is_bad(mtd, pnum)) {
+			pnum++;
+			continue;
+		}
+
+		ret = mtd_peb_read(mtd, buf, pnum, 0, now);
+		if (ret)
+			goto out;
+
+		len -= now;
+		pnum++;
+		buf += now;
+	}
+
+	ret = 0;
+out:
+	return ret;
+}
+
 /**
  * mtd_peb_erase - erase a physical eraseblock.
  * @mtd: mtd device
diff --git a/include/mtd/mtd-peb.h b/include/mtd/mtd-peb.h
index cfcc0be611..cf8d8ff8da 100644
--- a/include/mtd/mtd-peb.h
+++ b/include/mtd/mtd-peb.h
@@ -23,6 +23,8 @@ int mtd_num_pebs(struct mtd_info *mtd);
 int mtd_peb_create_bitflips(struct mtd_info *mtd, int pnum, int offset,
 				   int len, int num_bitflips, int random,
 				   int info);
+int mtd_peb_read_file(struct mtd_info *mtd, unsigned int peb_start,
+		      unsigned int peb_last, void *buf, size_t len);
 int mtd_peb_write_file(struct mtd_info *mtd, int peb_start, int max_pebs,
 		       const void *buf, size_t len);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

