Delivery-date: Wed, 24 Apr 2024 08:42:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKr-00EOVc-2F
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 08:42:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKr-0001DI-5S
	for lore@pengutronix.de; Wed, 24 Apr 2024 08:42:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/9lR5w9zE/NNhtBCJ3bY1RjvOSs6G1J8VfEBpA6zuZQ=; b=4foBx2GnBGn8yUcioOuh7Pg6gt
	4d9fSAtsLFO2gmJqq7o8c8GkennMA/Ryg9CQOqiRJQtO0AmAG1LXFWJ5Qvlbm5yUCvNmPjdko94iA
	zgzI47rjVjmnB8J3zCXWk2Flw6uWdfYfoyoOuYUP8odtPC0H/U+3tz9Xt2S5rvYwdN/a+c+pfu3e3
	kJyuEpQF5xANRE88vSOtcEwME8icjLmcYEMrV5DCE3aBSFt8fOmEriKFANMDDK1Rb43bLuZdXRoJZ
	ikjDUo9SOMFVAMqwCveoqBQKEU25S5c5PL6m2ITkmVDCr8ausVXPy4M6GYCiR1l/cWLLL69zhk6HK
	6prz8DdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWKR-00000002vnk-0sOG;
	Wed, 24 Apr 2024 06:42:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWKN-00000002vkb-0EyG
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 06:42:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWKL-0000cG-N0; Wed, 24 Apr 2024 08:41:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWKL-00E1zJ-33; Wed, 24 Apr 2024 08:41:57 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWKL-00F8tl-02;
	Wed, 24 Apr 2024 08:41:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:41:56 +0200
Message-Id: <20240424064156.3609113-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_234159_536129_0B7C9903 
X-CRM114-Status: GOOD (  10.03  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! mtd: nand: move to drivers/mtd/nand/raw/
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

mtd: nand: align IS_ENABLED(symbol) for header stub with Makefile

drivers/mtd/nand/Makefile builds nand-bb.o when CONFIG_MTD_NAND_CORE
is defined. We need to use the same symbol in the header to avoid
breakage when CONFIG_MTD_RAW_NAND is deselected.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/nand.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/nand.h b/include/nand.h
index 84f5a9671410..4fb52e9f82d5 100644
--- a/include/nand.h
+++ b/include/nand.h
@@ -4,7 +4,7 @@
 
 struct nand_bb;
 
-#ifdef CONFIG_MTD_RAW_NAND
+#ifdef CONFIG_MTD_NAND_CORE
 int dev_add_bb_dev(const char *filename, const char *name);
 int dev_remove_bb_dev(const char *name);
 struct cdev *mtd_add_bb(struct mtd_info *mtd, const char *name);
-- 
2.39.2



