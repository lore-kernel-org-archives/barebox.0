Delivery-date: Mon, 19 Sep 2022 13:42:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaFAa-009Y9X-JD
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 13:42:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaFAY-0001SR-Lx
	for lore@pengutronix.de; Mon, 19 Sep 2022 13:42:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2z/VCrbxMOqsvjUYP7aBVKhjXey+oDhH834rpC+w7zM=; b=IIjL8D2jyTHEtPqmduiDjTgPot
	NLAS/nEepSARJ/EHW3V2c4MPy6ZI1SIIRR6RBz9d1oC1nVfb7BUB+PPOTg3qFeXQt7fNGkBa6Wcud
	GadOQhJuqKisqWPsDNVs+akwHS1Jw+Y/VMI3kpAInMVwTnsqPjeEyHoFaTqOVzqdJ8O1G25aX5wC6
	v95min9ojYYkxzxQDiyolKHcszj7Io3uMtzzM/LWfqjWqjBtw8FvX7nOtuaQiHTWzzV5qDcoZ25y0
	yuCJp0JaBaxnhfyAEfT1Nsd7Y9LR2PJUXXtB1AqW16YLtFpq/74C8QIOLW6UQHwesmg4S0tEVphtW
	NJkoKkzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaF8E-00BXqO-PY; Mon, 19 Sep 2022 11:40:10 +0000
Received: from mail-db8eur05on2066.outbound.protection.outlook.com ([40.107.20.66] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaF89-00BXou-8k
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 11:40:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=htMsmxrotjBMwQKYgOpPKMvR09LAseKE2fe+AFjTDTh7gtZWs2jLU2yq3no58UZjUhJR010zuxBcZOdl3zAYJlP0Imw2P9Oz1h73gmgnHVjSBOqk0+rYIxM2NXPD7kw+DHMafvSncvIf3RygPnSN/TFttOBCGRXnZbIW9MFbxq3rhSvosP0AIjD2Ms5wyjDxJCB6tS7jDbZ5be+dZFWiCElEkYcx547dhB2EKooNB+J83CZGQVB8Eswe51fYDAuoXStq5qFGWGyI1DDCl5gNQzMNGCLIFAkew6jL8JwiNVVSE3IF0gCmrVWcsDVaAp4yvjS8ywpQ3BdnjoXG0EKzTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2z/VCrbxMOqsvjUYP7aBVKhjXey+oDhH834rpC+w7zM=;
 b=OrtDXw11ADiH9Y2xq1ptUXHGPJ3ci4YG+bkJSrPD/cAkQAkXr8tXT4Q+d2FdsmDzPaB89dMkSZt2C72vqvFHPl4ucNOX0KAVFzNiOxdbuILzZEviDdVpw2He5hErowymR07xHtveIOXGsReKoc44ddkchk8QdWxyKFduWgOZxdAuziB5WCW/ulHDRjpC0kRV4kruiiRUVKexDe9o6l71pe2lwaLh5RY+Yo4rockWQiVSft7YZqZeyzyWTYuvwZK9Sqh9vgNupKTz0ZZNhaS9/hUwFgQkvMtctT+rUz0Hrwm2+lHuOzR1W3bPj9Tr2HXdpZuXVqHm85OHjiIc/LxxSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2z/VCrbxMOqsvjUYP7aBVKhjXey+oDhH834rpC+w7zM=;
 b=XbJn7PA51wTZqR4GiiUxCMBus0Lv+E40tYj1SDODGtaYL29krTASI4GLCDAx8uKD4lzBFGsCY/Kp5B21bXiHzONKHVnP+X79KirER+YU9gRJyvW92kv0o4ZNSaZYa6ASL4BY1kpo8zzznmv16lM2XRbchI4sx+SDi8Z2HbiKPOM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV2PR08MB8272.eurprd08.prod.outlook.com (2603:10a6:150:b7::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.18; Mon, 19 Sep
 2022 11:39:58 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796%6]) with mapi id 15.20.5632.017; Mon, 19 Sep 2022
 11:39:58 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 19 Sep 2022 13:39:41 +0200
Message-Id: <20220919113948.991245-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VE1PR03CA0042.eurprd03.prod.outlook.com
 (2603:10a6:803:118::31) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV2PR08MB8272:EE_
X-MS-Office365-Filtering-Correlation-Id: e3b8b724-c203-467f-851e-08da9a33ae2f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	ApNKKrAswvznYLjVDKVzZP/H33hCSVjmVivw7rnDMGaAeVG/VknZzIwM64KpAD/LSWS3F678rWpchN7h/cw2NW0q36ZywU4uSqSXMMn5sxTIlmAQbUSehjaJ13d80bcge3DyRl5XJ/uMO6KCzyM8edv6rtGT1aWVaLaRDgFFAIHCPcBDDM2cOBgtLaq75DhKuXmIzoHwKqV/uFNqpZieS5lGbI44j/juU0BeZrKFoQa9baVr7W4SjCDvNMPwEaIUrr56YKprbmCGDa15J+eIbZ7d+YYkOjWXR9tem83HPE62DayW4uxzqR9iUtTvkCVNv85rtnn4Wyv5UTGVgsDsdTGXW/1Xvt47RUy43YBTm0rySCtq5oeFPf8IWzlVAKc62Q8gmeRZjMtLjK6KX9gtoqTgWbTECs82sXcWvniDwiyTko7EksEOseAVhc90mzrzW6v4k1CXnDih6yRSAZOm46mp3w84uixDH+NHPaSjQWpYzBtcMuaR9ahEd4vE7xcfW2NnK3Mk6yID7nL2wSSREzDTvV1nWPzOBE0r2/nsPBk1GbxIEtdEzaWG9oYj6pYnXpQD+AfRCwzmKREJDytjB4S/HGHoabsoUsumy67FyaU6hifeBx/F6QztVXvh26bmTZG87zlqKjB/+qrnZ2wAlAl6y+lSFcMDGLCZaVotFrG0GHX6aTOtZebzxtoGsamq1GlDD91rWJI69Cu1H2pqeA==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(136003)(39840400004)(396003)(366004)(451199015)(6486002)(6916009)(54906003)(478600001)(316002)(5660300002)(8936002)(6512007)(83380400001)(6666004)(66946007)(8676002)(41300700001)(4326008)(66556008)(66476007)(86362001)(6506007)(52116002)(2906002)(36756003)(38100700002)(1076003)(186003)(44832011)(107886003)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?2ZLYjKyYmUDosm6pq2jTqzTBqa8PE1HFnBDc3HC7P/sV2ewopHefxoCzUnj9?=
 =?us-ascii?Q?u5SsFzYoSLwJc/x2OQXfgi6617r/1x80TEn6Q97HsBXezycHEpF4laAxxuyM?=
 =?us-ascii?Q?M3aLbjrfIhY4XasUH9oz2der6JpB7OD0sYZR1vFBdiu+rBjhkPUakY6QkIcy?=
 =?us-ascii?Q?/S8vaWKrDWHlCW7ZeoDphrekbxjz5PtOGf5rLNz6aHe0CZbO2uR/xM6mS/Qg?=
 =?us-ascii?Q?x1xaNzoauzC66Y4WHEb0x9x0ocaV+O4XHdnAdUo4sa9d16CPa2ydCS3JjSwN?=
 =?us-ascii?Q?7r+GITwqt4gktzDZWC933yO2Rv8gRM6c6Sg8Yf18wncxEoPBJYl7TrdkKNeU?=
 =?us-ascii?Q?9IV7eQSktumMJ4AXcWUk0acCjTJoui+40qKNAHeb4/AD/RtscMic7lU/xc2R?=
 =?us-ascii?Q?eEfUwikLiPnIyJ7e4G6NM5NzxEdPwRaooJvXWe4HjIdIEQry9IEzoYSU3/5N?=
 =?us-ascii?Q?kU30HqOyPtRiuG3Sriv4OFUlueIWU9DLSyJGZqUFtG9riuATjhggA+BEQ0DN?=
 =?us-ascii?Q?xgAPYLqZiMy6QYh6e4CqhaPCBDv2bUWU79giWXNCdWZcjbCyvcpW8g6U5d7o?=
 =?us-ascii?Q?eRyEk4MA1JPPxqDf0Zbfoeu2EXQFmVHCkMOV8ttxF4PGYa9m515F2vX+5enO?=
 =?us-ascii?Q?HF/VcGHAMhmbhNdUIXd+noF7/XwEt0EXOM1nm0z83QpalPg+vAVjgy5Lt0J5?=
 =?us-ascii?Q?eqjlEn5prgmrT6+CfX4AYuiqVTpRu8a/q7rIR16BcIAYsEBael+F65tqxnlU?=
 =?us-ascii?Q?T8OAVGJAWz6HOEOS9xepiRqnuH2hLS629meb4tM4jQVpTG/fjDy1LWvZbRYa?=
 =?us-ascii?Q?7gZnFINakyJ2QCbcFski41TRyHSiqV4X0XYQvB4m7xLJgqvkIvsboUXrstHP?=
 =?us-ascii?Q?9JpsPdOpg14z9Nfi85Y4IzJQ4KgewTSFbM78/gk/0Ghr3AFrlnBI3gbkW6R4?=
 =?us-ascii?Q?ncGCJeRWINczC/bIpOVhM0/qxdfw0G5Qc+ooPvR6CN2Yz90SQYiVhXtgtxl5?=
 =?us-ascii?Q?sPxo0G4jIUSiXXZ1PhEsLwv4MJDHIHZllUYpiFutSEwZDg0ntux0ZmCRozdd?=
 =?us-ascii?Q?7NfyNiHdoalCsspl9QKtIwmxUJRiaZeCU6JzZE3G/bENV6vc8ALnDKZnI4LI?=
 =?us-ascii?Q?I0wwfpk7KZXZAuGbJz3QUsXXgSJsSZn3/VQNRaDaNkfiVZW8V66N0kUz5opf?=
 =?us-ascii?Q?YN1yws0f/iqUcDIcqsM8GNm6UfxeSRmCLtNBCVbNTJTtzQTe/1rDo07ETuD8?=
 =?us-ascii?Q?WL+icIlM0l1DAaQRqtdqbhTx6TDgKOrVx8iy2jRAr52i2FxKHUYKvl08FkSh?=
 =?us-ascii?Q?AjHIGZa+KdogYjZhMplU8m6cnPBU98uhS/kUy+98yH9RCJt7JBQr7voGhA0Z?=
 =?us-ascii?Q?MTtsVsItwo35BU8t4p7W0yvbBVd/YDh/Auhp5uNhJD/xog7JWV/bBHggGNq9?=
 =?us-ascii?Q?X9Yz43yOOQ67SwldCdSnzmkfSVNrP4fkZGeZIaOwcQk21N3TDBis2vy72PTO?=
 =?us-ascii?Q?2/1/vVancHGxTQfujXBYxXciWdye+U3LTE0M+l3uZyORmnCxyjKCY7nZLDTu?=
 =?us-ascii?Q?iHUruXh4WK9ttykZ0WAkFtiw0zIRCKGpHeiV5/fZKs8Zmqur2OFX7uMScnsT?=
 =?us-ascii?Q?AUE8hW7Lq73cd/L/85UJQpj2VUUnru68S7S6Na3JQh21mKryawdC/jS5alJk?=
 =?us-ascii?Q?U17oxWB5X78QV4SmCRJYpzxc4ik=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: e3b8b724-c203-467f-851e-08da9a33ae2f
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2022 11:39:58.3956
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2/nXtCiJD1aqXR4/c/7aAEmXiZF3csHJWzKUlra4pJcq15LZwAfSRXfHhhW63BJbTrp2/1hSCrGTG4deRx2WBDA4Z5UDiOcty1YFHmSvZhk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8272
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_044005_550028_E4E71C81 
X-CRM114-Status: GOOD (  15.75  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/7] soc: rockchip: add driver for rockchip io domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

The IO domains in Rockchip SoCs need to be configured to match the
corresponding bank voltage. In Linux this is achieved by means of a
platform driver that reads the voltage value of the supplies and
configures the bits in the general register file (GRF) accordingly.

This series ports this driver to barebox to provide support for the
Rockchip RK356x SoCs. Please note that I could only test the changes
on RK3568 boards, so I left out the parts for the other SoCs supported
by the Linux driver. Also, it should be noted that the Linux driver
uses notifiers to react to voltage changes. This is not supported by
this barebox driver.

The driver has been tested on a Radxa ROCK3 Model A and a Rockchip
RK3568 EVB1. I do not have a BananaPi R2Pro and would therefore like
to ask someone with such a board a test.

The removal of the IO domain configuration in the low-level code allows
to refactor the low-level initialization to a common method rk3568_start.
This is introduced and used in patches 6 and 7.

Looking forward to your comments!

Best regards,
Michael

Changes since v1:
 - add defconfig
 - extend removal of IO domain configuration code
 - refactor initialization to rk3568_start()

Michael Riesch (7):
  soc: rockchip: add driver for rockchip io domains
  arm: rockchip_v8_defconfig: enable io domain driver
  arm: rockchip: radxa-rock3: remove io domain configuration
  arm: rockchip: rk3568-evb: remove io domain configuration
  arm: rockchip: rk3568-bpi-r2pro: remove io domain configuration
  arm: rockchip: rk3568: refactor common rk3568_start method
  arm: rockchip: rk3568-bpi-r2pro: use common method rk3568_start

 arch/arm/boards/pine64-quartz64/lowlevel.c    |  30 +--
 arch/arm/boards/radxa-rock3/lowlevel.c        |  33 ---
 .../rockchip-rk3568-bpi-r2pro/lowlevel.c      |  42 +---
 .../arm/boards/rockchip-rk3568-evb/lowlevel.c |  39 +--
 arch/arm/configs/rockchip_v8_defconfig        |   4 +
 .../arm/mach-rockchip/include/mach/rockchip.h |   1 +
 arch/arm/mach-rockchip/rk3568.c               |  24 ++
 drivers/soc/Kconfig                           |   1 +
 drivers/soc/Makefile                          |   1 +
 drivers/soc/rockchip/Kconfig                  |  17 ++
 drivers/soc/rockchip/Makefile                 |   6 +
 drivers/soc/rockchip/io-domain.c              | 223 ++++++++++++++++++
 12 files changed, 280 insertions(+), 141 deletions(-)
 create mode 100644 drivers/soc/rockchip/Kconfig
 create mode 100644 drivers/soc/rockchip/Makefile
 create mode 100644 drivers/soc/rockchip/io-domain.c

-- 
2.30.2



