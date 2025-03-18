Delivery-date: Tue, 18 Mar 2025 09:25:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuSGX-000xoq-2F
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 09:25:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuSGW-0004ep-IP
	for lore@pengutronix.de; Tue, 18 Mar 2025 09:25:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o+BdEewZKJAYcCYiiPMp+YepgLvglZV13cTpVF65xfc=; b=HwedifD4EwCkJppVKwjfbP5QRm
	iWC80BW8DQyFJwg6F4+Fwk12k1jMhDYKVVoaVpa+H6JOTqjZN3Mxt1sGxuzxPtOFmfVbRXNFwIk6w
	rEKh2OumEjeoFn3ntwcdf+6tDql5bxpGXSaT1DYJlvfQUqKCr3Owv4a/ka3T7N4+l2431mwXXotTc
	4PT7N3DatfPXY2WqbSAwpuzEUowPjX07aq/60EB8r1kWojXWKQtDUs24g6EhMPq5463PTnhvlZy0k
	RPklteqQz8SvPBv77wg9vWCeO2NzXJWvl7X440CV4DSLZ9e+H7cfLz90yHEv0AU7Dr0xbYANawDMh
	zNk2VW5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuSG9-000000059yW-0LiC;
	Tue, 18 Mar 2025 08:25:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuSG6-000000059x0-0M0s
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 08:25:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuSG4-0004Q9-Q3; Tue, 18 Mar 2025 09:25:08 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuSG4-000OTa-0V;
	Tue, 18 Mar 2025 09:25:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuSG4-001lFs-1Z;
	Tue, 18 Mar 2025 09:25:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Mar 2025 09:25:07 +0100
Message-Id: <20250318082507.419785-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250318082507.419785-1-a.fatoum@pengutronix.de>
References: <20250318082507.419785-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_012510_118066_E1C13486 
X-CRM114-Status: GOOD (  10.69  )
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
Subject: [PATCH 4/4] ARM: qemu: mask data aborts during AMBA identification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The barebox FIT image target is meant as an easy way to load barebox
second stage from other bootloaders.

Doing so with U-Boot 2025.01 compiled for qemu_arm64_defconfig
currently leads to a crash when accessing the PL061 GPIO controller
device for identification.

It seems that U-Boot (or TF-A, which wasn't included in my setup)
should have done some initial setup to allow access to the PL061.

barebox doesn't even have a driver for the peripheral and loading
barebox directly with -kernel works. In both cases, barebox runs in EL1.

Let's thus workaround the issue on the barebox side by using the new
CONFIG_ARM_AMBA_DABT_MASK option to turn the crash into an error
message.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index f5f9f3828782..7d46dcfb63dc 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -282,6 +282,7 @@ config BOARD_ARM_VIRT
 	select BOARD_GENERIC_DT
 	select BOARD_QEMU_VIRT
 	select OF_OVERLAY
+	select ARM_AMBA_DABT_MASK
 
 config BOARD_ARM_GENERIC_DT
 	def_bool BOARD_GENERIC_DT
-- 
2.39.5



