Delivery-date: Sun, 21 Mar 2021 16:21:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzt5-00024e-8o
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 16:21:07 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzt1-0002aM-TC
	for lore@pengutronix.de; Sun, 21 Mar 2021 16:21:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jUmKieneUXZ++A9izb6c+vARJqeuOP5l3cvVhac+uz4=; b=BfW3nZEFjjcTzn90uGNu31xia
	9RZ94cKhhmVAB+sX9rurVCL3TwVXC12paoMDyZd9JrD55i5M1b3XPr5YbqsMQT1HqT5XaY8Dvf0j9
	EpQbB5GQWbGSwHAy4V8fobpSsuJ83diGfxHOg/jJfnGCtQCNWWJstSflelXk730OoZgiYLSVg4lTj
	Wuqmu11h9Wr8p5PUrXUjIo0VXNupHcCILEAa+4DqUthFphg5dgai23PWh06HbhvA7ilepKjiYfHea
	yk69cQPEeHBKqKaGIoeb8Remo+GAG6IbKPGhhOAsSeJ2ZuBTwiWn2QACVmOB2PFW9qTxzjkY17Kqn
	qj0tOuFZg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNzrj-00A4fc-DW; Sun, 21 Mar 2021 15:19:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzmI-00A42R-Qi
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 15:14:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm2-00011T-4D; Sun, 21 Mar 2021 16:13:50 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm0-0007wM-VQ; Sun, 21 Mar 2021 16:13:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 21 Mar 2021 16:13:33 +0100
Message-Id: <20210321151344.5810-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210321151344.5810-1-a.fatoum@pengutronix.de>
References: <20210321151344.5810-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_151442_911169_63F302F8 
X-CRM114-Status: GOOD (  13.84  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 10/21] RISC-V: erizo: move to arch/riscv/boards/erizo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In preparation for migrating to PBL for RISC-V platforms, move the only
existing board support to a new arch/riscv/boards/ directory.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Makefile                                       | 2 +-
 arch/riscv/boards/Makefile                                | 2 ++
 arch/riscv/boards/erizo/Makefile                          | 5 +++++
 arch/riscv/{boot/dtb.c => boards/erizo/board.c}           | 0
 arch/riscv/{boot/main_entry.c => boards/erizo/lowlevel.c} | 0
 arch/riscv/{boot => boards/erizo}/start.S                 | 0
 arch/riscv/boot/Makefile                                  | 3 ---
 7 files changed, 8 insertions(+), 4 deletions(-)
 create mode 100644 arch/riscv/boards/Makefile
 create mode 100644 arch/riscv/boards/erizo/Makefile
 rename arch/riscv/{boot/dtb.c => boards/erizo/board.c} (100%)
 rename arch/riscv/{boot/main_entry.c => boards/erizo/lowlevel.c} (100%)
 rename arch/riscv/{boot => boards/erizo}/start.S (100%)
 delete mode 100644 arch/riscv/boot/Makefile

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index edf3a971e615..d9cefe32c057 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -41,7 +41,7 @@ MACH  :=
 endif
 
 common-y += $(MACH)
-common-y += arch/riscv/boot/
+common-y += arch/riscv/boards/
 common-y += arch/riscv/lib/
 
 common-$(CONFIG_OFTREE) += arch/riscv/dts/
diff --git a/arch/riscv/boards/Makefile b/arch/riscv/boards/Makefile
new file mode 100644
index 000000000000..2ce9af41e03b
--- /dev/null
+++ b/arch/riscv/boards/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_BOARD_ERIZO_GENERIC)	+= erizo/
diff --git a/arch/riscv/boards/erizo/Makefile b/arch/riscv/boards/erizo/Makefile
new file mode 100644
index 000000000000..72b9a13ba73f
--- /dev/null
+++ b/arch/riscv/boards/erizo/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-y += lowlevel.o
+obj-y += start.o
+obj-y += board.o
diff --git a/arch/riscv/boot/dtb.c b/arch/riscv/boards/erizo/board.c
similarity index 100%
rename from arch/riscv/boot/dtb.c
rename to arch/riscv/boards/erizo/board.c
diff --git a/arch/riscv/boot/main_entry.c b/arch/riscv/boards/erizo/lowlevel.c
similarity index 100%
rename from arch/riscv/boot/main_entry.c
rename to arch/riscv/boards/erizo/lowlevel.c
diff --git a/arch/riscv/boot/start.S b/arch/riscv/boards/erizo/start.S
similarity index 100%
rename from arch/riscv/boot/start.S
rename to arch/riscv/boards/erizo/start.S
diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
deleted file mode 100644
index fd62cab8c127..000000000000
--- a/arch/riscv/boot/Makefile
+++ /dev/null
@@ -1,3 +0,0 @@
-obj-y += start.o
-obj-y += main_entry.o
-obj-$(CONFIG_OFDEVICE) += dtb.o
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

