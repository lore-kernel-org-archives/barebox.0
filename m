Delivery-date: Mon, 30 Jun 2025 10:02:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9Si-00CYOe-37
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 10:02:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9Si-00029A-EM
	for lore@pengutronix.de; Mon, 30 Jun 2025 10:02:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mn/udf6kCSV5aH4pYNAhfgWZXocgxkZAGGF7juASmnY=; b=lXFu5T4JYxBtNVbPgE3l9wHFec
	UeHRIpz+ZOMMD6QD1PbtANzU+unc9ji4+i9MzZhyYyR/09rjtorKF5ZWuV4oSB7Yng99/eaBC0Nuq
	UEoKpFbvpiKBW1Lw0mpOFbIpq4Pt5ouBCObNWx3w9K58+ZmyBHZkTiZWWwPRfUSRsAYA4s+3mNlex
	sEfDO96KprbCVZWPlLf6CembKp/0R+xvXdC0FbrcLe/d/hf7zRWtLwfUE593oXxng7zOc5monegEg
	VAb1UQHBqy84cvxFn6hL6fkw9J+3bf/S5QRJ1WWMNhk6sKc1znrtYfOgQ5zYrlotxxptyoCN+fV+d
	/1jb+DAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9SB-00000001XzP-3yc1;
	Mon, 30 Jun 2025 08:01:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9S9-00000001Xyf-1JUs
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 08:01:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9S8-0001Tc-1P; Mon, 30 Jun 2025 10:01:24 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9S7-0064AE-2k;
	Mon, 30 Jun 2025 10:01:23 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9S7-00630j-2O;
	Mon, 30 Jun 2025 10:01:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 30 Jun 2025 10:01:22 +0200
Message-Id: <20250630080122.1441484-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_010125_347934_1B660956 
X-CRM114-Status: GOOD (  12.61  )
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
Subject: [PATCH] common: PBL_OPTEE: Allow to compile in THUMB2 mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

OP-TEE gained support for jumping back to the normal world in THUMB2
mode in commit 3d80ccc97 ("core: Allow non-secure context restore in
thumb mode"). The first OP-TEE release with this commit is 3.11.0. Allow
to compile barebox in THUMB2 mode with PBL_OPTEE enabled and update the
help text.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 39a597bb70..0651f955dc 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1408,15 +1408,15 @@ config BOOTM_OPTEE
 config PBL_OPTEE
 	bool "Enable OP-TEE early start"
 	depends on ARM
-	depends on !THUMB2_BAREBOX
 	select HAVE_OPTEE
 	help
 	  Allows starting OP-TEE during lowlevel initialization of the PBL.
 	  Requires explicit support in the board's lowlevel file (for ARM32)
 	  or the generic SoC support (for ARM64).
 
-	  The trampoline for jumping back from OP-TEE to barebox does currently
-	  not handle THUMB2, so barebox must be built either for A32 or A64.
+	  OP-TEE versions older than 3.11.0 do not support jumping back from OP-TEE
+	  to barebox in THUMB2 mode. Make sure you do not compile barebox in THUMB2
+	  mode for OP-TEE versions older than this.
 
 config FILETYPE_STRINGS
 	bool "Print file types as strings"
-- 
2.39.5



