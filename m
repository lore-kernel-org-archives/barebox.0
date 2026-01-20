Delivery-date: Tue, 20 Jan 2026 13:25:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viAnZ-003NsN-1Y
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 13:25:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viAnY-0005sE-Gu
	for lore@pengutronix.de; Tue, 20 Jan 2026 13:25:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dgwt8cF+BEDPlgPSvDdegB4InGGYUg+YRQEYYTssKOA=; b=K2jIoGRBZx+goZRK/Etscf8Jkk
	iyzxZ1qUgVDIUQcf+EZtulaXj1ads6/8FR49AQLnEqwLouHRbkRVXG8tNHfBXoXU/NoedtEKorOOf
	4CWFTo6lyScrWrdN9gqLyZt/FPyITCqSUpWSFlHLmjDaeAR1knSDkmwacaB4SuFLn/zswkXy37VYN
	vzQOA/iHvCb8Y3d/iAz/FmzU6h80Y7t61V66HSsgQYH0JjWlQ0wAlyNOHTHaE7xDPnRgPi/EQGakk
	vRlIszx/bqOKli6IIUl8ax2cuKVdBBL7nx7AE0joodRhryVZboi/gpLCrAY0JIfeTLUlVAvYUBwau
	bnCTHxfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAn7-00000003paj-00GQ;
	Tue, 20 Jan 2026 12:25:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAn4-00000003pZX-3plm
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 12:24:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Dgwt8cF+BEDPlgPSvDdegB4InGGYUg+YRQEYYTssKOA=; b=MuHluRAcHE6ev0h30erDLYvtTF
	NLy8pFKktQh1LDegyUVKIF79UxBqNmhJpnVZTOHAriJ4UgYdQNa7dnQs4HP+j6fpmoNyoGNf3oerc
	m25jmGjsiZxJxOZdUBUlbI3VMIr73Dik49FlyjQ/TF2ofd0kKF7USXgh/4SMp2zIpeum2iwPc4GK4
	bDlWmP8Aw2kewNEM7Vn1y5v7stdYWkGwLTB7OFlpqOEWOxve+6/mpDecL+n6gqi1eewcexjmcHhh3
	onpK8RqyYfWsgNvvcIdQWFJEI/hOvrMdnBNEXLPhzx7DbNKL5gzmO+TY1jrXehqzkk/wWyoqt0JtJ
	3fd0smdg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAn0-0000000E0xt-2rG1
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 12:24:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viAn0-0005eV-8G; Tue, 20 Jan 2026 13:24:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viAn0-001aAJ-2L;
	Tue, 20 Jan 2026 13:24:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viAn0-00000002dE4-2i39;
	Tue, 20 Jan 2026 13:24:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Jan 2026 13:24:46 +0100
Message-ID: <20260120122453.627239-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260120122453.627239-1-a.fatoum@pengutronix.de>
References: <20260120122453.627239-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_122454_930146_7EB9AEE5 
X-CRM114-Status: GOOD (  11.16  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] ARM: socfpga: shrink socfpga-xload configs in size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CI is straddling the size limit if 61436 bytes.
Dissable some options to reclaim 1K on the image size for now...

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/socfpga-xload_defconfig | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/socfpga-xload_defconfig b/arch/arm/configs/socfpga-xload_defconfig
index 00841b8530de..22bab8d6073c 100644
--- a/arch/arm/configs/socfpga-xload_defconfig
+++ b/arch/arm/configs/socfpga-xload_defconfig
@@ -1,4 +1,5 @@
 CONFIG_ARCH_SOCFPGA=y
+# CONFIG_CPU_V7VE is not set
 CONFIG_ARCH_SOCFPGA_XLOAD=y
 CONFIG_MACH_SOCFPGA_ALTERA_SOCDK=y
 CONFIG_MACH_SOCFPGA_EBV_SOCRATES=y
@@ -9,13 +10,15 @@ CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 # CONFIG_ARM_EXCEPTIONS is not set
-# CONFIG_MEMINFO is not set
 CONFIG_NAME="socfpga-xload_defconfig"
+# CONFIG_MEMINFO is not set
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_DUMMY=y
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_DEBUG_BUGVERBOSE is not set
+# CONFIG_FILETYPE_STRINGS is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 # CONFIG_SPI is not set
 CONFIG_MCI=y
-- 
2.47.3



