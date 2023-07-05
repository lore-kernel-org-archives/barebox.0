Delivery-date: Wed, 05 Jul 2023 16:43:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH3jW-00GKQb-1v
	for lore@lore.pengutronix.de; Wed, 05 Jul 2023 16:43:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH3jT-0001Rr-J1
	for lore@pengutronix.de; Wed, 05 Jul 2023 16:43:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=s0HIhLbnhjtt85NShhM6u08Dh48DGm0pnd7Gqh1BA+s=; b=MvP++1FkgH/XxpBtn0yBcqv7Gs
	gnaeJ36tjV9WpikULARADFMpM7AO8QWFgB8GXM6TKWAZwpmAW1S3u1TtR6jVDm38vEyzMcC7h7N2L
	Omwz4PFQ9QK499qeTUJIapddh3h+zJuU7JK4cUQ0lL/wG4Sp07tPLuqE5SSnmadOfjAbTVbe/TT3O
	Y8V3ZcNZkTf3uyzl/AXfz/p4aTHZEcApQbdPK7m32wb+iIJhUEDjJyQYQhGl1a7nfKpLmM8VN6mXV
	s2hEBYnGfTqC2VaLkD/+J70HIdsX+D4CFcg3Zludv9JD2XzZzdGsFF3OEBbGItFh8kBU1i+nCHVaZ
	xwtneRcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3iE-00GApa-1i;
	Wed, 05 Jul 2023 14:42:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3iB-00GAn7-0p
	for barebox@lists.infradead.org;
	Wed, 05 Jul 2023 14:42:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1qH3i7-000122-Di; Wed, 05 Jul 2023 16:42:27 +0200
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed,  5 Jul 2023 16:42:14 +0200
Message-ID: <20230705144219.504194-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_074231_317407_7B1DB031 
X-CRM114-Status: UNSURE (   6.86  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/6] kbuild: clean start*_*.{p,ps}imximg files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Cleanup files build during i.MX8M image generation.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 images/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/images/Makefile b/images/Makefile
index c1cb56f5b1..85e5f0503c 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -221,5 +221,6 @@ $(flash-list): $(image-y-path)
 clean-files := *.pbl *.pblb *.map start_*.imximg *.img barebox.z start_*.kwbimg \
 	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
 	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd *.rkimg \
-	start_*.simximg start_*.usimximg *.zynqimg *.image *.swapped *.missing-firmware
+	start_*.simximg start_*.usimximg start_*.pimximg start_*.psimximg *.zynqimg \
+        *.image *.swapped *.missing-firmware
 clean-files += pbl.lds
-- 
2.41.0



