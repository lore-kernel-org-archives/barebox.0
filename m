Delivery-date: Thu, 20 Oct 2022 17:39:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olXeC-001sLt-3s
	for lore@lore.pengutronix.de; Thu, 20 Oct 2022 17:39:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olXe9-0006YI-Cp
	for lore@pengutronix.de; Thu, 20 Oct 2022 17:39:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hd+/qEQhtwyQ285C6az5XyjrBgTEFj3KNAvviahZ6S0=; b=NmVxU8HCYrvKhaEeU24GFzHi1K
	zMIOtnLiqG4cH5K/q6JpYYENLjwne0volUUc+Icr0H9if8LlXVyPpuEqz2oVEKqruogCUcd3Lkl52
	nNC07iLqWF2biLTSbYciVjxnc6s1wl0etNmJhVnLWuBV+urQ4v5F/eBq8vEZnXqoqg60TlvogVruM
	k6oWWaLCF88LzjKfkeRjzhzKNOUDyS0JVDNSKlX1rZLB9V75DazVlttQwf0f02ixlPylomP/aqBQV
	J8tpjT1b+UiBrcp0m4Ved353GXY0ogD8RMxYtZVQOBN6zJxutoGPI06vAETs48Im0aTOdK6IK0J00
	3W6mJtnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olXcm-00H9YV-W7; Thu, 20 Oct 2022 15:38:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olXch-00H9UF-O1
	for barebox@lists.infradead.org; Thu, 20 Oct 2022 15:38:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1olXcf-0006K1-NJ; Thu, 20 Oct 2022 17:38:17 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1olXcc-000LeB-O7; Thu, 20 Oct 2022 17:38:17 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1olXce-00D7cl-Be; Thu, 20 Oct 2022 17:38:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Oct 2022 17:38:15 +0200
Message-Id: <20221020153815.3127522-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221020152853.3021713-1-a.fatoum@pengutronix.de>
References: <20221020152853.3021713-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_083819_799454_96303A3A 
X-CRM114-Status: GOOD (  10.64  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! aiodev: port Linux imx7d-adc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Should've tested the devinfo first, before sending it out.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/aiodev/imx7d_adc.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/aiodev/imx7d_adc.c b/drivers/aiodev/imx7d_adc.c
index 9820aaff1ac4..d35216aac421 100644
--- a/drivers/aiodev/imx7d_adc.c
+++ b/drivers/aiodev/imx7d_adc.c
@@ -383,7 +383,7 @@ static u32 imx7d_adc_get_sample_rate(struct imx7d_adc *info)
 
 static void imx7d_adc_devinfo(struct device_d *dev)
 {
-	struct imx7d_adc *info = dev->priv;
+	struct imx7d_adc *info = dev->parent->priv;
 
 	if (info->aiodev_info)
 		info->aiodev_info(dev);
@@ -415,7 +415,8 @@ static int imx7d_adc_probe(struct device_d *dev)
 		return dev_err_probe(dev, PTR_ERR(info->regs),
 				     "Failed to get memory region\n");
 
-	dev->priv = aiodev = &info->aiodev;
+	dev->priv = info;
+	aiodev = &info->aiodev;
 
 	aiodev->num_channels = 16;
 	aiodev->hwdev = dev;
-- 
2.30.2



