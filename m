Delivery-date: Tue, 28 Oct 2025 15:33:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDkl8-00CiGg-2Q
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 15:33:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDkl8-0002zf-5b
	for lore@pengutronix.de; Tue, 28 Oct 2025 15:33:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dk4NEEz14GD3sO9gj9y3KWLQHSC0x3XZXoTHpdJwIws=; b=rU60LsOAcDnFL1gnOqnjQA7/FT
	pRo2/rSQD79PjMSESYNqnXVeeWCZJgVycgmzhphlR4mAqAPAgVGnTX7P/EqGfA1vnuYGLQnc0L7PZ
	StQBrd9bd1zAqL2W8Kccm+zMAeWWSPisSFk3Y0vkIMbwtAv8WkE6qFeW8F1EzH9fEA177FXMzdIhl
	tEFWfNOa5AkUriKvEaCHh6u++tAOmccIsfFYcF2WcACskJC/pLqmN/56opEyczPI+rXmBkOwjV3CI
	3ryt+H4cvf8LIyf9mB5wei53V9wEXS1AFVkTyVfizsB5+lezF40i2WXpfEVn0f8IJj+SneccjChWd
	8bwnDM+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDkke-0000000G61d-0V1p;
	Tue, 28 Oct 2025 14:32:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDkkb-0000000G60z-0zni
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 14:32:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDkkZ-0002rA-Ff; Tue, 28 Oct 2025 15:32:39 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDkkZ-005tGk-0x;
	Tue, 28 Oct 2025 15:32:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDkkZ-00000007TqP-0o9R;
	Tue, 28 Oct 2025 15:32:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Holger Assmann <has@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 28 Oct 2025 15:32:35 +0100
Message-ID: <20251028143238.1782982-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251028143238.1782982-1-a.fatoum@pengutronix.de>
References: <20251028143238.1782982-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_073241_275170_6B25A125 
X-CRM114-Status: GOOD (  12.36  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX8M: romapi: skip zero_page_access() if MMU is disabled
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
---
This issue is IMO worth an entry in the migration guide, once the fix
makes it into master.
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



