Delivery-date: Wed, 06 Mar 2024 19:46:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhwHQ-00BCAO-10
	for lore@lore.pengutronix.de;
	Wed, 06 Mar 2024 19:46:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhwHP-00080n-LN
	for lore@pengutronix.de; Wed, 06 Mar 2024 19:46:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8USaaud9GiH5antZ4izZwN/w8QD1MWlJyLPQ8Qjth34=; b=w2mLwvNRgZfmE6q0D4pNt4YdoR
	XCPcMpXPMr4a7VmQwJ7U/8aqJqBDD7SPywq7L9hJmzVUg+hE904J+bCgPApVKjvvEKUoH3WsNn67U
	WIdajIFYKirnVIJtqNoJc31AvfoOinxWvw9FSEeHkIO1DUjXr/y05rD4AeGZ0tVQ+PFYB6DMtqIS2
	IwackAN6GZYl3lXaTV8uHNeo881QXH4Kn4+5xe3B0H6uDaEw6HZuOwQstLJNkHQ9Hp7txM0KLvubB
	T0hzK+Ev0kJ9av2uazje9LZKoYQ73zXBYFXoE38CVqUvZwk1HCg2ferWp/53MOHSSOS1saDYF0L2f
	UatwRmKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhwGl-00000001WAf-3s9i;
	Wed, 06 Mar 2024 18:45:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhwGd-00000001W5e-2upD
	for barebox@lists.infradead.org;
	Wed, 06 Mar 2024 18:45:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhwGY-0006z3-5M; Wed, 06 Mar 2024 19:45:22 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhwGX-004nZQ-Ox; Wed, 06 Mar 2024 19:45:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhwGX-002d3R-0T;
	Wed, 06 Mar 2024 19:45:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Mar 2024 19:45:18 +0100
Message-Id: <20240306184519.626594-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_104527_815026_13F86093 
X-CRM114-Status: GOOD (  12.24  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] console: scale number of log messages with available RAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The default value of 1000 messages is too small with
CONFIG_COMPILE_LOGLEVEL=7, because the many driver debug messages
will evict any earlier error or warning messages that have been
in the log.

Assuming a log record size of 128 bytes, 1000 messages translates to
128kB, which has quite a bit of breathing room. Let's instead scale the
maximum with the available memory: one message per 32KiB of malloc area.

This gives us:

  -  64M total memory ->  ~32M malloc area ->  1K messages (128K bytes)
  - 256M total memory -> ~128M malloc area ->  4K messages (512K bytes)
  -   1G total memory -> ~512M malloc area -> 16K messages (  2M bytes)

Users for which this is too excessive can still configure this via the
environment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/console_common.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index c78581299248..d25fb0dc5dde 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -14,12 +14,14 @@
 #include <environment.h>
 #include <globalvar.h>
 #include <magicvar.h>
+#include <memory.h>
 #include <of.h>
 #include <password.h>
 #include <clock.h>
 #include <malloc.h>
 #include <linux/pstore.h>
 #include <linux/math64.h>
+#include <linux/sizes.h>
 #include <linux/overflow.h>
 
 #ifndef CONFIG_CONSOLE_NONE
@@ -37,7 +39,7 @@ int barebox_loglevel = CONFIG_DEFAULT_LOGLEVEL;
 
 LIST_HEAD(barebox_logbuf);
 static int barebox_logbuf_num_messages;
-static int barebox_log_max_messages = 1000;
+static int barebox_log_max_messages;
 
 static void log_del(struct log_entry *log)
 {
@@ -173,15 +175,18 @@ bool console_allow_color(void)
 
 static int console_common_init(void)
 {
-	if (IS_ENABLED(CONFIG_LOGBUF))
+	if (IS_ENABLED(CONFIG_LOGBUF)) {
+		barebox_log_max_messages
+			= clamp(mem_malloc_size() / SZ_32K, 1000UL, 100000UL);
 		globalvar_add_simple_int("log_max_messages",
 				&barebox_log_max_messages, "%d");
+	}
 
 	globalvar_add_simple_bool("allow_color", &__console_allow_color);
 
 	return globalvar_add_simple_int("loglevel", &barebox_loglevel, "%d");
 }
-device_initcall(console_common_init);
+core_initcall(console_common_init);
 
 int log_writefile(const char *filepath)
 {
-- 
2.39.2



