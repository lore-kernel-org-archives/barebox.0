Delivery-date: Mon, 09 Oct 2023 13:53:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpop8-001qWJ-08
	for lore@lore.pengutronix.de; Mon, 09 Oct 2023 13:53:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpop6-0001xF-Lp
	for lore@pengutronix.de; Mon, 09 Oct 2023 13:53:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y8f33AgLUMOau8TsHquMqzUhNiVhIkOiF1N7xo9MkuA=; b=hc/+gaLEVYuBR3duxKGOWhYtdh
	+k+ybiZH6hjqHqvUWm1mvcYTBaeot2Gz5mjw8h/U9SeY12jrMxkraOyPdX9PeTb8cNjTyEF/uh+8v
	vYsvDr39VmwmEvvcOvs3NZ0MmG/p45qUuX6mhbfElo07EZqRpFdkZTRLC2GaqXqgEVlZaW+NsIRKB
	tlc9dCmmTOXuI5jcB5GrW4pXjuADdg7xkmhiPXwcUmpYgG9Fg1isuhMM9cnmjqKMqbqBAoJbdVON3
	p4lGGa67O8bHrd9jo/uIDhGr95543I77roJeAA6tOuP00dIGlkMyWaoq4B4ClV0HKdWb5/S0ccDNV
	ifHOWLIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpoo0-00AW3d-0a;
	Mon, 09 Oct 2023 11:52:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qponv-00AW1q-0L
	for barebox@lists.infradead.org;
	Mon, 09 Oct 2023 11:52:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qponr-0001Zp-Qf; Mon, 09 Oct 2023 13:52:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qponr-000P3K-EM; Mon, 09 Oct 2023 13:52:03 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qponr-009Npu-17;
	Mon, 09 Oct 2023 13:52:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Oct 2023 13:52:01 +0200
Message-Id: <20231009115201.2210460-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231009115201.2210460-1-a.fatoum@pengutronix.de>
References: <20231009115201.2210460-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_045207_142383_D71C8C7D 
X-CRM114-Status: UNSURE (   8.46  )
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
Subject: [PATCH 2/2] sandbox: move sandbox-specific options into menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The two sandbox related options are shown in the top-level menu.
Move them into an architecture-specific menu instead as done for other
architectures.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Kconfig | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 31c4484cf1ef..88da35a955ee 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -23,12 +23,7 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x00000000
 
-config SANDBOX_REEXEC
-	prompt "exec(2) reset handler"
-	def_bool y
-	help
-	  The normal reset handler hangs barebox. On Linux, barebox
-	  instead can exec itself to simulate a reset.
+menu "Sandbox specific settings"
 
 config PHYS_ADDR_T_64BIT
 	bool
@@ -52,5 +47,14 @@ config 32BIT
 config SANDBOX_LINUX_I386
 	bool "32-bit x86 barebox" if CC_HAS_LINUX_I386_SUPPORT
 
+config SANDBOX_REEXEC
+	prompt "exec(2) reset handler"
+	def_bool y
+	help
+	  The normal reset handler hangs barebox. On Linux, barebox
+	  instead can exec itself to simulate a reset.
+
 config SDL
 	bool
+
+endmenu
-- 
2.39.2



