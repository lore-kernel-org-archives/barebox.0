Delivery-date: Wed, 25 Feb 2026 16:10:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvGXE-005Yrd-1f
	for lore@lore.pengutronix.de;
	Wed, 25 Feb 2026 16:10:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvGXE-00009G-Qn
	for lore@pengutronix.de; Wed, 25 Feb 2026 16:10:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xpUB0TgESuZIWHokROjHqMBxRHlkkaV8MCxIPPwmjRw=; b=Bin23nV55jT3f/ctNzjuebXAqg
	7MfECRPiuMB7Ta/PkvMDuGjNrESDL+b9aCvgYwg1mIKtyKaage61+ghWTUeTRaBW9OI2JqZom2/bk
	AsidhdQmUR+lxMkYw9A/e1oHfPGM0lW3EYlmTjGsYFdbHSRhBIIKnGp6HRLtzaJBk1gVIh9jiNHKQ
	pOyUOn77dTux9TVgBDTjv2aASpZcZPceNrlIDUWGG7zIxtXolAQu+nrkND2JGzhkhTFYB7NHaugw1
	l4/P/3tBmxUfXZtGvlt+PCCxiZqU1nbGJGWYi6ThkXoNkKgoKDKRyejnmHElSrhLxkxG0piEcCiuu
	s76kmwDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGWj-00000004FdT-2Tjt;
	Wed, 25 Feb 2026 15:10:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGWg-00000004FcI-3Kdk
	for barebox@lists.infradead.org;
	Wed, 25 Feb 2026 15:10:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvGWe-0008Lh-HJ; Wed, 25 Feb 2026 16:10:08 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvGWd-002aIM-00;
	Wed, 25 Feb 2026 16:10:08 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvGWe-00000001jRu-14Rz;
	Wed, 25 Feb 2026 16:10:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Feb 2026 16:10:05 +0100
Message-ID: <20260225151007.412926-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260225151007.412926-1-a.fatoum@pengutronix.de>
References: <20260225151007.412926-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_071010_860730_4F2E5309 
X-CRM114-Status: GOOD (  10.52  )
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
Subject: [PATCH master 2/2] Documentation: migration-guides: 2026.01.0: clarify fsdev linux.bootargs change
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The entry is a bit confusing and it's not clearly spelt out that this
doesn't affect global.linux.bootargs, so make this clearer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../migration-guides/migration-2026.01.0.rst  | 23 ++++++++++---------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/Documentation/migration-guides/migration-2026.01.0.rst b/Documentation/migration-guides/migration-2026.01.0.rst
index 931972901695..b40d125195a7 100644
--- a/Documentation/migration-guides/migration-2026.01.0.rst
+++ b/Documentation/migration-guides/migration-2026.01.0.rst
@@ -12,21 +12,22 @@ like the in-tree boards are already doing.
 Filesystems
 -----------
 
-``{linux.bootargs}`` is replaced with ``root={linux.bootargs.root} {linux.bootargs.rootopts}``
+The ``linux.bootargs`` file system device parameter (e.g. ``ext40.linux.bootargs``)
+has been replaced by the two variables ``${fsdev}.linux.bootargs.root`` and
+``${fsdev}.linux.bootargs.rootopts``, splitting the previous bootargs
+into three parts. For example, the previous::
 
-The variable linux.bootargs has been replaced by the two variables
-linux.bootargs.root and linux.bootargs.rootopts, splitting the previous bootargs
-into three parts. A nonexistent fixed "root=", then the root filesystem and then
-additional optional params for this particular filesystem.
-
-for example the previous::
-
-    linux.bootargs="root=/dev/nfs nfsroot=192.168.1.1:/rootfs"
+    ext40.linux.bootargs="root=/dev/nfs nfsroot=192.168.1.1:/rootfs"
 
 becomes::
 
-    linux.bootargs.root="/dev/nfs"
-    linux.bootargs.rootopts="nfsroot=192.168.1.1:/rootfs"
+    ext40.linux.bootargs.root="/dev/nfs"
+    ext40.linux.bootargs.rootopts="nfsroot=192.168.1.1:/rootfs"
+
+Scripts that access these parameters will need to be adapted to replace
+``{linux.bootargs}`` with ``root={linux.bootargs.root} {linux.bootargs.rootopts}``.
+
+``global.linux.bootargs.*`` is unaffected by this change.
 
 Boards
 ------
-- 
2.47.3



