Delivery-date: Mon, 16 Mar 2026 18:22:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2Bdg-001Vga-1M
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 18:22:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2Bdf-00059p-Qu
	for lore@pengutronix.de; Mon, 16 Mar 2026 18:22:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D+93NKCuJNTJ+KxtStSD6kxLerRSV0hmjhY+lqfaV0Q=; b=bLnVCX2+rKXyByP8/T9U7//h33
	z82P3XmSHy3v+mlRK2TltIp7/29ydH2K586+OcqQZEbQpAoemaHnviQBaFVnxQyvrXLCc/kG9WzG4
	OfKP6e25q7+pumzos3rUf1H1pLgk6v7EGNiUHOvS81ytdWkZ/VDF7vOPVeT27X1YKER2T85sfR6IX
	rJNKigrQt2cIGBFN0RH04vSzHucTyNiZvsXeJX/7cu3sago2pLSE8iFyyxsUSK8hph6CkkEy0cogw
	gC8sFVPcEd/SBg6XV9dFzsyvV/JyTiH1/KybDjznK9MWz5u+BEzTHY/mOviKI8opWf+VD52SfVwjq
	viexGD8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2BdJ-00000004YGx-2dzG;
	Mon, 16 Mar 2026 17:21:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2BdI-00000004YG6-32ZB
	for barebox@bombadil.infradead.org;
	Mon, 16 Mar 2026 17:21:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=D+93NKCuJNTJ+KxtStSD6kxLerRSV0hmjhY+lqfaV0Q=; b=AFQOjrmnenOJfFzOPFNKXLQATf
	KdgKzs7Rs6XIqE/hoHvICW2ognwe/ZVfNEelOWBvcnU6FxclCFh1k4cT5NUj34GgEj4mJNMewSNVJ
	8TeHqaYiESXKghmswfgWhAYT1VKGc3BYfuOt6KsPA2a+cGdcdlck3dlxIza8KMWeZ3q39yAEbCBQq
	PjwFeWWCcndC325IbIJH252buLZXQBX2ydx9Hndn1aGAVMFiY2h2JKDFgSh0gbx83XbXGCFEqITuR
	XCAmxTikwsNYYX01NRCkew+gEq2WmGvV6E5zFJ9hYArRLRuS7TRKWhewmm0ybpggJ0E0FEgslweob
	CjTdPgmw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2BdF-00000007JeT-2gc7
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 17:21:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcz-0004fj-8h; Mon, 16 Mar 2026 18:21:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-000bi7-2W;
	Mon, 16 Mar 2026 18:21:16 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-0000000AaeX-2hm9;
	Mon, 16 Mar 2026 18:21:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Mar 2026 18:21:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-compressed-firmware-v1-7-d9712142881e@pengutronix.de>
References: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
In-Reply-To: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773681676; l=1581;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=sSRQ1E7ZPEdt43IiSlP5u7lgs3tX5lme3FFv4WYfIqA=;
 b=Mg69YNO1xJTU/injFbJzqJ4AKDmrzvDqaZMtAralmYLMLSIE7QOR4Vc/f7SDDmujak79Wqcfl
 5PLTcHnOCgkD37153VzID5E18TAOeTYMuvFZc48fhfl4EkE0TZYAXjJ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_172133_844662_EFDF5976 
X-CRM114-Status: UNSURE (   9.20  )
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
Cc: Sascha Hauer <sascha@saschahauer.de>, "Claude Opus 4.6" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 7/9] firmware: Add fwobj_uncompress() for decompressing
 firmware in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <sascha@saschahauer.de>

Add fwobj_uncompress() which decompresses a firmware object into a
destination buffer. This pairs with get_builtin_firmware_compressed()
to provide a simple API for loading compressed firmware in PBL context.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/firmware.h | 2 ++
 pbl/decomp.c       | 7 +++++++
 2 files changed, 9 insertions(+)

diff --git a/include/firmware.h b/include/firmware.h
index 2f75ded82b..07651f1a93 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -121,6 +121,8 @@ struct fwobj {
 #define get_builtin_firmware_ext(name, base, fwobj)			\
 	__get_builtin_firmware(name, (long)base - (long)_text, fwobj)
 
+int fwobj_uncompress(struct fwobj *fwobj, void *dest);
+
 #define get_builtin_firmware_compressed(name, fwobj)			\
 	do {								\
 		extern char _fw_z_##name##_start[];			\
diff --git a/pbl/decomp.c b/pbl/decomp.c
index 532e9d460f..1539a6b67e 100644
--- a/pbl/decomp.c
+++ b/pbl/decomp.c
@@ -9,6 +9,7 @@
 #include <crypto/sha.h>
 #include <crypto/pbl-sha.h>
 #include <digest.h>
+#include <firmware.h>
 #include <asm/sections.h>
 #include <pbl.h>
 #include <debug_ll.h>
@@ -116,3 +117,9 @@ int pbl_dtbz_uncompress(void *dest, void *compressed_start, unsigned long len)
 	return decompress(compressed_start, len, NULL, NULL, dest, NULL,
 			  errorfn);
 }
+
+int fwobj_uncompress(struct fwobj *fwobj, void *dest)
+{
+	return decompress(fwobj->data, fwobj->size, NULL, NULL, dest, NULL,
+			  errorfn);
+}

-- 
2.47.3



