Delivery-date: Tue, 11 May 2021 13:43:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgQnr-0004gH-66
	for lore@lore.pengutronix.de; Tue, 11 May 2021 13:43:55 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgQnq-0004zj-B8
	for lore@pengutronix.de; Tue, 11 May 2021 13:43:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vmTI+C+Y9yZb0ANJvAQREZZHSLsa9+bkaAlpFQDZdYI=; b=gTDbzgOsF888wyckxWe0uQd2C3
	DnszXUcRujx6ue9CLvorHYL4phchBwUUpLAFUSkkNII8wllNZ7zkDHpOKJdpf3iGTTIdn4FpwsNaw
	Lwh5olCBJR4HVR9aPC2XsgRycyjeLKfQW2aFevUKsPWodC2t7Op1jQSzZtY/KblywUHogGluXLICY
	oK1kBdl16VARljibaV1wneHLExAqH/knwT2XY0WEjpgEUJ3XiM+CL6+fwbd5HEEWCxgS5j/o+Jm2S
	XkqJLWx1JE0hbXrdDWK2an+ZilutQKlhLRWzWk6MNPHSUyRsE4761TVjlPBXY/bGsRNjrVszCRcO8
	90QTtnHg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgQml-00HBE2-IC; Tue, 11 May 2021 11:42:47 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgM5h-00GQtb-UH
 for barebox@desiato.infradead.org; Tue, 11 May 2021 06:42:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Wd7vFBcOJCq7xTc3/5s24hn7B1dYQLLJHZMNzHuN7qo=; b=xKNALTirHnvPAAXyWw4bEiJY2w
 0ehk1BmEMsza3yZDN/Iojbm83I9EBsnG7DFPYTvjgrfXhbi3GJsimIRUeftFsOiyf7tTMRsmC8Us2
 iV8LSTfqaDBqnOlgIVdK+wDz/zXmAFokVkD79LTfl70ErxEW68HhqHjgg4aVLjVo1cJwFY7U5ULZH
 4oi5xVwvozzG949GYYkoS5A/MgVLpzvZKh07C4117U9z8iDbaym4Rvk1hvosqUfvuj0Y8mKb+v63Y
 HClv29jkMY3VAGbYKoFNH8OsxWzIpNyY5KT/12rx+8MS0elOel68C+End3Z+TrIA/75C3Le7rWV2z
 G1MqayCQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgM5f-009LBC-Io
 for barebox@lists.infradead.org; Tue, 11 May 2021 06:42:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lgM5W-0000Oo-BU; Tue, 11 May 2021 08:41:50 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lgM5T-0001Tj-26; Tue, 11 May 2021 08:41:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 11 May 2021 08:41:43 +0200
Message-Id: <20210511064144.4930-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_234159_636294_90E7F460 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_234159_636294_90E7F460 
X-CRM114-Status: UNSURE (   7.10  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fixup! gpio: generic: sync with upstream Linux gpio-mmio
 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Commit inadvertently broke brcm,bcm6345-gpio, wd,mbl-gpio and
ni,169445-nand-gpio, because "dat" was now requested twice.

Fix this up. Tested on RISC-V Erizo.

Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpio-generic.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index 713085267a15..3066b3f7a19d 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -537,7 +537,7 @@ static int bgpio_dev_probe(struct device_d *dev)
 	if (IS_ERR(pdata))
 		return PTR_ERR(pdata);
 
-	r = dev_request_mem_resource_by_name(dev, "dat");
+	r = dev_get_resource_by_name(dev, IORESOURCE_MEM, "dat");
 	if (!r)
 		return -EINVAL;
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

