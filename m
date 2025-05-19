Delivery-date: Mon, 19 May 2025 09:09:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGud3-000Qqu-3D
	for lore@lore.pengutronix.de;
	Mon, 19 May 2025 09:09:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGud3-0006gY-71
	for lore@pengutronix.de; Mon, 19 May 2025 09:09:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dVlcoTnUeHlxWH4hcpnSPQ9V9UuDloUyRIhykOA6ZPE=; b=V7T583vjykXPapSfk4py5zE8rg
	dGe2xlGDKdb8wPXcPgW7vQIOmxAMsQnq4kCYH3NVs0Kl/LSjqhDQwgAFnen1ITHSEQr1mWyQQLA54
	AxG/h3em3juZgwAP7XcUgOLts4Yg8RrNJsyPRmMWne+OirrDaiE8dfTRascG3vtYasDIagehL6xJU
	PGoNHdmwu00mHOLDNPd+yLyo6NAmFpE3eByqabyR8uI4wEum04JL5cONCm6ZEh4vmWP5454HXVhvp
	09/LsmKwk3g3wJoZjUciRs/V+VL8u7dgJyoLlBMj1FFn2n2FJhru4nPuLzQojFkClwdjkSlCsG04M
	hedX91rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGucb-00000008BKb-2dfT;
	Mon, 19 May 2025 07:09:13 +0000
Received: from mail-francesouthazolkn190110001.outbound.protection.outlook.com ([2a01:111:f403:d207::1] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGucY-00000008BJB-2wcj
	for barebox@lists.infradead.org;
	Mon, 19 May 2025 07:09:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hgWpRB1fy0P7AOMjsL4FWHNQ/5qdVJs9tCdGQ+DFOrDXgW/9SIY4x0SCnqHOhYa6JyoCPofSojeredklahJwfjJyl9On2oMWD0mQKFi9Gc4SpV61ZacKlwFls7DXnXZ4ca21UTnTbYJNW7fcYPJv+94Thu0poRRIoIvoHcscTVT/tjcgQ3JNhhw8n8TdETE5xraUzyjIjdZW0BPpYMwJHwtL1UZqXV+RWFUSyQYirM/vAwFL2D/CfZnGJuNOzBKTCdKZardOwPpjYP9BLY0NFEAPYW5/KTWyfLf1oLf4x7T/PFlHr8rzw/ytYKXKofx9Plzyt0lwmnjPm+UiZs2cQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dVlcoTnUeHlxWH4hcpnSPQ9V9UuDloUyRIhykOA6ZPE=;
 b=fpzT5Hb8Rzz60xDQDcWwVFCxiZGjJuTpyj9VkrlPScXL/IUdbisf68cMZgrQ4DLq7iJgzreOmuzcM9o/kN9MzD958PUVE1ATw1trXWfhiv3t1Tw7hPNNhkl8hfUMvA1vXvCf4gTlgclQHqHML4ZBlKIpLAugANjxfCn4e0or57sPzNvve7xgfLtjUbcANL1JM1MsYzApRKhSFhSr0Vh9O+e2o6BIsqTrumDeWQnNDArRaA9qAPZypgXCXJAxb3poNakuZzWXfQ6mOoZG66MLaZ7tW1kvw2xoxwL/FxkTgAPTJ5hsUYVzn5HZJJIpJN5Xiqm9D1W0iSFU7KFPNSXiOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dVlcoTnUeHlxWH4hcpnSPQ9V9UuDloUyRIhykOA6ZPE=;
 b=Nh/JGLDljpchs4xKh/logZxZQvA4kNu7RjLoAbWgq6kEJcEATRDH/3ZwhjFsuc0vKsC9MxcdM1PIU/90T8A+Tb0mUsu2WZT2ZPgzrq8lDhTI3ReKUzEuKP/G9sPmZV5u6uqtDDGm59PYh93jtrj13dG6iRTdbLVrvhejmcxm5B++52QyxMbXBHOw0sG2GiKCzwrpVrF3/41M+Bj9dQUOWqDYz8LCUqYCrBxCMS4SswXjIZQsO6fuUz/Rgh/ndXOC9U66r00GiLqkbUwuxbZqwjT0U5zDmeeIBVtZX615rZJ6yi3XtDyOhlhaiRgL1Y4UA08bcOZ/V/42C4A403dEKQ==
Received: from VI1PR02MB4429.eurprd02.prod.outlook.com (2603:10a6:803:b2::14)
 by AS8PR02MB10006.eurprd02.prod.outlook.com (2603:10a6:20b:616::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.17; Mon, 19 May
 2025 07:09:06 +0000
Received: from VI1PR02MB4429.eurprd02.prod.outlook.com
 ([fe80::fcf4:21c7:f28e:cfb2]) by VI1PR02MB4429.eurprd02.prod.outlook.com
 ([fe80::fcf4:21c7:f28e:cfb2%5]) with mapi id 15.20.8722.027; Mon, 19 May 2025
 07:09:06 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
To: "johannes@gnu-linux.rocks" <johannes@gnu-linux.rocks>,
	"a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>, "l.stach@pengutronix.de"
	<l.stach@pengutronix.de>, "m.tretter@pengutronix.de"
	<m.tretter@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH] added zynq 7000 usb support
Thread-Index: AQHbyIyiByCNUOEO6UiND7tKRKV6Gw==
Date: Mon, 19 May 2025 07:09:06 +0000
Message-ID: <VI1PR02MB44291219773B2D4E4D4D2777AB9CA@VI1PR02MB4429.eurprd02.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR02MB4429:EE_|AS8PR02MB10006:EE_
x-ms-office365-filtering-correlation-id: 11c1440d-6302-472a-b5d9-08dd96a40b22
x-microsoft-antispam: BCL:0;ARA:14566002|41001999006|461199028|8062599006|8060799009|7092599006|15080799009|19110799006|15030799003|102099032|440099028|3412199025;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?i4qnHw3ZnFL+oIHQx9z7UFz1lTYD3KEH2LeQ8fXUBrKGpHeAzspK2kbXMp?=
 =?iso-8859-1?Q?5jZ0/yDxfq7MtgvFJeGVpJO93IpNLgGSiOsAIkKCpn3fOxZ6XROUzrVT6j?=
 =?iso-8859-1?Q?uo5jfNTYVYxG387OB+TYl6neXOWUGkDupooNHQ2OP4GFGbOO+lr+eF8y+d?=
 =?iso-8859-1?Q?IXRIjeHjmRLLsg0ijwdDFp0kZB2G5D3sm0+NP84sfF0at7hIqBEEgO3j13?=
 =?iso-8859-1?Q?S7eGqR8c3cSgQQ2ZFDXtNfGRm12ti786YrwcdgdBfvE8nl+IFYtF49puxL?=
 =?iso-8859-1?Q?QuFqyGxci5WO//kwLdh4CW2InhF4v+1r3Hl2FhLA6/zxmFn263PwtwLE6k?=
 =?iso-8859-1?Q?HYDPr2z+ZRHrQ61BHmgKifXvJ7VUx1U71acCpX38c+LfccoeeTRBKHMi6b?=
 =?iso-8859-1?Q?4tLPbnkSCkCvx34vzfaiUZwtphjFpB8ulVmQf8UgV2Yf69FCiV88MJMkYK?=
 =?iso-8859-1?Q?p2XrkpIPij5ZkHFy2T0IIOmwv8lT+HNLmD9vTK+rfTDzpXfG7T/TbBPaZs?=
 =?iso-8859-1?Q?xw0LDhQW9pkNUizBhcphS+ZNwlDCR6B9xOdUPjJxQEvTYwXcHtWX8IjJWh?=
 =?iso-8859-1?Q?oGZIJrsYtWdOAJtYFWU9tTzoY50flPMPGjW8L45bxM/uIW32yTZx0WaQii?=
 =?iso-8859-1?Q?6D9yykKpo/0xeHrksTQTpjNX69w56BgnYhrPuPYwkprlmEetTGokZz0K58?=
 =?iso-8859-1?Q?4Q0/nmZkluSQres1irSzJowvYB/pfcFVAgc4ZYl4mdWLxl6bQfavlMRski?=
 =?iso-8859-1?Q?XAIBc+Fh0ZxAAt9oPzShINhBLchSIhL94PVJCFXmEnJhzUJLlKs3wjniMj?=
 =?iso-8859-1?Q?CvzRFpZCWs0aiGRqLkCnkWZ4BypbujZMQGwD40lJiFLvydfTtHURWeuEtF?=
 =?iso-8859-1?Q?STeX5Dik31kc65WycvA9KWTmfE5KzHKxFfmSH3nuknBGbFcunQ/4g0GelQ?=
 =?iso-8859-1?Q?vYzNIEJErpB4a+K8Q/sYRP6p2IxTIZ6zKLuVMytd2gHkvFApHdWa2gPiKf?=
 =?iso-8859-1?Q?HARS7q0lc1+aLV21h2gMasET3Kvzu+VsJin0EzaULgt0cE60LLbzapsgur?=
 =?iso-8859-1?Q?PD/rCfq4uJAaVlqZMLPe9kyFvclKMedSKSMRhq9buREnUlsq6biVG4/YJ/?=
 =?iso-8859-1?Q?QGx+gLC6KZP9HVhXKyDl7KFWAgB6MisnwxnKXWyufHOcJRdmCFq0fDjovX?=
 =?iso-8859-1?Q?zhVDb03VngsPLENy+B1HEi+AfmiSL1ffdnU=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?pu05kxRT6kZ+vtTgAe/Mxk5uZ9PZ9ncu/hqbYbbFRqTp1zM03iYUhZRHsm?=
 =?iso-8859-1?Q?aZtN0IpQgOd4LMPYdbSx+LEhOHV9J/g1e9pOF/TXG+avTEjy9nf3A/1l1X?=
 =?iso-8859-1?Q?OyKgQtu50nFfoGACRzVX9u7iZRNfqsJSNqVZD0keL3uS+dHgJldO8ATJrO?=
 =?iso-8859-1?Q?cFu03ia5UQcXftqqIS1UIjw4gmt1si0CnZOcC2k5M7N80qcDZN9JxPY6ay?=
 =?iso-8859-1?Q?1ogaJmZtRrvn5M0uLLjNjTFu1EGwBfLaJ4BWMFUyzrpzGCMvJE/n+mKrAY?=
 =?iso-8859-1?Q?EfGN9TVz9PjJOuSgj9X5jlfuqw/hpuOme1I6W+1nL6ZwfI5Am+P7ypTlQ0?=
 =?iso-8859-1?Q?l43eXUI5lg+2mqCICNFy73eMD7RMFQO9KsNbFOEq6Pcrc5bD2+VwbutHIn?=
 =?iso-8859-1?Q?ULl2QEubIbvQCI8zZfbtajERag9AN0TR+mVAEoPtIS2JNchu/5O4HYrXML?=
 =?iso-8859-1?Q?r8dohUEqrS1NBV/Q6cuOG+YrvlF0feSNTI53p67bYEhYvKTE/8VtdtDaqk?=
 =?iso-8859-1?Q?l/U0ycF2NfnRHkg3LFBYsW3yuZQ9MEvbaEceXK/jjv0LdNE3e55ErdGZHb?=
 =?iso-8859-1?Q?ssDEuVhlBEJij78S83REBA2za8HlGsBmVvI0LG3kcw5QjCnr2oawxhgv97?=
 =?iso-8859-1?Q?+5NbNmxMXXuYi0QHQCVY1FxNiyVcw9wxxM7TejPzTjRcFKNt5hlLeeXKzz?=
 =?iso-8859-1?Q?s3OnQaMyWT6SXgsse87HakxSozjmcLI1+DbNWCKBkStctThRbdVG44+Q8l?=
 =?iso-8859-1?Q?/rms06CGHF60vCE1sQs+lOBRWE34eojqygZSkMcHIQhSbzsk1feiKNYVsK?=
 =?iso-8859-1?Q?yjMjGOCtJYDdbkM5r72cMsmEWrvntaP2tohg7tts/VkwRLoeu37U9lshl1?=
 =?iso-8859-1?Q?yVyApNt+WkLC3yn9Eavpk9nAFXbj+nzBlbcMml23e4gSILsrqniO1aLMUb?=
 =?iso-8859-1?Q?KbxfCsNarhbjH08/af6UqWYZYI2U3FWVBUxRZWByju2DfV4lMYYFVXprq2?=
 =?iso-8859-1?Q?5QK84V/DK8Ek5lFIHIo/io5FHzj3ewPIE3MPpHfDw/IWb7/Lz79Zv3lMPc?=
 =?iso-8859-1?Q?uo1Cxmsdde1/GlSrSK88rbEuFkjBa5f9SRWWVR4/cRCcS/rGZ2LaDkxOHg?=
 =?iso-8859-1?Q?E5xublFFblGNcFbn0Ix+dlNgxbWgta+bdt/KmRlBYALotzJ4GqbrXoKQbg?=
 =?iso-8859-1?Q?oOXupJSbseTo4qo3im5L8jlhPkR+S1GKGPPsc7QVvkMzhXpUOWfpvm8T6F?=
 =?iso-8859-1?Q?55aTODlZp/UAFZDhNOVQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7828-19-msonline-outlook-12d23.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR02MB4429.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 11c1440d-6302-472a-b5d9-08dd96a40b22
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2025 07:09:06.1983
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR02MB10006
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_000910_739256_1E05A3F2 
X-CRM114-Status: GOOD (  11.35  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_HOTMAIL_RCVD2,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] added zynq 7000 usb support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support to use the USB interface on Zynq-7000 SoC.=0A=
=0A=
Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>=0A=
---=0A=
 drivers/usb/host/Kconfig     |  8 ++++++++=0A=
 drivers/usb/host/Makefile    |  1 +=0A=
 drivers/usb/host/ehci-zynq.c | 36 ++++++++++++++++++++++++++++++++++++=0A=
 3 files changed, 45 insertions(+)=0A=
 create mode 100644 drivers/usb/host/ehci-zynq.c=0A=
=0A=
diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig=0A=
index d38b4dcac4..812270f869 100644=0A=
--- a/drivers/usb/host/Kconfig=0A=
+++ b/drivers/usb/host/Kconfig=0A=
@@ -14,6 +14,14 @@ config USB_EHCI_ATMEL=0A=
 	select USB_OHCI_AT91=0A=
 	bool "Atmel EHCI driver"=0A=
 =0A=
+config USB_EHCI_ZYNQ=0A=
+	bool "Support for Xilinx Zynq on-chip EHCI USB controller"=0A=
+	depends on ARCH_ZYNQ=0A=
+	select USB_EHCI=0A=
+	select USB_ULPI=0A=
+	help=0A=
+	  Enable support for Zynq on-chip EHCI USB controller=0A=
+=0A=
 config USB_OHCI=0A=
 	bool "OHCI driver"=0A=
 	depends on !MMU && HAS_DMA=0A=
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile=0A=
index e55dff4580..cbddfbe923 100644=0A=
--- a/drivers/usb/host/Makefile=0A=
+++ b/drivers/usb/host/Makefile=0A=
@@ -2,6 +2,7 @@=0A=
 obj-$(CONFIG_USB_EHCI)		+=3D ehci-hcd.o=0A=
 obj-$(CONFIG_USB_EHCI_OMAP)	+=3D ehci-omap.o=0A=
 obj-$(CONFIG_USB_EHCI_ATMEL)	+=3D ehci-atmel.o=0A=
+obj-$(CONFIG_USB_EHCI_ZYNQ)	+=3D ehci-zynq.o=0A=
 obj-$(CONFIG_USB_OHCI)		+=3D ohci-hcd.o=0A=
 obj-$(CONFIG_USB_OHCI_AT91)	+=3D ohci-at91.o=0A=
 obj-$(CONFIG_USB_XHCI)		+=3D xhci.o xhci-mem.o xhci-ring.o=0A=
diff --git a/drivers/usb/host/ehci-zynq.c b/drivers/usb/host/ehci-zynq.c=0A=
new file mode 100644=0A=
index 0000000000..f08e9a3c5c=0A=
--- /dev/null=0A=
+++ b/drivers/usb/host/ehci-zynq.c=0A=
@@ -0,0 +1,36 @@=0A=
+// SPDX-License-Identifier: GPL-2.0+=0A=
+/*=0A=
+ * USB Low level initialization(Specific to Zynq 7000)=0A=
+ */=0A=
+=0A=
+#include <common.h>=0A=
+#include <linux/usb/ulpi.h>=0A=
+=0A=
+static int zynq_ehci_probe(struct device_d *dev)=0A=
+{=0A=
+	struct resource *res;=0A=
+	void __iomem *base;=0A=
+=0A=
+	res =3D dev_get_resource(dev, IORESOURCE_MEM, 0);=0A=
+	if (!res)=0A=
+		return -EINVAL;=0A=
+=0A=
+	base =3D IOMEM(res->start);=0A=
+=0A=
+	ulpi_setup(base + 0x170, 1);=0A=
+	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, (unsigned int)base, NULL);=
=0A=
+=0A=
+	return 0;=0A=
+}=0A=
+=0A=
+static const struct of_device_id zynq_ehci_dt_ids[] =3D {=0A=
+	{ .compatible =3D "xlnx,zynq-usb-2.20a" },=0A=
+	{ /* sentinel */ }=0A=
+};=0A=
+=0A=
+static struct driver_d zynq_ehci_driver =3D {=0A=
+	.name =3D "zynq-ehci",=0A=
+	.probe =3D zynq_ehci_probe,=0A=
+	.of_compatible =3D DRV_OF_COMPAT(zynq_ehci_dt_ids),=0A=
+};=0A=
+device_platform_driver(zynq_ehci_driver);=0A=
-- =0A=
2.43.0=0A=


