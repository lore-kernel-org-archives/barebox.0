Delivery-date: Thu, 14 Aug 2025 15:54:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYPX-000Wgy-2b
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 15:54:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYPW-0005qg-G9
	for lore@pengutronix.de; Thu, 14 Aug 2025 15:54:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nryGjC+6EsbyqD1bqtNvpVMdWMNjMNlWgNDrBzWYnEY=; b=xib1mx6o/5cc7SkKQMCw6dGYln
	8hIjRmqut31TT4LN1CtYnp4f8fGWAOjEE9xWQ7Lg6DeSjlyeWaPwotsYDj0S3Z95Z6qU4x1KAc1jB
	5EhdDIs6nBwejFbX9K0NdQCF+LsO87z7aHohajEPzqJTmZJ44BcOI/dm+I5fKDOYw/YAZfkLCuK+F
	ZDuppfWQgY4KmA/qWrWw0nk15EuEbcsBiGDZmwCoTalT7UuS0UujlbfOMunVH46FHiRc6hhQ9K97e
	4b0icVZfYwXCSiNLXuYfPvFr6CdVNt7SiZL6Dsx2t0qI05etCxrpVmUgB/0r4CeGZ3/78xjnQoLyY
	3JpfUzzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYP5-0000000H7YU-3aZe;
	Thu, 14 Aug 2025 13:54:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXfu-0000000GvWT-1NMJ
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:07:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfd-0006HL-21; Thu, 14 Aug 2025 15:07:05 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-000GGz-1E;
	Thu, 14 Aug 2025 15:07:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-00Gwpv-0v;
	Thu, 14 Aug 2025 15:07:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Aug 2025 15:06:51 +0200
Message-Id: <20250814130702.4039241-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_060722_370055_26D39A1A 
X-CRM114-Status: GOOD (  15.67  )
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
Subject: [PATCH RFC 06/17] defaultenv: update PS1 according to security policy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

This nifty optional feature makes it easy to see what security policy
is currently active.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/defaultenv-2.rst           |  2 ++
 common/Kconfig                                |  5 +++++
 defaultenv/Makefile                           |  1 +
 .../bin/ps1-policy                            | 20 +++++++++++++++++++
 .../init/ps1-policy                           |  1 +
 .../init/source-colors                        |  1 +
 defaultenv/defaultenv.c                       |  2 ++
 7 files changed, 32 insertions(+)
 create mode 100755 defaultenv/defaultenv-2-security-policy/bin/ps1-policy
 create mode 100644 defaultenv/defaultenv-2-security-policy/init/ps1-policy
 create mode 100644 defaultenv/defaultenv-2-security-policy/init/source-colors

diff --git a/Documentation/user/defaultenv-2.rst b/Documentation/user/defaultenv-2.rst
index a01a70fa9310..3715fd770d9d 100644
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
index 67aff85efc9b..0c7e5a10c38e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1087,6 +1087,11 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE
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
index 1eaca9f41087..ab88ed739305 100644
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
index 000000000000..af121bbbaeed
--- /dev/null
+++ b/defaultenv/defaultenv-2-security-policy/bin/ps1-policy
@@ -0,0 +1,20 @@
+if [ -n "$security.policy" ]; then
+	if [ "$security.policy" = "devel" ]; then
+		PS1_policy_color="$YELLOW"
+	elif [ "$security.policy" = "factory" ]; then
+		PS1_policy_color="$PINK"
+	elif [ "$security.policy" = "lockdown" ]; then
+		PS1_policy_color="$RED;"
+	elif [ "$security.policy" = "tamper" ]; then
+		PS1_policy_color="$RED_INV";
+	elif [ "$security.policy" = "return" ]; then
+		PS1_policy_color="$PINK_INV";
+	elif [[ "$security.policy" = "debug*" ]]; then
+		PS1_policy_color="$CYAN";
+        else
+                PS1_policy_color="$NC"
+	fi
+
+	. /env/init/ps1
+	export PS1="(${PS1_policy_color}${security.policy}${NC}) $PS1"
+fi
diff --git a/defaultenv/defaultenv-2-security-policy/init/ps1-policy b/defaultenv/defaultenv-2-security-policy/init/ps1-policy
new file mode 100644
index 000000000000..a76cd7fd1728
--- /dev/null
+++ b/defaultenv/defaultenv-2-security-policy/init/ps1-policy
@@ -0,0 +1 @@
+PROMPT_COMMAND=". /env/bin/ps1-policy"
diff --git a/defaultenv/defaultenv-2-security-policy/init/source-colors b/defaultenv/defaultenv-2-security-policy/init/source-colors
new file mode 100644
index 000000000000..3df8e02b0ebc
--- /dev/null
+++ b/defaultenv/defaultenv-2-security-policy/init/source-colors
@@ -0,0 +1 @@
+. /env/data/ansi-colors
diff --git a/defaultenv/defaultenv.c b/defaultenv/defaultenv.c
index 2567653751cb..d6cca466a683 100644
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
2.39.5



