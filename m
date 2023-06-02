Delivery-date: Fri, 02 Jun 2023 09:51:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4zYs-0070st-Ek
	for lore@lore.pengutronix.de; Fri, 02 Jun 2023 09:51:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4zYq-0000tQ-2j
	for lore@pengutronix.de; Fri, 02 Jun 2023 09:51:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uqEfC568rLzhRuNtx7hyZqKKnxhhCW1Nvr6Zs+RduzU=; b=vz8v74aC7KTUahLSrKoE3MD4vf
	ryg8rRPSEzJhnLm6TsMAQfZ8AMZNG8NPQcr+GkzBYVLH6C957Z018zsS0lHr8KerXyKgLF/AO8FSI
	l0zf6nT16F65JN9qubSWe59vnwBZyH/v3Prqfw7QdTTjrMrRTeTCQu1MEt/qy7AyiZvSoM8I/D7Zr
	WUC/dhIdRjJw/5aUZ1f2Z2ZvPpsf8FRhykucGn0IlERKscPXUAaw/9FWMGzjT/rHXKyuyk8o4tozy
	drEaESE31hjKt60JiThjVD7XQMrW4IO21lbFPLMF1vBPTxLzb3aYV6c/QPTrrnGYJr4Dg0kkR6rKS
	teawLJLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zXc-0063eu-1K;
	Fri, 02 Jun 2023 07:49:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zXX-0063ak-0E
	for barebox@lists.infradead.org;
	Fri, 02 Jun 2023 07:49:42 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1q4zXT-00006c-9u; Fri, 02 Jun 2023 09:49:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri,  2 Jun 2023 09:49:13 +0200
Message-Id: <20230602074921.2687669-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230602074921.2687669-1-m.felsch@pengutronix.de>
References: <20230602074921.2687669-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_004939_193669_3B33BDCE 
X-CRM114-Status: GOOD (  11.89  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/10] gpiolib: simplify for loop break condition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

No functional change just a simplification to align it with the Linux
kernel. Also add the kernel comment to make the reason clear.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index b4a3a4e550..0df43c9f8f 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -529,7 +529,15 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
 		of_property_read_string_array(chip->dev->of_node,
 					      "gpio-line-names", arr, count);
 
-		for (i = 0; i < chip->ngpio && i < count; i++)
+		/*
+		 * Since property 'gpio-line-names' cannot contains gaps, we
+		 * have to be sure we only assign those pins that really exists
+		 * since chip->ngpio can be less.
+		 */
+		if (count > chip->ngpio)
+			count = chip->ngpio;
+
+		for (i = 0; i < count; i++)
 			gpio_desc[chip->base + i].name = xstrdup(arr[i]);
 
 		free(arr);
-- 
2.39.2



