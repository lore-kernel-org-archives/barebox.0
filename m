Delivery-date: Wed, 13 May 2026 11:17:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN5iL-001Cml-0d
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 11:17:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN5iG-0006C9-UR
	for lore@pengutronix.de; Wed, 13 May 2026 11:17:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HgS8Ieoxivlls6HQIqoUP1JEAhHqZ0wOfYVwYOwAQUs=; b=aRaMAVTlfbgdlmW8rkTnTHL5bP
	klv7BK+ffW3F/R9jHKJSLQ4r7TNHK1IRG3siYgHOmXizQv0l0QwZWHnP+Gvb7ezBxY/fCDg3D2GeA
	mSeFhk2Y8KBtbSdiT24ZWG4szDtVE4/H8b34F948Ii125VBqijxbQ5TUL336w0tZ9nG8aslkhsrMS
	acn9PkZAXz13xClNOxM93ZbX34RU6JHdj6bcaTyHyu2u+UMQOvK3d9Q8cMBIzdz5nBb67SsLfeJHe
	fel86+/dSz3lLEzRhq6yqmuIRdm02tP4utt6pjHKbtH0GcAT+z/Yzx0x/l3SHw3afGmAhtUCFF81C
	8Vzzm2Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN5go-00000001sYb-0G8w;
	Wed, 13 May 2026 09:15:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN5gm-00000001sXA-2BvC
	for barebox@bombadil.infradead.org;
	Wed, 13 May 2026 09:15:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=HgS8Ieoxivlls6HQIqoUP1JEAhHqZ0wOfYVwYOwAQUs=; b=M141k72l5pj3krpWWSLTVe60Cm
	cypD2sYytM2t716dGGewtMtfDqWQWE1dggCSBBfxZCyAGHJPXrxbX9pRRd2fIFmvv+bB8+B64Rnk7
	W95+oaUd7kXUsRcGCxY9Ra0qegCq9IsFtBOZLgnheF32/4E2sLglqDLBda7mL/kUY55XYCgAw2B7T
	7kC6SyxGl6+nInE+YJPNJ3MxuM1zDySV4Navw1AZptKb+FlEbcZ4OQB2CBmmNKmvMQWqlC/TLpEmf
	HJDtHalmtaGrnXZLE7mNHYKoZ19vNv26McOcKpBPIflaywmQpDdIlTHF62oF6KeFXkZMACZAuzF6T
	nkzM+RTg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN5gg-0000000GxVZ-1qCr
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 09:15:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wN5gd-0005ee-23; Wed, 13 May 2026 11:15:27 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wN5gc-000ZmL-2l;
	Wed, 13 May 2026 11:15:26 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wN5gc-0000000EPPx-3Apb;
	Wed, 13 May 2026 11:15:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: str@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 May 2026 11:14:52 +0200
Message-ID: <20260513091516.3434125-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_101531_435318_33001039 
X-CRM114-Status: GOOD (  11.43  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: i.MX8: esdctl: fix breakage for multi-SoC i.MX8M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Only the i.MX8MP supports ECC out of the i.MX8M* family, so checking
DDRC_ECCCFG0 on the other SoCs is incorrect.

Guard the check behind a cpu_is_mx8mp(), which expands to 0 if
CONFIG_ARCH_IMX8MP is not defined and to
imx_cpu_type == IMX_CPU_IMX8MP otherwise.

Fixes: 0651254b9450 ("arm: mach-imx: esdctl.c: Add support for imx8mp inline ECC")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 605d5efe9bde..788459076aa2 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -14,6 +14,7 @@
 #include <linux/bitfield.h>
 #include <asm/barebox-arm.h>
 #include <asm/memory.h>
+#include <mach/imx/generic.h>
 #include <mach/imx/esdctl.h>
 #include <mach/imx/esdctl-v4.h>
 #include <mach/imx/imx6-mmdc.h>
@@ -1151,7 +1152,11 @@ resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth)
 {
 	resource_size_t size;
 
-	if (imx_esdctl_ecc_enabled(IOMEM(MX8M_DDRC_CTL_BASE_ADDR)))
+	/* NOTE: This expects that imx_set_cpu_type() has been called beforehand,
+	 * which the common entry points in atf.c all do. If this didn't happen,
+	 * we assume ECC to not be available, which is a safe bet.
+	 */
+	if (cpu_is_mx8mp() && imx_esdctl_ecc_enabled(IOMEM(MX8M_DDRC_CTL_BASE_ADDR)))
 		size = imx8m_ddrc_ecc_sdram_size(NULL, NULL, buswidth);
 	else
 		size = imx8m_ddrc_sdram_size(buswidth);
-- 
2.47.3



