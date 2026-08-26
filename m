Delivery-date: Wed, 26 Aug 2026 14:16:29 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzCYP-007Qhi-0O
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 14:16:29 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 75BC1201FA9
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 14:16:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=5FYecw+1;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Vy7CWw9ZTchTj8h0SjB7LLVwHJqyjFqm1nFLBceemSA=; b=5FYecw+1y9fK1Md2kGR62Oa2Cp
	uMWzpgKheiUjd8XtgQzPrmlGfPHdt5GieBkFAxHLzBoeBpuTdPWKsQQ/X5cmtl8UihA8P39cNHDHT
	PoEopbWirOOc9EgMIB7x2xhitZLT+2+gkN8P0TQYkNJzz/tFvy1Fx350bHkPv2n6CiZ0CuQYakJh6
	03+7jJe/6j54IOYEqNoRb22NjzsFl/OjVEqlErESIzxzFNlYyUEwffFuzmUwdA94JO2e4DqV40mj/
	uuFu+os0W9rUOcGx92RHAOTv0wYBhJQ6g9CDT4D4omxBlaXs4K03jvZ09qE1DQYtNNg2/bHljlLqi
	Tvi6cXIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCXG-00000002P4Z-137T;
	Wed, 26 Aug 2026 12:15:18 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCXB-00000002P47-0rvi
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 12:15:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0D031201FA9;
	Wed, 26 Aug 2026 14:15:11 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCX8-003RAF-2u;
	Wed, 26 Aug 2026 14:15:10 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCX8-0000000CJaS-3PE8;
	Wed, 26 Aug 2026 14:15:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] efi: payload: don't fail postcore initcall when image has no device path
Date: Wed, 26 Aug 2026 14:15:05 +0200
Message-ID: <20260826121510.2935211-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_051513_453631_14D618B3 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  When barebox was loaded from memory or from a device without
    a device path, e.g. via QEMU's fw_cfg on top of the barebox EFI loader, the
    loaded image has no device handle. efi_postcore_init() currentl [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-56.21 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: cm6qkutswnfzp5yourz84gpsupu9nk9e
X-Rspamd-Queue-Id: 75BC1201FA9

When barebox was loaded from memory or from a device without a device
path, e.g. via QEMU's fw_cfg on top of the barebox EFI loader, the loaded
image has no device handle. efi_postcore_init() currently bails out with
-EINVAL in that case, printing an initcall error and skipping the
registration of the barebox update handler.

There is no partition UUID to export as LoaderDevicePartUUID then, but
that's no reason to abort the initcall. The parent image handle may lack a
device path as well, and device_path_to_filepath() would then crash on the
NULL pointer. Make device_path_next_compatible_node() tolerate a NULL
device path, so both helpers just return NULL and the initcall proceeds
with the defaults.

Fixes: e0e30f636242 ("efi: payload: protect against buggy EFI implementations")
Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/devicepath.c   | 2 +-
 efi/payload/init.c | 7 ++++---
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/efi/devicepath.c b/efi/devicepath.c
index 131c3df16641..32ddc952cd9b 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -788,7 +788,7 @@ static const struct efi_device_path *
 device_path_next_compatible_node(const struct efi_device_path *dev_path,
 				 u8 type, u8 subtype)
 {
-	for (; !is_device_path_end(dev_path);
+	for (; dev_path && !is_device_path_end(dev_path);
 	     dev_path = next_device_path_node(dev_path)) {
 
 		if (device_path_type(dev_path) != type)
diff --git a/efi/payload/init.c b/efi/payload/init.c
index 862ca6a3e7d6..1e5f2eb8cf56 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -246,12 +246,13 @@ static int efi_postcore_init(void)
 	efi_set_variable_uint64_le("LoaderFeatures", &efi_systemd_vendor_guid,
 				   loader_features);
 
+	/*
+	 * The image may have been loaded from memory, e.g. QEMU's fw_cfg.
+	 * There is no partition to report then, but the rest should still run.
+	 */
 	loaded_image_dp = device_path_from_handle(efi_loaded_image->device_handle);
 	pr_debug("loaded-image: %pD\n", loaded_image_dp);
 
-	if (!loaded_image_dp)
-		return -EINVAL;
-
 	uuid = device_path_to_partuuid(loaded_image_dp);
 	if (uuid) {
 		wchar_t *uuid16 = xstrdup_char_to_wchar(uuid);
-- 
2.47.3



