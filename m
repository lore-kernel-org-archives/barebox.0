Delivery-date: Fri, 22 Aug 2025 04:25:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upHSy-003AYJ-0x
	for lore@lore.pengutronix.de;
	Fri, 22 Aug 2025 04:25:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upHSw-0001UV-Vk
	for lore@pengutronix.de; Fri, 22 Aug 2025 04:25:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z3Az66M/49Gy4So/F/S9wiNBInS8HOpPX4sXpzDpiqQ=; b=e7Wyw3uDDmQcPdwVzC6Jhjr6RW
	Bt+oYazkXeCGe4akrAj/Km9BUbYdxCFPIgji87mPNx2UtXRIc1ZlLnNZbg/JWAL1j1sD78CDbzbcu
	4QTW5+oOG4e+VUGL+9zuhqMLmqEoJxTq4FOwl5lVZKrtdAoy20VhsBPlWT79HSNYHDkLSMcVxtvbJ
	eb//tac9WDRM9Ewp8N5fxJTDoC2h3n43Rato3Ic2LyzcaNiofYSphJVdjxmnZhMLqMxnJ1bfQso3/
	fx6QfFx2oYGdBGm/NBZM2cJcweO38aSkfIDrXspRQtX6o5l0nkWlmGR1XwkteFRRqRjn7rlsbwz4j
	ozDntvbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upHSZ-00000001Gx1-0Y3G;
	Fri, 22 Aug 2025 02:24:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upCO2-00000000bAx-03Dv
	for barebox@lists.infradead.org;
	Thu, 21 Aug 2025 20:59:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCNs-0000b8-QF; Thu, 21 Aug 2025 22:59:44 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCNr-001T4w-2g;
	Thu, 21 Aug 2025 22:59:43 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCNr-0061Uc-2O;
	Thu, 21 Aug 2025 22:59:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Aug 2025 22:59:41 +0200
Message-Id: <20250821205942.1435683-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250821205942.1435683-1-a.fatoum@pengutronix.de>
References: <20250821205942.1435683-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_135954_091035_D173BD37 
X-CRM114-Status: GOOD (  11.47  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] test: self: jwt: add dedicated option for development_rsa2048.pem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This test key can be useful beyond the JWT selftest, so add an option to
select it.

The key added by the option is stand-alone, i.e., it is not part of the
key ring and won't be consulted for FIT image verification.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Kconfig       | 8 ++++++++
 test/self/Kconfig  | 1 +
 test/self/Makefile | 3 ++-
 3 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/test/Kconfig b/test/Kconfig
index 07b22f09e99b..50162ef5761f 100644
--- a/test/Kconfig
+++ b/test/Kconfig
@@ -46,4 +46,12 @@ config CMD_FUZZ
 
 endif
 
+config TEST_KEY_RSA2048
+	bool
+	help
+	  This is selected by crypto test code that needs a RSA2048 public
+	  key. The key added by this option is stand-alone, i.e., it is
+	  not part of the key ring and won't be consulted for FIT image
+	  verification.
+
 endif
diff --git a/test/self/Kconfig b/test/self/Kconfig
index 33d05e4cf205..4c43dfe3940d 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -86,6 +86,7 @@ config SELFTEST_JSON
 config SELFTEST_JWT
 	bool "JSON Web Token selftest"
 	depends on JWT
+	select TEST_KEY_RSA2048
 
 config SELFTEST_MMU
 	bool "MMU remapping selftest"
diff --git a/test/self/Makefile b/test/self/Makefile
index 6cf857ee98ff..9aa8aab78b31 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -10,7 +10,8 @@ obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
 obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
 obj-$(CONFIG_SELFTEST_DIRFD) += dirfd.o
 obj-$(CONFIG_SELFTEST_JSON) += json.o
-obj-$(CONFIG_SELFTEST_JWT) += jwt.o development_rsa2048.pem.o
+obj-$(CONFIG_SELFTEST_JWT) += jwt.o
+obj-$(CONFIG_TEST_KEY_RSA2048) += development_rsa2048.pem.o
 obj-$(CONFIG_SELFTEST_DIGEST) += digest.o
 obj-$(CONFIG_SELFTEST_MMU) += mmu.o
 obj-$(CONFIG_SELFTEST_STRING) += string.o
-- 
2.39.5



