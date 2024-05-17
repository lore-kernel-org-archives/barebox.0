Delivery-date: Fri, 17 May 2024 15:27:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7xcl-001lR0-1g
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 15:27:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7xck-0003ei-Td
	for lore@pengutronix.de; Fri, 17 May 2024 15:27:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gs0gJ+xZwHUu96WvJVXRSxYnZhm0pkWDb3u5Xqgk8Rg=; b=BdfBTp0y4xKxqZ/xtzZ8f8xWVs
	DSlGXwcGSnimu4c/RvJGF9Yta0G7nyvtUdg8FGuELgMYSLeYp0cdFAQQB65fu412WR7+XhxQnPqkr
	mrurnwlwzR/gUZQXT4kwN93UdAd0X9UDHVXc+dG44uX4qZHmZ1B/H9iRTFqcHpaPp3Kew5zRt9wwR
	bd2G1GuYs57cAEQ3V9bgWAolBPhppdyN3d3GJT8GZUpcEsrSgiRVv8g+ISnZsKfR1yDEX/EBxiXMu
	370RDhuz5g/XEp3Nsv/IYTe3hBCnVSkA0eg9ih6rGJDszzL2I+/sPMZ4vdZ5iX0AQLnK5Mi7rBwYO
	01Iqbahg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7xc3-00000007wny-2eUv;
	Fri, 17 May 2024 13:27:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7xbx-00000007wja-3zH6
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 13:27:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-00032p-Nc; Fri, 17 May 2024 15:26:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-001sCR-AF; Fri, 17 May 2024 15:26:57 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-00DEM4-0k;
	Fri, 17 May 2024 15:26:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 15:26:54 +0200
Message-Id: <20240517132656.3151273-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517132656.3151273-1-a.fatoum@pengutronix.de>
References: <20240517132656.3151273-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_062702_138851_36228F18 
X-CRM114-Status: GOOD (  13.50  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/8] net: fix build with CONFIG_SHELL_NONE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some common networking code like fastboot over UDP calls ifup_all(0) to
bring up all interfaces. ifup_all(0) in turn runs commands to execute
interface discovery scripts and source network configurations.

This leads to a link error, because run_command is not defined in a
CONFIG_SHELL_NONE build as it lacks CONFIG_COMMAND_SUPPORT.

Fix this by adding inline stubs that fail for run_command and friends.
This way ifup_all(0) will either fail if there is a script that should
be run, but couldn't or just succeed if there are no applicable scripts
anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/command.h | 8 ++++++++
 net/Kconfig       | 1 -
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/include/command.h b/include/command.h
index 9226756cc00b..26e06077b071 100644
--- a/include/command.h
+++ b/include/command.h
@@ -15,6 +15,7 @@
 #include <linux/compiler_types.h>
 #include <linux/stddef.h>
 #include <string.h>
+#include <errno.h>
 
 #ifndef	__ASSEMBLY__
 
@@ -49,10 +50,17 @@ extern struct command * const __barebox_cmd_end[];
 
 
 /* common/command.c */
+#ifdef CONFIG_COMMAND_SUPPORT
 struct command *find_cmd(const char *cmd);
 int execute_command(int argc, char **argv);
 void barebox_cmd_usage(struct command *cmdtp);
 int run_command(const char *cmd);
+#else
+static inline struct command *find_cmd(const char *cmd) { return NULL; }
+static inline int execute_command(int argc, char **argv) { return -ENOSYS; }
+static inline void barebox_cmd_usage(struct command *cmdtp) {}
+static inline int run_command(const char *cmd) { return -ENOSYS; }
+#endif
 
 #define COMMAND_SUCCESS		0
 #define COMMAND_ERROR		1
diff --git a/net/Kconfig b/net/Kconfig
index 07e623670e22..c13ee8bb43d8 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -40,7 +40,6 @@ config NET_RESOLV
 
 config NET_IFUP
 	default y
-	depends on !SHELL_NONE
 	bool
 
 config NET_DHCP
-- 
2.39.2



