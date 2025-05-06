Delivery-date: Tue, 06 May 2025 18:59:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCLdW-002r3v-2s
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 18:59:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCLdW-0004Uc-Bd
	for lore@pengutronix.de; Tue, 06 May 2025 18:59:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KFIKCc3PwNAaXo4kOffwxIZnZqsV62blELk8Vb96SV8=; b=A6MpZ2QOydUli5dMnZ6xFUUqAx
	CiVGynig22jSMNWGxyjiD5rYLWOLC570OepKk8Ah2dDMWhdWK20YzJuGCvWkAG/DoK6Zl2KX+LUoU
	ufp5mGJ/HFSrCQyDD4ASg3MIx8z2WDozLgGMbtpH5iU02f3081BSb/t+fRMQKvkDyt4FPY2kh5oDA
	6GR5374mkCxL+mD/na9AwTilieU023ah1nD4yzi7A+lbjR8gFLLtcCppH25LAKDLAHXiKQpAs/ekp
	CaIGY3mI/7kWC5ePV6pmJCvjNXhfDZHF/06ogQwss3g5+vnxD/O92ZrIDXtF+m2Pi3j5B1ONiQ1DH
	zYzu6ANw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCLcs-0000000Cm7y-0Fit;
	Tue, 06 May 2025 16:58:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCIH4-0000000C5ky-0CSp
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 13:23:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCIGz-0006WU-Km; Tue, 06 May 2025 15:23:49 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCIGz-001Oys-1T;
	Tue, 06 May 2025 15:23:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCIGz-0055JL-2g;
	Tue, 06 May 2025 15:23:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 15:23:48 +0200
Message-Id: <20250506132348.1212042-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_062354_084721_B036F460 
X-CRM114-Status: UNSURE (   9.28  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: reword CONFIG_PBL_OPTEE help text
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The help text wasn't updated after the option was enabled for ARM64,
so adapt it accordingly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 31360892aeef..9bb56b722435 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1225,7 +1225,11 @@ config PBL_OPTEE
 	select HAVE_OPTEE
 	help
 	  Allows starting OP-TEE during lowlevel initialization of the PBL.
-	  Requires explicit support in the board's lowlevel file.
+	  Requires explicit support in the board's lowlevel file (for ARM32)
+	  or the generic SoC support (for ARM64).
+
+	  The trampoline for jumping back from OP-TEE to barebox does currently
+	  not handle THUMB2, so barebox must be built either for A32 or A64.
 
 endmenu
 
-- 
2.39.5



