Delivery-date: Tue, 20 May 2025 10:47:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHIdQ-000mY3-0H
	for lore@lore.pengutronix.de;
	Tue, 20 May 2025 10:47:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHIdP-0001AO-Gl
	for lore@pengutronix.de; Tue, 20 May 2025 10:47:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ljomPFNN8inMCMUTiER8ZFNEoT6cUiWdfNwdyooH66w=; b=jhT26BlUJNOirpgUgoU/8qE2jY
	IoEMCSSBU4nYLEMsgx1eymqb+wnc/HuHl3nb/uRla19XFRrv5bo+oNE5+/vswxDj2NuR5hQJt0Tv/
	mXnHRgLZN3TFU6ZalSjybUk8wgTfdMvHgI+Ph3iTkZc3MZLSu3BVZCGhIc+4xsBtSnmu6Pf3YtJZ2
	DAhpvkegfXVXmDTZc/Egvx7Gwfiw0bwQGLx85SRCvrZnfWojy6bBmg4ee/NuSVHvtO4U98IPB04tp
	Rdzoh5rorWMB4arh+yKiELV4iBeLIsXyr2D5kmwD1GYde7/mH0dhSxjIFVFIKvRCr4Ia+qrVBkU+2
	lXm4o0og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHIct-0000000C3v3-0Eo8;
	Tue, 20 May 2025 08:47:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHIcq-0000000C3ug-0p9t
	for barebox@lists.infradead.org;
	Tue, 20 May 2025 08:47:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uHIco-00012Z-Ou; Tue, 20 May 2025 10:47:02 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 20 May 2025 10:47:01 +0200
Message-Id: <20250520084701.703872-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_014704_235066_06F53479 
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] Documentation: migration-2025.05.0: document more changes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Looking through the git log for the next release shows some things,
users may stumble over when updating, so document them.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 .../migration-guides/migration-2025.05.0.rst  | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/migration-guides/migration-2025.05.0.rst b/Documentation/migration-guides/migration-2025.05.0.rst
index fe734a2921e5..82b9fcb8e53f 100644
--- a/Documentation/migration-guides/migration-2025.05.0.rst
+++ b/Documentation/migration-guides/migration-2025.05.0.rst
@@ -59,6 +59,16 @@ Board support
   and using the hardware config FIP slot only as dummy.
   See the lxa-tac board for an example.
 
+* ``barebox-sama5d27-som1-ek-xload-mmc.img`` has been renamed to
+  ``barebox-sama5d27-som1-ek-xload.img`` and
+  ``barebox-groboards-sama5d27-giantboard-xload-mmc.img`` has been renamed to
+  ``barebox-groboards-sama5d27-giantboard-xload.img`` to reflect
+  that the same image is now also bootable from QSPI flash.
+
+* Clock initialization for RK356x is no longer hardcoded, but is now
+  specified in the device tree. barebox device trees not including
+  ``#include rk356x.dtsi`` (in ``arch/arm/dts``) may regress.
+
 Shell and magic variables
 -------------------------
 
@@ -69,3 +79,19 @@ Shell and magic variables
   This does not affect users setting ``nv boot.default``, but for
   others, barebox will look for bootloader spec on the bootsource
   medium first.
+
+Build system
+------------
+
+* When building for ``ARCH=sandbox``, ``libftdi1`` and ``sdl2``
+  libraries are now looked up with ``${CROSS_PKG_CONFIG}`` instead
+  of ``${PKG_CONFIG}``. This is not relevant when cross-building
+  just the barebox tools, which is the usual use case for sandbox
+  cross compilation.
+
+Bisectability
+-------------
+
+Many users of ``read*_poll_is_timeout`` are broken between
+``554bbc479c09..dea0ad02bbd6``, which can falsify git bisect
+results.
-- 
2.39.5



