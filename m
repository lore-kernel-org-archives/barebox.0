Delivery-date: Tue, 07 Mar 2023 10:36:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZTjz-00CAKH-Jw
	for lore@lore.pengutronix.de; Tue, 07 Mar 2023 10:36:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZTjy-0008Kw-W1
	for lore@pengutronix.de; Tue, 07 Mar 2023 10:36:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2yA05xXwDi2dfAz+49aDy4CIhy+x+0qbYJZ0Txb5YAU=; b=ELiLaoccnFbH/xZWRv3VOimbAB
	LFjBmDHmIxmMUvEdbCvde0NEyS9nYVXADFMygyksPDf/GbkRL58Gt3xZxvbQKZ/BRzWv/qi0hRr0G
	EiolKZnokCjdmlTBFjlyvPEo7k0LtlDDYn2TDFhtLo2XLNp4dbXOEhNwKKl0F+mMsDlV67ftCRpqr
	1uV0HrdRXTZ/whysF15tmglYJl1y7/hrgTTZfvEvY012ghsbWvKs0y+mW8TpYSwgTNVin+xN+7q73
	BOHbmaAFtClZXTO+wZ5LPB9o3iWx0eQ3Z3cvRiQaMYUJe0R2xZxeSz7/t+FMzwGJNmhswTRX1K/2C
	3O3EXCSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZTim-00Gwbb-GE; Tue, 07 Mar 2023 09:35:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZTiM-00GwSW-M3
	for barebox@lists.infradead.org; Tue, 07 Mar 2023 09:34:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pZTiH-0007tG-Au; Tue, 07 Mar 2023 10:34:29 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pZTiG-002S03-MO; Tue, 07 Mar 2023 10:34:28 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pZTiG-006VYA-0s; Tue, 07 Mar 2023 10:34:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Mar 2023 10:34:25 +0100
Message-Id: <20230307093426.1551193-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230307093426.1551193-1-a.fatoum@pengutronix.de>
References: <20230307093426.1551193-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_013434_805135_46A4DF4C 
X-CRM114-Status: GOOD (  12.39  )
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
Subject: [PATCH 3/4] ARM: i.MX8M: fixup op-tee nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox PBL will only enable Trust Zone Address Space Controller when it
installs OP-TEE, thus take this as an indication that both barebox and
kernel device tree should be patched with an OP-TEE node.

Users not wishing this to happen may disable CONFIG_PBL_OPTEE.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 7f3856e545c7..b90e5501b82e 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -2,6 +2,9 @@
 
 #include <init.h>
 #include <common.h>
+#include <asm/optee.h>
+#include <linux/sizes.h>
+#include <mach/tzasc.h>
 #include <io.h>
 #include <asm/syscounter.h>
 #include <asm/system.h>
@@ -70,6 +73,17 @@ static int imx8m_init(const char *cputypestr)
 			pr_info("i.MX ARM Trusted Firmware: %s\n", (char *)&res.a0);
 	}
 
+	if (IS_ENABLED(CONFIG_PBL_OPTEE) && tzc380_is_enabled() &&
+	    !of_find_node_by_path_from(NULL, "/firmware/optee")) {
+		static struct of_optee_fixup_data optee_fixup_data = {
+			.shm_size = SZ_4M,
+			.method = "smc",
+		};
+
+		of_optee_fixup(of_get_root_node(), &optee_fixup_data);
+		of_register_fixup(of_optee_fixup, &optee_fixup_data);
+	}
+
 	return 0;
 }
 
-- 
2.30.2



