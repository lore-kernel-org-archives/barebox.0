Delivery-date: Thu, 16 Apr 2026 11:49:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLJ-00Cm54-2K
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 11:49:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLI-0001Jv-8X
	for lore@pengutronix.de; Thu, 16 Apr 2026 11:49:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VmaGlgJfSssSR6Xr5oFcXiD/X4qMdwt3A3QSRMz6evY=; b=mfLiHkT40s53gWcy6IE4/zHkzR
	AQMrf2CHz6mRiw6PBpa0DsNOkiAEPTGjbKOo6YPM8MjBo5XQerq+A92b5KKFijcGxaLbbGr7RjMFn
	WdxNmVf40KEGOLsc7oVJAmZVVzEFOzGwegeONw71Uh8bwIvEHWEj81YXzW1nwZh+88+tQDOvd6PdR
	2YqUtf4ZJ+H9f20BYf6wDYK01UlQj2Wtyqe0JD7AehYGx0Pxo8LpRhtusDynQUO6qsc7BCNurt/qS
	Ee9utV9n8MXL3BhAOeirXpZtSdj/ebPLkhkJvTJRGdpAyBqN/oWcuGQYQUAXsXsTMShoNyYJHm2Cz
	QtLzK34Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKe-00000002GRj-3SRM;
	Thu, 16 Apr 2026 09:48:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKa-00000002GOF-3bSU
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 09:48:19 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wDJKX-0000o5-B6; Thu, 16 Apr 2026 11:48:13 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 16 Apr 2026 11:48:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-socfpga-agilex5-sdram-v1-9-07556aa7219f@pengutronix.de>
References: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
In-Reply-To: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_024816_966467_B3B69DE7 
X-CRM114-Status: UNSURE (   7.09  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 9/9] arm: socfpga: agilex5: add explicit unreachable after
 TF-A load
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While agilex5_load_and_start_image_via_tfa() already contains a
__builtin_unreachable(), it's not obvious that the function doesn't
return when looking at agilex5_barebox_entry().

Add __builtin_unreachable() to help the reader.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/atf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-socfpga/atf.c b/arch/arm/mach-socfpga/atf.c
index e3461d01174e..c7be4e11d2ea 100644
--- a/arch/arm/mach-socfpga/atf.c
+++ b/arch/arm/mach-socfpga/atf.c
@@ -59,6 +59,7 @@ void __noreturn agilex5_barebox_entry(void *fdt)
 		socfpga_mailbox_s10_qspi_open();
 
 		agilex5_load_and_start_image_via_tfa();
+		__builtin_unreachable();
 	}
 
 	membase = agilex5_mpfe_sdram_base();

-- 
2.47.3



