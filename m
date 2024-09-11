Delivery-date: Wed, 11 Sep 2024 10:24:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIeV-003QG7-2F
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:24:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIeT-0001R0-Ht
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:24:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wQx2XOErr/1ESD/0FeqKnXSg1qRjccnGzgzxlfziQ7Q=; b=3ywkQmoWPEYdaofX4RDDkGGJK4
	6cwQe40bsfkE2hfwEfUxbEdsUt1QGlmOWpCcTkI8kjuqSyZLOKfwFE5TdJXMWtKrZxx3kmljyZACY
	bJS9AltLeVK2kGm8tXWe/GSAGER1j76kM8PdEpXIgK1khvQFBClORiL9Sf7h3cjxt68uGU+gsCW0f
	9eR08nls6P5RBWCVRybR2hPN8Z7jNA97L9tghN8liL52AKNa6qtcxlakLG4BPW/FsF8Y0NoB3gW6l
	XdvxDCGCXbSosDrj9chEAOu7OTEtNp26oz2c8nPZ8Xs5OjDRaQMg92S+U6/pRPsC9spW8Q5nxyz5h
	OKtkgGTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIe2-00000008d3z-1H4e;
	Wed, 11 Sep 2024 08:24:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIXu-00000008bIr-0Qkz
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:17:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIXs-0006mM-Nb; Wed, 11 Sep 2024 10:17:48 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIXs-0075kQ-Ap; Wed, 11 Sep 2024 10:17:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIXr-006Piu-2U;
	Wed, 11 Sep 2024 10:17:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Sep 2024 10:17:45 +0200
Message-Id: <20240911081747.1523613-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_011750_164747_E53EA2E9 
X-CRM114-Status: GOOD (  10.53  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: rpi: turn fixup message into debug messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When network booted, these properties may be missing and informing the
user about it arguably just clutters the log.

Thus bump down the log level to debug.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 628f657ea216..ee0b0f63dbef 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -301,7 +301,7 @@ static struct device_node *register_vc_fixup(struct device_node *root,
 		tmp->full_name = xstrdup(ret->full_name);
 		of_register_fixup(rpi_vc_fdt_fixup, tmp);
 	} else {
-		pr_info("no '%s' node found in vc fdt\n", path);
+		pr_debug("no '%s' node found in vc fdt\n", path);
 	}
 
 	return ret;
@@ -341,7 +341,7 @@ static int register_vc_property_fixup(struct device_node *root,
 
 		of_register_fixup(rpi_vc_fdt_fixup_property, fixup_data);
 	} else {
-		pr_info("no '%s' node found in vc fdt\n", path);
+		pr_debug("no '%s' node found in vc fdt\n", path);
 		return -ENOENT;
 	}
 
-- 
2.39.2



