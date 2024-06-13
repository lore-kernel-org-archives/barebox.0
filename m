Delivery-date: Thu, 13 Jun 2024 15:54:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkuH-005Ok3-2v
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 15:54:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkuH-00021G-Al
	for lore@pengutronix.de; Thu, 13 Jun 2024 15:54:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HDM52MLBvt1GjOdkEfnxyuo7ZdYa/On0TejqJhGu37A=; b=GTrUGI8DA3JKVv8SlNmVHeQG3/
	50uD5/lheYpBoDe0OiW8kCistpYdRyCY0PlcyhLq2HcuuczqybcUiM7ETJA0B9eKjXL6F4hRVPUkD
	ByzGsJ4n9AQk0i5gft+KezpLeX5Lvr+GlSEaTOKg9cjSIX9VvOq8XsC1VZh91RBi5dv2NssHYfbPJ
	fkjBIWBN+O3Jvxvd6PToMpZfbx5p6M9XsKGIUpegv+lWNVYoMA5vHe6yrDdnMRzRf+AqrgBMLfz/8
	rozZXt0wjWnSVvDal6+uqEv4aaZYmdl8ax/FHC/PYTEeyJXY2eiT4Av4ueUYqeXXXkCoTpRwV88wk
	5gSfzXGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHktk-0000000GqHq-3wWD;
	Thu, 13 Jun 2024 13:53:52 +0000
Received: from xvm-107-148.dc0.ghst.net ([46.226.107.148] helo=zdiv.net)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkth-0000000GqFt-0ksG
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 13:53:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=23;
	t=1718286825;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=HDM52MLBvt1GjOdkEfnxyuo7ZdYa/On0TejqJhGu37A=;
	b=enzfOEC507iXaZK3MM0Ji131vzFo265XUUZyBCDJ5QLeFrkOomgAQU0VnAhT4ZAZlm5T0Q
	UJHFnrgXPkENpKqZeIz0vBDWfCCt23cazy1aYnbTfkOq5PEWQwDI4zJGZz+fOu3LKIKaNq
	5QJwn+f6Op2SI+9oyOwDEyclA7hgeOwb1fE/HApMlBrDSrnCVSI+lOM7ZA876zYy/AEypw
	PlQ/RcPA2LY6+2isJELMUWNJVxiWiNIuNrSxagPxLZ/Ck1m6FQR3Ck4h8eZwhm4qKP6hwa
	jZY60JHNMir6B0v/w5h/qpl3RKbH1R3as5Pt3/NzIm6pLo5C49TPgtO46HNArg==
Received: from mini.my.domain (91-160-75-97.subs.proxad.net [91.160.75.97])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 9991e84b (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 13 Jun 2024 13:53:45 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 13 Jun 2024 15:53:38 +0200
Message-ID: <20240613135338.21202-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_065349_499672_54871FB9 
X-CRM114-Status: UNSURE (   9.10  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mci: core: clarify comment on MMC version detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The MMC version is read from the reserved bits 125:122 in the CSD register,
theses bits are specified as SPEC_VERS by JEDEC in the eMMC standard JESD84.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/mci/mci-core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index de1efe3bb9..5a8f81ecb8 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -936,15 +936,15 @@ static void mci_set_bus_width(struct mci *mci, enum mci_bus_width width)
 /**
  * Extract card's version from its CSD
  * @param mci MCI instance
- * @return 0 on success
  */
 static void mci_detect_version_from_csd(struct mci *mci)
 {
 	int version;
 
 	if (mci->version == MMC_VERSION_UNKNOWN) {
-		/* the version is coded in the bits 127:126 (left aligned) */
-		version = (mci->csd[0] >> 26) & 0xf;	/* FIXME why other width? */
+		/* this should only apply to MMC card, JESD84-B51 defines
+		 * bits 125:122 as SPEC_VER (reserved bits in CSD) */
+		version = (mci->csd[0] >> 26) & 0xf;
 
 		switch (version) {
 		case 0:
-- 
2.45.0



