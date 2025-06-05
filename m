Delivery-date: Thu, 05 Jun 2025 15:13:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPg-0041OZ-1u
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 15:13:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPc-000141-EL
	for lore@pengutronix.de; Thu, 05 Jun 2025 15:13:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rUDLdk+X4Nc9B3S1+lgcG45cMZYm2FOS+YyRAA3fmeo=; b=IprmKvw7yKlBj32NBCUhrc3CYc
	5PUsVkPuXQbK+oCxOu3LRiB0XHAFKuZmrgxZmIjJOa981XRuLUGVKGErzx0V+C7NtjTCrDd+8PdJk
	oDqcUkzi5biHlKPBxS4GpR0ZgLXii62ZZlO1m8DZFopcRl2Zp5XatrfMMXU4ad4UhG777XUXjkxv0
	7OPwrYSoFC831O07bmFL/tEBI8YNS3FDre1PjVsMyH3kCCdZ8bAUR19nGSRIVgfeXj5KqFkUHcb/P
	SVKr8QbpsduQs/0jiWcF/SNbRY1+U629MZhpNtF46dDgpZLSzToW2mi3NurZnaltKd0VKJw5qhh4G
	DYhtKd4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAOy-0000000FZHl-0w8X;
	Thu, 05 Jun 2025 13:13:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFE-0000000FXqW-3L6t
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:03:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFD-000124-Mn; Thu, 05 Jun 2025 15:02:55 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFD-001xjY-1e;
	Thu, 05 Jun 2025 15:02:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1w;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-32-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=2329;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=W70WEqie+3uz4jZy+0157jFmvmeh2IRaptU4ak2YwSM=;
 b=oKe+5+yQB379hLXmY/UiqnLABwljhEu5cE9hz1pkaDnua5CBJrUxaF5YUeuuuewLNDUdAumg+
 RKPQbGtDhnYDZR+RJ7T+GbVYY5uTF8N6uMxU/VUm0CgjIZPDnukkuh4
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_060256_839543_5E66E860 
X-CRM114-Status: GOOD (  14.83  )
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
Subject: [PATCH v2 32/33] Documentation: boards: k3: split generic and
 am62x specific documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The K3 documentation is currently very specific for the AM62x. Split
this up into a generic part and a AM62x specific part to make space for
other SoC support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/{ti-k3.rst => ti-k3-am62x.rst} | 21 ++++++---------------
 1 file changed, 6 insertions(+), 15 deletions(-)

diff --git a/Documentation/boards/ti-k3.rst b/Documentation/boards/ti-k3-am62x.rst
similarity index 81%
rename from Documentation/boards/ti-k3.rst
rename to Documentation/boards/ti-k3-am62x.rst
index 6cb9eb8edab93e6bf7a74bc24748f9ad11609b20..a78fffdb7f4b795ca3fdb560afd7761a5c27d954 100644
--- a/Documentation/boards/ti-k3.rst
+++ b/Documentation/boards/ti-k3-am62x.rst
@@ -1,26 +1,17 @@
-TI K3 based boards
-==================
+.. _ti_k3_am62x:
 
-The TI K3 is a line of 64-bit ARM SoCs.
+TI K3 AM62x based boards
+========================
 
-The boot process of the TI K3 SoCs is a two step process. The first stage boot loader
+The TI AM62x is SoC in the line of TI K3 64-bit ARM SoCs.
+
+The boot process of the TI AM62x SoCs is a two step process. The first stage boot loader
 is loaded by the ROM code and executed on a Cortex-R5 processor. The code on this
 processor is responsible for setting up the initial clocks, power domains and DRAM.
 It then loads the binaries for the A53 cores into DRAM and starts the A53 core. From
 this point on the Cortex-R5 processor is used as a system controller which controls
 clocks and power domains of the SoC.
 
-Prerequisites
--------------
-
-There are several binary blobs required for building barebox for TI K3 SoCs. Find them
-in git://git.ti.com/processor-firmware/ti-linux-firmware.git. The repository is assumed
-to be checked out at ``firmware/ti-linux-firmware``. Alternatively the barebox repository
-has a ti-linux-firmware submodule which checks out at the correct place. The K3 SoCs boot
-from a FAT partition on SD/eMMC cards. During the next steps the files are copied to
-``$TI_BOOT``. This is assumed to be an empty directory. After the build process copy its
-contents to a FAT filesystem on an SD/eMMC card.
-
 The Cortex-R5 is a 32-bit processors whereas the Cortex-A53 are 64-bit processors, so
 both 32-bit and 64-bit toolchains are needed::
 

-- 
2.39.5



