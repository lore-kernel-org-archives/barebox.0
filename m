Delivery-date: Mon, 04 Mar 2024 20:06:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDdb-008dHP-07
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:06:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDdZ-0001IS-EB
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:06:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l431OebrNzvp4gWPdu04qFr173FI/fm1b5lVU1kT1BI=; b=r2LTq98aS4qSBnjsfW7qX8qwsh
	nsMl5GMmPkfnlS/sVCwYrQU6km+EEJpakSRboPxXMPvzWz5yi4fWChVFk5qeWvKZixdblfCTCTgJl
	QH7crxz6hadBkhye90HrGq04alMN+Up67ZWUZZD+vp1058SpfD+TonpDX2/Z5S6T+y6DsIGm1I7ac
	yg2HLHk4BSqA6EGaIyxLszlKvZo2xPEh895FuLS5OvYRrtsznbgXtbb+wMCxYdSFKqAQ9V9Iw+77i
	6zJM+gRogfoeuY6PGWb2sBjWxm9DlIFMRyDZKHTYBNOGMHC3tqSosFs+ZrzbtXPOsDKErIN1DoeYc
	r7xeb0RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDd2-0000000AKIn-2ROP;
	Mon, 04 Mar 2024 19:05:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaL-0000000AIHJ-3Mlq
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-0006HE-SX; Mon, 04 Mar 2024 20:02:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-004PM9-B5; Mon, 04 Mar 2024 20:02:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYN-00Ed9V-1t;
	Mon, 04 Mar 2024 20:00:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:26 +0100
Message-Id: <20240304190038.3486881-102-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_110250_154060_9EB92E57 
X-CRM114-Status: UNSURE (   9.73  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 101/113] efi: devicepath: move END device node definitions into header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While at it, drop DP_IS_END_TYPE and DP_IS_END_SUBTYPE, which are
unused.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/devicepath.c          | 12 ------------
 include/efi/device-path.h | 10 ++++++++++
 2 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/efi/devicepath.c b/efi/devicepath.c
index d3a0204bd380..12a94fdb6ef8 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -43,18 +43,6 @@ char *cprintf(struct string *str, const char *fmt, ...)
 #define MIN_ALIGNMENT_SIZE  8	/* FIXME: X86_64 specific */
 #define ALIGN_SIZE(a)   ((a % MIN_ALIGNMENT_SIZE) ? MIN_ALIGNMENT_SIZE - (a % MIN_ALIGNMENT_SIZE) : 0)
 
-#define EFI_DP_TYPE_MASK			0x7f
-#define EFI_DP_TYPE_UNPACKED			0x80
-
-#define END_DEVICE_PATH_TYPE			0x7f
-
-#define END_ENTIRE_DEVICE_PATH_SUBTYPE		0xff
-#define END_INSTANCE_DEVICE_PATH_SUBTYPE	0x01
-#define END_DEVICE_PATH_LENGTH			(sizeof(struct efi_device_path))
-
-#define DP_IS_END_TYPE(a)
-#define DP_IS_END_SUBTYPE(a)        ( ((a)->sub_type == END_ENTIRE_DEVICE_PATH_SUBTYPE )
-
 #define device_path_type(a)           ( ((a)->type) & EFI_DP_TYPE_MASK )
 #define next_device_path_node(a)       ( (const struct efi_device_path *) ( ((u8 *) (a)) + (a)->length))
 #define is_device_path_end_type(a)      ( device_path_type(a) == END_DEVICE_PATH_TYPE )
diff --git a/include/efi/device-path.h b/include/efi/device-path.h
index 4b97cadde4f1..b7dc518859ac 100644
--- a/include/efi/device-path.h
+++ b/include/efi/device-path.h
@@ -387,4 +387,14 @@ struct bbs_bbs_device_path {
 #define BBS_TYPE_DEV                    0x80
 #define BBS_TYPE_UNKNOWN                0x_fF
 
+
+#define EFI_DP_TYPE_MASK			0x7f
+#define EFI_DP_TYPE_UNPACKED			0x80
+
+#define END_DEVICE_PATH_TYPE			0x7f
+
+#define END_ENTIRE_DEVICE_PATH_SUBTYPE		0xff
+#define END_INSTANCE_DEVICE_PATH_SUBTYPE	0x01
+#define END_DEVICE_PATH_LENGTH			(sizeof(struct efi_device_path))
+
 #endif /* __EFI_DEVICE_PATH_H */
-- 
2.39.2



