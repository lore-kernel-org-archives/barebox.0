Delivery-date: Mon, 05 Jan 2026 11:45:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vci5l-001UVD-05
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 11:45:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vci5k-0000cb-BE
	for lore@pengutronix.de; Mon, 05 Jan 2026 11:45:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6x/hFWcPkFbMqSClf1r8xBudaXs0qsqhAfvrIh/z6hQ=; b=lrDIzrQSOSgOyM+/A4Dmwqp+Rg
	/TNYVj5VR0HwNxaVNbCTalTz7kChlXPWrGmJqrVv6fNfCekSoNWSkgBKMzR2ZBZEQV7chAbVdCN5Z
	fwbMkVrhWFJlKoUWXDJsjlmPeeli/mBasWsGEZemPx3Y5U73ys7ewDw0cywevfrqVp6vlqCifQ5gB
	kFPtDKkXd1RYP2zVl88HfjR3bWckmeQMm4kAGAv/kM2VTLlrx89B5/gA9Kz2nEwbiZOg5D/m8Pd2X
	zin5F3shcb6Z6kLwHp33yDQUUVOnlyL5h2hFgcb/LKoTNO1Jgo3rKZDUaXxrbBV77lYdMZKKlN7SI
	hMt3za5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vci5F-0000000B8M7-3SVR;
	Mon, 05 Jan 2026 10:45:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vci5C-0000000B8Kl-338i
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 10:45:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vci59-0000O2-Ra; Mon, 05 Jan 2026 11:45:03 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vci59-0099TV-23;
	Mon, 05 Jan 2026 11:45:03 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vci59-00000007IHq-2IHG;
	Mon, 05 Jan 2026 11:45:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 11:45:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-riotboard-v1-3-789b844d7e36@pengutronix.de>
References: <20260105-riotboard-v1-0-789b844d7e36@pengutronix.de>
In-Reply-To: <20260105-riotboard-v1-0-789b844d7e36@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767609903; l=3447;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=2MmGsatVhh4n11ZhfjpLWb0cNFKpSjwMc2g/hW2aaWw=;
 b=rljFt2pbK4oAXPFqCqisMb4b5nU9zV758oresU5l5ZD6D5MtMR/4o9YdBNy22Mv9B0V+sVzTh
 V/T7d7zoXb0ABIjlfyPqYCPHAKXeMq4ER16Moau7Q2cnyNp+Ay8R+Z+
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_024506_777657_11261C1E 
X-CRM114-Status: GOOD (  17.48  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] gpio: Fix GPIOD_ASIS flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

GPIOs can be requested with GPIOD_ASIS and with this the GPIO should be
kept in its current state. This doesn't work currently as GPIOD_ASIS is
defined as 0 and the flags are then interpreted as GPIOF_INIT_LOW (also
0).

To fix this set GPIOD_ASIS to a bit value which makes it a flag which
can be explicitly tested for.

Note this is different than in Linux. Linux defines GPIOD_ASIS to 0 just
like barebox did, but in Linux the other GPIOD_* flags have an explicit
"change this setting" flag which we don't have in barebox. Introducing
these flags in barebox would mean we have to add the "change this
setting" flags in various other places, like for example
gpiod_request_one().

Motivation for this patch is the only current user of GPIOD_ASIS, the
fixed regulator driver. Without this patch regulators will already be
enabled in the fixed regulator drivers probe function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/gpiolib.c        | 15 +++++++++------
 include/gpio.h                |  2 ++
 include/linux/gpio/consumer.h |  2 +-
 3 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index ec4d8e889bb1e7671f844c5c158188b7b9a23888..e1493ffb6640bc417996f81c45197c32441a8d69 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -622,6 +622,7 @@ static int gpiodesc_request_one(struct gpio_desc *desc, unsigned long lflags,
 	const bool logical     = (dflags & GPIOF_LOGICAL) == GPIOF_LOGICAL;
 	const bool init_active = (dflags & GPIOF_INIT_ACTIVE) == GPIOF_INIT_ACTIVE;
 	const bool init_high   = (dflags & GPIOF_INIT_HIGH) == GPIOF_INIT_HIGH;
+	const bool set         = (dflags & GPIOF_ASIS) == GPIOF_ASIS;
 
 	err = gpiodesc_request(desc, label);
 	if (err)
@@ -631,12 +632,14 @@ static int gpiodesc_request_one(struct gpio_desc *desc, unsigned long lflags,
 	if (active_low)
 		desc->flags |= OF_GPIO_ACTIVE_LOW;
 
-	if (dir_in)
-		err = gpiod_direction_input(desc);
-	else if (logical)
-		err = gpiod_direction_output(desc, init_active);
-	else
-		err = gpiod_direction_output_raw(desc, init_high);
+	if (!set) {
+		if (dir_in)
+			err = gpiod_direction_input(desc);
+		else if (logical)
+			err = gpiod_direction_output(desc, init_active);
+		else
+			err = gpiod_direction_output_raw(desc, init_high);
+	}
 
 	if (err)
 		gpiodesc_free(desc);
diff --git a/include/gpio.h b/include/gpio.h
index 92fd27b2b996eed8777e9321b4f34e245ceca480..2264d0c495a4439f0f8b23e023e28f7472c90889 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -114,6 +114,8 @@ static inline int gpio_is_valid(int gpio)
 #define GPIOF_OUT_INIT_ACTIVE	(GPIOF_DIR_OUT | GPIOF_INIT_ACTIVE)
 #define GPIOF_OUT_INIT_INACTIVE	(GPIOF_DIR_OUT | GPIOF_INIT_INACTIVE)
 
+#define GPIOF_ASIS	BIT(4)
+
 /**
  * struct gpio - a structure describing a GPIO with configuration
  * @gpio:	the GPIO number
diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
index c461f3f3108bd9e31777df2a37ffb469fafb36bd..a425145351b0da1476e9327dfebb2e13801488f3 100644
--- a/include/linux/gpio/consumer.h
+++ b/include/linux/gpio/consumer.h
@@ -13,7 +13,7 @@
  * and output value. These values cannot be OR'd.
  */
 enum gpiod_flags {
-	GPIOD_ASIS	= 0,
+	GPIOD_ASIS	= GPIOF_ASIS,
 	GPIOD_IN	= GPIOF_IN,
 	/*
 	 * To change this later to a different logic level (i.e. taking

-- 
2.47.3



