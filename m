Delivery-date: Wed, 10 Jan 2024 17:06:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb5z-00BojM-16
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 17:06:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb5y-0003md-NQ
	for lore@pengutronix.de; Wed, 10 Jan 2024 17:06:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CjcvC/md/N91TXZ4brwiEcinHrC0Z9gz4ndgl8lsfXI=; b=GO3/J/l7TeaoMwSQV1P492KLsG
	Jldz3L/L7rMhX9eZBiHW23ohs+wSKA5j6ijzBr3QXDjhtq2w9jykDvpjcgViN+DgN43Q61J18gdzS
	gqqkknqIgrEz4w7bqIddv+MpxkolIY90kPA7IO30ZvqDezYAUJPs04AeRygQTyGD553PhnSBUct/x
	Ls0h9LmOj9Y/aROI39iut3q/a+gqzYl2/6XVtBbhUCnr7HRint2L7KGBimEglc0+MNkEs3JMItR8q
	7+Th6KLfQ6ogX8QIYMgYRT0vEnLuKyFGffxZO0UWNGrAo0SvhxCFmfs6/dZLchbftjEGBHiedWnIt
	6Z/8AIJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb53-00CmlE-0e;
	Wed, 10 Jan 2024 16:05:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb50-00Cmjl-2x
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 16:05:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb4z-0003XM-PB; Wed, 10 Jan 2024 17:05:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb4z-001jy6-CN; Wed, 10 Jan 2024 17:05:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1D-00HLtL-0I;
	Wed, 10 Jan 2024 17:01:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jan 2024 17:01:13 +0100
Message-Id: <20240110160112.4134162-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
References: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_080522_992014_CA0E13F1 
X-CRM114-Status: GOOD (  18.48  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 11/11] ARM: layerscape: enable DWC3 snooping on ls1046a
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The SCFG_SNPCNFGCR USB bits only have an effect if the
Layerscape-specific bits in each DWC instance's GSBUSCFG0 are
appropriately configured.

As the LS1046's kernel DT is configured to assume the whole SoC is dma-coherent,
we need to set these bits, so this is indeed the case.

This configuration is likewise applicable to the LS1043A, should
we add support for it and to the newly added LS1028A, if we start
configuring the CCI-400 to make the fully cache-coherent, but alas,
that's not yet the case and the LS1028A's kernel DT doesn't assume it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 arch/arm/mach-layerscape/soc.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm/mach-layerscape/soc.c b/arch/arm/mach-layerscape/soc.c
index 462405ea870b..1742ff58ce10 100644
--- a/arch/arm/mach-layerscape/soc.c
+++ b/arch/arm/mach-layerscape/soc.c
@@ -4,9 +4,11 @@
 #include <init.h>
 #include <memory.h>
 #include <linux/bug.h>
+#include <linux/bitfield.h>
 #include <linux/printk.h>
 #include <mach/layerscape/layerscape.h>
 #include <of.h>
+#include <of_address.h>
 
 int __layerscape_soc_type;
 
@@ -120,6 +122,35 @@ static int ls1028a_reserve_tfa(void)
 }
 mmu_initcall(ls1028a_reserve_tfa);
 
+#define DWC3_GSBUSCFG0				0xc100
+#define DWC3_GSBUSCFG0_CACHETYPE_MASK		GENMASK(31, 16)
+
+static void layerscape_usb_enable_snooping(void)
+{
+	struct device_node *np;
+
+	for_each_compatible_node(np, NULL, "snps,dwc3") {
+		struct resource res;
+
+		if (of_address_to_resource(np, 0, &res))
+			continue;
+
+		/* Set cacheable bit for all of Data read, Descriptor read,
+		 * Data write and Descriptor write. Bufferable and read/write
+		 * allocate bits are not set. This is the recommended configurationr
+		 * in LS1046ARM Rev. 3 34.2.10.2:
+		 * "For master interface DMA access, program the GSBUSCFG0
+		 * register to 0x2222000F for better performance.".
+		 * The 0x000F is configured via snps,incr-burst-type-adjustment
+		 * (which despite the name is Layerscape-specific), so below
+		 * line only manipulates the upper 16 bits.
+		 */
+		clrsetbits_le32(IOMEM(res.start) + DWC3_GSBUSCFG0,
+				DWC3_GSBUSCFG0_CACHETYPE_MASK,
+				FIELD_PREP(DWC3_GSBUSCFG0_CACHETYPE_MASK, 0x2222));
+	}
+}
+
 static int ls1046a_init(void)
 {
 	if (!cpu_is_ls1046a())
@@ -128,6 +159,7 @@ static int ls1046a_init(void)
 	ls1046a_bootsource_init();
 	ls1046a_setup_icids();
 	layerscape_register_pbl_image_handler();
+	layerscape_usb_enable_snooping();
 
 	return 0;
 }
-- 
2.39.2



