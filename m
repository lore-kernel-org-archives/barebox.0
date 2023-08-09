Delivery-date: Wed, 09 Aug 2023 09:27:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTdbb-00DTgn-7h
	for lore@lore.pengutronix.de; Wed, 09 Aug 2023 09:27:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTdbZ-0005lG-Gm
	for lore@pengutronix.de; Wed, 09 Aug 2023 09:27:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c3QtdjVCSh4Od3cVhZ3kYHAPGNSvmmerQRenYK4hgMY=; b=Dz6RBRsttN4sS+EFwpRUin/g5t
	HddOQ6YDlojeiTUM4E+BolqhNfshhYThfKCDwpw/UArrVZR3tYjRtSClPf7wIiMLfq5rPAa3AlI2Y
	FKXPrAG6BsONZIysDC6wYSOfNfGViPdZg4DbHT/CK+ywVohYq9ckcFLGjytDK0zKOxJUANvqN3bOK
	8lutVcC7vEZVnBEiDEYcVezcTAvqcDRDwDng9ymZWh/F032IzG5m13FK2Lx2/DJxEx2VygGhA3jKS
	igGGYHXZiO4ncwcRYJ4v3y8iX2MdbhN+vXeO6KlmRG9SrhlJq6xsr+uP9OE0btOd9DFf/2qdNW7FP
	bLmewuhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTdaH-004G5A-04;
	Wed, 09 Aug 2023 07:26:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTdaE-004G40-0Q
	for barebox@lists.infradead.org;
	Wed, 09 Aug 2023 07:26:19 +0000
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1qTdaC-0005M4-O8
	for barebox@lists.infradead.org; Wed, 09 Aug 2023 09:26:17 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 1EE9620777D
	for <barebox@lists.infradead.org>; Wed,  9 Aug 2023 07:26:16 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id DD4B1207779;
	Wed,  9 Aug 2023 07:26:15 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id dc8190d1;
	Wed, 9 Aug 2023 07:26:15 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 09 Aug 2023 09:26:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230809-phytec-som-imx8mm-v4-1-b9d4759582d8@pengutronix.de>
References: <20230809-phytec-som-imx8mm-v4-0-b9d4759582d8@pengutronix.de>
In-Reply-To: <20230809-phytec-som-imx8mm-v4-0-b9d4759582d8@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.13-dev-83828
X-Developer-Signature: v=1; a=openpgp-sha256; l=1159; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=gGY+OKitlMXXW3mKjCRul3LY6rx6Y8aEzvgEC0Y1waw=;
 b=owEBbQGS/pANAwAKAb5QHEoqigToAcsmYgBk0z+PlBwZ2Y6q1i4VAibcWLHGX6ROgHMxmx9u7
 gQ0rCRf/hOJATMEAAEKAB0WIQQOzYG9qPI0qV/1MlC+UBxKKooE6AUCZNM/jwAKCRC+UBxKKooE
 6Gc9CACdySEcLFYykT0DSIhh+x3KspFEd14fBqXI5TesV0YZWAl2G+l3ZnadUZEnatjg0DMUM06
 PdDzruR4Zjp2rYYce2fjScwBf9pIXrhgPCMJ1mkRd/bRWTIGwT1hTkM76FGoFel9139BJvhUfYV
 ouJmZ5LxmeKbj1072eDK/6L5kOSTkevZi+Q7iQwd1Y80jJDTnpOPz7nnDw9lRoYMj8zyA5F+gGw
 nqWj2M8Fsc0MJcOkhHkg5B8HADNEq0H94RCZRV/1GErPLwjxrvRgZfADcofmnQO9LnCDhHPLWfW
 RnvXXaHqnMl4qcB7YIbil+AwlGPMlYWvPaMmcgt7p3ErGhO5
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230809_002618_164336_1B002079 
X-CRM114-Status: GOOD (  14.45  )
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
Cc: afa@pengutronix.de, kernel@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 1/3] i2c: add <pbl/eeprom.h> for PBL use
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
2.40.1




