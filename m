Delivery-date: Wed, 17 Sep 2025 15:54:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysbt-0045mZ-1J
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 15:54:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysbs-0006eq-D5
	for lore@pengutronix.de; Wed, 17 Sep 2025 15:54:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4Xj0sVvbFEdF9l8G0Y8iJmyJjzlJr0XUV/bdbk48NsQ=; b=HhRA7ClE+Oft5pdOmYKcTFVtqT
	kNVBQwDNItVtSdeIf42UX+WbZqN/2DAd3hcuHd9tcL1jJLZvdtYl+JQRMgh03xd8wBvjDQO6vWNUL
	Ql8a2xTzMWmsoiMvRNpHd0NO/1zYvy0F+EWZ3l+480cbqNn3LLICjhWcH0YWZJHeS9pUV5LBXzws4
	9dM+FvFbSjaqySAJhyejP7vq/pvqs/BGuB84A7jMDSimYpi3QWBncxav7sP24+In4XZMeYTpjrvjC
	vW9oAro+zlfCyRkN8knN3pMWD9W9j95JlZk9j7BHxfLygc7xWvlwR5OGd2zwkPLWX91ZvYhkIu9hd
	MrKuB4fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysbP-0000000Bssd-3F3M;
	Wed, 17 Sep 2025 13:53:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysbK-0000000Bslc-3xay
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 13:53:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbB-0006AZ-B8; Wed, 17 Sep 2025 15:53:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-001luR-2i;
	Wed, 17 Sep 2025 15:53:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-2waA;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-6-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=6058;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=rlbGpBSBycZNGMv/iZjMeio63bpD43a7T0HQ6UhmIUE=;
 b=J5M8YgiqTTHqQ6Lk5WuPsGUyvMaX2spoWdNMv33Qn0vJC9olnFFuWv2IJxbXdpdIbjiofhJWk
 KRT8pppwSbiBFMbSGvV4tAeZJGcqKgBLQld8amQOWdVyXauxDCLC8NX
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_065339_165635_0A305F66 
X-CRM114-Status: GOOD (  14.80  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Ahmad Fatoum <a.fatoum@barebox.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/24] defaultenv: update PS1 according to security
 policy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

This nifty optional feature makes it easy to see what security policy
is currently active.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/defaultenv-2.rst                  |  2 ++
 common/Kconfig                                       |  5 +++++
 defaultenv/Makefile                                  |  1 +
 .../defaultenv-2-security-policy/bin/ps1-policy      | 20 ++++++++++++++++++++
 .../defaultenv-2-security-policy/init/ps1-policy     |  1 +
 .../defaultenv-2-security-policy/init/source-colors  |  1 +
 defaultenv/defaultenv.c                              |  2 ++
 7 files changed, 32 insertions(+)

diff --git a/Documentation/user/defaultenv-2.rst b/Documentation/user/defaultenv-2.rst
index a01a70fa9310be88c8666c40bcc3def33c48ac21..3715fd770d9d89d52172bcc1e7564d871977aa30 100644
--- a/Documentation/user/defaultenv-2.rst
+++ b/Documentation/user/defaultenv-2.rst
@@ -23,6 +23,7 @@ The default environment is composed from different directories during compilatio
   defaultenv/defaultenv-2-dfu                  -> overlay for DFU
   defaultenv/defaultenv-2-reboot-mode          -> overlay for reboot modes
   defaultenv/defaultenv-2-menu                 -> overlay for menus
+  defaultenv/defaultenv-2-security-policy       -> overlay for security policy
   arch/$ARCH/boards/<board>/defaultenv-<board> -> board specific overlay
   $(CONFIG_DEFAULT_ENVIRONMENT_PATH)           -> config specific overlay
 
@@ -43,6 +44,7 @@ and their respective included directories in ``defaultenv/Makefile``:
   bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU) += defaultenv-2-menu
   bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU) += defaultenv-2-dfu
   bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE) += defaultenv-2-reboot-mode
+  bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_SECURITY_POLICY) += defaultenv-2-security-policy
   bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-1
 
 /env/bin/init
diff --git a/common/Kconfig b/common/Kconfig
index eb2fb1da1e0919b6e7d5e868c48ad2e195cd8aa8..d923d4c4b6283878e487232a5b43487e3f2d9a4a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1068,6 +1068,11 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE
 	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
 	depends on REBOOT_MODE
 
+config DEFAULT_ENVIRONMENT_GENERIC_NEW_SECURITY_POLICY
+	bool "Update PS1 according to active security policy"
+	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
+	depends on SECURITY_POLICY
+
 config DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG
 	bool "Ship .config as /env/data/config"
 	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
diff --git a/defaultenv/Makefile b/defaultenv/Makefile
index 1eaca9f41087fdb893575db1ab2bf1f267185435..ab88ed739305d4157d6ec124b5330f002c577340 100644
--- a/defaultenv/Makefile
+++ b/defaultenv/Makefile
@@ -4,6 +4,7 @@ bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW) += defaultenv-2-base
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU) += defaultenv-2-menu
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU) += defaultenv-2-dfu
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE) += defaultenv-2-reboot-mode
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_SECURITY_POLICY) += defaultenv-2-security-policy
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-1
 obj-$(CONFIG_DEFAULT_ENVIRONMENT) += defaultenv.o
 extra-y += barebox_default_env barebox_default_env.h barebox_default_env$(DEFAULT_COMPRESSION_SUFFIX) barebox_zero_env
diff --git a/defaultenv/defaultenv-2-security-policy/bin/ps1-policy b/defaultenv/defaultenv-2-security-policy/bin/ps1-policy
new file mode 100755
index 0000000000000000000000000000000000000000..5c8b26415d77062495471aa89f7e1b403165d9cf
--- /dev/null
+++ b/defaultenv/defaultenv-2-security-policy/bin/ps1-policy
@@ -0,0 +1,20 @@
+if [ -n "$security.policy" ]; then
+	if [ "$security.policy" = "devel" ]; then
+		PS1_policy_color="$YELLOW"
+	elif [ "$security.policy" = "factory" ]; then
+		PS1_policy_color="$PINK"
+	elif [ "$security.policy" = "lockdown" ]; then
+		PS1_policy_color="$RED"
+	elif [ "$security.policy" = "tamper" ]; then
+		PS1_policy_color="$RED_INV"
+	elif [ "$security.policy" = "return" ]; then
+		PS1_policy_color="$PINK_INV"
+	elif [[ "$security.policy" = "debug*" ]]; then
+		PS1_policy_color="$CYAN"
+        else
+                PS1_policy_color="$NC"
+	fi
+
+	. /env/init/ps1
+	export PS1="(${PS1_policy_color}${security.policy}${NC}) $PS1"
+fi
diff --git a/defaultenv/defaultenv-2-security-policy/init/ps1-policy b/defaultenv/defaultenv-2-security-policy/init/ps1-policy
new file mode 100644
index 0000000000000000000000000000000000000000..a76cd7fd17288da03ca7515f1422f9c596e90dcb
--- /dev/null
+++ b/defaultenv/defaultenv-2-security-policy/init/ps1-policy
@@ -0,0 +1 @@
+PROMPT_COMMAND=". /env/bin/ps1-policy"
diff --git a/defaultenv/defaultenv-2-security-policy/init/source-colors b/defaultenv/defaultenv-2-security-policy/init/source-colors
new file mode 100644
index 0000000000000000000000000000000000000000..3df8e02b0ebca4d0de41bf1a3ca3908650719dd1
--- /dev/null
+++ b/defaultenv/defaultenv-2-security-policy/init/source-colors
@@ -0,0 +1 @@
+. /env/data/ansi-colors
diff --git a/defaultenv/defaultenv.c b/defaultenv/defaultenv.c
index 2567653751cb36b3bb6b1a577360738bc3e0a30a..d6cca466a6835da0896823b1f8858d702a10770e 100644
--- a/defaultenv/defaultenv.c
+++ b/defaultenv/defaultenv.c
@@ -49,6 +49,8 @@ static void defaultenv_add_base(void)
 		defaultenv_append_directory(defaultenv_2_dfu);
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE))
 		defaultenv_append_directory(defaultenv_2_reboot_mode);
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_SECURITY_POLICY))
+		defaultenv_append_directory(defaultenv_2_security_policy);
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG))
 		defaultenv_append_directory(defaultenv_2_ikconfig);
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))

-- 
2.47.3



