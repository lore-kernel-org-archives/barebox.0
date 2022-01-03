Delivery-date: Mon, 03 Jan 2022 12:59:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4LzT-009niP-Lj
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 12:59:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4LzS-0003jO-CC
	for lore@pengutronix.de; Mon, 03 Jan 2022 12:59:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9OKQh/TVrBKnYfg6Pvt3dSgDo5aRmPpWSTUHQ3+SQqs=; b=xkh2D3K9tio0Po
	IoTM4oZJgkNBZEbEOGB3JvasjHRX9MftMgZ+IcpJrJGCZ8VIcpL0HWOfBITJgjLFcYRRUKYNqKH9z
	nrTnuIj+Ssgd2YD3CCcc+4INkzq+ACJV6JC7brx5juB/Ra9XMWB8gNZd5QXaNwoos/sIf+EXZDiMF
	jMQIPJqWg0/eNz6wb/4oXuGwLOpX3AzYKcC0b/2TG67aostWH1CmG/BPcBu0YzBxjQVtnhyCdwRAl
	kt8D0Vk6BeQsc4Ft1udeIJwEZEHCLS4cD1rEvryA9OfJ1yHzaXFcYQ+HjyHIGAn/rkuyNcWAc/lJc
	vSW/Dbhi+HW/IDg+u9Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4Ly4-008vND-2Q; Mon, 03 Jan 2022 11:57:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4Lxs-008vKV-Ri
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 11:57:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4Lxp-0003NM-El; Mon, 03 Jan 2022 12:57:21 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4Lxo-007EW9-6n; Mon, 03 Jan 2022 12:57:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 12:57:14 +0100
Message-Id: <20220103115718.1723730-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220103115718.1723730-1-a.fatoum@pengutronix.de>
References: <20220103115718.1723730-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_035724_960270_6EE7F682 
X-CRM114-Status: GOOD (  13.08  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/5] pwm: atmel: point MMIO accesses at correct address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The base address for MMIO writes was the address of the resource struct,
not the start address pointed at by it.

Change untested, but it doesn't look like this driver could ever have
worked.

Cc: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pwm/pwm-atmel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
index 7819d321d387..648f75fb7292 100644
--- a/drivers/pwm/pwm-atmel.c
+++ b/drivers/pwm/pwm-atmel.c
@@ -256,7 +256,7 @@ static int atmel_pwm_probe(struct device_d *dev)
 	if (IS_ERR(res))
 		return PTR_ERR(res);
 
-	atmel_pwm->base = IOMEM(res);
+	atmel_pwm->base = IOMEM(res->start);
 
 	for (i = 0; i < PWM_CHANNELS; i++) {
 		struct atmel_pwm_chip *chip = &atmel_pwm->atmel_pwm_chip[i];
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

