Delivery-date: Fri, 13 Mar 2026 14:34:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12ea-000DNY-34
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:12 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eK-0008UT-Iz
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rH8yh6r+0UuNUS0KXlFggUUgOj8kxRdSmLzQ67yY8+o=; b=o8LbJrZSVwAUxTrWI9ahGUbFmI
	1P4rbxf+oCZ87BAb01R/9qUKXaBIOsp/3FfG5MnYG2TEdUdm2Bso4wwxQHDJ3cAD8QXPhqh+YrSjF
	6+8HzefhVtG4ZC4PBK8p3Et64LTlGQHCcYctRnhVlbs/WFCF2Sr8iQMQNaPMFyXgIwmrRYFYx6Dbo
	ORevPSqb0/R091llzlNr+XQATOx9A7+nrroIMxeV49hRQycFRgItyECsve2s3McxROcAL4ov+T3+m
	wsb/S3Te8slmmNSowH9CbsIfJUH8AI3NIDG/2No914F0zhtmzDoG12LVtxRRsfxB1q8kR1TXMdwsT
	gUQg36BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dH-00000000FnM-0TZQ;
	Fri, 13 Mar 2026 13:32:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d8-00000000FXp-3VVo
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=rH8yh6r+0UuNUS0KXlFggUUgOj8kxRdSmLzQ67yY8+o=; b=pwf9+6oskT3ktNtII8tgYLC/Zj
	DIWz0oUfJNzbRGdsfDSXQG/IBf+vz1RnodheR5sowhOWKKPYmnnJDASAhCJOXUoWOF9F0ofvEt6nk
	cwUoNew3w2tMPgiNfglPjbaOi7Am8/Ytrdn3wRukDvZOYgc5Q1xp2zNuwB/GWvtFFbh2w/zMUXbdf
	G/L/sZxK7025yWr4NKi6VbpJw+uNWLk/mZ3I3g+WSts2GdF/irq9NRhbssfMo3lBt07OJgGKBgvWV
	7aK/M7D1to+Ppd+0ms4mbZG4NwFXo7kjkRbxFhysL5wu8X6cdz34AlVKBsek/QMfYayxTSVlyysHG
	V6d/ElRQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12cy-00000003OSe-3BZL
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0006oQ-9g; Fri, 13 Mar 2026 14:32:32 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0005Sy-0K;
	Fri, 13 Mar 2026 14:32:32 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00000009ULB-3Tuk;
	Fri, 13 Mar 2026 14:26:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Mar 2026 14:24:57 +0100
Message-ID: <20260313132631.2257573-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133234_152751_4BE53DAC 
X-CRM114-Status: GOOD (  16.53  )
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
Subject: [PATCH v2025.09.y 13/58] gpio: Fix GPIOD_ASIS flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

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

(cherry picked from commit 6436a1dc83dd98c38b119a7efbe8b0a999172749)

Link: https://lore.barebox.org/20260105-riotboard-v1-3-789b844d7e36@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/gpiolib.c        | 15 +++++++++------
 include/gpio.h                |  2 ++
 include/linux/gpio/consumer.h |  2 +-
 3 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index ec4d8e889bb1..e1493ffb6640 100644
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
index 92fd27b2b996..2264d0c495a4 100644
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
index c461f3f3108b..a425145351b0 100644
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



