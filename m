Delivery-date: Mon, 11 Aug 2025 14:30:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRff-009KmL-11
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfK-0006Ok-Ii
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4mKmmjofsF45hV5mba9W/7vD0fz9zMFSTtncgJtY3BM=; b=LEjx+1P4XpNla+0OdRA787qrTt
	Q/8wCxKUu43K7URO8Iup+G/g06+qWguNeaBccCF1U2sOOt0e/2kiWxhaxsqnPFZ2/t0yGXFD8737K
	0fec6GBrPOAr8T1LLb2TSsLYPRm7ALvPp8J10d9uP+YR5Mem+MRT0wYvhh5lVfPFh2I1ue/p9Gr30
	zUdLSyIAI5UUAwFSNt1iy9W7+QjTh+DdouVTY/Sa0h8cyjhR7mVqXR7loltDHQPXxSA2KkUd1RIeo
	ybkO6Fhy0kWm/K0hQbZcCMtK6luBq+mrQ/DLRECaid7OXJPjK8l2MgAnXZcSJ+zqTpLyPNmFAB4++
	zagknK7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRe7-00000007eEp-0F4l;
	Mon, 11 Aug 2025 12:28:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdn-00000007dhx-17kC
	for barebox@bombadil.infradead.org;
	Mon, 11 Aug 2025 12:28:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=4mKmmjofsF45hV5mba9W/7vD0fz9zMFSTtncgJtY3BM=; b=pim4FFYW7SUfi6YsYg3Tip6ca9
	lz/IeMFMo/5foNuHAmHU8PwSmeO6BPKH8R2ywcvz3eRsPdfrPIwIR7XLDDCVBG3lQmMh4mIepgpbX
	JRwqmkVWEYl1JPi8ELPLt6ppW6WeK2wRkiNNfTo0FdNH9cBKLINYph8uwHTqW96wHi4SSX+FhXTbX
	4Xf9sE3AUiEyIpUWzfgJeoObj2eoDpjkwJsl+8WNS65fSdS9w+iSTXLd1WRnxBn4bUnCOPMl1LeCY
	TEkKe9UI1scpt9zM9/7B7VLImXljWdBb+eDasn1nBy9xzsb5v3sihNp95FlRIQXY+iYX4v+zJjtbQ
	jq156i7Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdj-0000000FPTk-181S
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdh-0004WP-SG; Mon, 11 Aug 2025 14:28:33 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:11 +0200
Message-Id: <20250811122824.1667791-32-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_132835_467935_0CA31FB9 
X-CRM114-Status: UNSURE (   8.28  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 31/44] bbu: add easy way to check for existent providers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This function will be called from the upcoming bfetch command to
determine whether the running barebox has barebox update handlers
registered.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/bbu.c  | 8 ++++++++
 include/bbu.h | 7 +++++++
 2 files changed, 15 insertions(+)

diff --git a/common/bbu.c b/common/bbu.c
index 0dc32e45ea2f..03261583fe0b 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -289,6 +289,14 @@ int barebox_update(struct bbu_data *data, struct bbu_handler *handler)
 	return 0;
 }
 
+/*
+ * report whether any update handlers have been registered so far
+ */
+bool bbu_handlers_available(void)
+{
+	return !list_empty(&bbu_image_handlers);
+}
+
 /*
  * print a list of all registered update handlers
  */
diff --git a/include/bbu.h b/include/bbu.h
index bce138d95b37..94006563c90e 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -58,6 +58,8 @@ int bbu_std_file_handler(struct bbu_handler *handler,
 
 #ifdef CONFIG_BAREBOX_UPDATE
 
+bool bbu_handlers_available(void);
+
 int bbu_register_handler(struct bbu_handler *);
 
 int bbu_register_std_file_update(const char *name, unsigned long flags,
@@ -71,6 +73,11 @@ int bbu_mmcboot_register_handler(const char *name,
 
 #else
 
+static inline bool bbu_handlers_available(void)
+{
+	return false;
+}
+
 static inline int bbu_register_handler(struct bbu_handler *unused)
 {
 	return -EINVAL;
-- 
2.39.5



