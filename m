Delivery-date: Tue, 24 Jan 2023 18:44:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKNL8-000hbI-QC
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 18:44:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKNL5-000849-Ua
	for lore@pengutronix.de; Tue, 24 Jan 2023 18:44:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CaZJwirdvDmwGGbQjmThtaUowDw8NkAePsPK43nogX8=; b=GhfAqXIQOE9b7z8+N3IDkBxqoi
	TdrxuBSfxBNvPg1BOX6IbjWXF1YE/hQ3u+u74eo3dlK8ORX34DLmxReZWgYP18rOTD3i6T7/JSn0k
	ubx0DkZkiL6llNyr62U+qM4Kmp1DJD43jn7ZE8PNTDBr8EVbZ/+g09QwJ0RGTY2Ym3NmsQLB/R1GC
	4gB461dK8YzGm0rx4Hmr6ZZv/E8PwOAL04rxTnNxJhAgZJHrnlc2cPNrwCqo3SG8gLcFTwegfVjgj
	PFD4PfDABraTwRDwNd5myOi7eut3b6UAFOQBWULG84BBeWTfCGv57fNEWSdqqqT8U5VmLa+p6yrEE
	+cv3yAVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKNJa-004r8j-3e; Tue, 24 Jan 2023 17:42:34 +0000
Received: from out0.migadu.com ([2001:41d0:2:267::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKNJR-004r4V-EQ
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 17:42:27 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674582097;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CaZJwirdvDmwGGbQjmThtaUowDw8NkAePsPK43nogX8=;
	b=bUOzW1S5w2MiUwzjt/fAHhtSV0yJjkEMRhvUJA6JZ+npKu4ocM+i+Zo38XK4XBzSXvxndU
	5JZyTLRto5DvwdOXYGJ0e6KhInxtTbOI2wPnYh2Qeke8ZT3rUch612IHHXWIudQiXvVwcW
	glRTRJyjl0ZADTJasGbwbP5YeXo9gum+b2pu6vaJQd03xPqpTikOZsyToj+Baco3xvvYwe
	1nFrb7zNHy0v4weVR4XPPlvqYCVNy6bdvA3Rn0r4dix4wFhHt1zFKTWcwCliorbdTpH8rl
	CbWKq98vdrOSTjYm7ljGDa10pP1/SpRujGWEBJ3aTPCUw7BpZ1B+fQxQex+wyQ==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Wed, 25 Jan 2023 04:41:15 +1100
Message-Id: <20230124174115.1509216-1-contact@jookia.org>
In-Reply-To: <20230123201817.1084728-1-contact@jookia.org>
References: <20230123201817.1084728-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_094226_241737_7E5F5014 
X-CRM114-Status: GOOD (  19.92  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] imx6-mmdc: Work around ERR050070
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The MPWLGCR registers clear the error bits before software can read them,
so rely on the MPWLHWERR registers for error reporting instead.

This errata was announced in 2019 but it seems to apply to all chip revisions.

U-Boot contains a different workaround where it instead checks the calibration
data for the result 0x001F001F (maximum delay) and flag that as a failure.
I can't find the origin of this workaround but I first saw it in the Novena
source code, though I asked Sean Cross and he suggested it was from Freescale.

While we're at it, fix the comment implying this code only checks PHY0 in x32
configuration. This is wrong and misleading.

Signed-off-by: John Watts <contact@jookia.org>
---
Changes v1 -> v2:
- Added a wall of text explaining what the code does and why
- wlcalib_failed now reads from the ips register correctly
---
 arch/arm/mach-imx/imx6-mmdc.c              | 30 +++++++++++++++++++---
 arch/arm/mach-imx/include/mach/imx6-mmdc.h |  1 +
 2 files changed, 27 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
index 00b8d30d69..45e1b030d3 100644
--- a/arch/arm/mach-imx/imx6-mmdc.c
+++ b/arch/arm/mach-imx/imx6-mmdc.c
@@ -11,6 +11,30 @@
 #include <mach/imx6-regs.h>
 #include <mach/imx6.h>
 
+static bool wlcalib_failed(void __iomem *ips)
+{
+	/*
+	 * The i.MX 6 reference manual specifies that an MMDC flags reports
+	 * write calibration errors in the MPWLGCR register's HW_WL_ERR field.
+	 *
+	 * ERR050070 specifies that this doesn't work and we should check
+	 * the MPWLHWERR register instead which reports which write leveling
+	 * steps succeeded or failed on a per-byte basis.
+	 *
+	 * Check each byte to see which steps succeeded. If no steps succeeded
+	 * then declare the calibration a failure.
+	*/
+
+	int i;
+
+	for (i = 0; i < 4; ++i) {
+		if (readb(ips + MPWLHWERR + i) == 0)
+			return true;
+	}
+
+	return false;
+}
+
 int mmdc_do_write_level_calibration(void)
 {
 	u32 esdmisc_val, zq_val;
@@ -56,11 +80,9 @@ int mmdc_do_write_level_calibration(void)
 	/* Upon completion of this process the MMDC de-asserts the MPWLGCR[HW_WL_EN] */
 	while (readl(P0_IPS + MPWLGCR) & 0x00000001);
 
-	/* check for any errors: check both PHYs for x64 configuration, if x32, check only PHY0 */
-	if ((readl(P0_IPS + MPWLGCR) & 0x00000F00) ||
-			(readl(P1_IPS + MPWLGCR) & 0x00000F00)) {
+	/* check for any errors on both PHYs */
+	if (wlcalib_failed(P0_IPS) || wlcalib_failed(P1_IPS))
 		errorcount++;
-	}
 
 	pr_debug("Write leveling calibration completed\n");
 
diff --git a/arch/arm/mach-imx/include/mach/imx6-mmdc.h b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
index bda20aba17..098ba4f5bf 100644
--- a/arch/arm/mach-imx/include/mach/imx6-mmdc.h
+++ b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
@@ -18,6 +18,7 @@
 #define MPWLGCR		0x808
 #define MPWLDECTRL0	0x80c
 #define MPWLDECTRL1	0x810
+#define MPWLHWERR	0x878
 #define MPPDCMPR1	0x88c
 #define MPSWDAR		0x894
 #define MPRDDLCTL	0x848
-- 
2.39.0



