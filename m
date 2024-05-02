Delivery-date: Thu, 02 May 2024 17:18:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2YCj-00FHWH-1J
	for lore@lore.pengutronix.de;
	Thu, 02 May 2024 17:18:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2YCi-00048b-QQ
	for lore@pengutronix.de; Thu, 02 May 2024 17:18:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QBKg7KXsmIWCEBykc+IhDrGkKOLBRVEp3XWOmNzWC84=; b=qNQYrRUZyYdTW27jK1VSSTAa8l
	es1D+wbmRyeIHSBtgyBlu5m6PkMC62uhKv/1VH/L/MNwExXD3p/gTqP9iSauhG77nedBeChLL7N8y
	Bs0BftbKwEuEZBmhHnpTfE1+zJ13Q/8v9ODxHXOmHaVDU3eToeiMPeOlNg+KshiirvdW6o2PCDKEy
	z58b1az6qvEovrkhHaEaRrrjXgSHHoQOdnXA8nm5kCNmCMZkJe1F/bgDlb5+5Z0Fw4HBmnNWub2ok
	4Fvkwb9fVKy3AAvcwm16+YbvEMKFhHQY1m5Tc83k0CThRX5kAKGMCmKmbi4dm6w/sD7LyE5xiboBU
	i2vBtsMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2YCH-0000000D5Ed-3lfr;
	Thu, 02 May 2024 15:18:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2YCB-0000000D5BK-1dLZ
	for barebox@lists.infradead.org;
	Thu, 02 May 2024 15:18:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2YC9-0003re-UG; Thu, 02 May 2024 17:18:01 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2YC9-00FXrF-HZ; Thu, 02 May 2024 17:18:01 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2YC9-00GdMI-1T;
	Thu, 02 May 2024 17:18:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 May 2024 17:17:56 +0200
Message-Id: <20240502151757.3964461-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240502151757.3964461-1-a.fatoum@pengutronix.de>
References: <20240502151757.3964461-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_081803_708552_17415022 
X-CRM114-Status: GOOD (  15.72  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] net: dsa: ksz9477: report 0 as value when returning error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Most register accesses via the ksz_read* functions don't expect that
they can fail and don't check for an error. This assumption is wrong if
there is a problem with the underlying transport, e.g. an I2C bus.

In that case, the functions would return an error code that mostly goes
unchecked and *val is set to an uninitialized value.

The original Linux driver suffers from a similar problem: There, *val is
only set on success, but if the read fails, there's a warning printed
to log, but still the uninitialized variable in the caller function will
be used instead.

This likely goes unnoticed, because GCC builds on Linux have
-Wno-maybe-uninitialized, but we have implicit -W-maybe-uninitialized in
barebox.

As we sync the code from Linux, one should probably fix this there
first, but let's improve the situation a bit by not reporting an
uninitialized value, but a deterministic zero.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/ksz_common.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ksz_common.h b/drivers/net/ksz_common.h
index 291488fe3485..44b5055ee397 100644
--- a/drivers/net/ksz_common.h
+++ b/drivers/net/ksz_common.h
@@ -20,7 +20,7 @@ struct ksz_switch {
 
 static inline int ksz_read8(struct ksz_switch *priv, u32 reg, u8 *val)
 {
-	unsigned int value;
+	unsigned int value = 0;
 	int ret = regmap_read(priv->regmap[0], reg, &value);
 
 	*val = value;
@@ -29,7 +29,7 @@ static inline int ksz_read8(struct ksz_switch *priv, u32 reg, u8 *val)
 
 static inline int ksz_read16(struct ksz_switch *priv, u32 reg, u16 *val)
 {
-	unsigned int value;
+	unsigned int value = 0;
 	int ret = regmap_read(priv->regmap[1], reg, &value);
 
 	*val = value;
@@ -38,7 +38,7 @@ static inline int ksz_read16(struct ksz_switch *priv, u32 reg, u16 *val)
 
 static inline int ksz_read32(struct ksz_switch *priv, u32 reg, u32 *val)
 {
-	unsigned int value;
+	unsigned int value = 0;
 	int ret = regmap_read(priv->regmap[2], reg, &value);
 
 	*val = value;
-- 
2.39.2



