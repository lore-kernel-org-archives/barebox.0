Delivery-date: Fri, 13 Mar 2026 14:35:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fZ-000DZ4-0h
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:35:13 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fG-0001BT-QQ
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:35:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JTj/MTAbDICMfdPmmlgMqEGTx8YFRJ44TNQTpICjoJU=; b=e9oth2GTczv1onth/o826jfzf6
	uyeIrKsNN1ut9CqN7wyadZeX6t6J1hAau8coGX/L4d9SMoM+8P8T8JnYAE9+8RO+e03G5q2MK0WMf
	P5JXkIq9/8QIwBjR/5f/TqK2yjmRWMXExdcMXGEyq08cD88l50ZZOVRgLRw4NIG8Zho7rr2rF88+y
	eaaihUkwhTnqnmcLHzK8FMyggWq34M0ejZhIBzc7i3dFYoyOS1auG7cxI2HOiZnqa/r4BEZm6bASg
	tGN460Hg6Jo59Equ/Zg3o3Gg3GU1tpZOHwe1ffBEzx6j2QX73ORTwZpWcRe4ZciYugmDhX1UBU/XT
	OBxBhR8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dg-00000000GTh-3PzP;
	Fri, 13 Mar 2026 13:33:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dI-00000000Fnx-1xuU
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=JTj/MTAbDICMfdPmmlgMqEGTx8YFRJ44TNQTpICjoJU=; b=Gtq0sFlJZrkUAqDj32/qWQIPKF
	zRqwj/yK7J/NbeuEFuneFVe0IOthnCoBLw5PRsjEfxtz+iXr7oY1eiMmgWE1Y0cpwzpjHZh5dTCxz
	ocZUGNRIudTQ4j30vnSahKc6sKMavewW/vyO9D8wBhW2EDAE0EFvLmmIenMvS15JCmE2a2oQ7YBOt
	61cTykHv78CWO+Lz5/TiKGUHYXSe3O8GlH/DPDTMV1inCRytFtb/4ThRXfxpyhSdjgiaKT7smrBG/
	MV7UUsEB4DDEYA8bCyC2dH+oB1KcjylFUaieH/dzIQNggqsbC3k92ewjpK2LwJhXcRVzUno0iHKkx
	/i7Rr9Tg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d4-00000003OSY-0xwT
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d1-0006xy-KP; Fri, 13 Mar 2026 14:32:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d1-0005VL-1J;
	Fri, 13 Mar 2026 14:32:35 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-0kKn;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:27 +0100
Message-ID: <20260313132631.2257573-44-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133238_521738_01023BBA 
X-CRM114-Status: GOOD (  10.26  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 43/58] mci: spi: initialize r1 to fix garbage return value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If bcnt is 0, the while loop body never executes and r1 is returned
uninitialized. Initialize it to 0 (success) which is the correct
result when there are no blocks to write.

(cherry picked from commit 095bd13cf981aaceb4c0f5f7e9b14a3482c3be7e)

Reported-by: GCC 14.2 -fanalyzer
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260216084253.3547270-12-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index 3ab90d768fbd..b495cdaafcf4 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -172,7 +172,7 @@ static uint mmc_spi_writedata(struct mmc_spi_host *host, const void *xbuf,
 			      uint32_t bcnt, uint32_t bsize, int multi)
 {
 	const uint8_t *buf = xbuf;
-	uint8_t r1;
+	uint8_t r1 = 0;
 	uint16_t crc = 0;
 	uint8_t tok[2];
 	int i;
-- 
2.47.3



