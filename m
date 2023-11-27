Delivery-date: Mon, 27 Nov 2023 08:12:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VnG-00AgOG-2f
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 08:12:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VnG-0004dt-R5
	for lore@pengutronix.de; Mon, 27 Nov 2023 08:12:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7jsSsuTI5J0GmyGCXsKB8cATzLEjKaieYjV4AUviyfc=; b=IQpHswkKyQNUxIGN2g2ID84WD5
	9c9xQ2II7P/F3d47Udn+pGPtrcPQQVrS/9vfUrIv4NN8UoGf8FtBlhpCxT5TAIq7iep4YdzMIgRxX
	l9KA6OZsXH0t1Em9CJ6lEZZKuxTXWCUAPppy3scTpJedzKuAbChNsXEWgrVYxJ9RdbI0f4lKOHyyN
	lZ1U+fv+VvzIaBIWqeWOClEV92v4Vq9wb0hJJfwGIKYL5BSQKWFhP2Xn4uAD9Xk3DqUclzpGBXld6
	0hJPcAGxs+qqtMWYJP+GKsqqyd3m9tvSI9R53maCN6v1dGXTDQvAgdZaWwgx2aEQ1T4VaanBcLafz
	1PK6OtXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Vm8-001gfv-0s;
	Mon, 27 Nov 2023 07:11:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Vm4-001ge8-18
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 07:11:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7Vm3-0004PV-4A; Mon, 27 Nov 2023 08:11:19 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7Vm2-00BtCd-NQ; Mon, 27 Nov 2023 08:11:18 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRK-009GPh-0n;
	Mon, 27 Nov 2023 07:49:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:49:46 +0100
Message-Id: <20231127064947.2207726-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
References: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_231120_410447_5432CD93 
X-CRM114-Status: GOOD (  15.27  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 12/13] ARM: stm32mp: 135-DK: enable environment, bbu handler and deep probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we have proper clock controller support, let's configure the
board to have an environment on SD-Card, a barebox update handler for
the SD-Card and enable deep probe as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/stm32mp13xx-dk/Makefile |  1 +
 arch/arm/boards/stm32mp13xx-dk/board.c  | 25 +++++++++++++++++++++++++
 arch/arm/dts/stm32mp135f-dk.dts         |  9 +++++++++
 3 files changed, 35 insertions(+)
 create mode 100644 arch/arm/boards/stm32mp13xx-dk/board.c

diff --git a/arch/arm/boards/stm32mp13xx-dk/Makefile b/arch/arm/boards/stm32mp13xx-dk/Makefile
index 9961af02a3ea..1d052d28c9fc 100644
--- a/arch/arm/boards/stm32mp13xx-dk/Makefile
+++ b/arch/arm/boards/stm32mp13xx-dk/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/stm32mp13xx-dk/board.c b/arch/arm/boards/stm32mp13xx-dk/board.c
new file mode 100644
index 000000000000..24104328f0db
--- /dev/null
+++ b/arch/arm/boards/stm32mp13xx-dk/board.c
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <driver.h>
+#include <init.h>
+#include <mach/stm32mp/bbu.h>
+#include <deep-probe.h>
+
+static int stm32mp13xx_dk_probe(struct device *dev)
+{
+	stm32mp_bbu_mmc_fip_register("sd", "/dev/mmc0", BBU_HANDLER_FLAG_DEFAULT);
+	return 0;
+}
+
+static const struct of_device_id stm32mp13xx_dk_of_match[] = {
+	{ .compatible = "st,stm32mp135f-dk" },
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(stm32mp13xx_dk_of_match);
+
+static struct driver stm32mp13xx_dk_board_driver = {
+	.name = "board-stm32mp13xx_dk",
+	.probe = stm32mp13xx_dk_probe,
+	.of_compatible = stm32mp13xx_dk_of_match,
+} ;
+device_platform_driver(stm32mp13xx_dk_board_driver);
diff --git a/arch/arm/dts/stm32mp135f-dk.dts b/arch/arm/dts/stm32mp135f-dk.dts
index f07f7f5536fe..5f0f52d00535 100644
--- a/arch/arm/dts/stm32mp135f-dk.dts
+++ b/arch/arm/dts/stm32mp135f-dk.dts
@@ -5,4 +5,13 @@
 
 / {
 	model = "STM32MP135F-DK";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+
+		environment {
+			compatible = "barebox,environment";
+			device-path = &sdmmc1, "partname:barebox-environment";
+		};
+	};
 };
-- 
2.39.2



