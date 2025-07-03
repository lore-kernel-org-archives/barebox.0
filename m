Delivery-date: Thu, 03 Jul 2025 12:16:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXGzQ-00Dc4o-0B
	for lore@lore.pengutronix.de;
	Thu, 03 Jul 2025 12:16:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXGzP-0000PB-GO
	for lore@pengutronix.de; Thu, 03 Jul 2025 12:16:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vWrsBOh9R+BXxglvAvLRA9Vajl27J024oSeDYt7JsSg=; b=D0xTGCfJnDPX4riDuAm6fvF4d4
	58/sWtA3a8vUqL44eeLEC9pemy6qAU3MjGu2su6NQnKSnUusSLY+/JB/HKJffJ4f2HR13zCocTT0n
	to0pNiKs8+oaaK+6l1a2TD3k0PyNtIWhdbQcdOZ1tO5wN3aSbcUQp1mYSfF+0p7gGfgRuGLZLjTdt
	ZVdlLtZAIjj6eks8L1s4jBaq6foVXGicB3l4N6VhgMXfl68OfJUaNQFLzoBe4us0J24liVOIubZ86
	Nypcc8y5Kwve0sZyERM60ApcS48+9v/ZPwj5O5d6yaSL9XLIVAWWfTG5HmhiE25wGclbDQTCompqL
	6SLKVv2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXGye-0000000AxUU-1hQS;
	Thu, 03 Jul 2025 10:15:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXGyS-0000000AxT6-1vVb
	for barebox@lists.infradead.org;
	Thu, 03 Jul 2025 10:15:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uXGyP-0007qN-2u; Thu, 03 Jul 2025 12:15:21 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu,  3 Jul 2025 12:15:20 +0200
Message-Id: <20250703101520.1170742-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250703_031524_508632_35DBAB3F 
X-CRM114-Status: UNSURE (   9.26  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] Documentation: migration-2025.07.0: fix formatting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The indentation makes the heading a normal text and turns the dashes
into a horizontal bar instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/migration-guides/migration-2025.07.0.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/migration-guides/migration-2025.07.0.rst b/Documentation/migration-guides/migration-2025.07.0.rst
index 1d2d5b0f4267..dfddff16a876 100644
--- a/Documentation/migration-guides/migration-2025.07.0.rst
+++ b/Documentation/migration-guides/migration-2025.07.0.rst
@@ -13,7 +13,7 @@ Configuration options
   that went unnoticed before. If this is suspected, ``CONFIG_KASAN`` should
   help in debugging them on ARM.
 
-  Board support
+Board support
 -------------
 
 * barebox now warns at runtime about boards that disable the option
-- 
2.39.5



