Delivery-date: Thu, 25 May 2023 20:14:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2FUF-00E5zu-Dc
	for lore@lore.pengutronix.de; Thu, 25 May 2023 20:14:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2FUD-0002j7-20
	for lore@pengutronix.de; Thu, 25 May 2023 20:14:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=39wHLihqxc+8T8guRxMFvZ49xF7dlE4m3Li/q07woG8=; b=44mN+/8/bj3juJblqD+yZhO8hz
	Ggvt/oFITDVBCI0vBjdOnSwz+6xS+PvTLbk9fBPh20jDHayigeHPHo/eKVie/MwfoW4hXzJ7OOgSm
	iGyNGx3GyOWCMx+bmJ8sZGsLSZCkNTG6kpmt56wcjoDmSDybDtCdYaVObDZXe2NAnIorG6tgLXJse
	2gO8qOi4J/f9mIFZorJzCgg/6wEB8ChufbUSSYz8rwHMmyu3lhP+eVB2+VtKmmy4ZiM7Wl712hLA8
	94IZT0MBB9YSb56QYnHtF1z62tn3W2z/Tow1S7JE95kdHcvBzFhKku4Ic3vNCMCRh3cDBfWnFDymz
	DtnqNmSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2FT5-00HLtM-1s;
	Thu, 25 May 2023 18:13:43 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2FT0-00HLqV-0Y
	for barebox@lists.infradead.org;
	Thu, 25 May 2023 18:13:40 +0000
X-GND-Sasl: ahmad@a3f.at
X-GND-Sasl: ahmad@a3f.at
Received: by mail.gandi.net (Postfix) with ESMTPSA id 341A01BF205;
	Thu, 25 May 2023 18:13:32 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 25 May 2023 20:13:18 +0200
Message-Id: <20230525181320.2277320-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.4
In-Reply-To: <20230525181320.2277320-1-ahmad@a3f.at>
References: <20230525181320.2277320-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_111338_355631_5B1E591F 
X-CRM114-Status: UNSURE (   8.73  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 2/4] ARM: rockchip: pine64-quartz64: add sdram-init.bin to .gitignore
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Other boards already have sdram-init.bin in their .gitignore, so have
quartz64 follow suit.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/boards/pine64-quartz64/.gitignore | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 arch/arm/boards/pine64-quartz64/.gitignore

diff --git a/arch/arm/boards/pine64-quartz64/.gitignore b/arch/arm/boards/pine64-quartz64/.gitignore
new file mode 100644
index 000000000000..f458f794b54c
--- /dev/null
+++ b/arch/arm/boards/pine64-quartz64/.gitignore
@@ -0,0 +1 @@
+sdram-init.bin
-- 
2.38.4



