Delivery-date: Tue, 26 Apr 2022 16:18:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njM1L-00Fygf-QW
	for lore@lore.pengutronix.de; Tue, 26 Apr 2022 16:18:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njM1I-0003iL-Mz
	for lore@pengutronix.de; Tue, 26 Apr 2022 16:18:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OG0pxNC8A16f0paupghC2fw/cnKG7riAIL0OXxnuNC0=; b=WJmKdytPFcCngq
	BxHu7bTF7rPvwiCZQ3Tqk7JRNvyVIwJKecZqrniGf1KkBAcHUqaY55fv6LZnxOFfeNH2C39Pn1wUF
	FS6TDr8m1htdMpznA/uQnULDuBy67ajdHg8JZKO2ST5DkLSKh8MIdaq2b2wndLlYlVxV5L3Y381B1
	aD7VKwhg+cOWDvR51tqoB72F4VynrAfKHoRoEFECpf8d12/B+8AWvk+UFBCAQVXWWRwTmAJtlKu74
	318VNtDvxkRUz75h2AFJGkp+9+ub2aiilIZOsVTOeBpcy7BFgNlCHC7aBOBWocgwtfC3U/SamsR+L
	Alaw1Ta4ID8uVYKrNXuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njLzi-00Ew3K-Pc; Tue, 26 Apr 2022 14:16:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njLyC-00EvRr-W6
 for barebox@lists.infradead.org; Tue, 26 Apr 2022 14:15:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1njLy6-00037t-Tu; Tue, 26 Apr 2022 16:15:06 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1njLy7-005Ma1-KQ; Tue, 26 Apr 2022 16:15:06 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1njLy5-003ehI-ET; Tue, 26 Apr 2022 16:15:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Apr 2022 16:15:04 +0200
Message-Id: <20220426141504.869945-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_071513_123879_AFB6D56B 
X-CRM114-Status: GOOD (  10.31  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] mci: stm32_sdmmc2: add STM32MP131 AMBA primecell
 peripheral ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

v5.18-rc1 device tree now features different peripheral ID. As
peripheral IDs have no fallbacks, this meant broken SD on STM32MP131.

Add new peripheral ID without special handling as IP is
backwards-compatible. DT also contains a st,stm32-sdmmc2 compatible,
which we could match against in future, but for now this isn't
necessary.

Fixes: b01786baa849 ("dts: update to v5.18-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/stm32_sdmmc2.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index 0c620427ee44..40ffc17908b2 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -643,6 +643,11 @@ static struct amba_id stm32_sdmmc2_ids[] = {
 		.id     = 0x00253180,
 		.mask	= 0xf0ffffff,
 	},
+	/* ST Micro STM32MP13 */
+	{
+		.id     = 0x20253180,
+		.mask	= 0xf0ffffff,
+	},
 	{ 0, 0 },
 };
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

