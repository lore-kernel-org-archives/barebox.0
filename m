Delivery-date: Mon, 11 Aug 2025 14:30:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfb-009KlY-1X
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfH-0006M5-Bg
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vVdin0TA7j29jN8qYr6vIdoGZeR3CwHs7oyFYvISiUc=; b=0iT2Uo9tnvpbRONbCnBQ6vGPCM
	8WUMgB6OpBvCt60dIU1J0waKe0ErpTzn82MRXsFHWWYu671EIO8gMXkSoTqC1YwI6lgT2hTG3uxsE
	kaB+aVGpPOK5plUoR8g19kIkst8R2YHjTmD3LhQCJYmx3/RtcUTrlIcvAd4ylnA8BAPCtdd2ZfkAG
	q6l0VViYK3YNHa/yO0Bxp6Cb3Q/c9h55s4ZtFO6O8flrwGLPquc5lCeLZqdJGenyB8yP51jZTVe6H
	IZYnfcTVb54C/l6bjMjktA/mjKrbMXfkWRiTNnHg76d90GOdOgLbCfj2Mr53FWfkCO+WCkkaTaHKx
	U+tLDZMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRe6-00000007eCe-1WhG;
	Mon, 11 Aug 2025 12:28:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdn-00000007dhz-1Btz
	for barebox@bombadil.infradead.org;
	Mon, 11 Aug 2025 12:28:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=vVdin0TA7j29jN8qYr6vIdoGZeR3CwHs7oyFYvISiUc=; b=HUMOIYvDXiUACPE890Q8vgOVJC
	eoeJ/nhEPzcGnOXFGDjXB9Aj8d5VjTvuElRAhvix/P5Aa86csgUJkQhej105+krmny5LsOknqEzI1
	caangVXow2JfGGWkf7IKNlKLNzgq0Gme3X+/0hqOYfuyC0aF8FVtk3r1wJ13C6ocMdvAzTrNYMZ8K
	wTo4LkxdT+/mWtPH5mhxKAjKVi6deBpvq+MFEgstN7eqx727l9UN892HDnNJYkTXzNMSN58RSCK8e
	z3/H3VYt1buD7m1Ak6sGLp+irHPUNyVKI31fCjNzKRhoTacMtfd3L2pktWoI9ZZCPzoO39PJ3KW6g
	85l7D3mg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdj-0000000FPTj-0BOT
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdg-0004WP-Gz; Mon, 11 Aug 2025 14:28:32 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:05 +0200
Message-Id: <20250811122824.1667791-26-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_132835_315651_2B43EE37 
X-CRM114-Status: GOOD (  10.53  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 25/44] mtd: add devices to new mtd class
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We maintain no global list of MTD masters, but it's a useful thing to
have if only for informational purposes. Add a struct class for this use
case.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/mtd/core.c      | 4 ++++
 include/linux/mtd/mtd.h | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 2ca16c614dee..6162ec450fc1 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -25,6 +25,8 @@
 
 static LIST_HEAD(mtd_register_hooks);
 
+DEFINE_DEV_CLASS(mtd_class, "mtd");
+
 /**
  * mtd_buf_all_ff - check if buffer contains only 0xff
  * @buf: buffer to check
@@ -681,6 +683,8 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 	if (ret)
 		return ret;
 
+	class_add_device(&mtd_class, &mtd->dev);
+
 	mtd->cdev.ops = &mtd_ops;
 	mtd->cdev.size = mtd->size;
 	if (device_id == DEVICE_ID_SINGLE)
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 8d99dff27fe7..f85c7e783243 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -339,6 +339,8 @@ static inline uint32_t mtd_div_by_wb(uint64_t sz, struct mtd_info *mtd)
 extern int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id);
 extern int del_mtd_device (struct mtd_info *mtd);
 
+extern struct class mtd_class;
+
 extern struct mtd_info *get_mtd_device(struct mtd_info *mtd, int num);
 extern struct mtd_info *get_mtd_device_nm(const char *name);
 
-- 
2.39.5



