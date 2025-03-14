Delivery-date: Fri, 14 Mar 2025 12:04:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt2q3-00DyPA-28
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 12:04:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt2q1-00031K-1M
	for lore@pengutronix.de; Fri, 14 Mar 2025 12:04:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8eS/LC2tPwQRd6vgwY3fBaXwDCd7e9NNo7euIfPbniA=; b=Ldi9AkNXzgbt2NfClZ438UnBcI
	ymHAonrXs//Z25VJGDYw8PbH1stOcghUYIGOJ/1GqRFpl+Nl6PRynvLCfFPi2oJPTrl4Cd9hFjTB2
	sseSo6I7nVrWSZWstJpkL7f2qwQXpyJRghLXjyh2Xw96PrukPkBXqHCqCYwvSMF3k+L1G2I6YEzf6
	azBUf6UGVjVduA9tIwH4EuWYEKSDe16hcVrfnZzsw4g+8A7Wi12xcWOAJlmjoBcNDlXqc+HshvT6u
	MDqXWPC9oOi7CcxQOOYmhJAgivtOpoDgwadaI9sm4YlhP3PMCykJz2UwWW+EDg1mMYPQC/sVgqdeO
	AKNWtqjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2pf-0000000DwC4-0Dvj;
	Fri, 14 Mar 2025 11:04:03 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2XS-0000000DtQY-3Ul5
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 10:45:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741949113;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8eS/LC2tPwQRd6vgwY3fBaXwDCd7e9NNo7euIfPbniA=;
	b=KYWEpwmVqBD0ZCqGYQ9QN9TWlmbnE8UnnVisdx1mRPma3jErWUAbcJxUOulPvR2oOatmlZ
	3581wc24RG9lhwpvNlEr+tRRe0Gov50Jr0rdL8U4m77CynBelYt8vqP09qOP5kDhUdtGSu
	5+C+VYDokFkzC929jy/8efJaSKUX3lvcK1m1xB7OJHhsDjfMEkiFhxAxXi1jIlcbLp+IRj
	gIYSFx2tREjf0kiL4U4rzP3IhALs5p/vfF9yrENqhvb20Lga7sp7/IyIsc18sp2oqfhIBU
	96kb3zYQHLCV1nNwM3MOVHNVXj9qs3eyxhp5rHUAZVlthBHhG7yDtRzMD5LPlw==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id ca5ba53c (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 11:45:13 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 11:45:01 +0100
Message-ID: <20250314104502.14851-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_034515_167174_C8C77FAD 
X-CRM114-Status: UNSURE (   8.52  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] eeprom: at25: replace strncpy with strlcpy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

strncpy will not nul terminate the dst string in case the src is longer
than the the dst size, strlcpy will truncate and nul terminate the string.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/eeprom/at25.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index ca1df82122..43e72677c9 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -243,7 +243,7 @@ static int at25_np_to_chip(struct device *dev,
 		return -ENODEV;
 
 	memset(chip, 0, sizeof(*chip));
-	strncpy(chip->name, np->name, sizeof(chip->name));
+	strlcpy(chip->name, np->name, sizeof(chip->name));
 
 	if (of_property_read_u32(np, "size", &val) == 0 ||
 	    of_property_read_u32(np, "at25,byte-len", &val) == 0) {
-- 
2.48.1



