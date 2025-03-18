Delivery-date: Tue, 18 Mar 2025 15:47:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYE6-0014hP-0D
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 15:47:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYE4-0007uV-VC
	for lore@pengutronix.de; Tue, 18 Mar 2025 15:47:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FgAIqqZnLAvKXTeq2aUOTclUt3bU6npniXhDXTj60uQ=; b=HtngGYZtQaHBfNm2hAOtEICoQ7
	J5DBx9kVFF/cP4UpOoialP45w2GlhbtDHEqb02nwMfThZ8dhkcjVkRc3i2esf7r1UgxlDIt4caF3L
	dUhSq/fAVvIBn3Bx0nqMVzyKIsC9UkNacPpoTjJu6Cx/t684Ee1x/CEKrsS7KjlTVwRLoIeAhZaWa
	a5woZ2djrJQTNhFRS2VO+YKYC6FWmMPijm2JiMy/Y5bEkfiYgOWI+w68uQ712MvAAFWvl2hbx+LS3
	0KViiEKmhKSt9MlsoRwDerMljHV/PvP9dCs9n0a8QFBAyMNnOPdFNc1vAbUaANLpdugMaHSjp+pfK
	slSRnAWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYDP-00000006E2G-44gA;
	Tue, 18 Mar 2025 14:46:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuY8X-00000006DKZ-1JXy
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 14:41:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8V-0006nL-FK; Tue, 18 Mar 2025 15:41:43 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8U-000Rai-2B;
	Tue, 18 Mar 2025 15:41:43 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8U-00F87i-3D;
	Tue, 18 Mar 2025 15:41:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Mar 2025 15:41:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250318-filetype-size-reduction-v1-7-4f463ffae7d0@pengutronix.de>
References: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
In-Reply-To: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742308902; l=750;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=f/ydt1weBjaKeMZ6X73J5Ypm0+bfxHTwFjXbcoXq/qo=;
 b=tKQg4eKJ5PDvoekovOBXzsyezkTV4niFn6dIxnvhVOlSL8bzmI1dgKMO6eFFuXsOTaV5VzueH
 iScJVCc0svgCK1OlUNHQz3Np/ZDhJZ0XrD4Io+OsKRCNf1TNi4fG158
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_074145_378534_59CD11C0 
X-CRM114-Status: UNSURE (   9.14  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] ARM: am335x_mlo_defconfig: disable file type strings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The am335x_mlo_defconfig is very size constrained. Remove support for
printing file types as strings to reduce the binary size a bit.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/am335x_mlo_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
index 91d0eb4a8d..4a9ce6cfb7 100644
--- a/arch/arm/configs/am335x_mlo_defconfig
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -19,6 +19,7 @@ CONFIG_SHELL_NONE=y
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_OFDEVICE=y
+# CONFIG_FILETYPE_STRING is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SPI_OMAP3=y
 CONFIG_MTD=y

-- 
2.39.5



