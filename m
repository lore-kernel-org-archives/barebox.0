Delivery-date: Mon, 22 Nov 2021 09:49:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp50o-0003LR-O4
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:49:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp50n-0008Pa-8G
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:49:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQ5w5gNc8dAFe769QTCirr264xxWz+esqop6Z8ozUgg=; b=UOS9uz91ykaR5K
	Zrqwkb+8saXZjJUa6iKsO7EA9sLVDmB8IqaHSTpiWbEwBPhVLULOa9IzaAEW2yjMBIPz3yzqYUI2Z
	kF8AtyDn4iYDlKEvm2qY+hNsraeHLl4PPOHmsJrCiV2uTWq/7TwG4BSKumpU4K+x/sFDh926jKSzo
	/UJS6UEMtUanKiDi1XOpPBiJA2eIYo/dn5QCRB1VCypny5U3Yb4zB94yYmNvUIq0mQMB7uIGo/heo
	d0PD/4Z5L173R0jRW6o9NQEEjFPU19hOkgQCxX4YL6ib80NhbQDiugNBciNCApCVU0qmredDeh5ch
	LiB9FAm+peUh4seHBrmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp4zW-00FLAr-I8; Mon, 22 Nov 2021 08:47:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zD-00FKyu-Ln
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zA-0007wG-Em; Mon, 22 Nov 2021 09:47:36 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00Ateh-Ag; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:07 +0100
Message-Id: <20211122084732.2597109-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004739_761615_E9AF4714 
X-CRM114-Status: GOOD (  11.03  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/30] hw_random: stm32: propagate error codes from rng read
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

len is never decremented, so ret won't ever be returned, fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hw_random/stm32-rng.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/hw_random/stm32-rng.c b/drivers/hw_random/stm32-rng.c
index 440b53684f71..9b28f37ecd88 100644
--- a/drivers/hw_random/stm32-rng.c
+++ b/drivers/hw_random/stm32-rng.c
@@ -51,7 +51,7 @@ static int stm32_rng_read(struct hwrng *hwrng, void *data, size_t len, bool wait
 		ret = readl_poll_timeout(rng->base + RNG_SR, sr,
 					 sr & RNG_SR_DRDY, 10 * USEC_PER_MSEC);
 		if (ret)
-			goto out;
+			return ret;
 
 		if (sr & (RNG_SR_SEIS | RNG_SR_SECS)) {
 			int i;
@@ -61,8 +61,7 @@ static int stm32_rng_read(struct hwrng *hwrng, void *data, size_t len, bool wait
 				readl(rng->base + RNG_DR);
 			if (readl(rng->base + RNG_SR) & RNG_SR_SEIS) {
 				pr_warn("RNG Noise");
-				ret = -EIO;
-				goto out;
+				return -EIO;
 			}
 
 			/* start again */
@@ -84,8 +83,7 @@ static int stm32_rng_read(struct hwrng *hwrng, void *data, size_t len, bool wait
 		}
 	}
 
-out:
-	return len ?: ret;
+	return len;
 }
 
 static int stm32_rng_init(struct hwrng *hwrng)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

