Delivery-date: Wed, 07 Jun 2023 14:08:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ryD-00EJV1-Sw
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 14:08:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ryA-00040C-JO
	for lore@pengutronix.de; Wed, 07 Jun 2023 14:08:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ez2v6tofVAZY7FTxETNxNnKLiqBv2fa/OEvqDZuL4l0=; b=mMM2o5ffnVNw62iRIunZoILLNz
	N8htrJDOoTmO321QkU4JZAHScmDqfOmqHsgKfIa+BUOWeH/3LBVP55sGq/659KZyziyU10vux0uad
	F5Y/miowJ200sPdIfQGhHu1s96PMISfpNfWu9v4utpoIDof/wf3eEV9GEvZimYhRgrD3KT5TgB5gL
	JeMIbF6Ex+JkRdcSd8duypu6VVLhLj62f+6SA0T0QSFLyrFvESnuPFMzH5taGAAvuekqleA1fhRtR
	NZt+5iGXxIpfZQW5cx1kS4DH8hHMJnkKxxCIZy90gcwgLbl0MyOSb2KBIC0zvpEr5eI/RyOYZmP6k
	UlsYbmlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwu-005ktc-0q;
	Wed, 07 Jun 2023 12:07:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwk-005knX-2U
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 12:07:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwi-00031x-36; Wed, 07 Jun 2023 14:07:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwh-005jk9-Bt; Wed, 07 Jun 2023 14:07:23 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwf-00CyNF-4M; Wed, 07 Jun 2023 14:07:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jun 2023 14:07:09 +0200
Message-Id: <20230607120714.3083182-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
References: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_050726_837771_2E54A630 
X-CRM114-Status: UNSURE (   8.30  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 14/19] block: add cdev_is_block_(device|partition|disk) helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We look too much into struct cdev's guts. Let's add helpers to make
operating on block device cdevs more concise.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - Adjust commit message title (Ulrich)
  - Add Marco's Reviewed-by
---
 include/block.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/block.h b/include/block.h
index 4dd2aa1f80ef..da258f509b41 100644
--- a/include/block.h
+++ b/include/block.h
@@ -58,4 +58,19 @@ static inline struct block_device *cdev_get_block_device(const struct cdev *cdev
 }
 #endif
 
+static inline bool cdev_is_block_device(const struct cdev *cdev)
+{
+	return cdev_get_block_device(cdev) != NULL;
+}
+
+static inline bool cdev_is_block_partition(const struct cdev *cdev)
+{
+	return cdev_is_block_device(cdev) && cdev_is_partition(cdev);
+}
+
+static inline bool cdev_is_block_disk(const struct cdev *cdev)
+{
+	return cdev_is_block_device(cdev) && !cdev_is_partition(cdev);
+}
+
 #endif /* __BLOCK_H */
-- 
2.39.2



