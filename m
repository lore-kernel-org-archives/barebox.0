Delivery-date: Wed, 10 Nov 2021 11:47:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mkl8n-0002HK-Ck
	for lore@lore.pengutronix.de; Wed, 10 Nov 2021 11:47:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mkl8l-0005l5-QE
	for lore@pengutronix.de; Wed, 10 Nov 2021 11:47:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3C5qjJ/4h955hpQBj2yhwXPhU0eBzN8f/jAeWMeWxU=; b=ocl28wJdZuwKLq
	gjpvG0tvU8oQFwFsz8hTMorpDtqo+MmispphBHJqp5UJVjZn3niugiGNSrGVaa2F1CW4JS3KiQhVF
	meta+ypCvzEleo6GSZ9vpGkbc7jUQqdwC+R7d92WWxoeZvSM/OqZaI2ZXcoi4WYIKIEo6lrMTRPpV
	BpMUbaHUBMXB2xv45WTvBBabxr8tjXUCt8Gp1X0g4RG973a+Lb95EBEwOCr0rxmAIgvKN3rv1++zS
	m5vL05bqoP0M2gtDMLHLQh6Pxkw4tlIjnYQlMncKUT47nuKefMSUDo2p9gESZyzlApyrfg2oukLyq
	Zrw1Wk3YRkFR8gVAzIsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkl7E-005AfT-NV; Wed, 10 Nov 2021 10:46:04 +0000
Received: from mail-eopbgr00056.outbound.protection.outlook.com ([40.107.0.56]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkl76-005Adu-H1
 for barebox@lists.infradead.org; Wed, 10 Nov 2021 10:45:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gzB46xfg49AbE/cP09aMlqdM3Uq7gx074EeB4y15bxnpXT5RokN+kur204qpjomcWueFYfd24mOoPoS1vuXpTxozhlAhixInatEywm0opEXFIMBNw7iDkW4fk+ngKutJAM61SwLps0IhO83BcABbhFaqQSIWGgYYlwgfvz7v3bOKPtlNBOW30lkfb/q0jIFCdlkdULHG5m2qFAJmHNpuKv4icyhBqa6E+08zONYLpFgUSyuTYixDbv/N1mGrBEaYVLXG314ZtZLywGl5nSIO3ezF23pOs1mUnqSu6giKA33fox7sOHErYUbSbbkvldviFxuC9P2T9Y1RD8id1nJWtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nMxmlwHhrFHefWYc47ZIgSfEcXmK5NS0HhY5rAvTj3Y=;
 b=LvMLN20niv9nTeDdhcjtu/vFS/h8Aw12UhQO4HPv/nfNDLfnbckivQMbwyr/0Ti8kp5vwFvBqsBWQM44lfW3fITclSQP8ZltjuxwkhUc2Pv/9KPtpEYN3smk04okbpws6iZ2y1fpihGYUd//38xD2M+Ly17K5NgVmaQ0OnDazrETI+tBdAh8rTFKpQGCQg02OS8IQ7Mfj41wpiA+OwcFw3gSsQm/uNopaVRmwJ/IUAkpLEmBQ64geXg6unPxbQNCbd3tNQrc9QjD6UKrCy6XRIbQFLpsyITG4j1pfb4sWJ5tsgNU6r4NTYeyI05mOtuho1qYcU5bZll0BrCtq5hx+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nMxmlwHhrFHefWYc47ZIgSfEcXmK5NS0HhY5rAvTj3Y=;
 b=yr5Qu+yjhqScy0E4Vqz8KyItSotu6o76ksBOvxChOCGoltJ6fP5BsgnXv3qoxzB+KAw7tkah7PK9lZWZ+UJdli1ldaWQSMLlhnl6/kDqNjjqkVy1DIg+xcLngD0g0kgjruw5/TluiaypYDK4XF2sUm+JNpIvD4sQjggQc8DPCPg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6329.eurprd08.prod.outlook.com (2603:10a6:10:25a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.17; Wed, 10 Nov
 2021 10:45:53 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda%6]) with mapi id 15.20.4669.016; Wed, 10 Nov 2021
 10:45:53 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed, 10 Nov 2021 11:45:30 +0100
Message-Id: <20211110104530.980192-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211110104530.980192-1-michael.riesch@wolfvision.net>
References: <20211110104530.980192-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: VI1PR08CA0123.eurprd08.prod.outlook.com
 (2603:10a6:800:d4::25) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from charlie.fritz.box (2a05:1141:1c9:7c00:7d7e:927b:463c:154) by
 VI1PR08CA0123.eurprd08.prod.outlook.com (2603:10a6:800:d4::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.16 via Frontend Transport; Wed, 10 Nov 2021 10:45:53 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8c41fe77-16dc-4a9f-c435-08d9a43744e1
X-MS-TrafficTypeDiagnostic: DB9PR08MB6329:
X-Microsoft-Antispam-PRVS: <DB9PR08MB63294AB461CA70E4F35EA328F2939@DB9PR08MB6329.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BKJuonA106YF+0H5FM1KzeQt5EXs7J8Y5KzQq+Bv1YdW3RtkGtXtw4HuPivckSPO2xDBfI1Na4URtNBFOyyAxEwPgeD0vFBncMyAuRneo18AAro5K030XHAFqPzj8TmNoEZ7u4rkc8aUothJWBykSMEZ5iBFkLLorOdCr2Km+AwNLPdRl5pSUe0B2ChGMzda+c6CNI90DsM1FGVs0XrK4rOr/s/A6p4mCAj/ua2Ol1Gc1uwEt7H1+9Iqw5h8nHDcfrCOJhjP9ZvUNpVpDTacP8jeH+ydBbmMKen8Xh4ff+TfmCHQzvMmvJ4w+s1otTQFTIVxldzG5mklHGtUzazGvqpUkOLIeGgRsy2hy9XUgOaMKG+82KtB55kG3mTpv1JRAGSnUTpOJoy34egmrwtDUVc+2LGv+03gqew9u6eKNqkzOWZY+UF0cA2sKG6CkjWUVSKLZx44BT6iRoo9pK6F19e7Gvcuw2C8xAqOiCjrvJKsgOKadxM4DipJd67/f/BbrEXyxfNFbKG8XkpuvJQgyDcK5VEmfzAJD+Y91zbsFH9KrCStT2XC7KuX5eFhObxgiVAcd3teofTlSIAW2S0WjW7/tpH3nI/WuqDmi3PDKrhZhkMhfU9Z8kYfXr8Zh1ckGR17n4Zs5FVvCPq2iU0AvvJOSRF0piWmMRCTAnD7MmKRPNlaa/gaaxxVTM5l+32sS/OWURXWY2UNxEw2xx6NuMYIm6AHYNnxGgKqrNgcKxI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(39850400004)(136003)(346002)(376002)(6486002)(1076003)(8676002)(4326008)(966005)(66556008)(44832011)(2616005)(107886003)(6506007)(186003)(86362001)(52116002)(6512007)(83380400001)(66946007)(66476007)(36756003)(6916009)(6666004)(508600001)(2906002)(8936002)(5660300002)(38100700002)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?n3srwxL8Hfj/zn+719e7LA6eCGkV6V5ScveU1HwyNvyK5b7U3jW0+tBki44Q?=
 =?us-ascii?Q?KPqmS42MAzBOmGh869pKupCHnhFqM9hpMk2o2WGEJVhPAhv172lHD/MpJ3+K?=
 =?us-ascii?Q?bj7LBMLMl+9fEwjDp06ABVlOcFh5gGHSgcodyx2lp7NbTbK24chi24zZNhLF?=
 =?us-ascii?Q?EFJA5BC4IFSGsJaTiuB+0AqOAXlZrQkBVrGY3Cdky3prKAJXcZzWtIASzqpA?=
 =?us-ascii?Q?jlXyvpzkJgJCXgRcI04Bc6edYa++HXck/vJlWFfcC4MlfzeEJ1MTP3uXQ2YV?=
 =?us-ascii?Q?GYup7iwyeM0MZ5e+Nx/GiSx0oQzbzMUWnqpmitvq1tocj8a54LGtV0T85AGR?=
 =?us-ascii?Q?5QOZBDgVqvrVW6oMOS/9pcAYV/ymSk5mqt8KaQpvtL2MURBLJkGG7WKxdeTx?=
 =?us-ascii?Q?AZi1R1YA/Ix+93OgxxIUUdiTq+zW6nbxn6mtW2oddCZdwbsz+NRwJAILYXbU?=
 =?us-ascii?Q?7QOe2/ZmDGmHy6PHEr0FxZ4LYsvIa17xTo9i+iOHuGs/DtUJ+DOLZlmSd1+U?=
 =?us-ascii?Q?oHuIHOkUbPUUwl0lDIbj/MnCQg1c3wR4IELRB/zttWPtqIVlKoPKJz/jlWjD?=
 =?us-ascii?Q?i6lHFiM4Ps71Fum2ZQWb2mIlnR1kVrZ42ORdT0pHfoZnBZXle5t8yKlTUle4?=
 =?us-ascii?Q?xdd5jVLcaTQPVtdEqQ/m3ck6+KYL7mMVizZYj27hKk4nwmnY1MxOqA1p2nrz?=
 =?us-ascii?Q?BShQx8ISxIaqXJ7XAnjOMmryeFOmXvBK0X70r0WetsqsF5uvXsn5VRrFfU6f?=
 =?us-ascii?Q?xHxyPy/ng4kVHWLg7C8+FT8csPulBhlvMz6wJ6p3M97ZDZfcyECfXOP1eu50?=
 =?us-ascii?Q?1VXmpFL7tvoqqOlPIxMk5yfGd1ST0XNOjuqyvaMw303SMxkr6bRYIs9PG0JY?=
 =?us-ascii?Q?eyNHU7dPgM+xcQ0LAb3ftTLN+USm1gnaLd27CfnjLZCSN7TYrIxSl2Mi6AN4?=
 =?us-ascii?Q?VLXUKpw0qBipS0mDrZ330E/k3y42KHQg4qvVa7AXilHKEah4FCMCeViFPQA1?=
 =?us-ascii?Q?S4SJ7r//HCCZeRZtBSnSZvRWJA+P2zXeM/Y4ncqYKFECVToY0RCagS1bIivn?=
 =?us-ascii?Q?57x/GhuoRCImyae/dEzeNXS/XgkxUQXsfJ7QkPcxQHi7rSkJaTU+oL1pp4cc?=
 =?us-ascii?Q?+RmWNb7jyQ2HiW541bVmf7gDmaoIoZxFRb0Qym3GBMpBr+Fbu5Np4jrCqnoI?=
 =?us-ascii?Q?eAkSFQyN/k6FlboBEk3TNztBtIfZUuA6FJPwAMzVrX+O17X+iztz2WIfJzCu?=
 =?us-ascii?Q?fn/fqYPFonEZFpG01e371wItnhNbbX4la8FgdHPMFwGY3N4WcxeqQKjlRvhf?=
 =?us-ascii?Q?dtg7ZzDPSKgv6tZBxdxngSy/pWjHvwPOkUy2vBvFhsDLt8cUZbykYTcB+6i0?=
 =?us-ascii?Q?iAsBfaDaLPeKtCXBvg8PAlIapPCtU3wAxZDN86HGvqQmC+MR9x3fOJTQ64NM?=
 =?us-ascii?Q?mN1FSVQO6GYkB1zkSB5Vw95C9pyxe/tD1McjnGYKDfplhGX9eSUZI9bUKg7J?=
 =?us-ascii?Q?1D73UioqLJLU+kpSJ3Y6ZH9h/G1vvAhqZwZHG05Huv2h198GCuZnIx0gEY1E?=
 =?us-ascii?Q?6m/Ey+VP9q9hCsN7C21Xg81Gj+0Our+t9X6Ywe05daKdufrbuET5ds1HtZac?=
 =?us-ascii?Q?bz1gB4Jn+2Uthuyb3IuGhAAPxrrJLuqqAZyGoTxNFvpc7Wc1PBe1Llv5E5Ga?=
 =?us-ascii?Q?JtNoWByGBRvQisGybmOr9xrM3RoQ1R7XmsQ7Rhk84SRxwEEQjlNdP9vajziW?=
 =?us-ascii?Q?lVOcevLKhQ=3D=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c41fe77-16dc-4a9f-c435-08d9a43744e1
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2021 10:45:53.6648 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lOZpziZLuLWjIYPQ8QmFRC5Lag7T7mhvqlpAdbMy1qR99hvaDVD81N3qfwBWyS+ENL02rkoKkd32cCtKYyAkucDFpbiaLYZ5O1a/rC/nK2o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6329
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211110_024556_749115_BF84E00F 
X-CRM114-Status: GOOD (  25.87  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] arm: rockchip: add support for the quartz64 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Pine64 Quartz64 board features the Rockchip RK3566, a reduced but
largely identical version of the RK3568.

Two models (A and B) of the Quartz64 board are envisaged, where
this patch targets the already available model A.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 Documentation/boards/rockchip.rst          | 28 +++++++++++----
 arch/arm/boards/Makefile                   |  1 +
 arch/arm/boards/pine64-quartz64/Makefile   |  3 ++
 arch/arm/boards/pine64-quartz64/board.c    | 40 ++++++++++++++++++++++
 arch/arm/boards/pine64-quartz64/lowlevel.c | 39 +++++++++++++++++++++
 arch/arm/dts/Makefile                      |  1 +
 arch/arm/mach-rockchip/Kconfig             |  6 ++++
 arch/arm/mach-rockchip/rockchip.c          |  2 ++
 images/Makefile.rockchip                   |  7 ++++
 9 files changed, 121 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/boards/pine64-quartz64/Makefile
 create mode 100644 arch/arm/boards/pine64-quartz64/board.c
 create mode 100644 arch/arm/boards/pine64-quartz64/lowlevel.c

diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
index d52d979cb..68c3e1126 100644
--- a/Documentation/boards/rockchip.rst
+++ b/Documentation/boards/rockchip.rst
@@ -46,19 +46,31 @@ Instructions.
 * Insert SD card and run "dd if=rrboot.bin of=</dev/sdcard> bs=$((0x200)) seek=$((0x40))"
 * SD card is ready
 
-Rockchip RK3568
+Rockchip RK356x
 ===============
 
-RK3568 EVB
-----------
+Barebox features support for the Rockchip RK3566 and RK3568 SoCs, where the
+RK3566 can be considered as reduced but largely identical version of the
+RK3568.
+
+Supported Boards
+----------------
+
+- Rockchip RK3568 EVB
+- Pine64 Quartz64 Model A
+
+The steps described in the following target the RK3568 and the RK3568 EVB but
+generally apply to both SoCs and all boards.
+Differences between the SoCs or boards are outlined where required.
 
 Building
-^^^^^^^^
+--------
 
 The build process needs three binary files which have to be copied from the
 `rkbin https://github.com/rockchip-linux/rkbin` repository to the barebox source tree:
 
 .. code-block:: sh
+
   cp $RKBIN/bin/rk35/rk3568_bl31_v1.24.elf firmware/rk3568-bl31.bin
   cp $RKBIN/bin/rk35/rk3568_bl32_v1.05.bin firmware/rk3568-op-tee.bin
   cp $RKBIN/bin/rk35/rk3568_ddr_1560MHz_v1.08.bin arch/arm/boards/rockchip-rk3568-evb/sdram-init.bin
@@ -72,8 +84,11 @@ With these barebox can be compiled as:
 
 **NOTE** I found the bl32 firmware non working for me as of 7d631e0d5b2d373b54d4533580d08fb9bd2eaad4 in the rkbin repository.
 
+**NOTE** The RK3566 and RK3568 seem to share the bl31 and bl32 firmware files,
+whereas the memory initialization blob is different.
+
 Creating a bootable SD card
-^^^^^^^^^^^^^^^^^^^^^^^^^^^
+---------------------------
 
 A bootable SD card can be created with:
 
@@ -86,7 +101,7 @@ doesn't conflict with the are barebox is written to. Starting the first
 partition at offset 8MiB is a safe bet.
 
 USB bootstrapping
-^^^^^^^^^^^^^^^^^
+-----------------
 
 The RK3568 can be bootstrapped via USB for which the rk-usb-loader tool in the barebox
 repository can be used. The tool takes the same images as written on SD cards:
@@ -99,3 +114,4 @@ Note that the boot order of the RK3568 is not configurable. The SoC will only en
 MaskROM mode when no other bootsource contains a valid bootloader. This means to use USB
 you have to make all other bootsources invalid by removing SD cards and shortcircuiting
 eMMCs. The RK3568 EVB has a pushbutton to disable the eMMC.
+On the Quartz64 boards, remove the eMMC module if present.
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index a841053c2..b7a72d5ba 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -184,3 +184,4 @@ obj-$(CONFIG_MACH_TQMLS1046A)			+= tqmls1046a/
 obj-$(CONFIG_MACH_MNT_REFORM)			+= mnt-reform/
 obj-$(CONFIG_MACH_SKOV_ARM9CPU)			+= skov-arm9cpu/
 obj-$(CONFIG_MACH_RK3568_EVB)			+= rockchip-rk3568-evb/
+obj-$(CONFIG_MACH_PINE64_QUARTZ64)		+= pine64-quartz64/
diff --git a/arch/arm/boards/pine64-quartz64/Makefile b/arch/arm/boards/pine64-quartz64/Makefile
new file mode 100644
index 000000000..b37b6c870
--- /dev/null
+++ b/arch/arm/boards/pine64-quartz64/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/pine64-quartz64/board.c b/arch/arm/boards/pine64-quartz64/board.c
new file mode 100644
index 000000000..db2d921c3
--- /dev/null
+++ b/arch/arm/boards/pine64-quartz64/board.c
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <init.h>
+
+struct quartz64_model {
+	const char *name;
+	const char *shortname;
+};
+
+static int quartz64_probe(struct device_d *dev)
+{
+	struct quartz64_model *model;
+
+	model = device_get_match_data(dev);
+
+	barebox_set_model(model->name);
+	barebox_set_hostname(model->shortname);
+
+	return 0;
+}
+
+static const struct quartz64_model quartz64a = {
+	.name = "Pine64 Quartz64 Model A",
+	.shortname = "quartz64a",
+};
+
+static const struct of_device_id quartz64_of_match[] = {
+	{
+		.compatible = "pine64,quartz64-a",
+		.data = &quartz64a,
+	},
+	{ /* sentinel */ },
+};
+
+static struct driver_d quartz64_board_driver = {
+	.name = "board-quartz64",
+	.probe = quartz64_probe,
+	.of_compatible = quartz64_of_match,
+};
+coredevice_platform_driver(quartz64_board_driver);
diff --git a/arch/arm/boards/pine64-quartz64/lowlevel.c b/arch/arm/boards/pine64-quartz64/lowlevel.c
new file mode 100644
index 000000000..b29588552
--- /dev/null
+++ b/arch/arm/boards/pine64-quartz64/lowlevel.c
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/hardware.h>
+#include <mach/atf.h>
+#include <debug_ll.h>
+#include <mach/rockchip.h>
+
+extern char __dtb_rk3566_quartz64_a_start[];
+
+static noinline void start_quartz64(void *fdt)
+{
+	/*
+	 * Image execution starts at 0x0, but this is used for ATF and
+	 * OP-TEE later, so move away from here.
+	 */
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	if (current_el() == 3) {
+		rk3568_lowlevel_init();
+		rk3568_atf_load_bl31(fdt);
+		/* not reached */
+	}
+
+	barebox_arm_entry(RK3568_DRAM_BOTTOM, 0x80000000 - RK3568_DRAM_BOTTOM,
+			  fdt);
+}
+
+ENTRY_FUNCTION(start_quartz64a, r0, r1, r2)
+{
+	start_quartz64(__dtb_rk3566_quartz64_a_start);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 88a079497..7da366bda 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -74,6 +74,7 @@ lwl-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-phycard.dtb.o \
 				imx6ull-phytec-phycore-som-emmc.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += imx8mq-phytec-phycore-som.dtb.o
+lwl-$(CONFIG_MACH_PINE64_QUARTZ64) += rk3566-quartz64-a.dtb.o
 lwl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 lwl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
 lwl-$(CONFIG_MACH_PROTONIC_IMX6) += \
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 1ad7ccedf..5603fc12c 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -50,6 +50,12 @@ config MACH_RK3568_EVB
 	help
 	  Say Y here if you are using a RK3568 EVB
 
+config MACH_PINE64_QUARTZ64
+	select ARCH_RK3568
+	bool "Pine64 Quartz64"
+	help
+	  Say Y here if you are using a Pine64 Quartz64
+
 comment "select board features:"
 
 config ARCH_RK3568_OPTEE
diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index c185b0cc2..698d23e3a 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -9,6 +9,8 @@ static int rockchip_init(void)
 		return rk3188_init();
 	if (of_machine_is_compatible("rockchip,rk3288"))
 		return rk3288_init();
+	if (of_machine_is_compatible("rockchip,rk3566"))
+		return rk3568_init();
 	if (of_machine_is_compatible("rockchip,rk3568"))
 		return rk3568_init();
 
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index e64fccec6..19980914b 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -13,9 +13,16 @@ image-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += barebox-rk3288-phycore-som.img
 pblb-$(CONFIG_MACH_RK3568_EVB) += start_rk3568_evb
 image-$(CONFIG_MACH_RK3568_EVB) += barebox-rk3568-evb.img
 
+pblb-$(CONFIG_MACH_PINE64_QUARTZ64) += start_quartz64a
+image-$(CONFIG_MACH_PINE64_QUARTZ64) += barebox-quartz64a.img
+
 quiet_cmd_rkimg_image = RK-IMG $@
       cmd_rkimg_image = $(objtree)/scripts/rkimage -o $@ $(word 2,$^) $(word 1,$^)
 
 $(obj)/barebox-rk3568-evb.img: $(obj)/start_rk3568_evb.pblb \
                 $(board)/rockchip-rk3568-evb/sdram-init.bin
 	$(call if_changed,rkimg_image)
+
+$(obj)/barebox-quartz64a.img: $(obj)/start_quartz64a.pblb \
+                $(board)/pine64-quartz64/sdram-init.bin
+	$(call if_changed,rkimg_image)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

