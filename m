Delivery-date: Thu, 21 Sep 2023 12:24:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGrE-005l9z-O4
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 12:24:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGrC-0002Dj-Od
	for lore@pengutronix.de; Thu, 21 Sep 2023 12:24:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=chMT76P4G2jWwkaZDQsf/k4V8xGtVECVxHFeyfJXtzc=; b=KQz/Z/zfjfmp21lzmByCrKi0zG
	/9Tnfwwa+EQ/Ysbo1nM2BQYG0X3MLp7ieLv5C5Q92ap8QS+LO24t71rRlDs7ChJW+Iv8eAzXBr5yB
	2PJmIVA6wdi+hnXbrbcTUEy3zlKxtRIJRCvXLJ5Ex/+XR/CPET55BhIZPA9thULcA5w23PibaGGiH
	AbWXaR0K0f9d7C7irdfN+E04QfRveAzceReiPXkH2bev3KtSguU1tvqFvTfLf1W7LJ335X5ajjbM5
	hWQWY/8t2TjkRrqV+CPhyzOlGyKbWIO5AgRSQs4b69xZybSHAzMLI9YaKBEyGoFqeUfJL/KRhsaMv
	JNw8FHrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGq9-005hbc-1r;
	Thu, 21 Sep 2023 10:23:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGq4-005hZE-0R
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 10:23:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGq2-0001lB-SI; Thu, 21 Sep 2023 12:23:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGq2-007u1k-DD; Thu, 21 Sep 2023 12:23:14 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGq2-004eRD-16;
	Thu, 21 Sep 2023 12:23:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 12:23:07 +0200
Message-Id: <20230921102310.1108543-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230921102310.1108543-1-a.fatoum@pengutronix.de>
References: <20230921102310.1108543-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_032316_195256_EE627478 
X-CRM114-Status: GOOD (  11.15  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] scripts: allow user to build rsatoc if COMPILE_HOST_TOOLS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

rsatoc is automatically built if CONFIG_CRYPTO_RSA_BUILTIN_KEYS=y.
For testing, it can be useful to build the tool standalone, so add an
option to do just that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 crypto/Kconfig   | 1 +
 scripts/Kconfig  | 7 +++++++
 scripts/Makefile | 2 +-
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 04e5ef43705b..4ad7bd844fa1 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -121,6 +121,7 @@ config CRYPTO_RSA
 config CRYPTO_RSA_BUILTIN_KEYS
 	bool
 	default y if CRYPTO_RSA_KEY != ""
+	select RSATOC
 
 config CRYPTO_RSA_KEY
 	depends on CRYPTO_RSA
diff --git a/scripts/Kconfig b/scripts/Kconfig
index 26c6a3c19806..9be04fa7c8bf 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -110,6 +110,13 @@ config QOICONV
 	help
 	  This enable converting png to qoi images to generate boot logo.
 
+config RSATOC
+	bool "RSA to C converter" if COMPILE_HOST_TOOLS
+	help
+	  This utility converts RSA keys in PEM format to either C or
+	  device tree snippets. This requires OpenSSL on the build host
+	  and will be selected by the build system if required.
+
 endmenu
 
 menu "Target Tools"
diff --git a/scripts/Makefile b/scripts/Makefile
index 75dc5926c057..0a56401fac52 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -11,7 +11,7 @@ hostprogs-always-y					+= bareboxenv
 hostprogs-always-y					+= bareboxcrc32
 hostprogs-always-y					+= kernel-install
 hostprogs-always-$(CONFIG_QOICONV)			+= qoiconv
-hostprogs-always-$(CONFIG_CRYPTO_RSA_BUILTIN_KEYS)	+= rsatoc
+hostprogs-always-$(CONFIG_RSATOC)			+= rsatoc
 HOSTCFLAGS_rsatoc.o = `$(PKG_CONFIG) --cflags openssl`
 HOSTLDLIBS_rsatoc = `$(PKG_CONFIG) --libs openssl`
 hostprogs-always-$(CONFIG_IMD)				+= bareboximd
-- 
2.39.2



