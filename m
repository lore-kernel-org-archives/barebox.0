Delivery-date: Wed, 04 May 2022 15:16:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmEro-001g3O-Iz
	for lore@lore.pengutronix.de; Wed, 04 May 2022 15:16:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmErm-0001Wj-G1
	for lore@pengutronix.de; Wed, 04 May 2022 15:16:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K85L6A/MWnfLmhiP7pZoMtyca466gveAuyPnSzvYi3Q=; b=1Ho5MRwA5PIuOt
	Y0AQ8M9j+XoVUunzEOlokG1JbckYi6ChiWjuXWkUAfrWpcI0nVFBqCIfbzP5rymz9NQyH3vqhF3Uv
	bwhCifMefwxFE0eQtBkT/1emBmSIDf+57deaWh/p44WrScAloM/6JRqSD91yi9vQTFSifg7iUR8CM
	R2y6w4hiIeUL80AA69vT2dwuMyWrFqk7BvWkEnRFx51V6+Y5M8w5mMw5sofHJxdDLtrBOrg6kpdhU
	kMwc91XtuRG+tdPhfHha08OoFnlhA8nu1GCiPLd1+x18eRtFAGaJDyZ9vKIOwnoubzCtZtEXSZJy9
	MX7SxOFXPQ2eW8wmx8xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmEq2-00Aygm-2I; Wed, 04 May 2022 13:14:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmEpl-00Ayb0-Jg
 for barebox@lists.infradead.org; Wed, 04 May 2022 13:14:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpf-000103-AK; Wed, 04 May 2022 15:14:19 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpf-000JqN-TI; Wed, 04 May 2022 15:14:18 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpd-00GEhw-Jl; Wed, 04 May 2022 15:14:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  4 May 2022 15:14:11 +0200
Message-Id: <20220504131416.3869736-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220504131416.3869736-1-s.hauer@pengutronix.de>
References: <20220504131416.3869736-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_061425_709504_A0711881 
X-CRM114-Status: GOOD (  15.14  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/8] crypto: simplify $(srctree)/ handling and remove
 config_filename macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The config_filename macro has been dropped from mainline in
b8c96a6b466c ("certs: simplify $(srctree)/ handling and remove
config_filename macro"). Adopt the mechanism it has been replaced with
for barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/Makefile        | 12 ++++++++---
 scripts/Kbuild.include | 49 ------------------------------------------
 2 files changed, 9 insertions(+), 52 deletions(-)

diff --git a/crypto/Makefile b/crypto/Makefile
index be0f79d4e3..7e67f58bc7 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -25,7 +25,13 @@ extra-$(CONFIG_CRYPTO_RSA_BUILTIN_KEYS) += rsa-keys.h
 ifdef CONFIG_CRYPTO_RSA_BUILTIN_KEYS
 
 $(obj)/rsa.o: $(obj)/rsa-keys.h
-$(eval $(call config_filename,CRYPTO_RSA_KEY))
-$(obj)/rsa-keys.h: FORCE
-	$(call cmd,rsa_keys,$(CONFIG_CRYPTO_RSA_KEY_NAME_HINT):$(CRYPTO_RSA_KEY_SRCPREFIX)$(CRYPTO_RSA_KEY_FILENAME))
+
+CONFIG_CRYPTO_RSA_KEY := $(CONFIG_CRYPTO_RSA_KEY:"%"=%)
+
+ifneq ($(filter-out pkcs11:%, $(CONFIG_CRYPTO_RSA_KEY)),)
+RSA_DEP := $(CONFIG_CRYPTO_RSA_KEY)
+endif
+
+$(obj)/rsa-keys.h: $(RSA_DEP) FORCE
+	$(call cmd,rsa_keys,$(CONFIG_CRYPTO_RSA_KEY_NAME_HINT):$(if $(RSA_DEP),$<,$(CONFIG_CRYPTO_RSA_KEY)))
 endif
diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index ab092e455c..eeb459f8fa 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -262,55 +262,6 @@ why =                                                                        \
 echo-why = $(call escsq, $(strip $(why)))
 endif
 
-###############################################################################
-#
-# When a Kconfig string contains a filename, it is suitable for
-# passing to shell commands. It is surrounded by double-quotes, and
-# any double-quotes or backslashes within it are escaped by
-# backslashes.
-#
-# This is no use for dependencies or $(wildcard). We need to strip the
-# surrounding quotes and the escaping from quotes and backslashes, and
-# we *do* need to escape any spaces in the string. So, for example:
-#
-# Usage: $(eval $(call config_filename,FOO))
-#
-# Defines FOO_FILENAME based on the contents of the CONFIG_FOO option,
-# transformed as described above to be suitable for use within the
-# makefile.
-#
-# Also, if the filename is a relative filename and exists in the source
-# tree but not the build tree, define FOO_SRCPREFIX as $(srctree)/ to
-# be prefixed to *both* command invocation and dependencies.
-#
-# Note: We also print the filenames in the quiet_cmd_foo text, and
-# perhaps ought to have a version specially escaped for that purpose.
-# But it's only cosmetic, and $(patsubst "%",%,$(CONFIG_FOO)) is good
-# enough.  It'll strip the quotes in the common case where there's no
-# space and it's a simple filename, and it'll retain the quotes when
-# there's a space. There are some esoteric cases in which it'll print
-# the wrong thing, but we don't really care. The actual dependencies
-# and commands *do* get it right, with various combinations of single
-# and double quotes, backslashes and spaces in the filenames.
-#
-###############################################################################
-#
-define config_filename
-ifneq ($$(CONFIG_$(1)),"")
-$(1)_FILENAME := $$(subst \\,\,$$(subst \$$(quote),$$(quote),$$(subst $$(space_escape),\$$(space),$$(patsubst "%",%,$$(subst $$(space),$$(space_escape),$$(CONFIG_$(1)))))))
-ifneq ($$(patsubst /%,%,$$(firstword $$($(1)_FILENAME))),$$(firstword $$($(1)_FILENAME)))
-else
-ifeq ($$(wildcard $$($(1)_FILENAME)),)
-ifneq ($$(wildcard $$(srctree)/$$($(1)_FILENAME)),)
-$(1)_SRCPREFIX := $(srctree)/
-endif
-endif
-endif
-endif
-endef
-#
-###############################################################################
-
 # delete partially updated (i.e. corrupted) files on error
 .DELETE_ON_ERROR:
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

