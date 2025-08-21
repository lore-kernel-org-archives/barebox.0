Delivery-date: Fri, 22 Aug 2025 04:25:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upHSz-003AYs-0f
	for lore@lore.pengutronix.de;
	Fri, 22 Aug 2025 04:25:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upHSy-0001Uo-2U
	for lore@pengutronix.de; Fri, 22 Aug 2025 04:25:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=p9mc1qfo3Fg4rZSxKg2wrti7Y6kqw6uczjBOPcVjbZQ=; b=qCYJwB92oj/GgbSP93YsQUxiyM
	WrhTaul7dNsKSh7Pg7quJQASHwX61EMM+Bp1xhJqkneJe/pBbRpbnFs+rgdWDXmJ5y3CxB9wRvt90
	zJyqytbg2iqe1dbCPhmo9R0l7oGgCkBRh2C4LKSEtWGeNtbQGjbp6lh6SYMtR1vJRoIpkRly26Qsc
	ZggtlDVQZdhqW4kQAvYOHnlTBqAbbmvKALyLaszK8hoCDD43F1X4LJrTz5OpqlClBBRNaaSt/IBAh
	ukAUoEJgUvpKE3G6B/5dln37+p1g+vubm3YCLkKcNLGmKmsNsv+YZkc0lur9zPzqN7AeoWzOCgXAr
	Qx19v9Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upHSZ-00000001Gxe-3Cqp;
	Fri, 22 Aug 2025 02:24:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upCOL-00000000bGT-0jry
	for barebox@lists.infradead.org;
	Thu, 21 Aug 2025 21:00:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCOJ-0000h2-Tw; Thu, 21 Aug 2025 23:00:11 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCOJ-001T57-2O;
	Thu, 21 Aug 2025 23:00:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCOJ-0061XA-25;
	Thu, 21 Aug 2025 23:00:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Aug 2025 23:00:10 +0200
Message-Id: <20250821210010.1435851-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_140013_215624_BD633BD7 
X-CRM114-Status: GOOD (  12.80  )
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
Subject: [PATCH] common: panic: add new CONFIG_PANIC_TRAP option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When running under libfuzzer for example, it's better to trap, so
libfuzzer generates a crash input file than to just print an error
message and exit gracefully.

The same can apply when running under a hardware debugger, so make
this option available generally.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 9 +++++++++
 common/misc.c  | 2 ++
 2 files changed, 11 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index ad211d1fa519..0664ffcb43a5 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -376,6 +376,7 @@ config RELOCATABLE
 
 choice
 	prompt "Configure action on fatal error"
+	default PANIC_TRAP if SANDBOX
 	default PANIC_RESET
 
 	config PANIC_POWEROFF
@@ -407,6 +408,14 @@ choice
 		  fatal error, so you don't have to reset it manually.
 		  This is the recommended configuration in production.
 
+	config PANIC_TRAP
+		bool "invoke a trap instruction"
+		help
+		  This option triggers the trap instruction emitted by
+		  __builtin_trap() on fatal errors.
+		  This is mainly useful when running under a debugger
+		  or debugging instrumentation.
+
 endchoice
 
 config PROMPT
diff --git a/common/misc.c b/common/misc.c
index f2c084a0df4b..67f88af1a3df 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -305,6 +305,8 @@ static void __noreturn do_panic(bool stacktrace, const char *fmt, va_list ap)
 
 	if (IS_ENABLED(CONFIG_PANIC_POWEROFF))
 		poweroff_machine(0);
+	else if (IS_ENABLED(CONFIG_PANIC_TRAP))
+		__builtin_trap();
 	else
 		restart_machine(0);
 }
-- 
2.39.5



