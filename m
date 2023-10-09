Delivery-date: Mon, 09 Oct 2023 13:53:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpopj-001qZC-2k
	for lore@lore.pengutronix.de; Mon, 09 Oct 2023 13:53:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpoph-0002Il-LK
	for lore@pengutronix.de; Mon, 09 Oct 2023 13:53:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H8YjoOkyBprPHWET2u38T7M5LDZ9RZ8DfCRlj6KwMz8=; b=GP9S4od40p4yBiYBOHoO/h0AvZ
	TnwsyUIyCvQeNRWzlf6FFnu62y0xP8+NJdbcVnvhNpYqa3u3I2Rpwv+oN15f4qPw0DljK8hheeqKY
	CowzTXvA3w+Fs/DDcisnDwiJ1E0y4wDbWlJP62UsFnhTGZKNYyxcOQSN5NtTwoqoy/KUR2hBTbAoc
	VFSk6ovbG73RYL7tfr4C6zh67QdM1pBIIQ2i8JGrUo0aN+LR6o6QpG16hPDPe98cGzN2PM505X93A
	giaHMDVohejxCABoBwd44LjFOzoB98zteLq96ngeQSNUuVNn6h2cdjEAxACb2svnXuHf6blUxZVnw
	bGYWfjMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpooY-00AWCE-2y;
	Mon, 09 Oct 2023 11:52:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpooT-00AW9x-26
	for barebox@lists.infradead.org;
	Mon, 09 Oct 2023 11:52:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qpooS-0001fs-Fy; Mon, 09 Oct 2023 13:52:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qpooS-000P3Y-30; Mon, 09 Oct 2023 13:52:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qpooS-009nmt-04;
	Mon, 09 Oct 2023 13:52:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Oct 2023 13:52:39 +0200
Message-Id: <20231009115239.2291016-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231009115239.2291016-1-a.fatoum@pengutronix.de>
References: <20231009115239.2291016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_045241_695580_DF279A56 
X-CRM114-Status: GOOD (  11.03  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] lib: stackprot: hide symbols when not applicable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Asking all users about the stacksmash command that's just there to test
stack guard and protector is unnecessary noise. Likewise asking about
PBL stackprotector, when we don't have any.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig      | 1 +
 lib/Kconfig.hardening | 5 +++--
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index c1bba22443e6..a6806f198ec4 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2403,6 +2403,7 @@ config CMD_UBSAN
 
 config CMD_STACKSMASH
 	tristate "stacksmash"
+	depends on STACKPROTECTOR || STACK_GUARD_PAGE || COMPILE_TEST
 	help
 	  This commands trashes the stack to test stackprotector and
 	  guard page. This command does not return.
diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
index a9d3af110958..f14b256a7d91 100644
--- a/lib/Kconfig.hardening
+++ b/lib/Kconfig.hardening
@@ -61,7 +61,7 @@ config STACKPROTECTOR_ALL
 endchoice
 
 choice
-	prompt "Stack Protector buffer overflow detection for PBL"
+	prompt "Stack Protector buffer overflow detection for PBL" if PBL_IMAGE
 
 config PBL_STACKPROTECTOR_NONE
 	bool "None"
@@ -69,6 +69,7 @@ config PBL_STACKPROTECTOR_NONE
 config PBL_STACKPROTECTOR_STRONG
 	bool "Strong"
 	depends on $(cc-option,-fstack-protector-strong)
+	depends on PBL_IMAGE
 	select STACKPROTECTOR
 	help
 	  For PBL, This option turns on the "stack-protector" GCC feature. This
@@ -93,7 +94,7 @@ config PBL_STACKPROTECTOR_STRONG
 config PBL_STACKPROTECTOR_ALL
 	bool "PBL"
 	depends on $(cc-option,-fstack-protector-strong)
-	depends on COMPILE_TEST
+	depends on PBL_IMAGE && COMPILE_TEST
 	select STACKPROTECTOR
 	help
 	  This pushes and verifies stack protector canaries on all functions,
-- 
2.39.2



