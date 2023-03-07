Delivery-date: Tue, 07 Mar 2023 11:16:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZUMg-00CChj-1U
	for lore@lore.pengutronix.de; Tue, 07 Mar 2023 11:16:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZUMf-0007yW-Of
	for lore@pengutronix.de; Tue, 07 Mar 2023 11:16:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pxkXb5WrgX252niQXkyPrGa6ynBN8QK/TpQtApAc1co=; b=SnL1TN08PKR5+TX8aldjYUbO+1
	tjqwcNZWQ+AExBg+vRXNzOA33fUSvwD9wfB1Ris4YCXKwHv/dM+ifzs2lM7I0PErFC/pfjCqirML8
	3MrwZO8KH1HmTFtFyLZSLwWzkWOG6J6KqQOq4UwlhdDrr5IH8Yasj46KKnUzW5CDTc522Gzh0DQ/S
	5yLbe02CNvIuWxs+D7YZLnJhFaaE8q3KUQOOzSkczfVtCOSDgAjPwv+W4DmuN4rxNCGUzaILpdwXi
	0FPu2ky0gYNqPl1iZPKSP5GGFJKeOgCqXdhJRZPt5RaqRJnb34hK46enJdwFggRUe5UFXQpQcU0R7
	BEv5N/Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZULY-00HBdI-K2; Tue, 07 Mar 2023 10:15:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZULL-00HBYj-GD
	for barebox@lists.infradead.org; Tue, 07 Mar 2023 10:14:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pZULJ-0007Mx-Sp; Tue, 07 Mar 2023 11:14:49 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pZULJ-002SWg-7R; Tue, 07 Mar 2023 11:14:49 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pZULH-008iWl-Rl; Tue, 07 Mar 2023 11:14:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Mar 2023 11:14:45 +0100
Message-Id: <20230307101446.2077676-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230307101446.2077676-1-a.fatoum@pengutronix.de>
References: <20230307101446.2077676-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_021451_620856_3862F821 
X-CRM114-Status: GOOD (  11.02  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 4/5] ARM: i.MX8M: silence warning accessing bootrom log in zero page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We don't compile with --param=min-pagesize=0, so GCC will complain about
dereference of (void *)0x9e0, even if done through a volatile pointer.

We know this to be okay, because either we run in PBL before MMU is set
up or we run in barebox proper and zero_page_access() will be
temporarily disabling trapping by the null page. Thus hide the access
from the compiler to silence the warning.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/romapi.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index 0936c855fd03..b241e633ea01 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -57,10 +57,13 @@ int imx8mn_bootrom_load_image(void)
 const u32 *imx8m_get_bootrom_log(void)
 {
 	if (current_el() == 3) {
+		ulong *rom_log_addr_offset = (void *)0x9e0;
 		ulong rom_log_addr;
 
+		OPTIMIZER_HIDE_VAR(rom_log_addr_offset);
+
 		zero_page_access();
-		rom_log_addr = readl(IOMEM(0x9e0));
+		rom_log_addr = *rom_log_addr_offset;
 		zero_page_faulting();
 
 		if (rom_log_addr < MX8M_OCRAM_BASE_ADDR ||
-- 
2.30.2



