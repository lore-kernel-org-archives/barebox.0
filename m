Delivery-date: Fri, 19 Dec 2025 11:38:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsV-00DAf9-00
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:38:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsD-0006Fz-5H
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:38:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n25BiencQg2u+JUIr9jdbplBwQuTXJ354lZ/OMCE9tk=; b=a0yOTAFkoEbkaH3YjELcGH0vmc
	ign4hSOYf/j6B5CwRtlgEsg8+Q0PFtBz54gDjdggYBrjpdR2l9rvGlzLQSWyV+4eJYR9ntp6LOfEf
	uVuk91Yz3dMsE9gOPxFSAf5eTgQeR5LKYp62HWcvYx5HQ7McUmMmSo5W5ynpmdFjYJDL+hXjjVBjs
	SF9C5YSJUAYsEYS8OuYNtGvI6Gm9YWVuVPWoJ7bQ1Mio1l09d+ogFGj7lsBPb8KFVdctc8T50s6Te
	HriSdVIEL4lDqnPWbeit5gnveoj41/u8zT/qM4/6Ld96+182pjgIIzjP4z7DASTJKuoGIoL8iU4S0
	vBzKk9Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr6-0000000A6H8-3p4n;
	Fri, 19 Dec 2025 10:37:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqu-0000000A5ym-1HVI
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:36:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-0004hD-MS; Fri, 19 Dec 2025 11:36:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-006RW5-1P;
	Fri, 19 Dec 2025 11:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-0000000320L-10Tr;
	Fri, 19 Dec 2025 11:14:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Holger Assmann <has@pengutronix.de>
Date: Fri, 19 Dec 2025 10:20:52 +0100
Message-ID: <20251219101453.2806980-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_023652_379103_803D0676 
X-CRM114-Status: GOOD (  11.88  )
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
Subject: [PATCH v2025.09.y 16/49] ARM: i.MX8M: romapi: skip zero_page_access() if MMU is disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

imx8m_get_bootrom_log() anticipates three situations in which it can be
called:

  1) From PBL running in EL3
  2) From barebox proper running in EL2
  3) From barebox proper hacked to run in EL3 without TF-A

No board makes use of situation 3), but it's occasionally useful
in debugging. To handle that last case, commit b0d0ac502c49
("ARM: i.MX8M: bootrom: access OCRAM directly if running in EL3")
remaps the zero page as it would overlay the BootROM, which is located
at physical address 0.

This worked fine for a while, because zero page control was not
available in the PBL, but this changed with commit
99944ef03dc1 ("ARM: mmu: provide zero page control in PBL") leading to
buggy behavior for situation 1): zero_page_access() would now remap the
zero page, even though barebox never initialized the TTBR.

This was observed to crash TF-A (presumably, because when it unmasks
exceptions) on an i.MX8MP.

Fix by only calling zero_page_access/faulting when our newly dynamic
zero_page_remappable() returns true.

Fixes: 99944ef03dc1 ("ARM: mmu: provide zero page control in PBL")
Reported-by: Holger Assmann <has@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251028143238.1782982-2-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 3b47d3cc24a1fbece237aef93932bf2ec88058fc)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/romapi.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index a4143d372ae8..eaaadc661cc8 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -237,14 +237,19 @@ int imx93_romapi_load_image(void *adr)
 const u32 *imx8m_get_bootrom_log(void)
 {
 	if (current_el() == 3) {
+		bool remap_zero_page = zero_page_remappable();
 		ulong *rom_log_addr_offset = (void *)0x9e0;
 		ulong rom_log_addr;
 
 		OPTIMIZER_HIDE_VAR(rom_log_addr_offset);
 
-		zero_page_access();
+		if (remap_zero_page)
+			zero_page_access();
+
 		rom_log_addr = *rom_log_addr_offset;
-		zero_page_faulting();
+
+		if (remap_zero_page)
+			zero_page_faulting();
 
 		if (rom_log_addr < MX8M_OCRAM_BASE_ADDR ||
 		    rom_log_addr >= MX8M_OCRAM_BASE_ADDR + MX8M_OCRAM_MAX_SIZE ||
-- 
2.47.3



