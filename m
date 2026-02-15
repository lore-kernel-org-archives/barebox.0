Delivery-date: Sun, 15 Feb 2026 19:05:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrgVF-0022pB-1l
	for lore@lore.pengutronix.de;
	Sun, 15 Feb 2026 19:05:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrgVF-0002Du-Rf
	for lore@pengutronix.de; Sun, 15 Feb 2026 19:05:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XG9CIk69nIaBhsoy2c8SNTRgtB8JtEKqp7KRW/pinNY=; b=v51GSbsJ6rnEPbCa7/UwNo2jRP
	tBW5MdlecHeXQgbUjtam+ndz8RR1H41+VGM8FnlXnbnNAzSluChoZWC6YnKUiADePWUvhfbI7+ZZE
	v7ggV2l4rX23DkmjRU+G1JZRikOm+KdUnfgi/7gXFRz0OE+6SwZH0t19WyfTukApY5pGzY/un2xEI
	gpqLlAxUEtaVk6cWpgCuCCmXDtjM3ZLTrGQA8vlSdo0RVjYmy8hAC5ZNCHslO4Oa3wXoqthBB0BL9
	/5mGEa9lVD07xMND2fuflnvtqpraWGckesY22cby4Uj5Q3L+Ijl3VuROXNNqRKW5LKmZpTvRjaHOT
	+lGzR47g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrgUg-00000005Zjo-1PWu;
	Sun, 15 Feb 2026 18:05:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrgUd-00000005ZjS-3XZp
	for barebox@lists.infradead.org;
	Sun, 15 Feb 2026 18:05:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vrgUb-00029Y-Km; Sun, 15 Feb 2026 19:05:13 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vrgUa-000wEz-0L;
	Sun, 15 Feb 2026 19:05:13 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vrgUb-0000000BMIp-1TPT;
	Sun, 15 Feb 2026 19:05:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 15 Feb 2026 19:05:06 +0100
Message-ID: <20260215180511.2707275-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260215_100515_901881_1BD0BD3A 
X-CRM114-Status: UNSURE (   9.16  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH] test: 9p: switch security_model from mapped to none
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

QEMU's security_model=mapped doesn't allow reading host symlinks (those
not created through 9P) and instead returns ELOOP.

Switch to security_model=none, which passes through real filesystem
semantics (including symlinks) while silently ignoring ownership and
permission changes that would require root.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/virtio.rst | 2 +-
 conftest.py                   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/virtio.rst b/Documentation/user/virtio.rst
index 4a46713f66aa..b7f5b8b23f99 100644
--- a/Documentation/user/virtio.rst
+++ b/Documentation/user/virtio.rst
@@ -101,7 +101,7 @@ The current working directory can be passed to the guest via the ``virtio-9p``
 device::
 
   qemu-system-aarch64 -kernel barebox-dt-2nd.img -machine virt,highmem=off \
-                       -fsdev local,security_model=mapped,id=fsdev0,path=. \
+                       -fsdev local,security_model=none,id=fsdev0,path=. \
                        -device virtio-9p-pci,id=fs0,fsdev=fsdev0,mount_tag=hostshare
                        -cpu cortex-a57 -m 1024M -nographic \
                        -serial mon:stdio -trace file=/dev/null
diff --git a/conftest.py b/conftest.py
index e6485fcb9575..7ebd08f428c6 100644
--- a/conftest.py
+++ b/conftest.py
@@ -260,7 +260,7 @@ def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
             tag = fs.pop() if fs else f"fs{i}"
 
             strategy.append_qemu_args(
-                "-fsdev", f"local,security_model=mapped,id=fs{i},path={path}",
+                "-fsdev", f"local,security_model=none,id=fs{i},path={path}",
                 "-device", f"virtio-9p-{virtio},id=fs{i},fsdev=fs{i},mount_tag={tag}"
             )
         else:
-- 
2.47.3



