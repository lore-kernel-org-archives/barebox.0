Delivery-date: Wed, 29 Jan 2025 14:14:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1td7tS-005wJn-1c
	for lore@lore.pengutronix.de;
	Wed, 29 Jan 2025 14:14:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1td7tS-0007Sk-G0
	for lore@pengutronix.de; Wed, 29 Jan 2025 14:14:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z3bpSnMYPtesDhpJV0kqygTjW2KrV93ehS2GzGMagvk=; b=mGIWHHse/4MNe2qNVRWuuzx2Hm
	78tFkP8SQZrJBLY+U3oYQCEGcWAh1QGjvXEM93yKjYc73MQQtuPoRSEz2sa//M+JAQKzlCxVo4hW5
	1K5yUJXENY9LoqMW5WGPJ1ddcXdPEgx4evfE4KKc5zDa2Qs9T70fwguMa/Sfxxyr8ogtXE6bjPrfZ
	qwx06PZrYgvYyK3NBY8DcdkHLHkS8ty5iZ1ObmVJAT9RDL80fgPIpWtGNQTNdwnO0Ua38Mm0r/wN7
	JP/jwVeKpnZgcMkfKTHyiRYdLQXHi4rKZv3qkm/qc46vDYLpCRBmXs+EGdAWa7Z2Lm96qYXwdf0ct
	5V3yvTHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1td7sr-00000006z9p-16uz;
	Wed, 29 Jan 2025 13:13:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1td7so-00000006z7d-1xuC
	for barebox@lists.infradead.org;
	Wed, 29 Jan 2025 13:13:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1td7sl-0007GS-Sw; Wed, 29 Jan 2025 14:13:27 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1td7sl-002TBl-1s;
	Wed, 29 Jan 2025 14:13:27 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1td7sl-00Caz7-1i;
	Wed, 29 Jan 2025 14:13:27 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michiel Schelfhout <michiel.schelfhout@protonic.nl>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 29 Jan 2025 14:13:25 +0100
Message-Id: <20250129131326.3002089-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250129131326.3002089-1-o.rempel@pengutronix.de>
References: <20250129131326.3002089-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_051330_508055_BE602714 
X-CRM114-Status: GOOD (  18.83  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/3] ARM: protonic-stm32mp1: Add support for reading serial from BSEC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Michiel Schelfhout <michiel.schelfhout@protonic.nl>

Introduce support for retrieving the board-specific serial number from
BSEC registers via the OP-TEE interface. The serial number is stored
across three 4-byte registers (58, 59, 60), with only the lower 16 bits
of register 58 being relevant.

Signed-off-by: Michiel Schelfhout <michiel.schelfhout@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-stm32mp1/board.c | 61 +++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/arch/arm/boards/protonic-stm32mp1/board.c b/arch/arm/boards/protonic-stm32mp1/board.c
index 0b46dccb3247..cafdc20c2b42 100644
--- a/arch/arm/boards/protonic-stm32mp1/board.c
+++ b/arch/arm/boards/protonic-stm32mp1/board.c
@@ -6,14 +6,20 @@
 #include <common.h>
 #include <init.h>
 #include <mach/stm32mp/bbu.h>
+#include <mach/stm32mp/bsec.h>
 #include <of_device.h>
 #include <deep-probe.h>
+#include <soc/stm32/stm32-bsec-optee-ta.h>
 
 /* board specific flags */
 #define PRT_STM32_BOOTSRC_SD		BIT(2)
 #define PRT_STM32_BOOTSRC_EMMC		BIT(1)
 #define PRT_STM32_BOOTSRC_SPI_NOR	BIT(0)
 
+/* board specific serial number length is 10 characters without '\0' */
+#define PRT_STM32_SERIAL_LEN		10
+#define PRT_STM32_SERIAL_OFFSET		58
+
 struct prt_stm32_machine_data {
 	u32 flags;
 };
@@ -54,6 +60,59 @@ static const struct prt_stm32_boot_dev prt_stm32_boot_devs[] = {
 	},
 };
 
+static int prt_stm32_set_serial(struct device *dev, char *serial)
+{
+	dev_info(dev, "Serial number: %s\n", serial);
+	barebox_set_serial_number(serial);
+
+	return 0;
+}
+
+static int prt_stm32_read_serial(struct device *dev)
+{
+	/* including first 2 non-serial bytes */
+	char raw_serial[PRT_STM32_SERIAL_LEN + 2];
+	/* board specific serial number + one char for '\0' */
+	char serial[PRT_STM32_SERIAL_LEN + 1];
+	struct tee_context *ctx;
+	int ret;
+
+	/* the ctx pointer will be set in the stm32_bsec_optee_ta_open */
+	ret = stm32_bsec_optee_ta_open(&ctx);
+	if (ret) {
+		dev_err(dev, "Failed to open BSEC TA: %pe\n", ERR_PTR(ret));
+		return ret;
+	}
+
+	ret = stm32_bsec_optee_ta_read(ctx, PRT_STM32_SERIAL_OFFSET * 4,
+				       &raw_serial, sizeof(raw_serial));
+	if (ret)
+		goto exit_pta_read;
+
+	/*
+	 * Shift the serial data left by 2 bytes to remove the non-serial data.
+	 * The serial number is stored across three 4-byte BSEC registers:
+	 *   - Register 58 (4 bytes): Only the lower 16 bits contain serial data.
+	 *   - Register 59 (4 bytes): Fully part of the serial number.
+	 *   - Register 60 (4 bytes): Fully part of the serial number.
+	 * Since we read all three registers as a continuous block (12 bytes),
+	 * the first 2 bytes of Register 58 contain irrelevant data and must
+	 * be discarded.
+	 */
+	memmove(serial, raw_serial + 2, sizeof(serial) - 1);
+
+	serial[PRT_STM32_SERIAL_LEN] = 0;
+
+	stm32_bsec_optee_ta_close(&ctx);
+
+	return prt_stm32_set_serial(dev, serial);
+
+exit_pta_read:
+	stm32_bsec_optee_ta_close(&ctx);
+	dev_err(dev, "Failed to read serial: %pe\n", ERR_PTR(ret));
+	return ret;
+}
+
 static int prt_stm32_probe(struct device *dev)
 {
 	const struct prt_stm32_machine_data *dcfg;
@@ -66,6 +125,8 @@ static int prt_stm32_probe(struct device *dev)
 		goto exit_get_dcfg;
 	}
 
+	prt_stm32_read_serial(dev);
+
 	for (i = 0; i < ARRAY_SIZE(prt_stm32_boot_devs); i++) {
 		const struct prt_stm32_boot_dev *bd = &prt_stm32_boot_devs[i];
 		int bbu_flags = 0;
-- 
2.39.5



