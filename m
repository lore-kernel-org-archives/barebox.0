Delivery-date: Tue, 24 Feb 2026 12:45:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuqrV-005AJh-1v
	for lore@lore.pengutronix.de;
	Tue, 24 Feb 2026 12:45:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuqrV-0001uA-V0
	for lore@pengutronix.de; Tue, 24 Feb 2026 12:45:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eOqwJFLUGs56WRzypO54NhiayhJRzTZYoLzvnGpO3SQ=; b=EwBDdEVS9dSpTcxW9eLcH6XjyU
	ibyIbjTRKNAedm+wrm0zDl8XMvEIEiwFWxbadmf2Gh4MbcefK3dfjEe5Qe9uisfA+mk3QAuQnjmAh
	NeMXQsbmAs2WnoQCHpK6l0iLzJPjYbCH1ReoqDRt7Sf8/zjsS+qukYMwkudxZvx/gj+pBDT7HaFD0
	1H7HP+KsnK87f6SQjk7w/+R6/TnbQXG0a5ARep0Z9GfWoafj/T5pS/eKMeibefGolub2m+a5DbX+u
	47URlCFUbCcQURNLbfu7dKBrVwDcTdgwIWy+6zRSeXCkVK3x2BM/ZTPI+1rPyG6pF6jbi/38jauxy
	/zKcnHBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuqr6-000000020DW-10cV;
	Tue, 24 Feb 2026 11:45:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuqr3-000000020DA-3Ovv
	for barebox@lists.infradead.org;
	Tue, 24 Feb 2026 11:45:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vuqr2-0001hw-2c; Tue, 24 Feb 2026 12:45:28 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vuqr0-002OJF-1j;
	Tue, 24 Feb 2026 12:45:27 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vuqr1-0000000ARrm-3HO3;
	Tue, 24 Feb 2026 12:45:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 24 Feb 2026 12:45:24 +0100
Message-ID: <20260224114526.2490388-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_034529_867876_2F74DA7E 
X-CRM114-Status: UNSURE (   9.82  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! ARM: i.MX6: load optee in PBL before barebox proper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

firmware: hide FIRMWARE_IMX6_OPTEE for non-ARCH_IMX6

PBL_OPTEE can be enabled on a number of platforms, so tighten the
dependencies to hide the symbol when it's not relevant.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 firmware/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/firmware/Kconfig b/firmware/Kconfig
index 81ad6b705ba9..ed0e03ecf77c 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -51,7 +51,7 @@ config FIRMWARE_AGILEX5_ATF
 
 config FIRMWARE_IMX6_OPTEE
 	bool "install OP-TEE on i.MX6 boards"
-	depends on PBL_OPTEE
+	depends ARCH_IMX6 && on PBL_OPTEE
 	help
 	  This enables OP-TEE loading and starting on i.MX6. Place the OP-TEE binary
 	  in CONFIG_EXTRA_FIRMWARE_DIR/imx6-optee.bin. If this is enabled, then
-- 
2.47.3



