Delivery-date: Wed, 02 Aug 2023 18:22:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qREcb-003iQX-Vw
	for lore@lore.pengutronix.de; Wed, 02 Aug 2023 18:22:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qREca-0007ur-1y
	for lore@pengutronix.de; Wed, 02 Aug 2023 18:22:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=psYTb/5os5t1bHwqnmdGqPB4gn7aElJERSZPHVZGbkc=; b=vdWA4QndlK/V5U5BfT7FVify9i
	DIgeACiO581Bal3JsO9yEReK65i5T9bETQIdU/B3i4ns84kX3XoNpLpdFLP2ls63OIWnbdC9HkdKd
	swf6MmqOXCip9ZfqOW3t8r6yZ5kHY6h7qA9ACprhJ4WlIoYPC4cQZchHRGJxFDsjEHrecjF9R2j0E
	3xBfSKShclsj28b3mxAMJSWSDhtG2oYLw6+r62Yd6hpmPVAJNMT812qry0OgEqlY1GgnJ4Of7Yq4Z
	QHyxc2TR8ihi289dfwnCJAmEsZc7kbsg97XmTb1DVqta1Ep6Mt2B9UC1ExfPaC+kjtk7HRIyEyp+l
	OjlYju3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qREbD-005L8s-2S;
	Wed, 02 Aug 2023 16:21:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qREbB-005L8A-0W
	for barebox@lists.infradead.org;
	Wed, 02 Aug 2023 16:21:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qREb5-0007od-4P; Wed, 02 Aug 2023 18:21:15 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qREb4-000eW9-Fi; Wed, 02 Aug 2023 18:21:14 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qREb3-007IK7-3C;
	Wed, 02 Aug 2023 18:21:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Aug 2023 18:21:08 +0200
Message-Id: <20230802162108.1738676-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_092121_199306_52D7E6DD 
X-CRM114-Status: GOOD (  10.80  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] scripts: fix pkg-config use for rsatoc/rkimage hosttools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Source files built for running on the build host can be given extra
argument via the HOSTCFLAGS variable. This is evaluates in
scripts/Makefile.host and results in adding $(HOSTCFLAGS_$(target-stem).o)
during each HOSTCC invocation.

We do that correctly at all places, except for two: rsatoc and rkimage
both use openssl, but they only have HOSTLDLIBS_rsatoc correctly set for
linking against openssl. HOSTCFLAGS_ however was incorrectly set for
the targets without the .o suffix and compiling these files only worked,
because OpenSSL was installed into a directory that's in the default
include search path. This is not a given, e.g. when building barebox
through OpenEmbedded inside a container without openssl headers, so
let's ensure pkg-config is correctly used.

Fixes: 128ad3cbe043 ("scripts: Add rsatoc tool")
Fixes: 63f612f9e0ea ("ARM: Rockchip: Add rkimage tool")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/Makefile b/scripts/Makefile
index 01b21a61692c..b8dd15cbf798 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -12,7 +12,7 @@ hostprogs-always-y					+= bareboxcrc32
 hostprogs-always-y					+= kernel-install
 hostprogs-always-$(CONFIG_QOICONV)			+= qoiconv
 hostprogs-always-$(CONFIG_CRYPTO_RSA_BUILTIN_KEYS)	+= rsatoc
-HOSTCFLAGS_rsatoc = `$(PKG_CONFIG) --cflags openssl`
+HOSTCFLAGS_rsatoc.o = `$(PKG_CONFIG) --cflags openssl`
 HOSTLDLIBS_rsatoc = `$(PKG_CONFIG) --libs openssl`
 hostprogs-always-$(CONFIG_IMD)				+= bareboximd
 hostprogs-always-$(CONFIG_KALLSYMS)			+= kallsyms
@@ -28,7 +28,7 @@ hostprogs-always-$(CONFIG_LAYERSCAPE_PBLIMAGE)		+= pblimage
 hostprogs-always-$(CONFIG_STM32_IMAGE)			+= stm32image
 hostprogs-always-$(CONFIG_RISCV)			+= prelink-riscv
 hostprogs-always-$(CONFIG_RK_IMAGE)			+= rkimage
-HOSTCFLAGS_rkimage = `$(PKG_CONFIG) --cflags openssl`
+HOSTCFLAGS_rkimage.o = `$(PKG_CONFIG) --cflags openssl`
 HOSTLDLIBS_rkimage = `$(PKG_CONFIG) --libs openssl`
 KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
 HOSTLDLIBS_mxsimage  = `$(PKG_CONFIG) --libs openssl`
-- 
2.39.2



