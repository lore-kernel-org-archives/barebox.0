Delivery-date: Wed, 13 Mar 2024 15:42:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkPoJ-004WK2-1J
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 15:42:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkPoI-0005pv-RF
	for lore@pengutronix.de; Wed, 13 Mar 2024 15:42:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5CBURemMi+QKw56sFEixboZf17Fwu7bO5vmY69N/4LI=; b=akD6h98ny5cIJmfSgYTlaKyM8s
	syDOz59Hx4wvKHt//Hb2wCRiXNJ1wpYpK3Es5bqFvvH4S/JXD/JVYcONQGz3lRszZalX44kKTzN9j
	zv/YqyIe7vaYSVnptE8xAcmSbHBzjfR3X2+ua3+a032hQ1D7wgfJnAkd2U5EK7SXjs+LdWfFxCA4E
	YRLt0yp/RjKLIzqwnlZRZY0q4yWIW56OQXcoytymWwRn7pyrYm55kMa228Sf2AmBVQJyu8OUW0kAG
	wpnaM35+2Xz4NIejuNxojHSqgVhCyMKDX8zTCiew6/NzftDZVxP7C44fbx/Kmc5BDZ6y6FfBuwixC
	ZXpRQJhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkPnc-0000000ASVN-1c4m;
	Wed, 13 Mar 2024 14:41:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkPnY-0000000ASTf-2LRR
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 14:41:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkPnW-00051z-Jk; Wed, 13 Mar 2024 15:41:38 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkPnW-0068Nf-6y; Wed, 13 Mar 2024 15:41:38 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkPnV-0093HA-1z;
	Wed, 13 Mar 2024 15:41:38 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 15:41:35 +0100
Message-Id: <20240313144136.2157496-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_074140_624561_EC63C047 
X-CRM114-Status: GOOD (  10.58  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/2] ARM: i.MX8MQ: fix early boot hang
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Commit 6ea731079140 ("ARM: i.MX8MQ: Streamline lowlevel startup code")
changed i.MX8MQ PBL code to mimic the code introduced for later i.MX8M
variants. The mimicry went a bit too far though and it exchanged i.MX8MQ
boot source lookup with that of the i.MX8MN. Fix this to avoid the boot
hanging with:

  Unhandled bootsource BOOTSOURCE_0

Fixes: 6ea731079140 ("ARM: i.MX8MQ: Streamline lowlevel startup code")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/atf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 9cbc38ef11e8..8b804602681b 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -323,7 +323,7 @@ void imx8mq_load_bl33(void *bl33)
 	enum bootsource src;
 	int instance;
 
-	imx8mn_get_boot_source(&src, &instance);
+	imx8mq_get_boot_source(&src, &instance);
 	switch (src) {
 	case BOOTSOURCE_MMC:
 		imx8m_esdhc_load_image(instance, bl33);
-- 
2.39.2



