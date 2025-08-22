Delivery-date: Fri, 22 Aug 2025 17:29:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upThx-003MNR-1A
	for lore@lore.pengutronix.de;
	Fri, 22 Aug 2025 17:29:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upThw-00082R-7H
	for lore@pengutronix.de; Fri, 22 Aug 2025 17:29:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n8rjnbYxfIMrsDzjJYq6Y2ylFQwtWw3xj5dIizBZqP8=; b=sHY0TKH8uS3lsV3cOE4c/BhsHn
	zEuElq9nWYCFJktOn6g4aqS7CijIUAd8ug17DmT130fZkyPcwxg75dYAg7zo4xQqJVnnI3Imm/AQY
	5oMdktbG+o4ElskbTIn4ItpSBvPBg4fcSqIL/zjgIQtfEwlnGY/Zyj8OrdcpI7c0l7LUDibYnYXXw
	vGZz4R2hU2Vr3u/wfNrLjVYLGe5VRIVTw9f5+M0T8GoJ8UfjmM4NWtn9lS7+4ojNlnj2Lihb/hX2V
	MjEfSoSDp4j+dbHqn2CEVXI/OmRlWKZqYd0+S+okFsVGRjafwWJw4oCQRzOIpJnDyUO74QxuyVDJ5
	YTgaYG1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upThP-0000000317x-0mhe;
	Fri, 22 Aug 2025 15:29:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upPBo-00000002DnQ-0TDl
	for barebox@lists.infradead.org;
	Fri, 22 Aug 2025 10:40:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1upPBm-00072i-VT; Fri, 22 Aug 2025 12:40:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1upPBm-001Yxu-2X;
	Fri, 22 Aug 2025 12:40:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1upPBm-00000001UWX-2r8Z;
	Fri, 22 Aug 2025 12:40:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 22 Aug 2025 12:40:05 +0200
Message-ID: <20250822104005.355654-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250820-security-policies-v1-7-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-7-76fde70fdbd8@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_034008_151169_8BCBFC82 
X-CRM114-Status: GOOD (  10.43  )
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
Subject: [PATCH] fixup! security: policy: support externally provided configs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix typo

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 security/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/security/Makefile b/security/Makefile
index 3e92fb776f..1096cbfb9b 100644
--- a/security/Makefile
+++ b/security/Makefile
@@ -54,7 +54,7 @@ $(foreach p, $(external-policy), \
 $(foreach p, $(external-policy), \
 	$(if $(wildcard $(srctree)/$(src)/$p),,$(error \
 	CONFIG_SECURITY_POLICY_PATH contains non-existent files.\
-	$(newline)"$p" does not exit in $$(srctree)/security)))
+	$(newline)"$p" does not exist in $$(srctree)/security)))
 endif
 
 $(obj)/policy-list: $(addprefix $(src)/,$(external-policy)) FORCE
-- 
2.47.2



