Delivery-date: Thu, 26 Jan 2023 20:05:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pL7YX-0032Gw-VB
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 20:05:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pL7YV-0000Mx-3w
	for lore@pengutronix.de; Thu, 26 Jan 2023 20:05:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2TbVU1U72iPKxajsCoFV2pCAjemRMIr2GEQMUbRz/ZY=; b=NMjkhrM1ngbrkl/CJpqTHAk60K
	ozPFoEg2gLrTDuIzOnm1E8M6dGh2KkUnOYQrumzpdGFV0No/ofFjzjKYUiscnBpYhduNi9XGdXwDk
	e3szGs9gnTxTtwuWZTwJhhZTY9fzpYeYORm8JmmW+MncyoCI7ehTe/DxeCdf5rRyLeYzwucBtddV5
	p6EUvKCnkn0yVv7kadC5SE/nFWXlRXLfxyP0tPfFecLRpb2rkPwONyXiidZLhxYOlYwC5Ml6Ir72o
	AmxVaci6P+Gr62sczkYb7Pvs9+wqO9pbsNRxt4wVwC1zsodJChDRf7Q3/+HcjhXX2vhZR8BpZOdSb
	Sd3udFxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL7X9-00CFLc-4k; Thu, 26 Jan 2023 19:03:39 +0000
Received: from out-66.mta0.migadu.com ([91.218.175.66])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL7Wi-00CFIn-6r
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 19:03:16 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674759789;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2TbVU1U72iPKxajsCoFV2pCAjemRMIr2GEQMUbRz/ZY=;
	b=FrqAsgpYWg/AmpIESlj8qP+R0z8gM0ECIxCjAK3SSI4ZaXb+8T6iq/5d1ONFuwl7itLD53
	lKhTMyx06rFdhfTcqByqVntl0c+V7VB8NqSvaZablDva6wp9rxx4exwgoeLl81sK6EI0O8
	06aCsAJjb4TkPKfbvfWlu2tUnWmMyWdIQIEbC5xGkHMWpzJ5KqR6lZiXV3YUC8ZpAf12JT
	T9cVUgNL020vbrzHu8jaz68ZJnfDwCHXoPmbLIk4Sr8vmhfMPEWhU83m2gC17xshwhf0ZU
	/mXSNLkDD2NLreXVfwN6k66SXAt9cpGNcV+0emA4tLqMySeMAf4md9JOvi+9bA==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Fri, 27 Jan 2023 06:02:58 +1100
Message-Id: <20230126190258.110423-1-contact@jookia.org>
In-Reply-To: <20230126183624.85500-1-contact@jookia.org>
References: <20230126183624.85500-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_110312_439572_CA84E71F 
X-CRM114-Status: UNSURE (   8.11  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM: i.MX6: Specify OCRAM base address and size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The i.MX6 includes some on-chip RAM: 128KiB on most variants, with 256KiB on
the Dual and Quad variants.

This region is where the first stage of Barebox gets loaded if RAM
initialization isn't hard coded using DCD information.

Add the base address and size so it can be used to calculate where to put the
stack at boot.

Signed-off-by: John Watts <contact@jookia.org>
---
Changes v1 -> v2:
- Fixed wrong size (thanks Marco!)
---
 arch/arm/mach-imx/include/mach/imx6-regs.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index 39e2751533..89a3b267c6 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -3,6 +3,12 @@
 #ifndef __MACH_IMX6_REGS_H
 #define __MACH_IMX6_REGS_H
 
+#include <linux/sizes.h>
+
+/* Set MAX_SIZE to 128K, only the Quad and Dual have 256K */
+#define MX6_OCRAM_BASE_ADDR		0x00900000
+#define MX6_OCRAM_MAX_SIZE		SZ_128K
+
 #define MX6_APBH_BASE_ADDR		0x00110000
 #define MX6_GPMI_BASE_ADDR		0x00112000
 #define MX6_BCH_BASE_ADDR		0x00114000
-- 
2.39.1



