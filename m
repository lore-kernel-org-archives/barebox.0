Delivery-date: Mon, 01 Sep 2025 19:29:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut8LG-006z6W-1M
	for lore@lore.pengutronix.de;
	Mon, 01 Sep 2025 19:29:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut8LF-0006jn-6d
	for lore@pengutronix.de; Mon, 01 Sep 2025 19:29:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GeC9Y2ULozBNHTHnts/zeDF0mDnT/KybI5fvLrXkG+o=; b=kT7HgAjPlhxS5Suf5TJtJv6rrd
	AwlvUWSSOBVUPe+9vPrnSmoCcq/ukSNdNkF6/QpqOtgS/vwmJju1CpCgeYlNzGkbilUsZvDGxgR3E
	TIMjs1h3+IjseQ/lJB83jyaYV32TYn0NhWHEfXO+clmOESUQPW+oz8JN49KuvLiOXHSVY5yE4DGpp
	ZWQMj5mhvVSGOF7+M9xoyQqmbHGupo0G5XmFjNZr7WgBul69DUqckwnJnV5deYerYD09zhedyEIxi
	7BXkaM/O6FHadtqoTM2vxn88ph45ZnZEsfrv+OfsUvv8gQHvmGoFMS7sqvMzMVjLdWvvUorrBkCJX
	KONAa1Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut8Ki-0000000DSTp-3vNZ;
	Mon, 01 Sep 2025 17:28:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut5HK-0000000CoUL-23ag
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 14:13:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut5HI-00005q-JI; Mon, 01 Sep 2025 16:13:00 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut5HI-003Emv-1L;
	Mon, 01 Sep 2025 16:13:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut5HI-00000001k7f-1MaU;
	Mon, 01 Sep 2025 16:13:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Sep 2025 16:12:56 +0200
Message-ID: <20250901141259.415561-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250901141259.415561-1-a.fatoum@pengutronix.de>
References: <20250901141259.415561-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_071302_531392_B7A821DC 
X-CRM114-Status: GOOD (  11.74  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] console: simple: use common ctrl+c implementation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The simple console ctrl+c implementation doesn't define ctrlc_handled()
leading to build errors in some configurations.

Just reuse the normal ctrl+c implementation to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Makefile         |  2 +-
 common/console_simple.c | 14 --------------
 include/console.h       |  8 --------
 include/stdio.h         |  4 ++++
 4 files changed, 5 insertions(+), 23 deletions(-)

diff --git a/common/Makefile b/common/Makefile
index 9f98de72854f..d501a6a2755a 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -33,7 +33,7 @@ obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 obj-$(CONFIG_MEMTEST)		+= memtest.o
 obj-$(CONFIG_COMMAND_SUPPORT)	+= command.o
 obj-$(CONFIG_CONSOLE_FULL)	+= console.o console_ctrlc.o
-obj-$(CONFIG_CONSOLE_SIMPLE)	+= console_simple.o
+obj-$(CONFIG_CONSOLE_SIMPLE)	+= console_simple.o console_ctrlc.o
 obj-y				+= console_countdown.o
 obj-pbl-$(CONFIG_DDR_SPD)	+= ddr_spd.o
 obj-pbl-$(CONFIG_DDR_SPD)	+= ddr1_dimm_params.o
diff --git a/common/console_simple.c b/common/console_simple.c
index 702087bd23d7..d2feb58ea3e2 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -66,20 +66,6 @@ void console_flush(void)
 }
 EXPORT_SYMBOL(console_flush);
 
-/* test if ctrl-c was pressed */
-int ctrlc (void)
-{
-	int ret = 0;
-#ifdef CONFIG_ARCH_HAS_CTRLC
-	ret = arch_ctrlc();
-#else
-	if (tstc() && getchar() == 3)
-		ret = 1;
-#endif
-	return ret;
-}
-EXPORT_SYMBOL(ctrlc);
-
 int console_register(struct console_device *newcdev)
 {
 	if (console)
diff --git a/include/console.h b/include/console.h
index 8d3ec33bfac6..590a78110d04 100644
--- a/include/console.h
+++ b/include/console.h
@@ -222,14 +222,6 @@ static inline int barebox_set_loglevel(int loglevel)
 }
 #endif
 
-#ifdef CONFIG_CONSOLE_FULL
-void console_ctrlc_allow(void);
-void console_ctrlc_forbid(void);
-#else
-static inline void console_ctrlc_allow(void) { }
-static inline void console_ctrlc_forbid(void) { }
-#endif
-
 /**
  * clk_get_for_console - get clock, ignoring known unavailable clock controller
  * @dev: device for clock "consumer"
diff --git a/include/stdio.h b/include/stdio.h
index 62a0748e8edc..cecb97ea1a26 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -57,6 +57,8 @@ int vprintf(const char *fmt, va_list args);
 int ctrlc(void);
 int ctrlc_non_interruptible(void);
 void ctrlc_handled(void);
+void console_ctrlc_allow(void);
+void console_ctrlc_forbid(void);
 #else
 static inline int tstc(void)
 {
@@ -97,6 +99,8 @@ static inline void ctrlc_handled(void)
 {
 }
 
+static inline void console_ctrlc_allow(void) { }
+static inline void console_ctrlc_forbid(void) { }
 #endif
 
 const char *size_human_readable(unsigned long long size);
-- 
2.47.2



