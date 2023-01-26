Delivery-date: Thu, 26 Jan 2023 19:38:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pL78o-0030H0-4j
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 19:38:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pL78l-0004et-EL
	for lore@pengutronix.de; Thu, 26 Jan 2023 19:38:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mz42/8ijeV9xqpC0nKLOg3ZYZtsceW9F37hD6163VxQ=; b=cnuKjLft2Oeyq0smlkeh4i+wDE
	l5CFgo7CVJ0+TAiKrzP9Ng04/Y8JPY4YiLpx0dtxWkmlZOZHQ1V4eckUjsWkLZWQZjhuJ/GFGC7TT
	YOBmsFDcYdTtUix6MjmzK6uCSdzlZU+zj1ACMmb7JkHllLBwQz0gs+sL9GK9QmvP+FyM5ngVwE+Be
	20IVf5eqLK0dutqNHd8cPzXfgsG7fVqLoraxgkNh9KalvJWs4h2L5ooDGOpdRR8YU1kM4zGwa93mJ
	KQU3Tb8iS8rnbMKi267zhSdzbFCFjJX3K94taflG+LGaghfvOvB33mhy9tMJc2hAbKfUwejanv+nM
	IPj0xWaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL775-00C9he-Mr; Thu, 26 Jan 2023 18:36:43 +0000
Received: from out0.migadu.com ([2001:41d0:2:267::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL770-00C9gj-Qg
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 18:36:40 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Fri, 27 Jan 2023 05:36:24 +1100
Message-Id: <20230126183624.85500-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_103639_040291_1C2C8FDB 
X-CRM114-Status: UNSURE (   7.94  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX6: Specify OCRAM base address and size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The i.MX6 includes some on-chip RAM: 128KiB on most variants, with 256KiB
on the Dual and Quad variants.

This region is where the first stage of Barebox gets loaded if RAM
initialization isn't hard coded using DCD information.

Add the base address and size so it can be used to calculate where to put
the stack at boot.

Signed-off-by: John Watts <contact@jookia.org>
---
 arch/arm/mach-imx/include/mach/imx6-regs.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index 39e2751533..4acbb9796b 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -3,6 +3,10 @@
 #ifndef __MACH_IMX6_REGS_H
 #define __MACH_IMX6_REGS_H
 
+/* Set MAX_SIZE to 128K, only the Quad and Dual have 256K */
+#define MX6_OCRAM_BASE_ADDR		0x00900000
+#define MX6_OCRAM_MAX_SIZE		0x00100000
+
 #define MX6_APBH_BASE_ADDR		0x00110000
 #define MX6_GPMI_BASE_ADDR		0x00112000
 #define MX6_BCH_BASE_ADDR		0x00114000
-- 
2.39.1



