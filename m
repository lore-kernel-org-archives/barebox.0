Delivery-date: Thu, 05 Jun 2025 13:37:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uI-003zkW-2I
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:37:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uD-0000Wf-Nz
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:37:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NQh2GrXtTOXQeFAsPWqrW+BmlLusQK3CAD8YnUPgLLc=; b=t4T8dFuj8CBXPyFcGcgWqOUVTW
	RfIo3HHOX4f3q+8ltnPSrnHGPayY8HyqWFXFNN57h3JhZgcA9exQZetLTqqlJgIwMoGn9xtM5Zeq7
	dFxnvtg/Z8C+6Y51nCSA+2AVhO4BGtEXUJKbbJ6dBP3i27k9hAngxbkGAZLjT/gShKiS4FioK/IJ0
	DY5nSWSH+kXAEkDx9CFjOiGJ46W6TZOiOHyvaoagkd+BSw1+KRfdAvpUbd120o6sc8lAoG2OHgvFE
	HiAFyr+JLgnLf0/ei0fSb+SP2V5hEFaq9McK+eWVaERM0SmyUAjY6jWeECJ1nM5GLsOquZI6hDyV+
	YwdcfRzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8tc-0000000FNOn-35gx;
	Thu, 05 Jun 2025 11:36:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8sg-0000000FN82-2GtG
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:35:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-0007N0-Bw; Thu, 05 Jun 2025 13:35:33 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-001wzi-0T;
	Thu, 05 Jun 2025 13:35:33 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-008mT4-2A;
	Thu, 05 Jun 2025 13:35:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:16 +0200
Message-Id: <20250605113530.2076990-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043534_632946_EB39973A 
X-CRM114-Status: UNSURE (   8.12  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/21] sandbox: make available all CONFIG_ symbols to OS glue code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Having to specify which config options to pass through is surprising and
led to issues in the past. Let's thus just pass along everything.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/os/Makefile | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index a71446775671..9fb2a2ce864d 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -6,11 +6,7 @@ machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 
 KBUILD_CPPFLAGS = $(patsubst %,-I$(srctree)/%include,$(machdirs))
 
-cppflags-$(CONFIG_CONSOLE_NONE) += -DCONFIG_CONSOLE_NONE=$(CONFIG_CONSOLE_NONE)
-cppflags-$(CONFIG_ASAN) += -DCONFIG_ASAN=$(CONFIG_ASAN)
-
-KBUILD_CPPFLAGS += -DCONFIG_MALLOC_SIZE=$(CONFIG_MALLOC_SIZE) -D_FILE_OFFSET_BITS=64 \
-		   -DCONFIG_STACK_SIZE=$(CONFIG_STACK_SIZE) $(cppflags-y)
+KBUILD_CPPFLAGS += -D_FILE_OFFSET_BITS=64 -include $(objtree)/include/generated/autoconf.h
 
 KBUILD_CFLAGS := -Wall
 
-- 
2.39.5



