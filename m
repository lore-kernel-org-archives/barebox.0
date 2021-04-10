Delivery-date: Sat, 10 Apr 2021 12:46:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVB89-00010d-Tx
	for lore@lore.pengutronix.de; Sat, 10 Apr 2021 12:46:21 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVB88-0008Tk-UV
	for lore@pengutronix.de; Sat, 10 Apr 2021 12:46:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KSytf6Mq1m/Dy26n1i97J4kQ6zXMWEqktcV4+NXDel8=; b=jVMNT4crV2kZgKBbxcufIzXEYk
	5uwK+ckOfm9YTqM5kbUq//jbRRxZxJny6TRr1egGhZO9DXnRjHcMoUqaHRTy62N9swU+zxnYwfOTp
	N7sV3KLszVgUg3m+6EjIsxCUR769ysc1Xo+n3InRisrLfdD7trKgL3aOnnoXnaYbxRbGhIrEBIcfZ
	ukh8oRJI3mMa1n+Vjc5E2+jOublHMwAW3Z2qtuEeFXXwMlYuSXRFJkhSuIYyUtSje0QiL0ZeT6Jtc
	JI/JEBJR3xfohxiI0YksD1qjPjEXoDTTl6yTj9qq9elTrAFggn8tXoWe5csYtXSEU7+Q+duYqBmWq
	Zy7t2nJg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVB7H-002gSd-8d; Sat, 10 Apr 2021 10:45:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVB77-002gSB-Gh
 for barebox@desiato.infradead.org; Sat, 10 Apr 2021 10:45:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=69STNS/XLNfaFKPzlxPfjrmG4RbyqjTeP9BUUUSyzSk=; b=aG/1LH6ccgOoPqOIap0Dl+x2gM
 WxSLhJkJiAgiv+8keJ1SzxAbLvyNHOEUS+0RnWW9tuw2r12mbyUgAk2qeZEyUPBLAYOR/Q5pCuzEX
 L6SLVn0Kw9gqY4PRZyWZqxdscK2m6+39IcWIPsDlYD6RaShAhJRXAo6GT5+LZ7WoVQIe2ad6I858h
 hll59WpgtgF7Cup+Tv+KZraCUEfMi7vR73W0HYrzBlFA2PNJ1/0oLrVkcEWdZaPahRM2eXZ2LNklO
 dyQz1jIbLoN30O/1GCVFloJLrfyOQOkINfqLotT1BO8vL7Rnmf8Z5k//whwhikhIikXKFylm5L8VC
 142i3KNQ==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVB74-0052g5-OK
 for barebox@lists.infradead.org; Sat, 10 Apr 2021 10:45:16 +0000
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 1ECEF200002;
 Sat, 10 Apr 2021 10:45:08 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 10 Apr 2021 12:45:05 +0200
Message-Id: <20210410104505.2076790-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_034514_951259_A28339E5 
X-CRM114-Status: UNSURE (   9.43  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] common: add option for shipping KCONFIG_CONFIG as
 /env/data/config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add a new option that enables access to the barebox configuration
file through /env/data/config. This can be useful in environments
where a fatter barebox can be tolerated (like on an EFI system
partition). It could also be used to conditionally skip tests
on disabled functionality in the future.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Makefile                | 2 ++
 common/Kconfig          | 7 +++++++
 defaultenv/Makefile     | 7 +++++++
 defaultenv/defaultenv.c | 2 ++
 scripts/Makefile.lib    | 3 +++
 5 files changed, 21 insertions(+)

diff --git a/Makefile b/Makefile
index a36608819da5..c13f3274c18c 100644
--- a/Makefile
+++ b/Makefile
@@ -358,6 +358,8 @@ endif
 
 KCONFIG_CONFIG	?= .config
 
+export KCONFIG_CONFIG
+
 # Default file for 'make defconfig'. This may be overridden by arch-Makefile.
 export KBUILD_DEFCONFIG := defconfig
 
diff --git a/common/Kconfig b/common/Kconfig
index 342817bbcbb4..2872c80dbf13 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -941,6 +941,13 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE
 	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
 	depends on REBOOT_MODE
 
+config DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG
+	bool "Ship .config as /env/data/config"
+	help
+	  This option embeds the used barebox Kconfig .config file into the
+	  environment as /env/data/config. This will increases barebox image
+	  size. If unsure, say n here.
+
 config DEFAULT_ENVIRONMENT_PATH
 	string
 	depends on DEFAULT_ENVIRONMENT
diff --git a/defaultenv/Makefile b/defaultenv/Makefile
index 91293567c0d3..68790321187d 100644
--- a/defaultenv/Makefile
+++ b/defaultenv/Makefile
@@ -32,3 +32,10 @@ cmd_env_zero = ($(objtree)/scripts/bareboxenv -z $(CONFIG_DEFAULT_ENVIRONMENT_PA
 
 $(obj)/barebox_zero_env: FORCE
 	$(call if_changed,env_zero)
+
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG) += defaultenv-2-ikconfig
+
+defaultenv/defaultenv-2-ikconfig.bbenv$(DEFAULT_COMPRESSION_SUFFIX): $(KCONFIG_CONFIG)
+	@mkdir -p defaultenv/defaultenv-2-ikconfig/data
+	@cp $(KCONFIG_CONFIG) defaultenv/defaultenv-2-ikconfig/data/config
+	$(call cmd,envgen,defaultenv/defaultenv-2-ikconfig)
diff --git a/defaultenv/defaultenv.c b/defaultenv/defaultenv.c
index d69446c8937a..055475eb4756 100644
--- a/defaultenv/defaultenv.c
+++ b/defaultenv/defaultenv.c
@@ -47,6 +47,8 @@ static void defaultenv_add_base(void)
 		defaultenv_append_directory(defaultenv_2_dfu);
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE))
 		defaultenv_append_directory(defaultenv_2_reboot_mode);
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG))
+		defaultenv_append_directory(defaultenv_2_ikconfig);
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
 		defaultenv_append_directory(defaultenv_1);
 }
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 319ac19975ed..80d76b177c0a 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -365,6 +365,9 @@ cmd_env_S =							\
 $(obj)/%.bbenv$(DEFAULT_COMPRESSION_SUFFIX).S: $(src)/%.bbenv$(DEFAULT_COMPRESSION_SUFFIX) FORCE
 	$(call if_changed,env_S)
 
+quiet_cmd_envgen = ENVGEN  $@
+cmd_envgen=$(srctree)/scripts/genenv $(objtree) $(objtree) $@ $2
+
 quiet_cmd_env = ENV     $@
 cmd_env=$(srctree)/scripts/genenv $(srctree) $(objtree) $@ $<
 
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

