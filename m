Delivery-date: Fri, 21 Apr 2023 13:43:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pppAu-00BU6L-M9
	for lore@lore.pengutronix.de; Fri, 21 Apr 2023 13:43:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pppAu-0004qh-MV
	for lore@pengutronix.de; Fri, 21 Apr 2023 13:43:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LtOlMXNQ8yEj7mlq5wvIES7Yp0TWYjtxBpoYAfUK9WE=; b=UOYlTuHKtfQC/Jy/X5pnX/OZZh
	XT/S3tMJdi5Lhq9zOxHEdIrlRK09XmXBQIBX55Shpm3NRKIbVIQPLB42VcdC/rlgwDrghhzzDC8Xx
	watCrGJCWKqzKSBLN3lbLpuuijr6+ppnUGkZYzfkrnRnd5Bjuvotk4odeoqYJlznnoYQxmhmbEdOH
	7H5oM8xysQJNGOTXYIkGVvpTJ5A2l60fL7tbJVVej6aj1E7oE0H29WU7CA++Lk6hxe/tCJZPQYfkz
	KCv/CNP7K7GU3hvtI04M2/W4XMvXcvB0Rjm4K2HHuO7csm4xUeBn6QRmzznmhD5xP7DMdrDefLVw1
	hu3Psnjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppp9r-00Akrc-1k;
	Fri, 21 Apr 2023 11:42:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppp9p-00Akqv-0s
	for barebox@bombadil.infradead.org;
	Fri, 21 Apr 2023 11:42:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=LtOlMXNQ8yEj7mlq5wvIES7Yp0TWYjtxBpoYAfUK9WE=; b=UelVBgYzqpsqpBJ1Gz/LKSYnsK
	0GVzBtXW+jlNGaifyM++n1BYc/hnb/Wbg6dZeJwIkBMu/m4LVJgbmZKC3kIRMX+N1R1p9sJtcIWWQ
	WE2mcwlMx0+W5f4gYRvRF03rJTtGGz/OdABrj8BghEoiE9bijNBaK3rr7HHpie9rhYhnLLJYd1vCh
	C1jAL6uF15dM9g978oTROIF3qUWaB9ZixY4hynAbIApDd0SNew/4LLG2F0/SgWGMu1brdgEHh8Ceo
	qr9uUqs4k928/TTbaV7Od1mDh0ZOm8HSW/KUe1kub/nHjFhK9C/oTSTba/eJ2BO2trh8DRpGLR6uk
	Dk6jxqHg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppoD3-005GFg-0D
	for barebox@lists.infradead.org;
	Fri, 21 Apr 2023 10:41:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ppoD1-0005oV-Ig; Fri, 21 Apr 2023 12:41:43 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ppoD0-00CmDF-Tn; Fri, 21 Apr 2023 12:41:42 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ppoD0-00C5EE-6z; Fri, 21 Apr 2023 12:41:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 21 Apr 2023 12:41:40 +0200
Message-Id: <20230421104140.2879999-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_114145_302747_2BFA55C0 
X-CRM114-Status: UNSURE (   7.42  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: configs: multi_v7_defconfig: enable CONFIG_USB_ONBOARD_HUB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is needed for at least the STM32MP1 discovery and evaluation kits,
which use the onboard USB hub binding to model the 3v3 voltage regulator
supplying the on-board USB hub.

Suggested-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index d83e503671d9..f8eca18ff30c 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -254,6 +254,7 @@ CONFIG_USB_DWC2_GADGET=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_ULPI=y
 CONFIG_USB_STORAGE=y
+CONFIG_USB_ONBOARD_HUB=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
-- 
2.39.2



