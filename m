Delivery-date: Wed, 03 Jan 2024 19:32:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62M-002NS2-02
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:32:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62I-0002yK-7N
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:32:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l431OebrNzvp4gWPdu04qFr173FI/fm1b5lVU1kT1BI=; b=kcLYYMKGv3T30W2XF1EN8G9PIJ
	sgG7084p/f2dh5suKWDLxi7UIORwFlknMMhHQk5yKVQJoNhTz5CLTCVqGBNDY6qVdqZrtwtKUz/Ax
	hKGyWfUCkkXlRhZUcUTeesQryTW8yFkYr810mWc/UemaU4HM2pOHP4Yp/Iv1fCZGQu9PtHNndUXaH
	mgQLDNU2KGO9rF/txH3a9XpgiDV2qixmJjWR40GHgDRYSZ2ZiuLzY65nBqHFg7I/DhEmy/BtcojCH
	OhOjdzpb51hBXv7oyWkbWEPxkYQG8OYQcvAv65OmrQdPH/10B++kIaNW/qxOkZRVtMSXlxiNz428c
	IHMbpgkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL618-00BhCM-32;
	Wed, 03 Jan 2024 18:31:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL60z-00Bh1G-2U
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:30:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-0001OV-KH; Wed, 03 Jan 2024 19:30:52 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-000AsM-7b; Wed, 03 Jan 2024 19:30:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-1V;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:13:00 +0100
Message-Id: <20240103181312.409668-101-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103053_826491_421046D0 
X-CRM114-Status: UNSURE (   9.13  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 100/112] efi: devicepath: move END device node definitions into header
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



