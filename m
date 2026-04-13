Delivery-date: Mon, 13 Apr 2026 12:07:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCECs-00BgEl-2X
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 12:07:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCECs-0000Qq-6T
	for lore@pengutronix.de; Mon, 13 Apr 2026 12:07:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=c9ZDHxxk3wS9jJfBFD2kCR4A2HPe4wafSQ7Umqlzono=; b=bd3ssCYIrIfs3na3FYrjL/fUnQ
	/QS7tV0jtXtZRW/30k1E5umQ4u9/th55MwYZUDDoVKfJbj6cmdJVPEddvAZIpfqBMOfouOeWlZFxN
	Pr7HF1+WCk5uVm7Svpr8OVHr3q37JLqD8bcfqyxt5a+K0M/pUZOzR4mFP/Ctr8DRPgCbtOQxlbbu0
	WlKQnA+Pnsp8ds/sP3bp1ZBtmLG+AF/+dZDVs3y6KfK2+27nBi6gZfQwbhlWiwgypVlaRKasuvYIG
	ihHucAOpq+tn9s78EGRbB08OlwbpmO4wM66S3Y7yiJCHKLxlbvw3+bC6yWBiLzNIm2f3EKM1DbFHF
	idiIEsKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCECP-0000000FPZH-0jvY;
	Mon, 13 Apr 2026 10:07:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCECM-0000000FPY9-1IVS
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 10:07:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=c9ZDHxxk3wS9jJfBFD2kCR4A2HPe4wafSQ7Umqlzono=; b=prBOUt6Lv5ZG9T1ILNYRncte8I
	qSswYkhlCoHVfxupxPo9wtMvoz+82RGX7OWqswDVG8VJ/dikzDdQwnPdeOMQSvq2jyFZ7wGj5ej7P
	NtfUq6R8MvPPI7cviugfNDj9S99B4y406+UTCHkeD6pYAFRtq+PLuBNQxdOCb6ISv2+avrwwEtBEY
	jDvtC5jVtZu5+jJUpOfpBoiShiinFQ9xUiUWeqjymun7Bxdsw6BTae0O0KlHXm5zybG6bxpzuLnaV
	RpfiXCLpFwzZaUd548vP0yBwnAiq8IXXBR3oVFhOMbCGlMxNlg7QmtHcm1o2P+JaDDh9VIdVeiFEQ
	hhxWFidw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCECJ-0000000GY1g-0N4G
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 10:07:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCECH-00008e-GI; Mon, 13 Apr 2026 12:07:13 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 12:06:56 +0200
Message-ID: <20260413100710.1459468-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_110715_453892_0D205ECF 
X-CRM114-Status: UNSURE (   8.08  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] video: simplefb: add r5g5b5a1 and x8b8g8r8 formats to SIMPLEFB_FORMATS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The DT binding (display/simple-framebuffer.yaml) lists 11 pixel formats
but SIMPLEFB_FORMATS only covers 9 of them.

Sync with Linux to add the remaining two.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/linux/platform_data/simplefb.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/include/linux/platform_data/simplefb.h b/include/linux/platform_data/simplefb.h
index a4f07eccd81d..bc36a1cd3e44 100644
--- a/include/linux/platform_data/simplefb.h
+++ b/include/linux/platform_data/simplefb.h
@@ -1,8 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0-or-later */
+/* SPDX-FileCopyrightText: 2013 David Herrmann <dh.herrmann@gmail.com> */
+/* SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/linux/platform_data/simplefb.h?id=8681e3663411ee6b64dd0714b23f5c86f64f7533 */
 /*
  * simplefb.h - Simple Framebuffer Device
- *
- * Copyright (C) 2013 David Herrmann <dh.herrmann@gmail.com>
  */
 
 #ifndef __PLATFORM_DATA_SIMPLEFB_H__
@@ -16,11 +16,13 @@
 #define SIMPLEFB_FORMATS \
 { \
 	{ "r5g6b5", 16, {11, 5}, {5, 6}, {0, 5}, {0, 0}, DRM_FORMAT_RGB565 }, \
+	{ "r5g5b5a1", 16, {11, 5}, {6, 5}, {1, 5}, {0, 1}, DRM_FORMAT_RGBA5551 }, \
 	{ "x1r5g5b5", 16, {10, 5}, {5, 5}, {0, 5}, {0, 0}, DRM_FORMAT_XRGB1555 }, \
 	{ "a1r5g5b5", 16, {10, 5}, {5, 5}, {0, 5}, {15, 1}, DRM_FORMAT_ARGB1555 }, \
 	{ "r8g8b8", 24, {16, 8}, {8, 8}, {0, 8}, {0, 0}, DRM_FORMAT_RGB888 }, \
 	{ "x8r8g8b8", 32, {16, 8}, {8, 8}, {0, 8}, {0, 0}, DRM_FORMAT_XRGB8888 }, \
 	{ "a8r8g8b8", 32, {16, 8}, {8, 8}, {0, 8}, {24, 8}, DRM_FORMAT_ARGB8888 }, \
+	{ "x8b8g8r8", 32, {0, 8}, {8, 8}, {16, 8}, {0, 0}, DRM_FORMAT_XBGR8888 }, \
 	{ "a8b8g8r8", 32, {0, 8}, {8, 8}, {16, 8}, {24, 8}, DRM_FORMAT_ABGR8888 }, \
 	{ "x2r10g10b10", 32, {20, 10}, {10, 10}, {0, 10}, {0, 0}, DRM_FORMAT_XRGB2101010 }, \
 	{ "a2r10g10b10", 32, {20, 10}, {10, 10}, {0, 10}, {30, 2}, DRM_FORMAT_ARGB2101010 }, \
-- 
2.47.3



