Delivery-date: Sun, 28 May 2023 15:06:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3G6W-00HZ9B-19
	for lore@lore.pengutronix.de; Sun, 28 May 2023 15:06:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3G6T-0006wa-Bd
	for lore@pengutronix.de; Sun, 28 May 2023 15:06:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UoJn3cFl+nEZVgM2MSMHdS3wTOjLv/vC6N1memA4H7k=; b=iBgtcG8NJrsfLD
	n7EhdFlaGpV/0Hnp4aBYzT75tbxuircjLEIaWwheC+EZO4FuBTYWe6UcS7Zu2d+FgMLF8ssQbDG0C
	yuMgMaJCzMT8VxuLJI4UYXzBvfqa82rxsyEH5VIsavWLscCbJeJVTTvruCgx538ky/zv+6E+ICp4k
	XDutBZlY3VBAtNDM+mYqkUfikfLRivPRk1rgFT4UFs8u7PWRjiD+jzcZYTodu34kQaJzyPVEDV7Js
	WB4V9MOs3FE3FPzBPmJjjjiNHLsuF0Ycf3FX9AJnFJB8NW4jToJIgUCAZkYsvvakX3RJKVoobtjD5
	oX79sRIBZf0TK1oKlTdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3G55-007fnW-1n;
	Sun, 28 May 2023 13:05:07 +0000
Received: from mail-ve1eur01on062c.outbound.protection.outlook.com ([2a01:111:f400:fe1f::62c] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3G52-007fml-2A
	for barebox@lists.infradead.org;
	Sun, 28 May 2023 13:05:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nq1yadclz/Ot+4028DmoEyEIZq8OwWXXYBw//RbmEzq93GdAap3lMmXhF1WGgBtgbTAbjYOAFh+Jn903lg9EGACmsvL1qbZRi1EbVPUfVVRgmvypOv30rPDidAFDZXgkChfKw9b1pSvMMQG+29mcW49SV58sw9H3J1w/upHKDXqK7/X1eHPGr+OvZKrFlKEXblGuucUPQr5oQyTUNQnwsCoPDsS6pZ2hIZ/DwmNhQb9AoJ2sSawOAvXaCxo0dNiMQ2W9YZqqLQ5d9MeaWJKROvA1KeN+u8Ptx6cKUOx5483r1vRf1u+D+8LjZaeZ5PuiU9BiZg2GOs1zFSQ+ihd08Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UoJn3cFl+nEZVgM2MSMHdS3wTOjLv/vC6N1memA4H7k=;
 b=AFCcLTbSBwBxKFaEhE4LpLSD6oEnCHTdckmSxi3M1JaEfYN4j3GJ/3kbWEsuICIOoFxMy/PH+cT8eOTyPExgslqYDfs3PqrA0aWTgyiXuyLYKEJFx0DLqyfb9Z9Bcth/qaJHw6bQY0ipyZxHy1cItfm/R8PXpVH+gyQMungjEdygcrVp9Am79Vf0vRQDn89FzQJbpjv8Pp4tNUXidZRLLH2gAsFCa3Nhu6Q3LGPQp1RBTJh7i0YaJkG7tHucFq2qD4szKr0Cqf7r29oexeGAX75o+M4Z+yFEC4/5WAiRqYw7CRB/6zQQI7wAewAgga/kJ7QDfT3GgeqIsCTddlZpmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UoJn3cFl+nEZVgM2MSMHdS3wTOjLv/vC6N1memA4H7k=;
 b=CPms6fxP4a0M/4nz6a0YY74YqHmc6Vko3BszlWasfyhcRMma5qaG+/fOgvTYm5BFGAofPIjwzuBuPJ3ZPJs29X93i3vwetR5ID8EyeJ5dEx3iolyGkV8taGV95V4gI/hZGbKHYrhylwP/39oE/P3Sm7Nzdbu5CJE+iocE3YefuQ=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by DU0P195MB1649.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:3a6::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Sun, 28 May
 2023 13:04:52 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::c695:44b1:a751:3684]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::c695:44b1:a751:3684%3]) with mapi id 15.20.6433.020; Sun, 28 May 2023
 13:04:51 +0000
From: Lior Weintraub <liorw@pliops.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: Porting barebox to a new SoC
Thread-Index: AdmRYNrtRrBKX5DDRQGPzQVQ7b/lvQ==
Date: Sun, 28 May 2023 13:04:51 +0000
Message-ID: <PR3P195MB05550502A2AD5D21F032A22BC3459@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|DU0P195MB1649:EE_
x-ms-office365-filtering-correlation-id: 2c801c5b-c0be-49f5-456e-08db5f7c1fe2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FbzvD9qt6sML86UBqnQ+5/EnSEKv0lbX1QSwlcMH//v15PUVascGJCr6pEr07ZlKL3HFQ1vamoFlFkcuMuvhT3GjLlCb0IVooW7uLjgbPcEd8TgPxeTuFUo9Vb52lwV8TzVAkKLvprJk5KCgsP+xta9jMMXb3eMA3vlk9VcD+nrc3NOzlDzdv42znxQH/Xazc+RKrHHs15greFzNb5y7XaUN9XUTw73TzR2+HJitG0fkYM1FIjIUVdp94It04opDoR1qdEZP108wxC10fORHUCz8CtajuP6f8Y46NQSDn6VJfN4iQdSRYI0CHrln/CZqCVd8VjoPSUPWCbVnLuDgjzeS1W6eSGIHtD2f2PujKkPscrXlAT7ZedgXwHBowxbR6etePbOa+P2A6bH3tLsIoLODtFzsaBcLq+W55eT5xGgxNBard3H9WqB2H5WF4tHQ7AGiquMs1j6D5ma+QRDR6HIK58S8N37XG/E0YrLYeLdfsn+wlmLt97LD/0CA6yB4EobtGLKgeC/HHcTaOgQjzHbjeUcJpFi739ELbfPzQLlg13SBafs4jLWqSwPbRZPMd39/BQpUxwSFi91cjEyxCMbmheLNPonSqRx33vNnb/g=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(396003)(346002)(39840400004)(366004)(376002)(136003)(451199021)(71200400001)(478600001)(5660300002)(8676002)(8936002)(52536014)(38070700005)(2906002)(86362001)(33656002)(66556008)(66946007)(66476007)(76116006)(66446008)(6916009)(64756008)(316002)(122000001)(55016003)(38100700002)(41300700001)(186003)(53546011)(966005)(6506007)(9686003)(26005)(7696005)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PDy9Csc7PbyebOXk7nxkPc9tHMCLZN984qbTl0cp0p6rsRJ+x56JPsorSBGA?=
 =?us-ascii?Q?4c5nONUn/MaQuuYNvGZHCSAefEJVHHaCHlOO4gBGjRKvNzFKTs7c8PCdi5qI?=
 =?us-ascii?Q?Ql37HjfcLpGston8kgSNjmpqK/SBmXPltK+V/DznvLUGu7ijN+ODr/Gi9L0t?=
 =?us-ascii?Q?bxglHz7KiYmYyDHkGJxr2tQInV66tO4CS3rqm0LIb9XP/8YmvNflV4p8tBh+?=
 =?us-ascii?Q?h69PBJvMz4MoxIRvbK0sy5GH9IsiSejWd8afb0R/3S6aCSfYNh7lFchhZLWB?=
 =?us-ascii?Q?h5qH1amJGl3zNbuvYMgO7ktz/M/ld4ODJg8ku2FmcIYY3zdlcX2tYlk+Zqxu?=
 =?us-ascii?Q?N3xXDjjm/XxGcBaeIGBKhM9D9skv0lOVR20/HAo7VMVrcTp6d0eVjcvQisdq?=
 =?us-ascii?Q?IFPwmcwOaqmsHCFa5OFeMPVkPO5FsSEdontm+AtOXTqBLMJyJ6z7g4cBulUh?=
 =?us-ascii?Q?ejU8vA5xbFcGZteTNLCpSjRH9X8Au4v2NYG/tVgui8Oi39J3Rxf4yyw+NOWY?=
 =?us-ascii?Q?lIbK5vfA7szWEATVgVv2XFdmTb8BP89/4Dh4kqp55D0wde/u5UneFmVmu+D2?=
 =?us-ascii?Q?uxfgdn3eSTKiT8TZKk2qci0j3/tYy5zuqu7J41NLQbmHkRUBgkMqrBl6LV5W?=
 =?us-ascii?Q?7/c7mB5N6b2dUfAoPJK+TdKIdvndkTnNpRgDAOHayYJXRph53sTQIhuT+mgD?=
 =?us-ascii?Q?pCnh1TJtoC7Rty6DdAHgnDNh+NdBhtcnIab95m/NNIQjz8dXILoRXVUieF3E?=
 =?us-ascii?Q?aFDZEwtC2E9eoqE8OZQVyAV72uN82j7qWJLMKyLhyiMFj7a8b+T+S3W6xE0F?=
 =?us-ascii?Q?Svroxo8poOhTq5DtC5UgUNFpPMjJzvkZcSqPB0OlXMXc9pb1KVqbjl1X/KL7?=
 =?us-ascii?Q?6zI4umpnzWE2RYZMcEx3v7kPpPNB2kP4jJ7kwskQkbErTkNW9k5OURHLU8t/?=
 =?us-ascii?Q?i4/WtB37HUYhjWP/cYXNyxKwWEeFHtNGth7hLPWCEW8Es+5NLPSyz8gNpRiy?=
 =?us-ascii?Q?vyXm7tZnAraGbTz2rJN9A8tl4uweARqpYLW6WTcmEn9CBE3I/bkETeiyLN60?=
 =?us-ascii?Q?tUV+5WezMVv/z0mIhECiQdXwjbt674InO9Z6AuKtto0Z/HFgGoaRm6W2B9GC?=
 =?us-ascii?Q?OfLuZCaJwIkAlFOa0kuuXDyEV2fJBhYlY9BHq5GREQUPKDhIFM+l3y5Qrg1w?=
 =?us-ascii?Q?pGVy6GfO5899jzGKHwhgwh6sIAtDPO5GlM4xnL3gRuvn+D2kVp02mA40+Rrn?=
 =?us-ascii?Q?Kt+QUfAaiOZfEkhvejHvWZrGGPQJ6XrLKRCiu05kSXho3z8gk2rE0pbBmyFx?=
 =?us-ascii?Q?sUT7gFsyt1ctDoCSZxC0mtT2jGEFOnH7Q+4Ex6IYCH09Gelx8xv40ezEjLZp?=
 =?us-ascii?Q?r76+15vBQQFSJmSDyt2zAuU0djBHsYnNd8cdbE7zW9tdxnwiPTqQ8ixuW3sN?=
 =?us-ascii?Q?/75BXSDTwJogJsIPU5mxLdKuPN0m8dys8xTg+xyEojVsqxJV8MF2+sG71gf6?=
 =?us-ascii?Q?CClayi49Z3z3htvdBDkaDFSgWi1NhD5ASkZfaGFBrLeETL+EB7JLGwUs2hAL?=
 =?us-ascii?Q?VsMFMA7zvne3WUrITwc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c801c5b-c0be-49f5-456e-08db5f7c1fe2
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2023 13:04:51.8489
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aLOWOLEyDHeCK7++vh4uvTYM7zVQ9A2ExEmQfu625wbG20M65tQrPixJCCT4Z7vpcWc+dOqRBmRNJ4jUC60P5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P195MB1649
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230528_060504_740066_8E982552 
X-CRM114-Status: GOOD (  19.91  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Porting barebox to a new SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

I tried to follow the porting guide on https://www.barebox.org/doc/latest/d=
evel/porting.html# but couldn't follow the instructions.
I would like to port barebox to a new SoC (which is not a derivative of any=
 known SoC).
It has the following:
* Single Cortex A53
* SRAM (4MB) located on address 0xC000000000

The below patch shows my initial test to try and have a starting point.
I am setting env variables:
export ARCH=3Darm64=20
export CROSS_COMPILE=3D/home/pliops/workspace/ARM/arm-gnu-toolchain/bin/aar=
ch64-none-elf-

Then I build with:
make spider_defconfig && make

This gives an error:
aarch64-none-elf-gcc: error: unrecognized argument in option '-mabi=3Dapcs-=
gnu'
aarch64-none-elf-gcc: note: valid arguments to '-mabi=3D' are: ilp32 lp64
aarch64-none-elf-gcc: error: unrecognized command-line option '-msoft-float=
'
aarch64-none-elf-gcc: error: unrecognized command-line option '-mno-unalign=
ed-access'
/home/pliops/workspace/simplest-linux-demo/barebox/scripts/Makefile.build:1=
40: recipe for target 'scripts/mod/empty.o' failed
make[2]: *** [scripts/mod/empty.o] Error 1

Not sure why the compiler flags get -mabi=3Dapcs-gnu when I explicitly set =
CONFIG_CPU_V8 and the arch/arm/Makefile has:
ifeq ($(CONFIG_CPU_V8), y)
CFLAGS_ABI	:=3D-mabi=3Dlp64


The changes I did:
>From 848b5f9b18bb1bb96d197cbc1b368ee0a729d581 Mon Sep 17 00:00:00 2001
From: Lior Weintraub <liorw@pliops.com>
Date: Sun, 28 May 2023 15:51:44 +0300
Subject: [PATCH 1/1] Initial Pliops Spider board

---
 arch/arm/boards/pliops/spider/Makefile   |  4 ++++
 arch/arm/boards/pliops/spider/board.c    | 26 ++++++++++++++++++++++
 arch/arm/boards/pliops/spider/lowlevel.c | 28 ++++++++++++++++++++++++
 arch/arm/configs/spider_defconfig        |  3 +++
 4 files changed, 61 insertions(+)
 create mode 100644 arch/arm/boards/pliops/spider/Makefile
 create mode 100644 arch/arm/boards/pliops/spider/board.c
 create mode 100644 arch/arm/boards/pliops/spider/lowlevel.c
 create mode 100644 arch/arm/configs/spider_defconfig

diff --git a/arch/arm/boards/pliops/spider/Makefile b/arch/arm/boards/pliop=
s/spider/Makefile
new file mode 100644
index 0000000000..da63d2625f
--- /dev/null
+++ b/arch/arm/boards/pliops/spider/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y +=3D board.o
+lwl-y +=3D lowlevel.o
diff --git a/arch/arm/boards/pliops/spider/board.c b/arch/arm/boards/pliops=
/spider/board.c
new file mode 100644
index 0000000000..17cdd5e2b9
--- /dev/null
+++ b/arch/arm/boards/pliops/spider/board.c
@@ -0,0 +1,26 @@
+#include <bbu.h>
+#include <boot.h>
+#include <bootm.h>
+#include <common.h>
+#include <deep-probe.h>
+#include <environment.h>
+#include <fcntl.h>
+#include <globalvar.h>
+
+static int spider_board_probe(struct device *dev)
+{
+      /* Do some board-specific setup */
+      return 0;
+}
+
+static const struct of_device_id spider_board_of_match[] =3D {
+      { .compatible =3D "spider,spider-board" },
+      { /* sentinel */ },
+};
+
+static struct driver spider_board_driver =3D {
+      .name =3D "board-spider",
+      .probe =3D spider_board_probe,
+      .of_compatible =3D spider_board_of_match,
+};
+device_platform_driver(spider_board_driver);
\ No newline at end of file
diff --git a/arch/arm/boards/pliops/spider/lowlevel.c b/arch/arm/boards/pli=
ops/spider/lowlevel.c
new file mode 100644
index 0000000000..f3d5a27647
--- /dev/null
+++ b/arch/arm/boards/pliops/spider/lowlevel.c
@@ -0,0 +1,28 @@
+#include <common.h>
+#include <asm/barebox-arm.h>
+
+#define BASE_ADDR       (0xD000307000)
+#define GPRAM_ADDR      (0xC000000000)
+#define MY_STACK_TOP    (0xC000000000 + SZ_2M) // Set the stack 2MB from G=
PRAM start (excatly in the middle)
+static inline void spider_serial_putc(void *base, int c)
+{
+//     if (!(readl(base + UCR1) & UCR1_UARTEN))
+//             return;
+//
+//     while (!(readl(base + USR2) & USR2_TXDC));
+//
+//     writel(c, base + URTX0);
+}
+
+ENTRY_FUNCTION_WITHSTACK(start_spider_board, MY_STACK_TOP, r0, r1, r2)
+{
+       extern char __dtb_spider_board_start[];
+       void *fdt;
+
+       relocate_to_current_adr();
+       setup_c();
+
+       pbl_set_putc(spider_serial_putc, (void *)BASE_ADDR);
+
+       barebox_arm_entry(GPRAM_ADDR, SZ_2M, __dtb_spider_board_start);
+}
diff --git a/arch/arm/configs/spider_defconfig b/arch/arm/configs/spider_de=
fconfig
new file mode 100644
index 0000000000..b4c4a32de0
--- /dev/null
+++ b/arch/arm/configs/spider_defconfig
@@ -0,0 +1,3 @@
+CONFIG_TEXT_BASE=3D0x4000000000
+CONFIG_64BIT=3Dy
+CONFIG_CPU_V8=3Dy
--=20
2.40.0


Appreciate your kind advise,
Cheers,
Lior.



