Delivery-date: Mon, 11 Aug 2025 14:31:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRgA-009Ksx-0I
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:31:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfm-0006uI-JT
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:31:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bPNOUYuDGxRpvVtF4CxNRmPVZ6Z2BWEEOHgxrzRMQ4w=; b=VNFUbjg5Fvmtq7PROQdu2dv+yp
	+eQ3SxALezOjfFcQKSbOoDZrHPWOd1vvXC3KAsmRDY2DaFUmxnlKw9iAnAsBVmu3yfTo68BwJw8PH
	5dq9Fd7RR2HyTfLr5uyVY59Gpfgj0nhVaeicxRPWOAxn5AjgSHIzU7EQI3NXn5VgOULMHLkbrj6h8
	MTV3xCHdzz5x1IEQ+jys/OTK9iHQEzEiPgznP3Gcv7Nf9z8xQJAS8Ru7YskHPWOiaWg0Nq3toiuVZ
	WecB6aS+XnAWVNgEJF9vkvxgQoQO11+7un1jobQ0jzVthuBzfJsrBQQZzuyqzeq9Y5lGmZhHwULQW
	JPCb5xLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulReN-00000007enM-07v6;
	Mon, 11 Aug 2025 12:29:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdk-00000007deJ-4BqD
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdj-0004WP-9f; Mon, 11 Aug 2025 14:28:35 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:17 +0200
Message-Id: <20250811122824.1667791-38-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052837_117897_6F7E661A 
X-CRM114-Status: UNSURE (   7.92  )
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
Subject: [PATCH 37/44] pstore: export pstore_is_ready
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This function will be called from the upcoming bfetch command to
determine whether the running barebox has functional pstore support.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/pstore/platform.c   | 5 +++++
 include/linux/pstore.h | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index 50a1bffdd053..3157cc90d514 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -46,6 +46,11 @@ void pstore_set_kmsg_bytes(int bytes)
 
 static int pstore_ready;
 
+bool pstore_is_ready(void)
+{
+	return pstore_ready;
+}
+
 void pstore_log(const char *str)
 {
 	uint64_t id;
diff --git a/include/linux/pstore.h b/include/linux/pstore.h
index 90e3bd2d4255..a3e6a26be94c 100644
--- a/include/linux/pstore.h
+++ b/include/linux/pstore.h
@@ -83,6 +83,7 @@ struct pstore_info {
 #ifdef CONFIG_FS_PSTORE
 extern int pstore_register(struct pstore_info *);
 extern bool pstore_cannot_block_path(enum kmsg_dump_reason reason);
+extern bool pstore_is_ready(void);
 extern void pstore_log(const char *msg);
 #else
 static inline int
@@ -95,6 +96,10 @@ pstore_cannot_block_path(enum kmsg_dump_reason reason)
 {
 	return false;
 }
+static inline bool pstore_is_ready(void)
+{
+	return false;
+}
 static inline void pstore_log(const char *msg)
 {
 }
-- 
2.39.5



