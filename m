Delivery-date: Mon, 05 Jun 2023 08:38:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63rM-00BSNP-CU
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:38:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63rJ-0004mP-UG
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:38:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9sEfb3RU6X8cIOF2UKsbgAT7VZrr3pw/wGxAMyR7q+0=; b=dNIgsw1YloKAsGEp4nyw3iUU/F
	o0Kdo6OcUVwtcgw09ivhaVdsxn5HzwMfqk92wvWoE8B2Tep5eo2YKEtgZcKHKI+aSjw4PPMI3ZPaI
	4NgzVzZPP9gM1roFMMWSptp5P4pbCbTThNRBCt6dyDdyCOtWK4jnW4Ztek8kHpDyJuYExnY5KY/kS
	AhnUMqd/KwNxbtMtgW69TSLdfN1h/Xv27thyv6X2FOQ5zzQqN56O+OPnWY77GgpJvMhtMlE1S+D67
	9hlSNcPiKL3q3UWhpT/4ND0PX3RLZw2aJi1x+5VQJZqovyU3jPxSbSRIvoWK4FRunaGngv0pBZlHg
	Hl/IVAyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63qI-00ENty-0r;
	Mon, 05 Jun 2023 06:37:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63qF-00ENrd-10
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:37:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63qE-00044b-2E; Mon, 05 Jun 2023 08:37:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63qD-005Cu4-DR; Mon, 05 Jun 2023 08:37:21 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63qC-00622p-O4; Mon, 05 Jun 2023 08:37:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:37:19 +0200
Message-Id: <20230605063719.1431079-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_233723_344657_7D60CE9F 
X-CRM114-Status: GOOD (  15.72  )
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
Subject: [PATCH] Kbuild: include arch/ Makefile before other directories
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
issue, but there's a simple one: let's do what Linux does in its
top-level Kbuild file and have arch/ not be the last in sequence.

This may fause fallout for code that depended on specific ordering of
initcalls or other linker-defined lists, which would need to be fixed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
While a fix, I think this needs to sit a while in next first.
---
 Makefile | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 711cba7bed29..4fdb8f1b41af 100644
--- a/Makefile
+++ b/Makefile
@@ -586,11 +586,12 @@ endif
 # We need some generic definitions.
 include $(srctree)/scripts/Makefile.lib
 
-# Objects we will link into barebox / subdirs we need to visit
-common-y		:= common/ drivers/ commands/ lib/ crypto/ net/ fs/ firmware/ test/
 
+# Objects we will link into barebox / subdirs we need to visit
 include $(srctree)/arch/$(SRCARCH)/Makefile
 
+common-y		+= common/ drivers/ commands/ lib/ crypto/ net/ fs/ firmware/ test/
+
 ifdef need-config
 ifdef may-sync-config
 # Read in dependencies to all Kconfig* files, make sure to run syncconfig if
-- 
2.39.2



