Delivery-date: Wed, 11 Jan 2023 18:42:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf7o-0091f0-J4
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 18:42:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf7l-0005yX-6R
	for lore@pengutronix.de; Wed, 11 Jan 2023 18:42:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+B3LEWpT3SlQdsjEAA38v3RLi2GVPdSy39yqy/iHqDY=; b=c6JEdJaDQLSZbWW0UoL4hDexB6
	GfiYfFlaP2JyCk1UZmBofE+NL8C2bsmK/oQA5bTl+c/uVGHU7VE+8bJtEzds4l2os2Hk9SYYh21qm
	TFbeNcI/eBYbBU5gVk67l2DLoNaC1kYI0sOveCCyziDbvAeTQ8/zrI7PDzdIcChNnxVrGW0nKBxhR
	sn/dohISy5ZsVZ2extMIfeppX6DwKIEYxcEiOcxQsbr0w45RMOPbdIRnF6Yo4B2oadmf7pPa9kH+t
	60ybzFveGMVFLnJz+IAW0QtEIzzl+9TJtrTImFGWFujcTsPAeWYZUqXGY+woXoc64TjQTEeLA1VqZ
	q6+UazKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf6K-00CTm5-8V; Wed, 11 Jan 2023 17:41:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf5T-00CTI4-2t
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 17:40:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5R-00054G-UE; Wed, 11 Jan 2023 18:40:29 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5R-005M6k-90; Wed, 11 Jan 2023 18:40:29 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5O-007DGB-EP; Wed, 11 Jan 2023 18:40:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 18:40:10 +0100
Message-Id: <20230111174023.1719129-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
References: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_094031_225884_91F101B9 
X-CRM114-Status: GOOD (  12.07  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/15] mtd: nand: base: implement nand_gpio_waitrdy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To simplify porting kernel NAND drivers a tiny bit, provide the Linux
nand_gpio_waitrdy. This is readily implementable with barebox' own
gpio_poll_timeout_us.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c | 22 ++++++++++++++++++++++
 include/linux/mtd/rawnand.h  |  2 ++
 2 files changed, 24 insertions(+)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 4c90ad975771..c3cd22935bb2 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -36,6 +36,7 @@
 #include <asm/byteorder.h>
 #include <io.h>
 #include <malloc.h>
+#include <gpio.h>
 #include <module.h>
 #include <of_mtd.h>
 
@@ -785,6 +786,27 @@ int nand_soft_waitrdy(struct nand_chip *chip, unsigned long timeout_ms)
 };
 EXPORT_SYMBOL_GPL(nand_soft_waitrdy);
 
+/**
+ * nand_gpio_waitrdy - Poll R/B GPIO pin until ready
+ * @chip: NAND chip structure
+ * @gpiod: GPIO descriptor of R/B pin
+ * @timeout_ms: Timeout in ms
+ *
+ * Poll the R/B GPIO pin until it becomes ready. If that does not happen
+ * whitin the specified timeout, -ETIMEDOUT is returned.
+ *
+ * This helper is intended to be used when the controller has access to the
+ * NAND R/B pin over GPIO.
+ *
+ * Return 0 if the R/B pin indicates chip is ready, a negative error otherwise.
+ */
+int nand_gpio_waitrdy(struct nand_chip *chip, int gpio,
+		      unsigned long timeout_ms)
+{
+	return gpio_poll_timeout_us(gpio, true, timeout_ms * USEC_PER_MSEC);
+};
+EXPORT_SYMBOL_GPL(nand_gpio_waitrdy);
+
 static bool nand_supports_get_features(struct nand_chip *chip, int addr)
 {
 	return (chip->parameters.supports_set_get_features &&
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 1147f235a680..a05c67e1404b 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1414,6 +1414,8 @@ void nand_cleanup(struct nand_chip *chip);
  * instruction and have no physical pin to check it.
  */
 int nand_soft_waitrdy(struct nand_chip *chip, unsigned long timeout_ms);
+int nand_gpio_waitrdy(struct nand_chip *chip, int gpio,
+		      unsigned long timeout_ms);
 
 /* Select/deselect a NAND target. */
 void nand_select_target(struct nand_chip *chip, unsigned int cs);
-- 
2.30.2



