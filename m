Delivery-date: Tue, 06 Jun 2023 16:55:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Y5Q-00DA9W-Kh
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 16:55:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Y5N-0007i6-PH
	for lore@pengutronix.de; Tue, 06 Jun 2023 16:55:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WgPBQIHTshGgyBX/u0WmpLpA+mORVTP2pMwnQeaWWfg=; b=GPuOESEA5eRlq2XyQ7m/DVAFgf
	PMrVtBTcaLmwO0U8V9IzSgn2hbc5V250nrBgora0vV5d/bW36PNTUrBJm/103jMqLvxq53rqnL7Xo
	Fu1dCi8ZVxfyCQUyWIV8437fn5eiltrUObFyRDF7hK0w7cv3CmC6i+HDOKArxdG3mvNal9e/TYPTA
	ZR8CPhVlmB2t+IicLDOsmB5b1+tZXhIaueNZv8+ZFLa/5iJNvZeX1WGzMqnsLpM2lcXbyg+po+U2C
	1nqzMIHIBiypNJgl+h7uRSb+uxwAZEJTe62JhLCbSEo6AFuPtbj2sbeT/TLNP5n1xez5H1J5lkBbm
	dhs3ESwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Y4A-0026eG-1T;
	Tue, 06 Jun 2023 14:53:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Y47-0026cc-0k
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 14:53:44 +0000
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1q6Y45-0007MQ-JW
	for barebox@lists.infradead.org; Tue, 06 Jun 2023 16:53:42 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 367211D354D
	for <barebox@lists.infradead.org>; Tue,  6 Jun 2023 14:53:40 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 05F411D3549;
	Tue,  6 Jun 2023 14:53:40 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id b06d55d8;
	Tue, 6 Jun 2023 14:53:39 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 06 Jun 2023 16:53:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230606-phytec-som-imx8mm-v2-1-8c9368c8b4f9@pengutronix.de>
References: <20230606-phytec-som-imx8mm-v2-0-8c9368c8b4f9@pengutronix.de>
In-Reply-To: <20230606-phytec-som-imx8mm-v2-0-8c9368c8b4f9@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.13-dev-c6835
X-Developer-Signature: v=1; a=openpgp-sha256; l=1159; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=4xqu61lf3xCW17MQCgsj3DT9z/EaNHu0O2KgKHsN+HE=;
 b=owGbwMvMwMW4L0DGS6uL5QXjabUkhpR6j0z/LV3pUva1MS4GYkVMYfUcJ6V7PFTYjC82tujdX
 Nfg4tbJaMzCwMjFICumyMJ3tnHvik8mK+O/GgXADGJlApnCwMUpABNp38X+P15tfu0v//NqHHPu
 6u/z09GL/jAhfK6F8+K81ZXcWroza37I8xd5Z1vJHdG+/unvMfYNcld3Pj+vsV5HVdLl5aMrHKZ
 zHJKnnOr5phx352zgo+6csp2bu8v5/JNVuz77F/7avKpat8hLdNmHWfYa3ffPHYiKuhA88bfKUv
 Ofun1pPNMcK/uX/Ly8bjJHxe1Qlp3OHl9UlSuTjebc1SyO4trMek2ax8I0wvjY7gVFKzRvKbM5C
 B4O2LMykLM3uyJxd9T69/aTGTaYTXwiqTRT1NYnUeyi2hMR06u79x2turLwvd2a5a6S8as8pGML
 278+9xdsnfTh9R3fYO7Ps0WyksTeSBoxlbEeNxE3dTMAAA==
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_075343_271387_18A3095D 
X-CRM114-Status: GOOD (  14.67  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/3] i2c: add <pbl/eeprom.h> for PBL use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add a small helper to read a single page of EEPROM data.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 include/pbl/eeprom.h | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/include/pbl/eeprom.h b/include/pbl/eeprom.h
new file mode 100644
index 000000000000..df868b1a37fb
--- /dev/null
+++ b/include/pbl/eeprom.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __PBL_EEPROM_H_
+#define __PBL_EEPROM_H_
+
+#include <common.h>
+#include <pbl/i2c.h>
+
+static inline void eeprom_read(struct pbl_i2c *i2c, u16 client_addr, u32 addr, void *buf, u16 count)
+{
+	u8 msgbuf[2];
+	struct i2c_msg msg[] = {
+		{
+			.addr = client_addr,
+			.buf = msgbuf,
+		}, {
+			.addr = client_addr,
+			.flags = I2C_M_RD,
+			.buf = buf,
+			.len = count,
+		},
+	};
+	int ret, i = 0;
+
+	if (addr & I2C_ADDR_16_BIT)
+		msgbuf[i++] = addr >> 8;
+	msgbuf[i++] = addr;
+	msg[0].len = i;
+
+	ret = pbl_i2c_xfer(i2c, msg, ARRAY_SIZE(msg));
+	if (ret != ARRAY_SIZE(msg))
+		pr_err("Failed to read from eeprom@%x: %d\n", client_addr, ret);
+}
+
+#endif

-- 
2.39.2




