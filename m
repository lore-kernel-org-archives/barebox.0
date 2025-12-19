Delivery-date: Fri, 19 Dec 2025 11:15:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXWW-00DAGJ-2d
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:15:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXWV-0002VR-Sv
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:15:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iK9Uz/7Di6FrV6wS95LgtPaior94muHDb05Q4RhBr1Q=; b=wmqe2oTYj62vYV
	aVT+NhRxKtSoQVM2CCFLOCk17tZmIA8cAB3pMcvWyZUqZQUWAeiXAZ2HqtnIwXvMbYbrypoErO46N
	Inkr7g/Q7zzPbW5xACkJiNKJVLmTkaRqS67PTwbyVykrwvxSb4y+kW/Vl3Yck6Qe4oqCvMwEBtCv+
	7KsMt6wztrwfdCy1Tig1+qdPHWJbCZX/twqu1KF4pfRjNVw5p1e6dl/cdYukljiEPPcu6ojeatZBq
	UuQ7vmLvKYiCjwCrj8vkllyhgWBy2QxRFF0gABBDW8g2c/EghXM6ow9/k2KTfvqNKxiu5h+JXxE5G
	E+U+NZ3HK07LW7tuZXLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXVn-0000000A327-24k0;
	Fri, 19 Dec 2025 10:15:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXVm-0000000A30i-1M68
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:15:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=iK9Uz/7Di6FrV6wS95LgtPaior94muHDb05Q4RhBr1Q=; b=YTbh28jpe50sCRKDwdWcZFqCIh
	W3v76SKAcR+DENBRaKI+0NQxto3S77WDdOc3B1OUNOI8nofi6qbPpRZpsjwE96ISiRxQq499s5Pt8
	VS+WtGeOnCoyobckQjySZvgkrY/JGTCDJFJYvjpiLWd6RVRLIsghXqQPxdvju7evf84Dc9b3+fPID
	4WL1M39w+ax0uRilSM5vBh/x2iGyIw0KExNFxYYCZEGASFKTO3zPVK58wVtsAudXKBu8k+yxn23uK
	Jex+0/jVbV6NcDGnbP+2oU1H7cOTb1qatrDhUaluBYGD2hlk8S/Kho2Tp0qPTCMALF6Iibm6W+n/m
	DWuLvCWg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWeG-0000000AYyZ-26YA
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:19:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-00021f-Uz; Fri, 19 Dec 2025 11:14:56 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-006RNC-2N;
	Fri, 19 Dec 2025 11:14:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-0000000320L-2fW7;
	Fri, 19 Dec 2025 11:14:56 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 Dec 2025 10:20:39 +0100
Message-ID: <20251219101453.2806980-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_091944_833618_9A5E9909 
X-CRM114-Status: GOOD (  10.47  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v2025.09.y 03/49] ARM: i.MX6: configure AIPS registers only if trusted
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Philipp Zabel <p.zabel@pengutronix.de>

Bail out of AIPS configuration if OP-TEE has cleared the MTW
("master trusted for write access") bit for the ARM core master
to lock down AIPS configuration.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Link: https://lore.barebox.org/20250925122603.3345276-1-p.zabel@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 4fbda28fa7ec6d6cc0e480b19cc52c955b5154dd)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index ed6cde801ec7..0cf2c17d6b90 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -31,8 +31,16 @@
 #define MX6_OCOTP_CFG0			0x410
 #define MX6_OCOTP_CFG1			0x420
 
+#define BM_MPR_MPROT1_MTW		(0x1 << 25)
+
 static void imx6_configure_aips(void __iomem *aips)
 {
+	u32 mpr = readl(aips);
+
+	/* Bail if CPU ist not trusted for write accesses. */
+	if (!(mpr & BM_MPR_MPROT1_MTW))
+		return;
+
 	/*
 	 * Set all MPROTx to be non-bufferable, trusted for R/W,
 	 * not forced to user-mode.
-- 
2.47.3



