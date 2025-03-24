Delivery-date: Mon, 24 Mar 2025 11:25:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twezo-003Y5O-2g
	for lore@lore.pengutronix.de;
	Mon, 24 Mar 2025 11:25:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twezn-0001B1-NX
	for lore@pengutronix.de; Mon, 24 Mar 2025 11:25:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OVp7pVirITc6ede+UmSDSXCnq4OTqj2PwyI7SjB3qBg=; b=CNtEyPzTRxBsY1QUxo3D/y0ANA
	WQUZYxKL+0GOZ3JgN2+AOdI2udhkzSrf1khImYFEuzILND0O/gTzcHvqL7ijYk0oAHRJFudN5IrjS
	eUITPc2ZTo4AJkX5DCMMFhbViBH/85FeW1PmdwbdtnjaxEU77nYF/X2JETsgx/aA6HNHQ035jvw7v
	D/fUY+T9mQ0xCL+06OgRn9LjIRmmC8sG0iPW826gGIvZO2UkPfSfACYVaaRTG1saTqp3oB6hBT532
	1oYI0Os7vl/QtC0MkUnskbXE9EAcn9DLo2EQAA6yLAGBjWozUcEBWxW5yP5NgsfNGO/QyfMAneltd
	Xk3P2+uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twezB-00000002ogt-1KKJ;
	Mon, 24 Mar 2025 10:24:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twez6-00000002oap-45Yr
	for barebox@lists.infradead.org;
	Mon, 24 Mar 2025 10:24:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twez5-00012A-RE; Mon, 24 Mar 2025 11:24:43 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twez5-001OQK-0k;
	Mon, 24 Mar 2025 11:24:43 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twez5-007LRX-1j;
	Mon, 24 Mar 2025 11:24:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 24 Mar 2025 11:24:42 +0100
Message-Id: <20250324102442.1750715-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250324102442.1750715-1-s.hauer@pengutronix.de>
References: <20250324102442.1750715-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_032445_012081_93232425 
X-CRM114-Status: GOOD (  11.65  )
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
Subject: [PATCH 2/2] filetype: fix FILETYPE_STRING misspelling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The new Kconfig option checking if filetypes shall be printed as strings
was introduced as CONFIG_FILETYPE_STRING, but the check used
CONFIG_FILETYPE_STRINGS. Rename Kconfig option to match what is actually
checked for.

Fixes: 09702e4a00 ("filetype: make file type strings optional")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 77d03f298c..ddc76b2033 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1309,7 +1309,7 @@ config PBL_OPTEE
 	  Allows starting OP-TEE during lowlevel initialization of the PBL.
 	  Requires explicit support in the board's lowlevel file.
 
-config FILETYPE_STRING
+config FILETYPE_STRINGS
 	bool "Print file types as strings"
 	default y
 	depends on FILETYPE
-- 
2.39.5



