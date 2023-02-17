Delivery-date: Fri, 17 Feb 2023 18:32:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4b1-00AI3X-B7
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:32:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4az-0004oL-Pm
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:32:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3eWZrrzbeRnOlh5Mc42Du9BeyfjAz9tXnS9TjUaigqM=; b=lgzjUH9sAi7Isf/6FIBUyOO39V
	Rom6T1ovTOu0UQT61YVI628K5NNZ79kXnvaQYU9Aubpol9wOfxXawfsG79gA92zyYhKUbFhKFMjxC
	vKPGb+5CbH3p8aI8loV/m1mV7DO+lqcVhqVGHIQLSRo6ecvywg8mFIOlLOeiSqn1JXgHWatkYsfgV
	70jhrpJN3UpWXZEARtQ23vofmh51+AbitqlQhLN+R2MhC8uxEmq1Pdj4Bqgf+mO9tnzDKMLh9pLA0
	4Dx4y6xn3cOsolZ6zLKkF64y0tbBfcwblr0gZg4ydkd7ciUB0VL+rw7xxoRUOkRWqmFuYmshhKMpN
	iM9wjJEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4a5-00FFVl-N8; Fri, 17 Feb 2023 17:31:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zb-00FFG3-Hy
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 17:31:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4Za-0004D1-C8; Fri, 17 Feb 2023 18:31:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZY-005dTg-GR; Fri, 17 Feb 2023 18:31:01 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZW-007iy2-2u; Fri, 17 Feb 2023 18:30:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:30:51 +0100
Message-Id: <20230217173057.1839835-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_093103_682374_4300E86B 
X-CRM114-Status: UNSURE (   8.81  )
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
Subject: [PATCH v1 14/20] ARM: dts: vf610-zii-cfu1: remove duplicate LED
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This was a left-over from 7bbcfc85aa5d ("ARM: dts: reference nodes to
extend by phandles instead"). It just does the same thing that's already
done in a safer manner below, so drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/vf610-zii-cfu1.dts | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/dts/vf610-zii-cfu1.dts b/arch/arm/dts/vf610-zii-cfu1.dts
index 922693061251..2038f66cdae3 100644
--- a/arch/arm/dts/vf610-zii-cfu1.dts
+++ b/arch/arm/dts/vf610-zii-cfu1.dts
@@ -18,12 +18,6 @@
 		switch-eeprom = &switch0;
 		fiber-eeprom0 = &fiber_eeprom0;
 	};
-
-	gpio-leds {
-		led-status {
-			linux,default-trigger = "heartbeat";
-		};
-	};
 };
 
 &{/gpio-leds/led-status} {
-- 
2.30.2



