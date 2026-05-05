Delivery-date: Tue, 05 May 2026 11:52:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKCSF-001CZj-2D
	for lore@lore.pengutronix.de;
	Tue, 05 May 2026 11:52:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKCSA-0003Wg-4p
	for lore@pengutronix.de; Tue, 05 May 2026 11:52:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vwb42P7EFPsivfsb/qdygmZuM/csW1soywIsKeyR/T4=; b=OVRhIu/mVnwFCYHsguvjVDLPlq
	9mUlooh8/lzt0hp7zlbAEl+/4HeQBpoJLpR/TfTjh/LU4fC5xTPVg/lidfbiJWj7WPSg7gdca1Xdd
	w1V5w/o89HXar1if9PfXU8nCX0BH3STzyn+VAzlKLDYIWGQfU1bdZBlrvmBF64AbVtfudW0c/KorP
	k9bytbuB+UFoxcrUeamqUbeAFNWbErZMc8OIgGEYTIH1ZmKStbyT5UX7phWD5v9bW3WV85fDVuY4J
	oMsWacvLrfVarv/x9O1zZ9xGEfV26oful38cH00gZTdpSd1J9DzRmPxmDXl2pJciVIT1FTHdigyWf
	p6MOvuag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKCRN-0000000FhvM-33hU;
	Tue, 05 May 2026 09:51:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKCRJ-0000000Fhti-0R05
	for barebox@lists.infradead.org;
	Tue, 05 May 2026 09:51:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKCRG-000344-UB; Tue, 05 May 2026 11:51:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKCRG-000Yc4-0u;
	Tue, 05 May 2026 11:51:38 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKCRG-00000004iUp-2bJE;
	Tue, 05 May 2026 11:51:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  5 May 2026 11:51:00 +0200
Message-ID: <20260505095137.1123867-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260505095137.1123867-1-a.fatoum@pengutronix.de>
References: <20260505095137.1123867-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_025141_300171_700475FB 
X-CRM114-Status: GOOD (  19.67  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	WEIRD_QUOTING autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] bootm: append automatic parameters after all other linux.bootargs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

bootm can be configured to determine suitable values for a number of
kernel command line options that will automatically be fixed up.

Currently, these options are concatenated into the kernel command line
interleaved with all other options in the lexicographical order of the
linux.bootargs. parameter name.

For the root= option, this means that any root= in a blspec file for
example will override barebox' own root=, because:

  global.linux.bootargs.bootm.root < global.linux.bootargs.dyn.bootentries

The other way makes more sense however, especially as there is always a
device parameter or Kconfig option to control whether the fixup should
happen at all.

With the new order, it's now possible to set global.bootm.appendroot=1
and have barebox append a new root= and have it take precedence over a
bootloader spec provided root=. To reflect that this has occurred, the
kernel command-line will continue to list two root='s, which greatly
simplifies debugging if issues happen (e.g. because there was a
rootfstype that is no longer accurate).

This commit doesn't add any LINUX_BOOTARGS_BOOTM_EARLY as it's not yet
needed. Still it lays out how it could look like in future.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../migration-guides/migration-master.rst     |  9 +++++++
 Documentation/user/booting-linux.rst          | 24 +++++++++++++++--
 common/bootm.c                                | 26 ++++++++++++++-----
 3 files changed, 50 insertions(+), 9 deletions(-)

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
index 5be4659d5b3d..f6d193417f1d 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -31,3 +31,12 @@ Scripts that **read** the parameter will now receive ``"disabled"`` or
 ``"enabled"`` instead of ``"0"`` or ``"1"``.
 
 Scripts that **write** ``"0"`` or ``"1"`` continue to work.
+
+global.linux.bootargs.* appending order
+---------------------------------------
+
+If barebox was configured to automatically generate any of the ``root``,
+``rootwait``, ``earlycon``, ``systemd.machine_id``, ``systemd.hostname``
+or ``barebox.security.policy`` kernel command line options, they will be
+appended onto the final kernel command line
+:ref:`**after** all other options <bootargs_concat_order>`.
diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index cc0bdb4661ca..7bbb79ecdfc2 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -89,14 +89,34 @@ with ``global.linux.bootargs.`` will be concatenated to the bootargs:
 
 .. code-block:: sh
 
+  global linux.bootargs.Loglevel="ignore_loglevel"
   global linux.bootargs.base="console=ttyO0,115200"
-  global linux.bootargs.debug="earlyprintk ignore_loglevel"
+  global linux.bootargs.debug="earlyprintk"
 
   bootm zImage
 
   ...
 
-  Kernel command line: console=ttymxc0,115200n8 earlyprintk ignore_loglevel
+  Kernel command line: ignore_loglevel console=ttyO0,115200 earlyprintk
+
+.. _bootargs_concat_order:
+
+Concatenation order
+"""""""""""""""""""
+
+The kernel command line arguments are concatenated in lexicographical order of
+their ``linux.bootargs.``-prefixed parameter names.
+
+Kernel command line arguments that barebox generates internally are not
+interleaved with externally provided command-line arguments:
+
+* Following arguments will be concatenated **after** all other options:
+  * ``root=`` and ``rootwait=`` controlled by :ref:`global.bootm.appendroot <magicvar_global_bootm_appendroot>`
+    :ref:`global.linux.rootwait <magicvar_global_linux_rootwait>`
+  * ``earlycon=`` controlled by :ref:`global.bootm.earlycon <magicvar_global_bootm_earlycon>`
+  * ``systemd.machine_id=`` controlled by :ref:`global.bootm.provide_machine_id <magicvar_global_bootm_provide_machine_id>`
+  * ``systemd.hostname=`` controlled by :ref:`global.bootm.provide_hostname <magicvar_global_bootm_provide_hostname>`
+  * ``barebox.security.policy=`` controlled by :ref:`global.bootm.provide_policy <magicvar_global_bootm_provide_policy>`
 
 Creating root= options for the Kernel
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
diff --git a/common/bootm.c b/common/bootm.c
index c7bf414effa4..26465875ad94 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -22,6 +22,19 @@
 #include <security/config.h>
 #include <security/policy.h>
 
+/*
+ * All device parameter iteration happens in lexicographical order.
+ * To ensure that bootm options are consistently applied before or after
+ * other options from the environment or boot configuration files, we
+ * employ following convention for the prefix:
+ *
+ *   !		0x21 is less than any non-space printable character
+ *   ~		0x7e is greater than any printable character
+ *
+ * Users will never see those as bootm_boot_cleanup() will delete them again.
+ */
+#define LINUX_BOOTARGS_BOOTM_LATE	"linux.bootargs.~bootm."
+
 static LIST_HEAD(handler_list);
 static struct sconfig_notifier_block sconfig_notifier;
 
@@ -650,7 +663,7 @@ struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
 
 			rootarg = format_root_bootarg(bootm_data->root_param, root, rootopts);
 			pr_info("Adding \"%s\" to Kernel commandline\n", rootarg);
-			globalvar_add_simple("linux.bootargs.bootm.appendroot",
+			globalvar_add_simple(LINUX_BOOTARGS_BOOTM_LATE "appendroot",
 					     rootarg);
 			free(rootarg);
 		}
@@ -672,7 +685,7 @@ struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
 			earlycon = "earlycon";
 
 		pr_info("Adding \"%s\" to Kernel commandline\n", earlycon);
-		globalvar_add_simple("linux.bootargs.bootm.earlycon", earlycon);
+		globalvar_add_simple(LINUX_BOOTARGS_BOOTM_LATE "earlycon", earlycon);
 	}
 
 	if (bootm_data->provide_machine_id) {
@@ -686,7 +699,7 @@ struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
 		}
 
 		machine_id_bootarg = basprintf("systemd.machine_id=%s", machine_id);
-		globalvar_add_simple("linux.bootargs.machine_id", machine_id_bootarg);
+		globalvar_add_simple(LINUX_BOOTARGS_BOOTM_LATE "machine_id", machine_id_bootarg);
 		free(machine_id_bootarg);
 	}
 
@@ -714,7 +727,7 @@ struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
 					     hostname, suffix ? "-" : "",
 					     suffix ?: "");
 
-		globalvar_add_simple("linux.bootargs.hostname", hostname_bootarg);
+		globalvar_add_simple(LINUX_BOOTARGS_BOOTM_LATE "hostname", hostname_bootarg);
 		free(hostname_bootarg);
 	}
 
@@ -729,7 +742,7 @@ struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
 		}
 
 		policy_bootargs = basprintf("barebox.security.policy=%s", active_policy->name);
-		globalvar_add_simple("linux.bootargs.dyn.policy", policy_bootargs);
+		globalvar_add_simple(LINUX_BOOTARGS_BOOTM_LATE "policy", policy_bootargs);
 		free(policy_bootargs);
 	}
 
@@ -792,8 +805,7 @@ void bootm_boot_cleanup(struct image_data *data)
 	if (data->of_root_node)
 		of_delete_node(data->of_root_node);
 
-	globalvar_remove("linux.bootargs.bootm.earlycon");
-	globalvar_remove("linux.bootargs.bootm.appendroot");
+	globalvar_remove(LINUX_BOOTARGS_BOOTM_LATE  "*");
 	free(data->os_header);
 	free(data->os_file);
 	free(data->oftree_file);
-- 
2.47.3



