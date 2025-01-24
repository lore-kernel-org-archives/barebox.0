Delivery-date: Fri, 24 Jan 2025 13:59:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tbJHR-003riu-2R
	for lore@lore.pengutronix.de;
	Fri, 24 Jan 2025 13:59:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tbJHR-0008JX-T7
	for lore@pengutronix.de; Fri, 24 Jan 2025 13:59:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=26cVbWNBo1YA1UK6im4cRO1fC6aXqLnxXyd7r2jAy3c=; b=cTDE20M4R25b4ab0ULtWTB0BYJ
	qtD4Xk5vgq7DTdFLkyb7Dozr2aAevfDBJrBiDvwNqDAoZnC9BzByoVPaQZfQ0mecvs5W6a2jEOH/m
	hOaV1vq7DjlLW/WolCUIxLVpMYuQ8ChvlzafTunNTu05HVFxzGgOBC/xYSBFHGB1+GB0VpMY/IUoV
	Yb4LtRyvr4Vv3BjWk/Op9HhuCB5cjBqWMHxZ2ZUpQQnd6gj1l1Jhee6i96F62NtAoCss3FZZwwRq7
	dIJ/VLmds2a2EKDHRo9ePG/Noy3sOvbGQC5ggSPuzxFTqwMWAeL0tHOejOcqI9lKB8ltc5jXrW5Xm
	wOqTrqRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbJGi-0000000EhJB-2dbe;
	Fri, 24 Jan 2025 12:58:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbJGf-0000000EhI1-3331
	for barebox@lists.infradead.org;
	Fri, 24 Jan 2025 12:58:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tbJGd-00084x-3Q; Fri, 24 Jan 2025 13:58:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tbJGc-001d6Z-2a;
	Fri, 24 Jan 2025 13:58:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tbJGc-00G8MR-2E;
	Fri, 24 Jan 2025 13:58:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jonas Rebmann <j.rebmann@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 24 Jan 2025 13:58:33 +0100
Message-Id: <20250124125833.3843152-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_045838_126112_11E4138E 
X-CRM114-Status: GOOD (  10.39  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] partitions: efi: update warning message after addition of parted command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox also has a parted command now that can be used to rewrite the
GPT. A warning message we have mentions GNU Parted explicitly though.

Adapt it so it just says parted, so it can mean either command.

Reported-by: Jonas Rebmann <j.rebmann@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions/efi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 43e292d71da8..6caa3919832c 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -375,7 +375,7 @@ compare_gpts(struct device *dev, gpt_header *pgpt, gpt_header *agpt,
 	}
 
 	if (error_found)
-		dev_warn(dev, "GPT: Use GNU Parted to correct GPT errors.\n");
+		dev_warn(dev, "GPT: Use parted to correct GPT errors.\n");
 	return;
 }
 
-- 
2.39.5



