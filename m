Delivery-date: Mon, 22 Jul 2024 19:06:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVwUm-001sHL-2N
	for lore@lore.pengutronix.de;
	Mon, 22 Jul 2024 19:06:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVwUm-0002k9-5Q
	for lore@pengutronix.de; Mon, 22 Jul 2024 19:06:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=igkoa61XeyGnUJyGLaUhgg5PC5cZIjn2SpfaWfOQYDE=; b=mQ3qPlLvuPBhQ8VoPDASE1qWZm
	gRne36JVe2rSVClpWIO9UBKZYkrhSCID+zq3u4hVgrjOqMNoGB01dcOBN0OnSzv2OL4vEpQ8bclhZ
	AIchYEi3TxVUFBuvM8JqfVus/VZ6ESyeGZw8UuYumI/EKN1pYk0XWAa3Cr2d8342ItXCV87v1WDLp
	VTHUb1EOSX9/qTs88vUCtsXv5vm+WR+hiGPwYpiFqzN9FoRtyAAxSzlM3XRomFemkY+jTmqj/2DYA
	n9b2ey911vXSo50y1N9Ju20vIZu32IM5yZsMxMNZZklnODALEovKOL0/h9vrvHl295DsIC3hMfsBw
	Dj/M54MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVwUH-0000000A97a-0J1S;
	Mon, 22 Jul 2024 17:06:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVwUD-0000000A96Z-31FE
	for barebox@lists.infradead.org;
	Mon, 22 Jul 2024 17:06:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUC-0002YS-5M; Mon, 22 Jul 2024 19:06:08 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUB-001QkY-Oh; Mon, 22 Jul 2024 19:06:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUB-00GDyZ-2A;
	Mon, 22 Jul 2024 19:06:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Jul 2024 19:06:05 +0200
Message-Id: <20240722170606.3866957-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240722170606.3866957-1-a.fatoum@pengutronix.de>
References: <20240722170606.3866957-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_100609_781092_4EAFE60D 
X-CRM114-Status: UNSURE (   9.12  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] ARM: i.MX8M: scratch: fix initcall return code on request_barebox_region error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

request_barebox_region returns NULL on error, so adjust the initcall
accordingly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/scratch.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
index 002b499fab3a..b7280ff60952 100644
--- a/arch/arm/mach-imx/scratch.c
+++ b/arch/arm/mach-imx/scratch.c
@@ -95,8 +95,8 @@ const struct optee_header *imx_scratch_get_optee_hdr(void)
 
 static int imx8m_reserve_scratch_area(void)
 {
-	return PTR_ERR_OR_ZERO(request_barebox_region("scratch area",
-				    (ulong)arm_mem_scratch_get(),
-				    sizeof(struct imx_scratch_space)));
+	return request_barebox_region("scratch area",
+				      (ulong)arm_mem_scratch_get(),
+				      sizeof(struct imx_scratch_space)) ? 0 : -EINVAL;
 }
 device_initcall(imx8m_reserve_scratch_area);
-- 
2.39.2



