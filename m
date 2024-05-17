Delivery-date: Fri, 17 May 2024 08:45:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7rLk-000wpD-0u
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 08:45:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7rLj-0006tj-KG
	for lore@pengutronix.de; Fri, 17 May 2024 08:45:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d64sBjhI9YYinqi8KDIAn+yNPa0ejvDhPVqkJs0FUBY=; b=jkdITNKqHhqPVd7A5qWcsQNIn4
	OnuyykyQQfvH36mueCCYIJptPoKZNWq/AieKyKrpMA+IsyJ5VpseJYKkFlGcdmKxsH4IpW9anm52J
	I3brxvAsnZ++A3+0TiI6+XFy14J6oYkaEfWTbLSiHxxFSYKEuw1NU1XtKjmriTym7FvGmKtH+4waE
	eYOokObDeRUDWBm6j4mIDHB+CtFgQqjTO3NK4QWrredMm/wRFXSIZSbqyKUn3zkFuAkf5xE2y2pkB
	lm+JAp9GuPZun4bzepYUJTrQBBZEuj5Zf4upZAfhm+f1/BSwOKLVRh2Mf9XRyonNyPl1ka2/b3P6s
	0pdnGrXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7rLF-00000006yUa-3XsD;
	Fri, 17 May 2024 06:45:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7rL8-00000006yR2-0TJs
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 06:45:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-0006Wx-SF; Fri, 17 May 2024 08:45:12 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-001pes-FR; Fri, 17 May 2024 08:45:12 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7rL6-00Emcc-1D;
	Fri, 17 May 2024 08:45:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 08:45:09 +0200
Message-Id: <20240517064511.3307462-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517064511.3307462-1-a.fatoum@pengutronix.de>
References: <20240517064511.3307462-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_234514_219370_92C7C7D1 
X-CRM114-Status: GOOD (  10.33  )
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
Subject: [PATCH v2 4/6] ARM: move blob_is_arm_boarddata() to include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20240430105310.3149242-2-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  - no change
---
 arch/arm/cpu/start.c               | 7 -------
 arch/arm/include/asm/barebox-arm.h | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 4f68119d5089..8461184db467 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -36,13 +36,6 @@ static unsigned long arm_membase;
 static void *barebox_boarddata;
 static unsigned long barebox_boarddata_size;
 
-static bool blob_is_arm_boarddata(const void *blob)
-{
-	const struct barebox_arm_boarddata *bd = blob;
-
-	return bd->magic == BAREBOX_ARM_BOARDDATA_MAGIC;
-}
-
 const struct barebox_boarddata *barebox_get_boarddata(void)
 {
 	if (!barebox_boarddata || !blob_is_arm_boarddata(barebox_boarddata))
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index c64e74f8f03a..8447ef7ba7fa 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -32,6 +32,13 @@ void __noreturn barebox_arm_entry(unsigned long membase, unsigned long memsize,
 #define barebox_arm_boarddata		barebox_boarddata
 #define BAREBOX_ARM_BOARDDATA_MAGIC	BAREBOX_BOARDDATA_MAGIC
 
+static inline bool blob_is_arm_boarddata(const void *blob)
+{
+	const struct barebox_arm_boarddata *bd = blob;
+
+	return bd->magic == BAREBOX_ARM_BOARDDATA_MAGIC;
+}
+
 u32 barebox_arm_machine(void);
 
 unsigned long arm_mem_ramoops_get(void);
-- 
2.39.2



