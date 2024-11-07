Delivery-date: Thu, 07 Nov 2024 09:46:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8yAF-005rD0-2m
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 09:46:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8yAG-0007Bj-ED
	for lore@pengutronix.de; Thu, 07 Nov 2024 09:46:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HHljf7B+YSNzUNVGTu6ioBStwU9qRZ9CVcqaAW9hpKs=; b=SEfiJZ0ob4kropnhM/pKS47yKw
	9OuTkFIZ8+zLvt+vOFz5yqePSXMLB5lfJbPKYV3U17kse0Y/40A1rPyadG7Vzwr0SHznT172+Z1v8
	RNTszlwoBZa+Fpta/JYlujBFiIX++X5at01zP4OxirWi3w+cSJuF5MmbqTNiAW0Dp4mXBWTY5H2Ax
	K8SNhheiGRHcsgnUe6yyHEBH+35FRmxw8ptonG7rsrccV9c5jnXBcFjRFpNrXkFJxLC3kLNc+2W25
	KkFI6rqe0unfSec0PsrbgmuArQDtP+PwMYnHG/HE1CzrVp16UR45MI9MokhSZLIFWy3tuR/NZrRhk
	kDj2Pp8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8yA6-00000006B1J-3F8J;
	Thu, 07 Nov 2024 08:46:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8wsv-00000005yry-1A7Z
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 07:24:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wsu-00088S-3s; Thu, 07 Nov 2024 08:24:52 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wst-002QPO-31;
	Thu, 07 Nov 2024 08:24:51 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wst-0074zw-2h;
	Thu, 07 Nov 2024 08:24:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  7 Nov 2024 08:24:51 +0100
Message-Id: <20241107072451.1687301-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_232453_334422_8F8D8501 
X-CRM114-Status: GOOD (  10.81  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: Layerscape: ls1046ardb: add missing machine protection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

rdb_late_init() should only run on the appropriate machine. Check the
machine before continuing.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ls1046ardb/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/ls1046ardb/board.c b/arch/arm/boards/ls1046ardb/board.c
index ee70171ca3..9570344b92 100644
--- a/arch/arm/boards/ls1046ardb/board.c
+++ b/arch/arm/boards/ls1046ardb/board.c
@@ -125,6 +125,9 @@ static struct nxid *nxp_nxid_read(const char *filename, unsigned int offset)
 
 static int rdb_late_init(void)
 {
+	if (!of_machine_is_compatible("fsl,ls1046a-rdb"))
+		return 0;
+
 	nxp_nxid_read("/dev/eeprom", 256);
 
 	return 0;
-- 
2.39.5



