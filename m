Delivery-date: Wed, 11 Mar 2026 13:02:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0IGc-00ARG6-0c
	for lore@lore.pengutronix.de;
	Wed, 11 Mar 2026 13:02:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0IGc-0007GS-Hh
	for lore@pengutronix.de; Wed, 11 Mar 2026 13:02:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WxQriYuMPhZJZ/KUxAskqKZD40YeZ6MDZOfqXd4lYiM=; b=FVxp2SW1U2vmIxNRZ84y5Kpu+N
	41Vpo/mMO90Y9v2uAJ0y3OeC8+PtGSTDiMDi/nvmzldInWJrxu6mxIym9z94vDsfXuqH+XGR4Z2+e
	8emuh5ej7+S0i3oWq+yMavrXFygIDrAqYxYbuZRpu8HlV4zjl371kSrqH1z9RJgHrxZM8p5YYhgba
	BW/ZvE4hDfOMyF2UHrg9yYOLlTLS4dPesfjjUaWoW0b6Wby6y1WTLUYaxxnLrwwTAXtIfUW6HYyfT
	sNgAXQDWutnun1xJcXzly37sscAALOSKCeQvGtPNoZcJZjl4oz6NDcMK5V3/eNRKNcfsBXHA2jaOU
	kmCQyzaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0IG0-0000000BX5y-3n9C;
	Wed, 11 Mar 2026 12:01:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0IFy-0000000BX4k-22B0
	for barebox@lists.infradead.org;
	Wed, 11 Mar 2026 12:01:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0IFu-00076n-TH; Wed, 11 Mar 2026 13:01:38 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0IFt-004qt1-1B;
	Wed, 11 Mar 2026 13:01:38 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0IFu-00000001gGs-2Z79;
	Wed, 11 Mar 2026 13:01:38 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Mar 2026 13:01:34 +0100
Message-ID: <20260311120137.400783-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_050142_523511_1F19935C 
X-CRM114-Status: UNSURE (   7.20  )
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
Subject: [PATCH master] security: hide PBL_OPTEE_DTB_MAX_SIZE behind PBL_OPTEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's no point in bothering users about this option if OP-TEE loading
from PBL isn't even enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 security/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/security/Kconfig b/security/Kconfig
index c90f2bbacf26..b14803348b68 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -191,6 +191,7 @@ config PBL_OPTEE_DTB_MAX_SIZE
 	hex
 	default 0x0
 	prompt "OP-TEE FDT Size"
+	depends on PBL_OPTEE
 	help
 	  The size of the DTB which is passed by the PBL to OP-TEE. This option
 	  can be left unchanged if OP-TEE DTB support isn't required. If OP-TEE
-- 
2.47.3



