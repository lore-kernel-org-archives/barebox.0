Delivery-date: Thu, 29 Jun 2023 08:55:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qElYe-00879O-Oa
	for lore@lore.pengutronix.de; Thu, 29 Jun 2023 08:55:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qElYc-0003UI-7v
	for lore@pengutronix.de; Thu, 29 Jun 2023 08:55:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Lmir1BOGtEiu4B04i6wURWOxj4Ija+3PRAw4vy3bNCI=; b=3j6mBnfbJiiJg+/vvANgSKpYFp
	WuOngeEJgHnj0nh4U88cDjZ1NKCRHJDJPrcyWpWF8P6IMiwp05+GQ+ANYujsKiv4TJtyUCb8+WEAs
	6pOsN1BdGc6L00g5kSWB2Ju65DRoVVGY747EYUUcxsrupoQII0wQe0GDGVaW089OuJBTd+kQNqyfH
	oBv2YYJwi8mOwfY/WTvZqfqo3rJ9XqV5xqBHQ2a+XgUoVru+5G9EKwDsLQMYM0lRdBzrke3RB7rkf
	1WCSHgduPLlIVaHegVfrKgOlEBUOFKgelU2jdJNVRsmunmnEsh834wtVZHijX7g/icVQLTsZhD81U
	A6GXgV4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qElXX-0009LU-0B;
	Thu, 29 Jun 2023 06:54:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qElXU-0009GO-1A
	for barebox@lists.infradead.org;
	Thu, 29 Jun 2023 06:54:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qElXT-0003Ke-2G; Thu, 29 Jun 2023 08:53:59 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qElXS-00Aq5f-DT; Thu, 29 Jun 2023 08:53:58 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qElXR-004hEX-35;
	Thu, 29 Jun 2023 08:53:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 29 Jun 2023 08:53:55 +0200
Message-Id: <20230629065356.1119480-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230628_235400_397760_5CC48E74 
X-CRM114-Status: GOOD (  15.15  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/2] Kbuild: include arch/ Makefile before test/ directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Unless overridden by SORT*, LD will place sections matched by wildcards
in the order they were seen in the link. So far, this meant that
arch/ initcalls and device trees compiled into barebox proper, were
always last.

For platforms with PBL or with only one device tree in barebox proper,
this didn't matter much, but when enabling the of_manipulation selftest,
a second device tree would be built into barebox on kvx, openrisc and
some MIPS.

Because all directories appear before arch/, this had the effect that
on kvx, openrisc and some MIPS, __dtb_start would end up pointing at the
test's device tree instead of the board device tree breaking the build.

Switching the affected platforms to use PBL would be one fix for the
issue, but there's a simple one: let's just move test/ after arch/.

My preferred solution would've been to move arch/ at the first
beginning, but this may cause fallout for code that depended on specific
ordering of initcalls or other linker-defined lists.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - move only test/ after arch/ to reduce chance of breakage
---
 Makefile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 1d986ec9cb13..d6e65974458e 100644
--- a/Makefile
+++ b/Makefile
@@ -594,10 +594,12 @@ endif
 include $(srctree)/scripts/Makefile.lib
 
 # Objects we will link into barebox / subdirs we need to visit
-common-y		:= common/ drivers/ commands/ lib/ crypto/ net/ fs/ firmware/ test/
+common-y		:= common/ drivers/ commands/ lib/ crypto/ net/ fs/ firmware/
 
 include $(srctree)/arch/$(SRCARCH)/Makefile
 
+common-y		+= test/
+
 ifdef need-config
 ifdef may-sync-config
 # Read in dependencies to all Kconfig* files, make sure to run syncconfig if
-- 
2.39.2



