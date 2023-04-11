Delivery-date: Tue, 11 Apr 2023 09:17:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FR-00HI9x-IY
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 09:17:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FG-0001jN-Up
	for lore@pengutronix.de; Tue, 11 Apr 2023 09:17:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TNn2FnBJUVZaYvoIZDqvA24T5dLBheN+0qOrqLQfxww=; b=aDx+do+ikZCxj1eRzj+ZEGZYlz
	puPck24KIPOKd7xlW62Lnhu/5EgX8cr8YMlPQz1TjsOrOv7FCTQEWfD6FuhLydi3IWax2uy09dktB
	bdQswlTXKhXbVklqOPfg1FwiMryMYrTLZQSTOBl6phDDSVQL2kbDxhI0agZtGojMt40l0pcO1NFcX
	jUsYHk3X47VZ8G3ITuLf+lT1fKBh8Le3T2r5ItVVuUuUP/4ZLPb7bzR2HXXOVDXclSYx84e7tP0fU
	QJFG4hCi2rV0U2xjBKi0ZKY/o1vd6Btyzbdl0aE2AZX1bFhhnrRSC6IFT4JS+aTPcwI+0hYSlPkwC
	8LPR/zug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DM-00Gg1r-0m;
	Tue, 11 Apr 2023 07:14:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DH-00GfxJ-0Y
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 07:14:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DE-0000rJ-9J; Tue, 11 Apr 2023 09:14:44 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DD-00ARvM-Gk; Tue, 11 Apr 2023 09:14:43 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DB-006qNk-Ow; Tue, 11 Apr 2023 09:14:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Apr 2023 09:14:29 +0200
Message-Id: <20230411071436.1630752-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
References: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_001447_208958_A68E59FB 
X-CRM114-Status: UNSURE (   7.80  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 07/14] RISC-V: restrict GCC optimization some more
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some of these we are already setting for ARM and all of them are already
in use by the Linux RISC-V arch Makefile.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 1371f17e7c90..71ca82fe8dc0 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -22,6 +22,9 @@ toolchain-need-zicsr-zifencei := $(call cc-option-yn, -march=$(riscv-march-y)_zi
 riscv-march-$(toolchain-need-zicsr-zifencei) := $(riscv-march-y)_zicsr_zifencei
 
 KBUILD_CPPFLAGS += -march=$(riscv-march-y)
+KBUILD_CFLAGS += -mno-save-restore
+KBUILD_CFLAGS += -fno-asynchronous-unwind-tables -fno-unwind-tables
+KBUILD_CFLAGS += $(call cc-option,-mstrict-align)
 KBUILD_CPPFLAGS += -Wstrict-prototypes -mcmodel=medany -fpic
 riscv-ldflags-y += -pie -static
 
-- 
2.39.2



