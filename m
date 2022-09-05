Delivery-date: Mon, 05 Sep 2022 19:44:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG9B-007l7E-1p
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 19:44:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG9A-0003T9-UC
	for lore@pengutronix.de; Mon, 05 Sep 2022 19:44:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p/YUeNwtj7fPv2nUrq9LC1aewC9yLP5XAP8NTGSieJo=; b=iJlU3iJCz5HN3a325sl4UfkdgD
	wP1xiRtqRCybcdjI7UNhG5mhWs4OmNNrVYpyulz5n7mfb99muA2QKWDz1sp5vLMHwPuFKxAuRnw0R
	wblDyCDSAOsqWiZPWXj3aobsqOV4sQvfbq7P5zqZebLOFyJ07XZiDf7zsIscIITFcnj2dukyFu9Jc
	YIiSCkuY+lQM1n1Y1YHGSmxHFKj/fie+o7xFCZzxwh4ZgywdHqwPrbAOLMKJ9etTITDDxiOaEVJgI
	jmXTuItNIDZX1Ejr/vVJmVhdUG8XeNTalEzzhZpHZhsx6EfTPo8EoRIF7G/6v1J11sZsVSEcm4oC2
	3ungXv9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVG7Z-007kbr-32; Mon, 05 Sep 2022 17:42:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9SJ-000QQP-Oh
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 10:35:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SH-0005ic-TF; Mon, 05 Sep 2022 12:35:49 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SF-0042jZ-8G; Mon, 05 Sep 2022 12:35:49 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SF-007LCN-Q2; Mon, 05 Sep 2022 12:35:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 12:35:46 +0200
Message-Id: <20220905103546.1476277-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
References: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_033555_801370_B70D7664 
X-CRM114-Status: GOOD (  14.27  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/5] gpiolib: gpioinfo: add optional CONTROLLER command line argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Like done with gpio setter/getter functions in the previous commit,
extend the gpioinfo command to accept an optional argument that
restricts output to the supplied gpio controller instead of printing
all GPIOs at once.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 31 ++++++++++++++++++++++++++-----
 1 file changed, 26 insertions(+), 5 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index cf61213ca12d..7f2070903501 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -675,15 +675,35 @@ struct gpio_chip *gpio_get_chip(int gpio)
 #ifdef CONFIG_CMD_GPIO
 static int do_gpiolib(int argc, char *argv[])
 {
+	struct gpio_chip *chip = NULL;
 	int i;
 
+	if (argc > 2)
+		return COMMAND_ERROR_USAGE;
+
+	if (argc == 1) {
+		struct device_d *dev;
+
+		dev = find_device(argv[1]);
+		if (!dev)
+			return -ENODEV;
+
+		chip = gpio_get_chip_by_dev(dev);
+		if (!chip)
+			return -EINVAL;
+	}
+
 	for (i = 0; i < ARCH_NR_GPIOS; i++) {
 		struct gpio_info *gi = &gpio_desc[i];
 		int val = -1, dir = -1;
+		int idx;
 
 		if (!gi->chip)
 			continue;
 
+		if (chip && chip != gi->chip)
+			continue;
+
 		/* print chip information and header on first gpio */
 		if (gi->chip->base == i) {
 			printf("\nGPIOs %u-%u, chip %s:\n",
@@ -693,14 +713,14 @@ static int do_gpiolib(int argc, char *argv[])
 			printf("             %-3s %-3s %-9s %-20s %-20s\n", "dir", "val", "requested", "name", "label");
 		}
 
+		idx = i - gi->chip->base;
+
 		if (gi->chip->ops->get_direction)
-			dir = gi->chip->ops->get_direction(gi->chip,
-						i - gi->chip->base);
+			dir = gi->chip->ops->get_direction(gi->chip, idx);
 		if (gi->chip->ops->get)
-			val = gi->chip->ops->get(gi->chip,
-						i - gi->chip->base);
+			val = gi->chip->ops->get(gi->chip, idx);
 
-		printf("  GPIO %4d: %-3s %-3s %-9s %-20s %-20s\n", i,
+		printf("  GPIO %4d: %-3s %-3s %-9s %-20s %-20s\n", chip ? idx : i,
 			(dir < 0) ? "unk" : ((dir == GPIOF_DIR_IN) ? "in" : "out"),
 			(val < 0) ? "unk" : ((val == 0) ? "lo" : "hi"),
 		        gi->requested ? (gi->active_low ? "active low" : "true") : "false",
@@ -714,6 +734,7 @@ static int do_gpiolib(int argc, char *argv[])
 BAREBOX_CMD_START(gpioinfo)
 	.cmd		= do_gpiolib,
 	BAREBOX_CMD_DESC("list registered GPIOs")
+	BAREBOX_CMD_OPTS("[CONTROLLER]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
-- 
2.30.2



