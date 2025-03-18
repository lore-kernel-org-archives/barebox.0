Delivery-date: Tue, 18 Mar 2025 09:25:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuSGb-000xpP-1R
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 09:25:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuSGa-0004gL-8N
	for lore@pengutronix.de; Tue, 18 Mar 2025 09:25:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Vu9vYL5zvkV4ryR7T0KbGf+Yb4cpaTLY6vwobvxMpQ4=; b=E1XkFrCWsIGaQ2EDJreDMfar9U
	WtYDEkAe+nMM/E40MsEMVtNLqCXu8VswPXEGYJAFm6pPw97Pp32qDnnO3D4/PQ5ClUzQrvPW/8Z7U
	JkhWJKZrHMaGxe8K3S0vV4XHX1mahG6V5gRPSThWRiZyNSXhapMqOk4A7Qlt1NGifWHwznHmZdJIX
	6FIoydRNei/u/wiUauUjyhTfp+xds5nsZpbggxUYX1pjIrmO72QCHBlsaoQqHVjHai5OwM3pZLh+0
	kCXHSoLLi9sbKUrc8DHMuiZfMHnToNHhiGNiAomo8EtAyKIm4No8F0D+PX/m7UNuqkR2iXSFVWXch
	d3lDJF6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuSG8-000000059yI-2Wsj;
	Tue, 18 Mar 2025 08:25:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuSG5-000000059wz-47D1
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 08:25:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuSG4-0004Q4-Le; Tue, 18 Mar 2025 09:25:08 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuSG4-000OTT-04;
	Tue, 18 Mar 2025 09:25:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuSG4-001lFs-18;
	Tue, 18 Mar 2025 09:25:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Mar 2025 09:25:04 +0100
Message-Id: <20250318082507.419785-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_012510_021633_406A9B37 
X-CRM114-Status: GOOD (  11.14  )
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
Subject: [PATCH 1/4] scripts/make_fit: factor dtb file name into configuration name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Bootloaders often support booting a specific FIT configuration by name.
This is useful when the automatic boot fails, because the bootloader's
DT compatible differs from the upstream one included with the Linux
device trees.

Currently, configuration are numbered sequentially requiring the user to
dump the FIT image to determine what number the configuration has.

Improve upon this by naming configurations after the dtb name instead.
This is what OE-core kernel-fitimage.bbclass does for example.

Cc: Uwe Kleine-König <uwe@kleine-koenig.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/make_fit.py | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/scripts/make_fit.py b/scripts/make_fit.py
index 075b7c258ff2..2190da4c003c 100755
--- a/scripts/make_fit.py
+++ b/scripts/make_fit.py
@@ -145,11 +145,9 @@ def finish_fit(fsw, entries):
             str: Compatible stringlist
     """
     fsw.end_node()
-    seq = 0
     with fsw.add_node('configurations'):
-        for model, compat, files in entries:
-            seq += 1
-            with fsw.add_node(f'conf-{seq}'):
+        for dtbname, model, compat, files in entries:
+            with fsw.add_node(f'conf-{dtbname}'):
                 fsw.property('compatible', bytes(compat))
                 fsw.property_string('description', model)
                 fsw.property('fdt', bytes(''.join(f'fdt-{x}\x00' for x in files), "ascii"))
@@ -266,6 +264,7 @@ def build_fit(args):
     fsw = libfdt.FdtSw()
     setup_fit(fsw, args.name)
     entries = []
+    dtbs_seen = set()
     fdts = {}
 
     # Handle the kernel
@@ -290,7 +289,13 @@ def build_fit(args):
 
         files_seq = [fdts[fn] for fn in files]
 
-        entries.append([model, compat, files_seq])
+        dtbname = os.path.basename(fname)
+        ndtbs_seen = len(dtbs_seen)
+        dtbs_seen.add(dtbname)
+        if len(dtbs_seen) == ndtbs_seen:
+            raise RuntimeError(f"Duplicate file name '{dtbname}' during FIT creation")
+
+        entries.append([dtbname, model, compat, files_seq])
 
     finish_fit(fsw, entries)
 
-- 
2.39.5



