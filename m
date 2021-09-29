Delivery-date: Wed, 29 Sep 2021 14:08:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mVYO6-00082z-PC
	for lore@lore.pengutronix.de; Wed, 29 Sep 2021 14:08:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mVYO2-0007fK-PK
	for lore@pengutronix.de; Wed, 29 Sep 2021 14:08:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/AJkiI8FUw63t59C076rGTlWyQKhXp1I180yLXfjVSY=; b=mrZvakZZk9j7Ps
	N2x4jOWaKlUjdv0fMcP3ZOMGdIrqMKPwnWM1Q9ZJ19RGizXQQh8ymckeFQHXX+Mw8tuXXxc9U/62g
	MNJsG3ltuPnVltWiOWk1dY7A8z9oyUaRq+o74ZWQaf9Nrpug2rwuBRsy37nkmH0z5TJ6iZnwzYhzC
	sycJpcipL5IqdaVTq2in2oOOz4vK8jmCmTFTITFttr0M099vevHnviAb+qUjUvEdNuyVvigCoRN4o
	OYo+6wQv7Vbkn8L2LyjFmLrGuqtRtm9yCorfEQkLArZ82TpAn46hPvAQwkxIupU6lIDLkvZ2e3SKm
	C0iftEMWO3KJ+GlLoCCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVYME-00Ay3J-Ao; Wed, 29 Sep 2021 12:06:43 +0000
Received: from smtpout30.security-mail.net ([85.31.212.37]
 helo=fx306.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVYM1-00Ay0s-1Z
 for barebox@lists.infradead.org; Wed, 29 Sep 2021 12:06:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx306.security-mail.net (Postfix) with ESMTP id EEF3D399630
 for <barebox@lists.infradead.org>; Wed, 29 Sep 2021 14:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1632917179;
 bh=+N97F8Jzd7lPOBenuytZE4Zo71aPFn1p7nLTixZiZpo=;
 h=From:To:Cc:Subject:Date;
 b=EDvv/MLE5mtmKLSw7/NIVZknnHrkgyMyrF8E1dKv/vstUvLxXeLVMv1aG9EgEooiy
 qcR7BwDZBtVGOHRj/0iE2GCSPko5nHlg/fFBFKJMe/RRl/BqksoFLmdw8jBDizVzCS
 JCE9RkyEXL2prIyxvqcfBzU+6+XR+ItlBkJ5d8/Q=
Received: from fx306 (localhost [127.0.0.1])
 by fx306.security-mail.net (Postfix) with ESMTP id B6876399682
 for <barebox@lists.infradead.org>; Wed, 29 Sep 2021 14:06:18 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <d1cc.615456ba.acf0.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx306.security-mail.net (Postfix) with ESMTPS id 0B92A3995D9
 for <barebox@lists.infradead.org>; Wed, 29 Sep 2021 14:06:18 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id E5EF827E02CA;
 Wed, 29 Sep 2021 14:06:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id D002527E02D1;
 Wed, 29 Sep 2021 14:06:17 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu D002527E02D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1632917177;
 bh=MzzhTHhfF0W2/v88NjirXcKcRegs5tUWyGBlRxF0Iwg=;
 h=From:To:Date:Message-Id;
 b=FlPjeYpXwbT1Aczs/IAQURQ+V1e5KWhgiQWO0f4PzgeXDPmebzM0/kgcOyMW9jpD2
 LEHMdf+Sf/aN20KsX/kMfkPH9DQDox92YyBfiCgQdQVwq8thvgU1/Mb4K2NHMvspQY
 Pfx7VfUJO9Za3iijMBG3p/Q/heaisduR/kCmnKtQ=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 28rQQPQRTr_r; Wed, 29 Sep 2021 14:06:17 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id B7CB927E02CA;
 Wed, 29 Sep 2021 14:06:17 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 29 Sep 2021 14:05:58 +0200
Message-Id: <20210929120558.1424-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210929_050629_333252_B1CDBEF4 
X-CRM114-Status: UNSURE (   9.38  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] pbl/Kconfig: fix typo "inflluences" -> "influences"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 pbl/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/pbl/Kconfig b/pbl/Kconfig
index 451a278c40..5fc9971084 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -33,7 +33,7 @@ config PBL_RELOCATABLE
 	  Generate a pbl binary which can relocate itself during startup to run
 	  on different addresses. This is useful if your memory layout is not
 	  known during compile time.
-	  This option only inflluences the PBL image. See RELOCATABLE to also make
+	  This option only influences the PBL image. See RELOCATABLE to also make
 	  the real image relocatable.
 
 config PBL_VERIFY_PIGGY
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

