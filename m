Delivery-date: Thu, 12 Dec 2024 08:20:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLdUU-00763a-1t
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 08:20:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLdUT-0002RB-TE
	for lore@pengutronix.de; Thu, 12 Dec 2024 08:20:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CNt6EqLCv2IcRfygjV/d0fUewD0NX5sNqbFFSm3IICU=; b=LHspxH3ynBdA6smybRn8WpqO88
	msJCO16Duvx4HRUZ73mRu/jHsi4kXWxB0Y+ZVsEOMmH2nYxAr8edJGhCE1n8hpM37c/crb7Z7myNg
	l/d0OUEpqOxD3sAGpdD/RZqVtppEkbXfaYrqshC4GtpfRDt2Edaa35EXulQMDb0dynBkTT0/JivXS
	nkdAq4154eIZS4Tt66Rga++O+DdmYlcfd8oauOJfLXlpqpBJJElGuSOZgZAsb/79xDNKc7Sob/rlo
	Oh1yISBEj3RGZMNT+L9XQDbrg8wEalBJeMOerlsAXFsrdaDjlaWUVA/3jR7BDkZrMZqLTsi4hSwvG
	PdvnGpKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLdU1-0000000H8q1-2sgW;
	Thu, 12 Dec 2024 07:19:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLdTx-0000000H8nB-0hgz
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 07:19:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLdTt-0002IM-Cg; Thu, 12 Dec 2024 08:19:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLdTs-002znL-0i;
	Thu, 12 Dec 2024 08:19:29 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLdTs-00ALY0-2t;
	Thu, 12 Dec 2024 08:19:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Dec 2024 08:19:27 +0100
Message-Id: <20241212071928.2466094-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_231933_200487_6EA95809 
X-CRM114-Status: GOOD (  10.84  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] bbremote: fix 'NoneType' object has no attribute 'encode'
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The RatpFSServer constructor supports passing None to it, but the
command line interface panics before the function can be invoked.

As the function already supports NoneType and bytes input, just teach it
to accept str input as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/remote/main.py   | 4 ++--
 scripts/remote/ratpfs.py | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/scripts/remote/main.py b/scripts/remote/main.py
index 5aa176fdc426..020a78c3fcb0 100644
--- a/scripts/remote/main.py
+++ b/scripts/remote/main.py
@@ -48,7 +48,7 @@ def get_controller(args):
 
 def handle_run(args):
     ctrl = get_controller(args)
-    ctrl.export(args.export.encode())
+    ctrl.export(args.export)
     res = ctrl.command(' '.join(args.arg))
     if res:
         res = 1
@@ -160,7 +160,7 @@ def handle_listen(args):
 def handle_console(args):
     queue = Queue()
     ctrl = get_controller(args)
-    ctrl.export(args.export.encode())
+    ctrl.export(args.export)
     ctrl.start(queue)
     ctrl.send_async_console(b'\r')
     cons = ConsoleInput(queue, exit=b'\x14')  # CTRL-T
diff --git a/scripts/remote/ratpfs.py b/scripts/remote/ratpfs.py
index 3e05cf241868..3aa3eb45ac78 100644
--- a/scripts/remote/ratpfs.py
+++ b/scripts/remote/ratpfs.py
@@ -60,6 +60,8 @@ class RatpFSPacket(object):
 class RatpFSServer(object):
     def __init__(self, path=None):
         if path:
+            if isinstance(path, str):
+                path = path.encode()
             assert isinstance(path, bytes)
             self.path = os.path.abspath(os.path.expanduser(path))
         else:
-- 
2.39.5



