Delivery-date: Wed, 09 Apr 2025 16:13:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2WBb-00ARQ3-18
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 16:13:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2WBZ-0001b8-Id
	for lore@pengutronix.de; Wed, 09 Apr 2025 16:13:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FTZjFcUeTHlVNjk2Z2IM8fDWtw8kzOVZ6IJWcjYrMvA=; b=vCfTJUsZOW/10yRFXMB6qefWyn
	ZAUaQNLG0fkfyU7JmffotELG4PmpixtWRiyV+ZC++P/TOtV7mPmArFw9bDXS+Xzpw1GUu0577shX5
	21CibAvNpTuEpIJaB+MPpn5pRAzozolLXZBZQCiQCbcJy1sEbs40pvRwmPW5PcvkvRbZw1p0y8FoI
	JIpFE2rDn4DUSoL8KJdcHWKnHt+tlDxfLpzp40QUKca4g6eFuQMFWLKT6Q5rX0D5wTn43vRFGsbl1
	iS3urDwh9dxkBq9FU+FL+OPYyBmKLHXWCQH+ATujkxxroFNU1m0t3OPbSPzjg5b3Oq4Rlwgx05XyF
	P+Z3rtcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2WAx-00000007PDX-1wY6;
	Wed, 09 Apr 2025 14:13:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2VKn-00000007Grt-2kFv
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 13:19:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2VKl-0006g2-HI; Wed, 09 Apr 2025 15:19:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2VKl-0046qG-16;
	Wed, 09 Apr 2025 15:19:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2VKl-008B6h-0n;
	Wed, 09 Apr 2025 15:19:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Apr 2025 15:19:14 +0200
Message-Id: <20250409131914.1949302-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_061917_688794_A2A07CC4 
X-CRM114-Status: UNSURE (   9.85  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] defaultenv: boot/bnet: fallback to booting generic 2nd stage FIT image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With CONFIG_BOARD_GENERIC_FIT enabled, barebox generates a FIT image
containing a generic DT-based second-stage barebox images as well as all
enabled DTs.

Add it as fallback if the image with the hostname is missing, example:

  Board-specific image: afa-barebox-lxa-mc1
   Arch-specific image: afa-barebox-arm

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/globalvar.c                     | 3 +++
 defaultenv/defaultenv-2-base/boot/bnet | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index 5f5b7d44ae62..26202f2b493d 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -680,6 +680,8 @@ static int globalvar_init(void)
 	if (strlen(buildsystem_version_string) > 0)
 		globalvar_add_simple("buildsystem.version", buildsystem_version_string);
 
+	globalvar_add_simple("arch", CONFIG_ARCH_LINUX_NAME);
+
 #ifdef __BIG_ENDIAN
 	endianness = "big";
 #elif defined(__LITTLE_ENDIAN)
@@ -698,6 +700,7 @@ BAREBOX_MAGICVAR(global.version, "The barebox version");
 BAREBOX_MAGICVAR(global.buildsystem.version,
 		 "version of buildsystem barebox was built with");
 BAREBOX_MAGICVAR(global.endianness, "The barebox endianness");
+BAREBOX_MAGICVAR(global.arch, "Name of architecture as used by Linux");
 
 /**
  * nvvar_save - save NV variables to persistent environment
diff --git a/defaultenv/defaultenv-2-base/boot/bnet b/defaultenv/defaultenv-2-base/boot/bnet
index e378acd1e65a..b2eeab93d9b8 100644
--- a/defaultenv/defaultenv-2-base/boot/bnet
+++ b/defaultenv/defaultenv-2-base/boot/bnet
@@ -5,3 +5,6 @@
 path="/mnt/tftp"
 
 global.bootm.image="${path}/${global.user}-barebox-${global.hostname}"
+if [ ! -f "${global.bootm.image}" ]; then
+      global.bootm.image="${path}/${global.user}-barebox-${global.arch}"
+fi
-- 
2.39.5



