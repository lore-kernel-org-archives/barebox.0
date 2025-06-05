Delivery-date: Thu, 05 Jun 2025 13:37:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uH-003zk8-2p
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:37:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uE-0000ZV-Mi
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:37:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dP8XXM59JwTgAjDdYQoUSLGcT0mKH3NfwVFXFaVOrDM=; b=iUhvsHv3NjGXJqk0/+RiSBsRmu
	kT+sOMYPVD+74wgpYBlAEzQWssn/+haozOfyVVBhYsySsyPIK/oGhh2WFE3Gc714OtUTH6xErvS4d
	HFgMgwnTWRA3rShJrFRu9X5S9Ggk1RxeuAflYHD0jS9CkQ4SYPEM9cWWlS9WGr2ca7Sw4FoDqXqcj
	fatskvqmxMzOm4R6ZWLka1Bcpw8T6saBBt40/1cCcsHIgt8gtdI3u+Jgc3yEhlqTzHCA8a1oVL25Y
	bGWp33ZgM3nidPKBC7LYzYYo1+oqpPbiLya0WYpUY8QTiB5bJ7FFHr0qLXiE3A5G7SEvzeTBBG9t+
	rbPu5u5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8td-0000000FNPp-1Jfg;
	Thu, 05 Jun 2025 11:36:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8sg-0000000FN86-2dUi
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:35:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-0007NL-FS; Thu, 05 Jun 2025 13:35:33 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-001wzr-0n;
	Thu, 05 Jun 2025 13:35:33 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-008mT4-2X;
	Thu, 05 Jun 2025 13:35:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:18 +0200
Message-Id: <20250605113530.2076990-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043534_667679_036FFC12 
X-CRM114-Status: UNSURE (   8.21  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/21] kbuild: populate non-host CXX variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To be able to link statically against libfuzzer, we will need to use the
C++ compiler as linker. Prepare for that by populating CXX variables.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 6f8e1a312060..df0770e832e1 100644
--- a/Makefile
+++ b/Makefile
@@ -421,6 +421,7 @@ ENVCC		:= $(CC)
 CPP		= $(CC) -E
 ifneq ($(LLVM),)
 CC		= $(LLVM_PREFIX)clang$(LLVM_SUFFIX)
+CXX		= $(LLVM_PREFIX)clang++$(LLVM_SUFFIX)
 LD		= $(LLVM_PREFIX)ld.lld$(LLVM_SUFFIX)
 AR		= $(LLVM_PREFIX)llvm-ar$(LLVM_SUFFIX)
 NM		= $(LLVM_PREFIX)llvm-nm$(LLVM_SUFFIX)
@@ -430,6 +431,7 @@ READELF		= $(LLVM_PREFIX)llvm-readelf$(LLVM_SUFFIX)
 STRIP		= $(LLVM_PREFIX)llvm-strip$(LLVM_SUFFIX)
 else
 CC		= $(CROSS_COMPILE)gcc
+CXX		= $(CROSS_COMPILE)g++
 LD		= $(CROSS_COMPILE)ld
 AR		= $(CROSS_COMPILE)ar
 NM		= $(CROSS_COMPILE)nm
@@ -514,7 +516,7 @@ LDFLAGS_barebox += $(LDFLAGS_common)
 LDFLAGS_pbl += $(LDFLAGS_common)
 LDFLAGS_elf += $(LDFLAGS_common) --nmagic -s
 
-export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
+export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC CXX
 export CPP AR NM STRIP OBJCOPY OBJDUMP MAKE AWK GENKSYMS PERL PYTHON3 UTS_MACHINE
 export LEX YACC
 export HOSTCXX CHECK CHECKFLAGS MKIMAGE
-- 
2.39.5



