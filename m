Delivery-date: Fri, 14 Mar 2025 16:15:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6lH-00E3Qp-0O
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 16:15:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6lF-0003Aw-Ti
	for lore@pengutronix.de; Fri, 14 Mar 2025 16:15:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=88Np3KSkoIxpLejuv2QC6xb5ePpG94X6DVr8fo41d0g=; b=UADnfj53XCrdVxQUVwnOwDul+y
	b98Y20YEo7RfKgyBTBEZ7YjARbz60XwbIqzCAmrIhZdd9pcxVKI1026Dj+amRCN0dXmA8m54Tpu4M
	5ZBhPHa7QBOvH0q+bg9tH3TDM0pbwamxVdoWZcOZnh7oc6J6TVpMiONJFAylgcGe6e/fBykkQu27W
	YTPyK6lACR0E+Ni82moa/+2MeXrwu+6m88P+vBhiiI0w+D0OTAPzhQkxZnwodSQC/grA7E7XDiaAI
	dB3t5fWSOmoLeH+uSJ0MnpxoPTnGNL4ujJSNSu4t8DBA18LtfmYnsDiLFi/J48EGnnEbo0OAfiPFh
	gKQQXadA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6kl-0000000EWV9-0soC;
	Fri, 14 Mar 2025 15:15:15 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6fh-0000000EVdX-3dCD
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 15:10:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741964998;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=88Np3KSkoIxpLejuv2QC6xb5ePpG94X6DVr8fo41d0g=;
	b=M4bdvE0xtO///YPUWUVgQAaIu1nBPfbm8G4lgKs2q3pAKDEE9hsRjIFBlzXteGRjy2xC8P
	1I/H4QJRWC8Y2RnaS/H8YKxI3TXg+DyjUze6Ajml1Ruz8jcHd4Yw3VeoCks+dGgKuMQVgH
	8jE83/Oe6p8zgY6SH31vJrXuNOsvH2AE2SpCLCFfAZj7t5J7JoXj7Oin84uim1gQiCwsvV
	vZnJWWQON5tHoRYAkFoOQIBfpRZCL4ZvtZnONtKbc83+Jr63cjnN9UraFs1YipnkXKP+s3
	EUTCa5hyhENpWHSiKDJPExE+heRGSAmeFmp3x1/0oGeotjQl7/f66sDSlV9qxg==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id c9ee701c (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 16:09:58 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 16:09:50 +0100
Message-ID: <20250314150953.21686-2-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250314150953.21686-1-jmaselbas@zdiv.net>
References: <20250314104034.13637-1-jmaselbas@zdiv.net>
 <20250314150953.21686-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_081002_197455_6CFA0653 
X-CRM114-Status: UNSURE (   6.83  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/3] dma-devices: k3-udma: remove duplicated include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Remove the duplicated include `soc/ti/ti_sci_protocol.h`.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/dma/ti/k3-udma.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/dma/ti/k3-udma.c b/drivers/dma/ti/k3-udma.c
index e17b99de47..06f81431be 100644
--- a/drivers/dma/ti/k3-udma.c
+++ b/drivers/dma/ti/k3-udma.c
@@ -21,7 +21,6 @@
 #include <linux/bitmap.h>
 #include <driver.h>
 #include <linux/device.h>
-#include <soc/ti/ti_sci_protocol.h>
 
 #include "k3-udma-hwdef.h"
 #include "k3-psil-priv.h"
-- 
2.48.1



