Delivery-date: Thu, 11 Nov 2021 14:42:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mlALV-0006wv-FT
	for lore@lore.pengutronix.de; Thu, 11 Nov 2021 14:42:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mlALU-0003iW-1L
	for lore@pengutronix.de; Thu, 11 Nov 2021 14:42:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zhX+dxQbwyMXubAWn7HsrDI4VlFr/EVCA92hyEYQcg=; b=RswpNoz7kWUehn
	nwSVfyvEDQ3kPSKrCQJ2RY4bSDZO97GkppICzE+AY8QisOJUTjGvXxdhjB7IiXF39fXUkjEauVQzt
	Fdo9uqK9lVelRYh8FaYVoPvDCRSCxjfXagulDnnrtNLn+hbkkWXdfHWSRzPko9Txov3q6L0597Lr+
	LyaymM97QZEtM0WUz26ZLblepmVcXU6BiLzwvw5nkrGBk9IJ/9ectoya5Ame/6eo0FbMvP3GBSvJK
	Em3+Z1zWE7jjBR8AQAsLJWTviKrl89FRlLkoadrJiPDw6wL70y+DGQ3sj9DvNhb1N2AZF/U5+7245
	L7z0JuxciLc9NkGGV3HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlAK4-0082YK-AK; Thu, 11 Nov 2021 13:41:00 +0000
Received: from mail-eopbgr70083.outbound.protection.outlook.com ([40.107.7.83]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlAJw-0082Ve-Ha
 for barebox@lists.infradead.org; Thu, 11 Nov 2021 13:40:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iOrDMQJJHJIc2fVGhiGekL1kfINpjJbxNMsICmeYpkGQ2xqbgvx9d8DAvmRAAHRKO6ZFhEtXJwOmBjqJ2XUjcbpCgroTU9iuTePYaQavzJJGeoreNYzkfn3rjLkXOgX3cbfxCs1BJxi7baHLF7UFt240IsRGk9AiKLflJvXxpnRFsFNOmaPWoAnEhQQBC4+vAllKq7uqf2ixAKiE10cH+0MnPlLaGyxiDMGGT1BGg2wOGvM+NbZ5nQJwK19/pJuxWSbX/iAHkf5FzI4XHzgIF23MCsOirZmB0pYD8gM/kN9KL7TdGBHZ4cRQihH8PT6CujJUqEa4WWWqCOfHRx35EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mEvinhUbGk7XA+y6AMny13vxef2a0QexDO515YSdZLc=;
 b=AlYgYku2gFRMzJn18vp2M/g02SuiMEPb0aD8CWGPndzwbGmi4ppWgLJE0C6E1qN7gaf/kpXo+LFzmoS6H5QhZUglsvImqbi3qwkHwmpxwuKplEAfudlyKpgd8JgcSLpCehd3WVX4ii4VtWwsFKSM4l1rSNP6b01YqZPmvVrQ8GEGo9GCDneNxGtzHuU/mm17Ew0NO4Xrfr1TakSZN8ICtg1pFh7dh/8IXTNZOWfkO4KXimdkHseKG7ypWsJWPP87JDg8gvTbqMX1oh5H21sMqAvSHWddydGZzCNFyTsEjrtoGCf5rYdOK14eD5aLffLy/S1QU4PLtk9TJx+t04I/Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mEvinhUbGk7XA+y6AMny13vxef2a0QexDO515YSdZLc=;
 b=ir7TvFpcaLVCQ+f+3jCgrw+3NlzIRWevlfyKgEnwrIv6kd881LUFQXAM139m36whOt9ToYAxeYEJDhoKTG9ryHOVjPZL3yzIeuVVbHYsMj6w13qXLggSC/xapKlIAscqgLvmL8dj1vYKSMS8h8+FDeIh+oKs6mfK+fOgJihp3hU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6874.eurprd08.prod.outlook.com (2603:10a6:10:2ac::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Thu, 11 Nov
 2021 13:40:46 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda%6]) with mapi id 15.20.4669.016; Thu, 11 Nov 2021
 13:40:46 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Thu, 11 Nov 2021 14:40:24 +0100
Message-Id: <20211111134024.1645816-3-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211111134024.1645816-1-michael.riesch@wolfvision.net>
References: <20211111131116.GW25698@pengutronix.de>
 <20211111134024.1645816-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: ZR0P278CA0129.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::8) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from charlie.fritz.box (2a05:1141:1c9:7c00:2971:328c:3026:3149) by
 ZR0P278CA0129.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:40::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.19 via Frontend Transport; Thu, 11 Nov 2021 13:40:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 98797381-9f13-4a7c-892c-08d9a518dd4e
X-MS-TrafficTypeDiagnostic: DB9PR08MB6874:
X-Microsoft-Antispam-PRVS: <DB9PR08MB6874AC88AA04B6D666226262F2949@DB9PR08MB6874.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1051;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +ip+bue2qmuQUWyIIog9XCXU98IzW/x7qUxURt98sPSbAmFkVc1I5rQZ1u+X8nonacLa3KA3mmhzZcE/+xyejGaVeBusCvR39BkUnv91P6RQ+yuy24jjaQ86KbOtzUgHNP/yuEDVx7WIVeLB1hkjzYveKylscZDLFtSpR2wqLiZl+nKXsnQNQkKbM5yFW5w+08t37j9XxmJlxckUNyEEqLovxzVVHLUH8krA1MMxOYrFbCt+PP+nNQj95Gb71u6IfEQorAoO2PbvyxkVHBRfPWvmcmjsrSPu0E9RGrWh2x29G4RwgLialwAN9+p+dU5KDocXEPYXKiODjdEvEfF1bCsqal55pqpnhzRFKlqQ4gfBYSJZvmvjoF2xeOrR8ESYsYES+tt4OLSmpvXQQ0ruttybZvh/+UqYC+BUVR9mkhyud6lX+R1YoqHBNsFYY0HTjHA3wr7TeIoZjuKtbY4uYqRlDWdzdOG5OKPgqhznmRr7W+mRvnMzeCViG4tFSZ8XWgjOs/lGxCiP/1LRS6n77YX7MdQzhrUMx4yNTGXcQRfb4z9yzcSniCeYk8WNjO2nGaxAMK5MQCYd4YMAEUG0oB4Vr5EXzwM2jhbIVO7ou2ZWhJ7sMR7XkEgjjhNQdzctI9DSqdJkgK5L5XLTLTEn5Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39840400004)(366004)(396003)(346002)(136003)(376002)(6486002)(4326008)(6916009)(38100700002)(44832011)(316002)(86362001)(2616005)(2906002)(1076003)(8936002)(52116002)(508600001)(6512007)(6506007)(5660300002)(4744005)(8676002)(66476007)(66556008)(6666004)(186003)(36756003)(107886003)(66946007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?u23zBSlei8k9+9d7O24RmOW8vqMbOK59bn+8TuurlaqRnx8EAdpkm6fRFCTs?=
 =?us-ascii?Q?2FEXdHOOWZKxzxEMZOCAKhOVZavVA7nXGVa4pL8ZNmt8E2dkQ2cIWecqDx9f?=
 =?us-ascii?Q?OIEx/7795uw7UOUQLpo+3XjLje9VCU6GDqIDnDtMtKiuIk+T3JaBsa5s3hvz?=
 =?us-ascii?Q?nOiZDl8Sx43KBE5C9avwxw7vEyUD9THEPA/OT/knUxPSEwODbSCVw079WFhe?=
 =?us-ascii?Q?/X1PT+q7khgb+h0wN/VVy8w1WNip1GOFVzbgIj3zBUzd85klUtPdKYj2LAIO?=
 =?us-ascii?Q?DJyq/+YsS4c1FsALztp0K1DzqkXCkgL5jconawUHCFg9eEExtX0+jbhmlrrM?=
 =?us-ascii?Q?HDEn68fiybEgLx9aj8q3wiFKl7FA4Bys402rFt8KkTTymDbxF8/OKbWcvIva?=
 =?us-ascii?Q?/BObDbU3eMGObLLXebPIxiql7XUZg5qZgTNBeNXtstQGAo55lpO2Hz+bwJ9w?=
 =?us-ascii?Q?lg1YX8T+I1Aqk80P6eC7kdrbzKotzQV8AxzoUthd0RmThLUYuDvzQ1yr+PRC?=
 =?us-ascii?Q?rHDCfaBta+NxLP3VZ8Z+M+9vxCQkyCRLNPSJ7IYRkF3U0Sz0t+hPKckHtxC5?=
 =?us-ascii?Q?6+7cc23PlzItZInC/1dfneCWoTrv+LYZ7D4naMGmgWKp/f/dzmBpDgy1iF5K?=
 =?us-ascii?Q?lX0bfnnsZn//Gn645L8n9u8knTRZ5ZTk8OTN15h5OaWQIjMaf7CscKNWrXyL?=
 =?us-ascii?Q?2iUN64lug8fOn1ojx5dkmTB9h1bT3FqnNhHL9490D/xTs85B5HcZchM0125J?=
 =?us-ascii?Q?3E66h2ui8rQBVeoCSNIn0/DYFZLcXBCzsE9jaOUHOnMMwzyCsVWjJXvT2jJf?=
 =?us-ascii?Q?lEq2eyI06IaaGqHvN/+gneM7THCaBhtKM+diyAqhBWxbypY/6UwCyMvY31xt?=
 =?us-ascii?Q?Ja77/hK3KFfTJ4ety6zN9LXXFh1loRkUtJvLL5dTpJjyK3FQk+rARLdmncfI?=
 =?us-ascii?Q?HxF5ayVozoXtQH4BpEekETdBWd2MqSSEckv8njSY+UF8YtReSDS4rfoUCsvW?=
 =?us-ascii?Q?GLanVew9okTsSxMvcjlwLT5l8uDu5+dyFqiRRZcVSOP8QPD8v6oeaFEmUVtP?=
 =?us-ascii?Q?j6Jw40lIr7Rdbqlm9F032fC0e8eMVccgWXyzT+zirffFhcK2v4MZ2q1zD70b?=
 =?us-ascii?Q?mvAxGJIQLREE9zcoI3SqYsQtS6eGaK29HzhViXnyd/G+JqhdEc+py9oV5SS9?=
 =?us-ascii?Q?4XFUWqK+96OlUvwi9lB70NRILs9jdHDwFjAmQM4L/Clap8QRmB124839aCVm?=
 =?us-ascii?Q?YFLsoggBMzLQ6fhoso6F/Aduka11iOJMilPcB0s5/U3kD3LA4Jjg5Cn+VRJn?=
 =?us-ascii?Q?csX86e+PluN7q7b30tcDWOpt3Qsk4mR0iBhFPsdO2KyDU9673KDmSYQgWmmV?=
 =?us-ascii?Q?REhM0P79QQ68hR7ZZu43z5IROroj1L496g3+zvYn6R8VeUPXPobHjwpPNTur?=
 =?us-ascii?Q?BV54A8fb+fRfIhBTUAxthXQx6OUfCCLslbA4FVcXtk7aQ7dbUKoU28zkX0OH?=
 =?us-ascii?Q?2VYwy5y0lpvEtXSGp++bN5e2VdF3XX2sn+1vAjjxjhCydtKb17P74kR3+i9N?=
 =?us-ascii?Q?dFZslhFNhMvdTTS5j80TpKFp3V6JxV2EoMyWFg9W7S6OI5dTsVSJLNMsB/Lv?=
 =?us-ascii?Q?3US+oUj2UyEm2NX91cJwwtWoN9wxUPcMQvKLrXWryydOa4ZEZd9jpksgDdhR?=
 =?us-ascii?Q?BqRrN9ImIXYvfcASQCCdZqSeF3hAqDLviNkY6QQoBXEqecB26dCH9KgQD/lU?=
 =?us-ascii?Q?UYFJ1J9CTA=3D=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 98797381-9f13-4a7c-892c-08d9a518dd4e
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2021 13:40:46.1634 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VGzejfM0IR9vZ4yeo9iKEe75oHYNE3c55mqwhOKkI4S7Bga/x268pKToQipXg3rKUeJ2YGMM6XnF45mRsAcUn5ehPdwp/chIjqWJU2179bg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6874
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211111_054052_605658_5DED31BE 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [FIXUP 2/2] fixup! arm: rockchip: add support for the quartz64 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

---
 arch/arm/dts/rk3566-quartz64-a.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 arch/arm/dts/rk3566-quartz64-a.dts

diff --git a/arch/arm/dts/rk3566-quartz64-a.dts b/arch/arm/dts/rk3566-quartz64-a.dts
new file mode 100644
index 000000000..8639ca088
--- /dev/null
+++ b/arch/arm/dts/rk3566-quartz64-a.dts
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <arm64/rockchip/rk3566-quartz64-a.dts>
+
+/ {
+	memory@a00000 {
+		device_type = "memory";
+		reg = <0x0 0x00a00000 0x0 0x7f600000>;
+	};
+};
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

