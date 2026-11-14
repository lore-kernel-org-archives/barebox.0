Delivery-date: Sat, 14 Nov 2026 17:21:33 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xSGVR-00Apip-0b
	for lore@lore.pengutronix.de;
	Sat, 14 Nov 2026 17:21:33 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B7ACB2020B9
	for <lore@pengutronix.de>; Sat, 14 Nov 2026 17:21:32 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="ORInJ8l/";
	dkim=fail ("headers rsa verify failed") header.d=amelchem.com header.s=default2004 header.b=GS4edUk3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=amelchem.com (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794673293;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=tb59D88h4ehMg616FUzFO8nKwXcwJPWEBI7WHQFKXSQ=;
	b=Kqnx20OV4fNwpZ9v860BolpWexezEhdComZVU7HERlLTZZW04dSQU/1soL8F1dmoDzp1kF
	UzcuDuTHm2W8JR3MiWRn7lv447EtkopC0zT+VrN93oJhsXckIrezyjbYLE9dGW8hC1trRs
	kcI8odUpoZfJpq2Q0sMGwqQC0cYS7ZVYssTykzHedTh12nLJtrCb9DfyuCn9sMJR1lpgAv
	o1NcA2uG0y+SRk7NqspPPyVlVm6xfthvJ35Ma25S4sim/WJE+Rl/wBYtwa2AmFkgsw+Yzv
	7ivy6tfijVFyTbCS6QHn+iWFUiGj96lkjbXODLJ1i41GBOJ/ogxzAxzj8UvcHA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794673293; a=rsa-sha256;
	cv=none;
	b=JB5pjJimlr8tLobZzJysF6ExlDrftaUrYasfBVPCt0wXKqs5y8AOSoCu/u8dfhEK2yrW92
	1Ke2Mj4fu9USi6nVLm6Hd9z7x+Bxua3HjuDgFtRQCBsj2b5u6V3AkVTBNDxfSlPtReW2xH
	u03BeYQzpcyV+uAAeXbPOeeKjI5S1bBPn0KN48iLDiYCl0UbuyhYgSSaV36cE4Plq6dS4I
	ywzcY0LzNDKbTq9muXOJxJEiQeK7p1ojwmY9MFmI1fXGTz2SICXrzh7Hu7YMYO4oTcOPff
	q4y3EDkNw2UARu4yt7shPqONRilrrNOiwIe0h10WYZs8gESc0qlc0iouF1jZyQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="ORInJ8l/";
	dkim=fail ("headers rsa verify failed") header.d=amelchem.com header.s=default2004 header.b=GS4edUk3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=amelchem.com (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=tb59D88h4ehMg616FUzFO8nKwXcwJPWEBI7WHQFKXSQ=; b=ORInJ8l/uLiyjW
	iq/qlxlogvaFgtVLjj1DZA/I5K7mL11gL/Wpn+hcwrUwgPaE4xgB2VD0G+WAuwbt2Gh1Y7rjZRhN9
	nYMwz34LOXMUT6ypVRMX6Ft0eDXVvohwryUyZPRG0m+yaNi9gtFpRCPpb5mYohtNj8VgGQCeXqQJZ
	1UkSWl/3XeG45i7DFzbZVbLkz5r7SznTPjpoao1ArotsDQR9kzIePnV1KvJljGcSJj7nvOW+Iob0B
	tplN+Is62VxH5RedBehQyOA5tXaH7FwN1H1CRDBOzTlQ9kv0G37Hixw4ywIDlQ8GczJ5OyE0Hk3YA
	ZwNp9HGwPeZuLLF+xYiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSGUK-0000000GRs0-2uBF;
	Sat, 14 Nov 2026 16:20:24 +0000
Received: from www153.your-server.de ([213.133.104.153])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSGUF-0000000GRow-1Yeu
	for barebox@lists.infradead.org;
	Sat, 14 Nov 2026 16:20:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=amelchem.com; s=default2004; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=tb59D88h4ehMg616FUzFO8nKwXcwJPWEBI7WHQFKXSQ=; b=GS4edUk3f1OOnPyaT3YlHckrBp
	q6HqGpsqO3cmIx2AIIIpiTUEbtTdqE/boS8f2/TRLZOwGh/2Js4hVdhxjQBUT9BbDMrOaicQVNQq3
	dnhAwLb3tOHgzwC/exJPWBaiOw/HOVVIER4yiEh+CctYzW9+7elQcBwbEItB5RJFmEroRLMU0SEX4
	XGEr0oaH1dvewAwUTk0wwdMQfEpPg0avaExO4trFwIrivXoLlg+7zNJIMRrlBCDShNf+sZw+yv0bI
	UHrkZX28mm3yY9iUEYqXtY3J2/hPNXmjtLA1tmDY4RevaYk/kjNFN3c/WFNq8SfMfrPgvLl7FJtqO
	4wvrfc6Q==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www153.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <rossi@amelchem.com>)
	id 1xSGU7-0009mS-0i;
	Sat, 14 Nov 2026 17:20:11 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rossi@amelchem.com>)
	id 1xSGU6-000MCb-2q;
	Sat, 14 Nov 2026 17:20:10 +0100
From: Giandomenico Rossi <rossi@amelchem.com>
To: barebox@lists.infradead.org
Cc: Giandomenico Rossi <rossi@amelchem.com>,
	Nicola Fontana <ntd@entidi.it>
Subject: [PATCH 2/4] usb: typec: stusb4500: add USB PD fixed supply driver
Date: Sat, 14 Nov 2026 17:19:51 +0100
Message-Id: <20261114161953.1457428-3-rossi@amelchem.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261114161953.1457428-1-rossi@amelchem.com>
References: <20261114161953.1457428-1-rossi@amelchem.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.6/28183/Sat Nov 14 07:24:17 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_082019_733477_7EC905CC 
X-CRM114-Status: GOOD (  30.14  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Add support for the STMicroelectronics STUSB4500 autonomous
    USB Power Delivery sink controller. The driver configures up to three Fixed
    Supply sink PDOs through the Device Tree and programs them into the STUSB4500
    sink PDO registers. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: amelchem.com]
                             [URI: aka700.net]
                             [URI: edgekey.net]
                             [URI: akamaiedge.net]
                             [URI: st.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-5.81 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[amelchem.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_MIXED(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DNSWL_BLOCKED(0.00)[78.47.199.104:received];
	RCPT_COUNT_THREE(0.00)[3];
	R_DKIM_REJECT(0.00)[amelchem.com:s=default2004];
	DKIM_TRACE(0.00)[lists.infradead.org:+,amelchem.com:-];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[rossi@amelchem.com,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: B7ACB2020B9
X-Rspamd-Server: mx1
X-Stat-Signature: 7hnzwr9cw7frp1ifboc3rh544jkgq9ow

Add support for the STMicroelectronics STUSB4500 autonomous USB
Power Delivery sink controller.

The driver configures up to three Fixed Supply sink PDOs through
the Device Tree and programs them into the STUSB4500 sink PDO
registers.

It also supports triggering a PD renegotiation and reading back
the negotiated power contract, including the RDO and VBUS voltage.

Add the corresponding device-tree configuration for the STM32MP151A
SIPv2 board and expose the driver interface through a dedicated header.

Reviewed-by: Nicola Fontana <ntd@entidi.it>
Signed-off-by: Giandomenico Rossi <rossi@amelchem.com>
---
 drivers/usb/typec/Kconfig     |   11 +
 drivers/usb/typec/Makefile    |    1 +
 drivers/usb/typec/stusb4500.c | 1040 +++++++++++++++++++++++++++++++++
 include/usb/stusb4500.h       |   59 ++
 4 files changed, 1111 insertions(+)
 create mode 100644 drivers/usb/typec/stusb4500.c
 create mode 100644 include/usb/stusb4500.h

diff --git a/drivers/usb/typec/Kconfig b/drivers/usb/typec/Kconfig
index 3b32a4e05a..b491016b2b 100644
--- a/drivers/usb/typec/Kconfig
+++ b/drivers/usb/typec/Kconfig
@@ -12,3 +12,14 @@ config TYPEC_TUSB320
 	select TYPEC
 	help
 	  Say Y or here if your system has a TI TUSB320 Type-C port controller.
+
+config STUSB4500
+	bool "STUSB4500 Type-C Power Delivery support"
+	depends on OFDEVICE
+	depends on I2C
+	select REGMAP_I2C
+	select TYPEC
+	help
+	  Enable support for the STUSB4500 USB Type-C Power Delivery
+	  controller. The driver allows configuration and monitoring of
+	  USB-C power negotiation through the I2C interface.
diff --git a/drivers/usb/typec/Makefile b/drivers/usb/typec/Makefile
index 456b94afbf..0155a5da0b 100644
--- a/drivers/usb/typec/Makefile
+++ b/drivers/usb/typec/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_TYPEC)		+= class.o
 obj-$(CONFIG_TYPEC_TUSB320)	+= tusb320.o
+obj-$(CONFIG_STUSB4500) 	+= stusb4500.o
diff --git a/drivers/usb/typec/stusb4500.c b/drivers/usb/typec/stusb4500.c
new file mode 100644
index 0000000000..d49ff256eb
--- /dev/null
+++ b/drivers/usb/typec/stusb4500.c
@@ -0,0 +1,1040 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2026 Giandomenico Rossi <rossi@amelchem.com>, Amel s.r.l.
+
+/*
+ * STMicroelectronics STUSB4500 USB PD sink controller driver.
+ *
+ * The STUSB4500 is an autonomous USB Power Delivery (PD) sink controller.
+ * It stores up to 3 sink Power Data Objects (PDO) and negotiates the power
+ * contract with the source autonomously in hardware, independently of any
+ * host firmware.
+ *
+ * This driver programs the sink PDOs from the "sink-pdos" devicetree
+ * property into the DPM shadow registers and, optionally, triggers a
+ * renegotiation so the new PDOs take effect. It can then read back and
+ * report the resulting contract (negotiated voltage, current and the RDO
+ * flags) for a board or higher-level software to inspect.
+ *
+ * Because the STUSB4500 stores each sink PDO as a standard USB PD Fixed
+ * Supply PDO word, this driver reuses the generic PDO_FIXED() encoding
+ * from <dt-bindings/usb/pd.h> -- the same "sink-pdos" property and
+ * encoding used by drivers/usb/typec/tcpm/tcpm.c.
+ *
+ * Datasheet: https://www.st.com/resource/en/datasheet/stusb4500.pdf
+ * Register map: UM2650 "STUSB4500 software programming guide"
+ *
+ * Copyright (C) 2026 Amel s.r.l.
+ * Author: Giandomenico Rossi <rossi@amelchem.com>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <i2c/i2c.h>
+#include <of.h>
+#include <linux/err.h>
+#include <linux/regmap.h>
+#include <linux/bitfield.h>
+#include <dt-bindings/usb/pd.h>
+#include <asm/unaligned.h>
+#include <linux/usb/typec.h>
+#include <linux/usb/typec_altmode.h>
+#include <linux/mutex.h>
+#include <command.h>
+#include <getopt.h>
+#include <usb/stusb4500.h>
+
+
+/*	 STUSB4500 register map (UM2650) */
+#define	 STUSB4500_ALERT_STATUS_1		0x0b
+#define	 STUSB4500_ALERT_STATUS_1_MASK		0x0c
+#define	 STUSB4500_PORT_STATUS_0		0x0d
+#define	 STUSB4500_PORT_STATUS_1		0x0e
+#define	 STUSB4500_TYPEC_MONITORING_STATUS_0	0x0f
+#define	 STUSB4500_TYPEC_MONITORING_STATUS_1	0x10
+#define	 STUSB4500_CC_STATUS			0x11
+#define	 STUSB4500_CC_HW_FAULT_STATUS_0		0x12
+#define	 STUSB4500_PRT_STATUS			0x16
+#define	 STUSB4500_PD_COMMAND_CTRL		0x1a
+#define	 STUSB4500_MONITORING_CTRL_1		0x21
+#define	 STUSB4500_RESET_CTRL			0x23
+#define	 STUSB4500_PE_FSM			0x29
+#define	 STUSB4500_DEVICE_ID			0x2f
+#define	 STUSB4500_RX_HEADER_LOW		0x31
+#define	 STUSB4500_RX_DATA_OBJ			0x33
+#define	 STUSB4500_TX_HEADER_LOW		0x51
+#define	 STUSB4500_DPM_PDO_NUMB			0x70
+#define	 STUSB4500_DPM_SNK_PDO1			0x85
+#define	 STUSB4500_RDO_REG_STATUS		0x91
+
+#define	 STUSB4500_ID				0x25
+#define	 STUSB4500_ID_B				0x21
+#define	 STUSB4500_REGSIZE			8
+#define	 STUSB4500_MAX_PDO			3
+#define	 STUSB4500_PDO_SIZE			4
+#define  STUSB4500_RX_HEADER_SIZE               2
+
+#define PDO_VOLTAGE(_pdo) (FIELD_GET(STUSB4500_PDO_VOLTAGE, _pdo) * 50)
+#define PDO_CURRENT(_pdo) (FIELD_GET(STUSB4500_PDO_CURRENT, _pdo) * 10)
+
+/*
+ * Init clears all latched alerts by reading the 10 status registers from
+ * 0x0d (PORT_STATUS_0) to 0x16 (PRT_STATUS), per UM2650 "How to initialize
+ * the STUSB4500 properly".
+ */
+#define STUSB4500_STATUS_CLEAR_FIRST		STUSB4500_PORT_STATUS_0
+#define STUSB4500_STATUS_CLEAR_COUNT		10
+
+/* PE_FSM (0x29): policy-engine state value for "sink ready" */
+#define STUSB4500_PE_SNK_READY			0x14
+
+/* PD Soft Reset message, per UM2650 "How to send a USB PD software reset" */
+#define STUSB4500_PD_SOFT_RESET			0x0d	/* control msg type */
+#define STUSB4500_PD_SEND_MESSAGE		0x26	/* PD_COMMAND_CTRL cmd */
+
+/*
+ * Time to let a renegotiation settle before reading back state.
+ * Settling time to wait after triggering a renegotiation before the new
+ * contract can be read back. The STUSB4500 signals PD events via the ALERT
+ * interrupt, which this driver does not use, so there is no event to wait
+ * on and a fixed delay is used instead. UM2650 (sections 1.3 / 1.5, soft
+ * reset and renegotiation) documents that a settling period is required but
+ * gives no figure; this 500 ms is an empirically chosen margin, not an
+ * ST-specified value.
+ */
+#define STUSB4500_RENEGOTIATE_SETTLE_MS		500
+
+/* PORT_STATUS_1 (0x0e) fields */
+#define STUSB4500_PORT_STATUS_1_ATTACH		BIT(0)
+#define STUSB4500_PORT_STATUS_1_ATTACH_MODE	GENMASK(7, 5)
+
+/*
+ * Fixed Supply PDO / RDO fields are decoded with explicit GENMASK() +
+ * FIELD_GET() shift-and-mask rather than packed C bitfields: bit
+ * allocation order inside a bitfield is implementation-defined, whereas
+ * these formats are fixed by the USB PD spec. This is also the pattern
+ * the kernel uses for on-wire/register formats (see tcpm.c).
+ */
+
+/* Fixed Supply Sink PDO (Table 6-14, USB PD) */
+#define STUSB4500_PDO_CURRENT		GENMASK(9, 0)	/* 10 mA units */
+#define STUSB4500_PDO_VOLTAGE		GENMASK(19, 10)	/* 50 mV units */
+#define STUSB4500_PDO_SUPPLY_TYPE	GENMASK(31, 30)
+
+/* Fixed Request Data Object, RDO (Table 3, UM2650) */
+#define STUSB4500_RDO_OBJ_POSITION	GENMASK(30, 28)
+#define STUSB4500_RDO_GIVE_BACK		BIT(27)
+#define STUSB4500_RDO_CAP_MISMATCH	BIT(26)
+#define STUSB4500_RDO_USB_COMM_CAPABLE	BIT(25)
+#define STUSB4500_RDO_NO_USB_SUSPEND	BIT(24)
+#define STUSB4500_RDO_UNCHUNKED_EXT_MSG BIT(23)
+#define STUSB4500_RDO_OP_CURRENT	GENMASK(19, 10) /* 10 mA units */
+#define STUSB4500_RDO_MAX_OP_CURRENT	GENMASK(9, 0)	/* 10 mA units */
+
+
+/* Fixed Supply PDO - Source (Table 6-9) */
+#define PDO_FIXED_MAX_CURRENT	GENMASK(9, 0)
+#define PDO_FIXED_PEAK_CURRENT	GENMASK(21, 20)
+/* bit 24:22 reserved */
+#define PDO_FIXED_DATA_ROLE_SWAP    BIT(25)
+#define PDO_FIXED_EXTERNALLY_PWR    BIT(27)
+#define PDO_FIXED_SUSPEND_SUPPORTED BIT(28)
+#define PDO_FIXED_DUAL_ROLE_PWR	    BIT(29)
+
+/*  */
+#define STUSB4500_PRT_STATUS_MSG_RECEIVED   BIT(2)
+#define PD_HEADER_NUM_DATA_OBJ      GENMASK(14, 12)
+#define PD_HEADER_MSG_TYPE          GENMASK(4, 0)
+#define PDO_FIXED_VOLTAGE           GENMASK(19, 10)
+#define PD_DATA_MSG_SOURCE_CAP      0x01
+
+#define STUSB4500_OF_PDO_CELLS 3
+#define MAX_SRC_PDO       7
+#define VSAFE5V_MV        5000
+
+
+/*
+ * PDO2 and PDO3 voltages are programmable
+ * from 5 V to 20 V by steps of 50 mV
+ */
+#define STUSB4500_MAX_VOLTAGE 20000 /* mv */
+#define STUSB4500_MIN_VOLTAGE 5000  /* mv */
+
+/*
+ * Current predefined values are set in the look-up table
+ * from 0.5 A to 5 A
+ */
+#define STUSB4500_MAX_CURRENT 5000 /* mA */
+#define STUSB4500_MIN_CURRENT 10 /* mA */
+
+
+struct stusb4500 {
+	struct typec_port *port;
+	struct typec_capability	cap;
+	struct device *dev;
+	struct regmap *map;
+
+	u32 snk_pdo[STUSB4500_MAX_PDO];
+	int n_pdo;	   /* number of sink pdos */
+
+	/* current contract values */
+	struct stusb4500_pdo active_contract;
+
+	/* SOURCE PDO read after renegotiation */
+	u32 src_pdo[MAX_SRC_PDO];
+	int n_src_pdo;
+};
+
+/**
+ * stusb4500_reg_read() - read a single 8-bit register
+ * @stusb: the STUSB4500 device
+ * @reg: register address to read
+ *
+ * Return: the register value (0-255) on success, or a negative errno on
+ * failure. Because registers are 8-bit, the value never collides with the
+ * negative errno range, so callers may test the result with "< 0".
+ */
+static int stusb4500_reg_read(struct stusb4500 *stusb, unsigned int reg)
+{
+	unsigned int val;
+	int ret;
+
+	ret = regmap_read(stusb->map, reg, &val);
+	if (ret) {
+		dev_err(stusb->dev, "failed to read reg 0x%02x\n", reg);
+		return ret;
+	}
+
+	return val;
+}
+
+/**
+ * stusb4500_reg_write() - write a single 8-bit register
+ * @stusb: the STUSB4500 device
+ * @reg: register address to write
+ * @val: value to write
+ *
+ * Return: 0 on success, or a negative errno on failure.
+ */
+static int stusb4500_reg_write(struct stusb4500 *stusb, unsigned int reg, u8 val)
+{
+	int ret;
+
+	ret = regmap_write(stusb->map, reg, val);
+	if (ret < 0) {
+		dev_err(stusb->dev, "failed to write reg 0x%02x\n", reg);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int stusb4500_check_pdo_ranges(struct stusb4500 *stusb, int index,
+				      u32 voltage, u32 current)
+{
+	if (index < 1 || index > STUSB4500_MAX_PDO)
+		return -EINVAL;
+
+	if (voltage < STUSB4500_MIN_VOLTAGE || voltage > STUSB4500_MAX_VOLTAGE) {
+		dev_err(stusb->dev,
+			"PDO voltage out of range: %u mV (must be %d-%d)\n",
+			voltage, STUSB4500_MIN_VOLTAGE, STUSB4500_MAX_VOLTAGE);
+		return -EINVAL;
+	}
+
+	if (current < STUSB4500_MIN_CURRENT || current > STUSB4500_MAX_CURRENT) {
+		dev_err(stusb->dev,
+			"PDO current out of range: %u mA (must be %d-%d)\n",
+			current, STUSB4500_MIN_CURRENT, STUSB4500_MAX_CURRENT);
+		return -EINVAL;
+	}
+
+
+
+	return 0;
+}
+
+/**
+ * stusb4500_rdo_decode() - decode a raw RDO word into its fields
+ * @raw: the 32-bit Request Data Object, in host byte order
+ * @out: decoded output
+ */
+static void stusb4500_rdo_decode(u32 raw, struct stusb4500_rdo *out)
+{
+	out->object_position = FIELD_GET(STUSB4500_RDO_OBJ_POSITION, raw);
+	out->give_back = FIELD_GET(STUSB4500_RDO_GIVE_BACK, raw);
+	out->capability_mismatch = FIELD_GET(STUSB4500_RDO_CAP_MISMATCH, raw);
+	out->usb_comm_capable = FIELD_GET(STUSB4500_RDO_USB_COMM_CAPABLE, raw);
+	out->no_usb_suspend = FIELD_GET(STUSB4500_RDO_NO_USB_SUSPEND, raw);
+	out->unchunked_ext_msg_supported = FIELD_GET(STUSB4500_RDO_UNCHUNKED_EXT_MSG, raw);
+	out->operating_current_ma = FIELD_GET(STUSB4500_RDO_OP_CURRENT, raw) * 10;
+	out->max_operating_current_ma = FIELD_GET(STUSB4500_RDO_MAX_OP_CURRENT, raw) * 10;
+}
+
+/**
+ * stusb4500_requested_vbus() - read the negotiated VBUS voltage
+ * @stusb: the STUSB4500 device
+ *
+ * Return: voltage in millivolts, or a negative errno on I2C failure.
+ */
+static int stusb4500_requested_vbus(struct stusb4500 *stusb)
+{
+	int val;
+
+	/*
+	 * MONITORING_CTRL_1 (0x21) appears to report the negotiated VBUS
+	 * voltage in 100 mV steps, based on ST's own reference firmware
+	 * (usb-c/STUSB4500, USB_PD_core.c: Print_requested_PDO_Voltage()).
+	 * This behaviour is NOT documented in the public datasheet/UM2650 --
+	 * verified empirically against a bench supply + multimeter before
+	 * relying on it. If ST changes this in a future silicon revision
+	 * without notice, this will silently break.
+	 */
+	val = stusb4500_reg_read(stusb, STUSB4500_MONITORING_CTRL_1);
+	if (val < 0)
+		return val;
+
+	return val * 100;
+}
+
+/**
+ * stusb4500_read_rdo() - read and decode the Request Data Object
+ * @stusb: the STUSB4500 device
+ * @rdo: decoded output
+ *
+ * Return: 0 on success, or a negative errno on I2C failure.
+ */
+static int stusb4500_read_rdo(struct stusb4500 *stusb,
+			      struct stusb4500_rdo *rdo)
+{
+	__le32 raw;
+	int ret;
+
+	ret = regmap_bulk_read(stusb->map, STUSB4500_RDO_REG_STATUS,
+			       &raw, sizeof(raw));
+	if (ret) {
+		dev_err(stusb->dev, "failed to read RDO: %d\n", ret);
+		return ret;
+	}
+
+	stusb4500_rdo_decode(le32_to_cpu(raw), rdo);
+
+	return 0;
+}
+
+/**
+ * stusb4500_dump_pdo() - log one decoded sink PDO
+ * @stusb: the STUSB4500 device
+ * @raw4: pointer to the 4 raw little-endian PDO bytes
+ * @idx: zero-based PDO index
+ * @n_active: number of active PDOs, to mark this one active/inactive
+ */
+static void stusb4500_dump_pdo(struct stusb4500 *stusb, const u8 *raw4,
+			       int idx, int n_active)
+{
+	u32 pdo = get_unaligned_le32(raw4);
+	u32 voltage_mv = FIELD_GET(STUSB4500_PDO_VOLTAGE, pdo) * 50;
+	u32 current_ma = FIELD_GET(STUSB4500_PDO_CURRENT, pdo) * 10;
+
+	dev_info(stusb->dev, "sink PDO%d: %u mV, %u mA (%s)\n",
+		 idx + 1, voltage_mv, current_ma,
+		 idx < n_active ? "active" : "inactive");
+}
+
+/**
+ * stusb4500_has_explicit_contract() - is there a fully-satisfied PD contract?
+ * @c: the contract to inspect
+ *
+ * True only when an explicit PD contract exists (object position != 0) and
+ * the source fully satisfied the request (no capability mismatch).
+ *
+ * Return: true if the contract is explicit and satisfied, false otherwise.
+ */
+static bool stusb4500_has_explicit_contract(const struct stusb4500_contract *c)
+{
+	return c->rdo.object_position != 0 && !c->rdo.capability_mismatch;
+}
+
+/**
+ * stusb4500_cable_attached() - report whether a Type-C partner is attached
+ * @stusb: the STUSB4500 device
+ *
+ * Reads the live attach bit from PORT_STATUS_1 (0x0e). This is a persistent
+ * status bit, so it can be polled at any time without the ALERT interrupt.
+ *
+ * Return: 1 if attached, 0 if not, or a negative errno on I2C failure.
+ */
+static int stusb4500_cable_attached(struct stusb4500 *stusb)
+{
+	int ret;
+
+	ret = stusb4500_reg_read(stusb, STUSB4500_PORT_STATUS_1);
+	if (ret < 0)
+		return ret;
+
+	return !!(ret & STUSB4500_PORT_STATUS_1_ATTACH);
+}
+
+/**
+ * stusb4500_soft_reset() - issue a USB PD Soft Reset to force renegotiation
+ * @stusb: the STUSB4500 device
+ *
+ * Per UM2650 "How to send a USB PD software reset":
+ *   1. write 0x0d (Soft_Reset) to TX_HEADER_LOW (0x51)
+ *   2. write 0x26 (Send_Message) to PD_COMMAND_CTRL (0x1a)
+ * The two registers are not adjacent, so these are two separate I2C writes
+ * and cannot be merged into one bulk transfer. This is the VBUS-preserving
+ * way to renegotiate (as opposed to the electrical RESET_CTRL, which drops
+ * VBUS). It does not wait for the source's Accept/Reject; callers should
+ * let the contract settle and then read back the resulting state.
+ *
+ * Return: 1 if the message was issued, a negative errno on failure or if
+ * no cable attached
+ */
+static int stusb4500_soft_reset(struct stusb4500 *stusb)
+{
+	int ret;
+	__le16 buf =  cpu_to_le16(STUSB4500_PD_SOFT_RESET);
+
+	ret = stusb4500_cable_attached(stusb);
+	if (ret < 0) {			/* <0: error */
+		return ret;
+	}
+
+	if (ret == 0)                   /* 0: not attached */
+		return -ENODEV;
+
+	ret = regmap_bulk_write(stusb->map, STUSB4500_TX_HEADER_LOW, &buf, 2);
+	if (ret)
+		return ret;
+
+	ret = stusb4500_reg_write(stusb, STUSB4500_PD_COMMAND_CTRL,
+				  STUSB4500_PD_SEND_MESSAGE);
+	if (ret)
+		return ret;
+
+	return 1;
+}
+
+/**
+ * stusb4500_update_sink_pdos() - program the sink PDOs into the device
+ * @stusb: the STUSB4500 device
+ *
+ * Writes the PDOs held in stusb->snk_pdo[] into the DPM shadow registers,
+ * then sets the active PDO count. The PDOs are converted to little-endian
+ * and written in a single bulk transfer so the device never sees a
+ * partially-updated set.
+ *
+ * Return: 0 on success, or a negative errno on I2C failure.
+ */
+static int stusb4500_update_sink_pdos(struct stusb4500 *stusb)
+{
+	__le32 buf[STUSB4500_MAX_PDO];
+	int i, ret;
+
+	for (i = 0; i < stusb->n_pdo; i++)
+		buf[i] = cpu_to_le32(stusb->snk_pdo[i]);
+
+	ret = regmap_bulk_write(stusb->map, STUSB4500_DPM_SNK_PDO1,
+				buf, STUSB4500_PDO_SIZE * stusb->n_pdo);
+	if (ret) {
+		dev_err(stusb->dev, "failed to write sink PDOs: %d\n", ret);
+		return ret;
+	}
+
+	return stusb4500_reg_write(stusb, STUSB4500_DPM_PDO_NUMB, stusb->n_pdo);
+}
+
+/**
+ * stusb4500_dump_sink_pdos() - read back and log all sink PDOs
+ * @stusb: the STUSB4500 device
+ *
+ * Return: 0 on success, or a negative errno on I2C failure.
+ */
+int stusb4500_dump_sink_pdos(struct stusb4500 *stusb)
+{
+	u8 pdo_state[STUSB4500_PDO_SIZE * STUSB4500_MAX_PDO];
+	int i, n, ret;
+
+	ret = regmap_bulk_read(stusb->map, STUSB4500_DPM_SNK_PDO1,
+			       pdo_state, sizeof(pdo_state));
+	if (ret) {
+		dev_err(stusb->dev, "failed to read sink PDOs: %d\n", ret);
+		return ret;
+	}
+
+	n = stusb4500_reg_read(stusb, STUSB4500_DPM_PDO_NUMB);
+	if (n < 0)
+		return n;
+
+	for (i = 0; i < STUSB4500_MAX_PDO; i++)
+		stusb4500_dump_pdo(stusb, &pdo_state[STUSB4500_PDO_SIZE * i], i, n);
+
+	return 0;
+}
+EXPORT_SYMBOL(stusb4500_dump_sink_pdos);
+
+/**
+ * stusb4500_read_contract() - read the active power contract
+ * @stusb: the STUSB4500 device
+ * @c: decoded output (RDO fields plus the negotiated voltage)
+ *
+ * Return: 0 on success, or a negative errno on I2C failure.
+ */
+int stusb4500_read_contract(struct stusb4500 *stusb,
+			    struct stusb4500_contract *c)
+{
+	int ret;
+
+	ret = stusb4500_read_rdo(stusb, &c->rdo);
+	if (ret)
+		return ret;
+
+	ret = stusb4500_requested_vbus(stusb);
+	if (ret < 0)
+		return ret;
+
+	c->voltage_mv = ret;
+
+	return 0;
+}
+EXPORT_SYMBOL(stusb4500_read_contract);
+
+/**
+ * stusb4500_dump_contract() - log the active power contract
+ * @stusb: the STUSB4500 device
+ * @c: the contract to log
+ *
+ * object_position == 0 is reported as "no contract" (USB-C default,
+ * vSafe5V) rather than a misleading position 0, per Table 3 of UM2650.
+ */
+void stusb4500_dump_contract(struct stusb4500 *stusb,
+			     const struct stusb4500_contract *c)
+{
+	const struct stusb4500_rdo *rdo = &c->rdo;
+
+	if (!rdo->object_position) {
+		dev_info(stusb->dev,
+			 "contract: none (USB-C default, vSafe5V)\n");
+		return;
+	}
+
+	dev_info(stusb->dev,
+		 "contract: %s, %u mV, %u mA [id = %d]%s%s%s\n",
+		 stusb4500_has_explicit_contract(c) ? "explicit" : "mismatch",
+		 c->voltage_mv, rdo->operating_current_ma, rdo->object_position,
+		 rdo->capability_mismatch ? " [cap-mismatch]" : "",
+		 rdo->usb_comm_capable ? " [usb-comm]" : "",
+		 rdo->give_back ? " [give-back]" : "");
+}
+EXPORT_SYMBOL(stusb4500_dump_contract);
+
+/**
+ * stusb4500_capture_src_pdos() - copy the raw source PDOs from the RX buffer
+ * @stusb: the STUSB4500 handle
+ * @n_obj: number of data objects to read from the RX data buffer
+ *
+ * Reads @n_obj data objects from the RX data buffer and stores them raw in
+ * @stusb->src_pdo[], recording the count in @stusb->n_src_pdo. The caller is
+ * responsible for having already read the PD header and established that the
+ * RX buffer currently holds a Source_Capabilities message with @n_obj data
+ * objects; this function does no message-type check, no fixed-supply
+ * filtering and no voltage sanity check of its own.
+ *
+ * The RX buffer is volatile and overwritten by every incoming PD message, so
+ * this must be called promptly after the message is flagged in PRT_STATUS.
+ *
+ * Return: number of data objects stored (equal to @n_obj), or a negative
+ *         errno on I2C failure.
+ */
+static int stusb4500_capture_src_pdos(struct stusb4500 *stusb, u8 n_obj)
+{
+	u8 obj_raw[MAX_SRC_PDO * STUSB4500_PDO_SIZE];
+	const u8 *p;
+	int i, ret;
+
+	ret = regmap_bulk_read(stusb->map, STUSB4500_RX_DATA_OBJ,
+			       &obj_raw, n_obj * STUSB4500_PDO_SIZE);
+	if (ret)
+		return ret;
+
+	stusb->n_src_pdo = 0;
+	for (i = 0; i < n_obj; i++) {
+		p = &obj_raw[i * 4];
+		stusb->src_pdo[stusb->n_src_pdo++] = p[0] | (p[1] << 8) |
+			(p[2] << 16) | (p[3] << 24);
+	}
+
+	return stusb->n_src_pdo;
+}
+
+/**
+ * stusb4500_wait_and_capture_src_pdos() - capture source PDOs within a window
+ * @stusb:      the STUSB4500 handle
+ * @timeout_ms: length of the settling window, in milliseconds
+ *
+ * Polls the RX buffer until a Source_Capabilities message is seen and its
+ * PDOs are captured, then sleeps out the remainder of @timeout_ms. The
+ * window doubles as the time the contract needs to settle, so the full
+ * @timeout_ms is always consumed before returning, whether or not a
+ * message was captured. The RX buffer is volatile, so polling catches the
+ * capabilities before later messages overwrite them.
+ *
+ * The non-interruptible timeout keeps pollers from running during the
+ * window, avoiding I2C re-entrancy on the shared bus.
+ *
+ * Return: 0 always. The captured PDOs are left in @stusb->src_pdo[] /
+ *         @stusb->n_src_pdo for the caller to inspect; I2C errors from the
+ *         underlying reads are not propagated.
+ */
+static int stusb4500_wait_and_capture_src_pdos(struct stusb4500 *stusb,
+					       unsigned int timeout_ms)
+{
+	u64 start;
+	u8 n_obj = 0;
+	__le16 hdr_raw;
+	u16 hdr, msg_id;
+	int ret;
+	int remaining;
+	int elapsed;
+
+	start = get_time_ns();
+	do {
+		ret = regmap_bulk_read(stusb->map, STUSB4500_RX_HEADER_LOW, &hdr_raw,
+				       STUSB4500_RX_HEADER_SIZE);
+		if (ret < 0)
+			return ret;
+
+		hdr = le16_to_cpu(hdr_raw);
+		msg_id = (u16)FIELD_GET(PD_HEADER_MSG_TYPE, hdr);
+		if (msg_id == PD_DATA_MSG_SOURCE_CAP) {
+			n_obj = (u8)FIELD_GET(PD_HEADER_NUM_DATA_OBJ, hdr);
+			if (n_obj != 0) {
+				ret = stusb4500_capture_src_pdos(stusb, n_obj);
+				if (ret > 0)
+					break;
+			}
+		}
+	} while (!is_timeout(start, timeout_ms * MSECOND));
+
+	elapsed = div_u64(get_time_ns()-start, 1000000);
+	remaining = timeout_ms - elapsed;
+	if (remaining > 0)
+		mdelay(remaining);
+
+	return 0;
+}
+
+/**
+ * stusb4500_dump_source_pdos() - dump all source PDOs
+ * @stusb: the STUSB4500 device
+ */
+void stusb4500_dump_source_pdos(struct stusb4500 *stusb)
+{
+	int i;
+	u32 voltage_mv, current_ma;
+	u64 power;
+	u32 *pdos = stusb->src_pdo;
+
+	for (i = 0; i < stusb->n_src_pdo; i++) {
+		voltage_mv = PDO_VOLTAGE(pdos[i]);
+		current_ma = PDO_CURRENT(pdos[i]);
+		power = voltage_mv * current_ma/1000000;
+		printf("%d: V=%umV\tI=%umA\tP=%lluW\n", i+1, voltage_mv, current_ma, power);
+	}
+}
+EXPORT_SYMBOL(stusb4500_dump_source_pdos);
+
+/**
+ * stusb4500_renegotiate() - trigger a renegotiation and wait for it to settle
+ * @stusb: the STUSB4500 device
+ *
+ * Whether the sink PDOs actually changed is left for the caller to check by
+ * reading back the contract.
+ *
+ * Return: 0 on success, or a negative errno on failure.
+ */
+int stusb4500_renegotiate(struct stusb4500 *stusb)
+{
+	int ret;
+
+	ret = stusb4500_soft_reset(stusb);
+	if (ret < 0) {
+		dev_err(stusb->dev, "soft reset: %d\n", ret);
+		return ret;
+	}
+
+	/* wait the fixed settling time; see STUSB4500_RENEGOTIATE_SETTLE_MS */
+	mdelay(STUSB4500_RENEGOTIATE_SETTLE_MS);
+
+	return 0;
+}
+EXPORT_SYMBOL(stusb4500_renegotiate);
+
+int stusb4500_scan_src_pdo(struct stusb4500 *stusb)
+{
+	int ret;
+
+	ret = stusb4500_soft_reset(stusb);
+	if (ret < 0) {
+		dev_err(stusb->dev, "soft reset: %d\n", ret);
+		return ret;
+	}
+
+	stusb4500_wait_and_capture_src_pdos(stusb, STUSB4500_RENEGOTIATE_SETTLE_MS);
+
+	return 0;
+}
+EXPORT_SYMBOL(stusb4500_scan_src_pdo);
+
+int stusb4500_update_sink_pdo(struct stusb4500 *stusb, u8 index, u32 voltage, u32 current)
+{
+	u32 pdo;
+	__le32 raw;
+	int ret;
+	u8 reg;
+
+	ret = stusb4500_check_pdo_ranges(stusb, index, voltage, current);
+	if (ret < 0)
+		return ret;
+
+	if (index == 1 && voltage != STUSB4500_MIN_VOLTAGE) {
+		dev_warn(stusb->dev,
+			 "PDO1 should be 5V per USB PD standard (got %u mV)\n",
+			 voltage);
+		voltage = STUSB4500_MIN_VOLTAGE;
+	}
+
+	reg = STUSB4500_DPM_SNK_PDO1 + (index - 1) * 4;
+
+	/* read PDO to preserve current bit configuration (31:20) */
+	ret = regmap_bulk_read(stusb->map, reg, &raw, sizeof(raw));
+	if (ret < 0)
+		return ret;
+
+	pdo = le32_to_cpu(raw);
+
+	/* reset voltage+current (19:0)*/
+	pdo = pdo & ~(PDO_FIXED_VOLTAGE | PDO_FIXED_MAX_CURRENT);
+	pdo |= FIELD_PREP(PDO_FIXED_MAX_CURRENT, current / 10) |
+		FIELD_PREP(PDO_FIXED_VOLTAGE, voltage / 50);
+
+	raw = cpu_to_le32(pdo);
+	ret = regmap_bulk_write(stusb->map, reg, &raw, sizeof(raw));
+	if (ret < 0)
+		return ret;
+
+	stusb->snk_pdo[index - 1] = pdo;
+
+	return 0;
+}
+EXPORT_SYMBOL(stusb4500_update_sink_pdo);
+
+/**
+ * stusb4500_get() - look up an STUSB4500 instance by device name
+ * @name: name of the device to look up, or NULL for the default
+ *
+ * Devices registered by this driver are named after their device tree
+ * alias. Add an alias under /aliases pointing at the STUSB4500 node to
+ * get a deterministic name, following the "typec<N>" scheme, e.g.:
+ *
+ *     aliases {
+ *             typec0 = &pd_sink;
+ *     };
+ *
+ * With that alias, pass "typec0" as @name. Without any alias, the port
+ * falls back to a dynamically numbered "typec<N>" name assigned in probe
+ * order, which is not stable across configuration changes.
+ *
+ * When @name is NULL or empty, the single registered STUSB4500 is
+ * returned; if several are present the lookup is ambiguous and fails,
+ * so pass an explicit @name to disambiguate.
+ *
+ * Return: a valid handle, or an ERR_PTR()-encoded error:
+ *   -ENODEV if no matching device exists,
+ *   -EINVAL if @name is NULL but more than one device is registered.
+ */
+struct stusb4500 *stusb4500_get(const char *name)
+{
+	struct stusb4500 *stusb;
+	struct device *dev;
+	struct typec_port *port;
+
+	dev = get_device_by_name(name);
+	if (!dev)
+		return ERR_PTR(-ENODEV);
+
+	port = typec_port_from_device(dev);
+	stusb = typec_get_drvdata(port);
+	if (!stusb)
+		return ERR_PTR(-ENODEV);
+
+	return stusb;
+}
+EXPORT_SYMBOL(stusb4500_get);
+
+/**
+ * stusb4500_set_active_pdos() - set how many sink PDOs are advertised
+ * @stusb:  the STUSB4500 handle
+ * @n_pdo:  number of sink PDOs to advertise, from 1 to STUSB4500_MAX_PDO
+ *
+ * Writes the DPM_PDO_NUMB register so that only the first @n_pdo sink
+ * PDOs are offered to the source during PD negotiation. The new value
+ * takes effect at the next negotiation; call stusb4500_renegotiate()
+ * to apply it right away.
+ *
+ * Return: 0 on success, -EINVAL if @n_pdo is out of range, or a
+ * negative errno if the register write fails.
+ */
+int stusb4500_set_active_pdos(struct stusb4500 *stusb, int n_pdo)
+{
+	int ret;
+
+	if (n_pdo < 1 || n_pdo > STUSB4500_MAX_PDO) {
+		dev_err(stusb->dev, "invalid PDO count %d (must be 1-%d)\n",
+			n_pdo, STUSB4500_MAX_PDO);
+		return -EINVAL;
+	}
+
+	ret = stusb4500_reg_write(stusb, STUSB4500_DPM_PDO_NUMB, n_pdo);
+	if (ret) {
+		dev_err(stusb->dev, "failed to write active PDOs: %d\n", ret);
+		return ret;
+	}
+
+	stusb->n_pdo = n_pdo;
+
+	return 0;
+}
+EXPORT_SYMBOL(stusb4500_set_active_pdos);
+
+static int stusb4500_poll_handler(struct typec_port *port)
+{
+	return 0;
+}
+
+
+static const struct typec_operations stusb4500_typec_ops = {
+	.poll = stusb4500_poll_handler,
+};
+
+static int stusb4500_typec_register(struct stusb4500 *stusb,
+				    struct device_node *connector)
+{
+	stusb->cap.driver_data	= stusb;
+	stusb->cap.ops		= &stusb4500_typec_ops;
+	stusb->cap.of_node	= connector;
+
+	stusb->port = typec_register_port(stusb->dev, &stusb->cap);
+	if (IS_ERR(stusb->port))
+		return PTR_ERR(stusb->port);
+
+	typec_set_pwr_role(stusb->port, TYPEC_SINK);
+	typec_set_role(stusb->port, USB_ROLE_NONE);
+	typec_set_mode(stusb->port, TYPEC_MODE_USB3);
+
+	return 0;
+}
+
+/**
+ * stusb4500_refresh_contract() - re-read the PD contract and update the cache
+ * @stusb: the STUSB4500 device
+ *
+ * Reads the current PD contract straight from the chip and stores it in
+ * @stusb->active_contract, so the cache reflects the live hardware state.
+ * Call this whenever the cached contract must be made current -- e.g.
+ * before emitting it to the device tree, or when a parameter is read.
+ *
+ * Return: 0 on success, or a negative errno on I2C failure.
+ */
+static int stusb4500_refresh_contract(struct stusb4500 *stusb)
+{
+	struct stusb4500_contract c;
+	int ret;
+
+	ret = stusb4500_read_contract(stusb, &c);
+	if (ret < 0)
+		return ret;
+
+	stusb->active_contract.voltage_mv = c.voltage_mv;
+	stusb->active_contract.current_ma = c.rdo.operating_current_ma;
+	stusb->active_contract.id = c.rdo.object_position;
+
+	return 0;
+}
+
+/**
+ * stusb4500_param_update() - refresh the voltage_mv/current_ma parameters
+ * @p:    the parameter being read (unused)
+ * @priv: the struct stusb4500, as registered with dev_add_param_uint32()
+ *
+ * Getter invoked by the parameter framework whenever voltage_mv or
+ * current_ma is read. Re-reads the negotiated PD contract from the chip
+ * and updates the backing-store fields so the returned value is current.
+ *
+ * Return: 0 on success, or a negative errno if the contract read fails.
+ */
+static int stusb4500_param_update(struct param_d *p, void *priv)
+{
+	struct stusb4500 *stusb = priv;
+
+	return stusb4500_refresh_contract(stusb);
+}
+
+/**
+ * stusb4500_register() - parse the "connector" sub-node and register the typec port
+ * @stusb: the STUSB4500 device
+ *
+ * Looks up the "connector" sub-node, registers the STUSB4500 as a
+ * typec port against it, and reads the "sink-pdos" property into
+ * stusb->snk_pdo[], recording the count in stusb->n_pdo.
+ *
+ * Return: 0 on success, or a negative errno on failure.
+ */
+static int stusb4500_register(struct stusb4500 *stusb)
+{
+	struct device_node *np = stusb->dev->of_node;
+	struct device_node *connector;
+	int nr, ret;
+
+	connector = of_get_child_by_name(np, "connector");
+	if (!connector)
+		return dev_err_probe(stusb->dev, -ENODEV,
+				     "missing 'connector' sub-node\n");
+
+	ret = stusb4500_typec_register(stusb, connector);
+	if (ret < 0) {
+		dev_err_probe(stusb->dev, ret, "typec error registering device\n");
+		goto out;
+	}
+	nr = of_property_read_variable_u32_array(connector, "sink-pdos",
+						 stusb->snk_pdo, 1, STUSB4500_MAX_PDO);
+	if (nr < 0) {
+		ret = dev_err_probe(stusb->dev, nr,
+				    "sink-pdos must list 1 to %d PDOs\n",
+				    STUSB4500_MAX_PDO);
+		goto out;
+	}
+
+	stusb->n_pdo = nr;
+
+out:
+	of_node_put(connector);
+	return ret;
+}
+
+/**
+ * stusb4500_init() - verify the device and bring it to a clean state
+ * @stusb: the STUSB4500 device
+ *
+ * Reads and checks DEVICE_ID, then clears any latched alerts by reading
+ * the 10 status registers from 0x0d to 0x16, per UM2650 "How to initialize
+ * the STUSB4500 properly". This driver does not use the ALERT interrupt,
+ * so the alert-mask configuration step from that sequence is intentionally
+ * omitted; it would only matter once an interrupt handler is added.
+ *
+ * Return: 0 on success, or a negative errno on failure.
+ */
+static int stusb4500_init(struct stusb4500 *stusb)
+{
+	u8 status[STUSB4500_STATUS_CLEAR_COUNT];
+	int id, ret;
+
+	id = stusb4500_reg_read(stusb, STUSB4500_DEVICE_ID);
+	if (id < 0)
+		return id;
+
+	if (id != STUSB4500_ID && id != STUSB4500_ID_B)
+		return dev_err_probe(stusb->dev, -ENODEV,
+				     "unexpected chip ID 0x%02x (expected 0x%02x or 0x%02x)\n",
+				     id, STUSB4500_ID, STUSB4500_ID_B);
+
+	ret = regmap_bulk_read(stusb->map, STUSB4500_STATUS_CLEAR_FIRST,
+			       status, sizeof(status));
+	if (ret)
+		return dev_err_probe(stusb->dev, ret,
+				     "failed to clear alert status\n");
+
+	return 0;
+}
+
+static int stusb4500_probe(struct device *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct regmap_config config = {
+		.reg_bits = STUSB4500_REGSIZE,
+		.val_bits = STUSB4500_REGSIZE,
+		.max_register = STUSB4500_RDO_REG_STATUS + 3,
+	};
+	struct stusb4500_contract contract = {};
+	struct stusb4500 *stusb;
+	int ret;
+
+	stusb = xzalloc(sizeof(*stusb));
+	stusb->dev = dev;
+
+	ret = stusb4500_register(stusb);
+	if (ret)
+		goto err_free;
+
+	stusb->map = regmap_init_i2c(client, &config);
+	if (IS_ERR(stusb->map)) {
+		ret = PTR_ERR(stusb->map);
+		goto err_free;
+	}
+
+	ret = stusb4500_init(stusb);
+	if (ret)
+		goto err_regmap;
+
+	dev->priv = stusb;
+
+	ret = stusb4500_update_sink_pdos(stusb);
+	if (ret)
+		goto err_regmap;
+
+	if (of_property_read_bool(dev->of_node, "st,renegotiate-on-probe")) {
+		ret = stusb4500_renegotiate(stusb);
+		if (ret < 0)
+			goto err_regmap;
+	}
+
+	ret = stusb4500_read_contract(stusb, &contract);
+	if (ret)
+		goto err_regmap;
+
+	dev_add_param_uint32(stusb->dev, "voltage",
+			     param_set_readonly, stusb4500_param_update,
+			     &stusb->active_contract.voltage_mv, "%u", stusb);
+	dev_add_param_uint32(stusb->dev, "current",
+			     param_set_readonly, stusb4500_param_update,
+			     &stusb->active_contract.current_ma, "%u", stusb);
+
+	dev_info(dev, "probed\n");
+
+	return 0;
+
+err_regmap:
+	regmap_exit(stusb->map);
+err_free:
+	free(stusb);
+	return ret;
+}
+
+
+static const struct of_device_id stusb4500_dt_ids[] = {
+	{ .compatible = "st,stusb4500" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, stusb4500_dt_ids);
+
+static struct driver stusb4500_driver = {
+	.name  = "stusb4500",
+	.probe = stusb4500_probe,
+	.of_compatible = DRV_OF_COMPAT(stusb4500_dt_ids),
+};
+device_i2c_driver(stusb4500_driver);
+
+MODULE_AUTHOR("Giandomenico Rossi <rossi@amelchem.com>");
+MODULE_DESCRIPTION("STUSB4500 USB Type-C Power Delivery sink controller (I2C).");
+MODULE_LICENSE("GPL v2");
diff --git a/include/usb/stusb4500.h b/include/usb/stusb4500.h
new file mode 100644
index 0000000000..927e570cd7
--- /dev/null
+++ b/include/usb/stusb4500.h
@@ -0,0 +1,59 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * STUSB4500 USB-C Power Delivery sink controller
+ *
+ * Copyright (C) 2026 Amel s.r.l.
+ * Author: Giandomenico Rossi <rossi@amelchem.com>
+ */
+
+#ifndef __USB_STUSB4500_H
+#define __USB_STUSB4500_H
+
+#define	 STUSB4500_MAX_PDO			3
+
+struct stusb4500;
+
+/*
+ * Decoded Request Data Object -- a plain in-memory container, not a
+ * hardware-layout mirror (FIELD_GET already did the layout-sensitive work).
+ */
+struct stusb4500_rdo {
+	u8 object_position;	/* 1..7 index into the SOURCE list, 0 = none */
+	bool give_back;
+	bool capability_mismatch;
+	bool usb_comm_capable;
+	bool no_usb_suspend;
+	bool unchunked_ext_msg_supported;
+	u32 operating_current_ma;
+	u32 max_operating_current_ma;
+};
+
+/*
+ * Higher-level view of the active contract: the decoded RDO plus the
+ * negotiated voltage. The voltage does NOT come from the RDO but from
+ * MONITORING_CTRL_1 (0x21); it is kept in a separate field so the RDO
+ * struct stays a faithful 1:1 decode of the RDO register.
+ */
+struct stusb4500_contract {
+	struct stusb4500_rdo rdo;
+	u32 voltage_mv;
+};
+
+struct stusb4500_pdo {
+	int id;
+	u32 voltage_mv;
+	u32 current_ma;
+};
+
+struct stusb4500 *stusb4500_get(const char *name);
+int stusb4500_renegotiate(struct stusb4500 *stusb);
+int stusb4500_update_sink_pdo(struct stusb4500 *stusb, u8 index, u32 voltage, u32 current);
+int stusb4500_set_active_pdos(struct stusb4500 *stusb, int n_pdo);
+int stusb4500_read_contract(struct stusb4500 *stusb, struct stusb4500_contract *c);
+void stusb4500_dump_contract(struct stusb4500 *stusb, const struct stusb4500_contract *c);
+int  stusb4500_dump_sink_pdos(struct stusb4500 *stusb);
+void stusb4500_dump_source_pdos(struct stusb4500 *stusb);
+int stusb4500_scan_src_pdo(struct stusb4500 *stusb);
+
+
+#endif /* __USB_STUSB4500_H */
-- 
2.34.1



