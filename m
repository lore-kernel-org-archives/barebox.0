Delivery-date: Wed, 25 Feb 2026 16:10:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvGXD-005YrI-31
	for lore@lore.pengutronix.de;
	Wed, 25 Feb 2026 16:10:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvGXE-000098-75
	for lore@pengutronix.de; Wed, 25 Feb 2026 16:10:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PaL/coiUgaD2dFUG7mh9TAsRTX7MdMLv4iBCMeHbKbM=; b=VKTj7hvbFqzinqKxKNOXWMCSE7
	/gKPTbpR4/Xbi9JQ5aVyB8mH6mh7kXKxlxrqInURmgWMbvVxXiTMUAYOYaKvfewoMTQxHg4cbzd0e
	rWY4OQZFdjTBqyP7yq/H1jnLMTtdy4F3Ymo/Jj/9WYxkCqDWzJ4uPM/51mokNRlqE2aenUxvoqwYl
	g4cH8E6FYGJs/d0GXrhqiPasomtaM8qGonolkQfPLUZ6r9JchHzlOZhHu71SaCRlCoCJyEsCPtltZ
	CV8tyvm5u5MuVbibxNMerBwKjicRI1hc59DDBAWWmNdtaGiw3QscBR7DwiHdL0mDmykDcMXGb4Y71
	Yvug8lDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGWj-00000004FdN-1MNz;
	Wed, 25 Feb 2026 15:10:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGWg-00000004FcJ-3Kor
	for barebox@lists.infradead.org;
	Wed, 25 Feb 2026 15:10:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvGWe-0008Lg-Fu; Wed, 25 Feb 2026 16:10:08 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvGWc-002aIL-36;
	Wed, 25 Feb 2026 16:10:08 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvGWe-00000001jRu-0sJy;
	Wed, 25 Feb 2026 16:10:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Feb 2026 16:10:04 +0100
Message-ID: <20260225151007.412926-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_071010_873933_C3D38D51 
X-CRM114-Status: GOOD (  15.80  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] Documentation: migration-guides: split off 2026.02.0 into own file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Having a single migration-master.rst turns out to be error prone, because
presumably git detects the rename of the last release and adds new
entries not to migration-master.rst after the rebase, but to the
migration guide for the former release.

This seems to have happend with commit 09663fb38ffd
("startup: attempt poweroff if no shell and nothing to do"),
so move it back into the correct file and while at it add a
migration-master.rst right away.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../migration-guides/migration-2026.01.0.rst          |  9 ---------
 .../migration-guides/migration-2026.02.0.rst          | 11 +++++++++++
 Documentation/migration-guides/migration-master.rst   |  1 +
 3 files changed, 12 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/migration-guides/migration-2026.02.0.rst
 create mode 100644 Documentation/migration-guides/migration-master.rst

diff --git a/Documentation/migration-guides/migration-2026.01.0.rst b/Documentation/migration-guides/migration-2026.01.0.rst
index df7b3d6f497a..931972901695 100644
--- a/Documentation/migration-guides/migration-2026.01.0.rst
+++ b/Documentation/migration-guides/migration-2026.01.0.rst
@@ -36,12 +36,3 @@ ARM i.MX6 RIoTboard
 
 The barebox update handler has been changed to write barebox to the
 eMMC boot partitions rather than the user data area.
-
-CONFIG_SHELL_NONE
------------------
-
-If there's nothing to do for a shell-less barebox, it will now attempt
-to poweroff the system instead of busy-looping indefinitely.
-This changes behavior for systems that rely on a watchdog to reset
-a hanging barebox in this situation. If this breaks anything for you,
-please reach out.
diff --git a/Documentation/migration-guides/migration-2026.02.0.rst b/Documentation/migration-guides/migration-2026.02.0.rst
new file mode 100644
index 000000000000..80da34d32f5e
--- /dev/null
+++ b/Documentation/migration-guides/migration-2026.02.0.rst
@@ -0,0 +1,11 @@
+Release v2026.02.0
+==================
+
+CONFIG_SHELL_NONE
+-----------------
+
+If there's nothing to do for a shell-less barebox, it will now attempt
+to poweroff the system instead of busy-looping indefinitely.
+This changes behavior for systems that rely on a watchdog to reset
+a hanging barebox in this situation. If this breaks anything for you,
+please reach out.
diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
new file mode 100644
index 000000000000..8feca331c5d7
--- /dev/null
+++ b/Documentation/migration-guides/migration-master.rst
@@ -0,0 +1 @@
+:orphan:
-- 
2.47.3



