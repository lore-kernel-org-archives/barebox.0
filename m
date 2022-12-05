Delivery-date: Mon, 05 Dec 2022 22:13:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2ImH-00BvHZ-In
	for lore@lore.pengutronix.de; Mon, 05 Dec 2022 22:13:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2ImG-0001ti-9H
	for lore@pengutronix.de; Mon, 05 Dec 2022 22:13:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dC/74bp+BqmAf1SOVvdMtFvpzCxOBl7jbMe5hevtfbk=; b=jiN/zI76m0lTnrVwAv0EiwGU5c
	SUxBSvNCbEbg5BE4jOdePMBT9d5Y5dDNe1qq/iXwDsFPsDME3huP5lkW3iizrFY5CTCsxYPk/NYm8
	DM/AUxac9d26xhC0yCGzo9Yn38mmKVq0EhW5y34Y0yFVSuWWBJ4E0gIjs26R2F7pK6ZlhJWeMPbqJ
	8rc4fy+cd83pVWkKoZ+BFJ1NI9t60wGfkqQ4RZSpOhzuHyf+Pl7h6XlH8lmhNRn/qimAMwMMiPwCg
	GhkzZSW8kjvao4L1876pl+YdWItWOL4uM6rVzTiN9roxtUyczaLDn0QJFjcDDt0wEB5YqzOO8eI/i
	Kebg3Etw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Ikw-00AdI8-KK; Mon, 05 Dec 2022 21:12:06 +0000
Received: from mx-relay66-hz1.antispameurope.com ([94.100.133.233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Ikq-00AdEZ-6W
	for barebox@lists.infradead.org; Mon, 05 Dec 2022 21:12:01 +0000
Received: from smtp.eckelmann.de ([217.19.183.80]) by mx-relay66-hz1.antispameurope.com;
 Mon, 05 Dec 2022 22:11:55 +0100
Received: from EX-SRV1.eckelmann.group (2a00:1f08:4007:e030:172:18:30:60) by
 EX-SRV1.eckelmann.group (2a00:1f08:4007:e030:172:18:30:60) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 22:11:51 +0100
Received: from DEU01-BE0-obe.outbound.protection.outlook.com
 (2a00:1f08:4007:e035:172:18:35:1a) by smtp.eckelmann.de
 (2a00:1f08:4007:e035:172:18:35:4) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16 via Frontend
 Transport; Mon, 5 Dec 2022 22:11:51 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AxcbwjPq8WK9xcUYwCiA/BdM4y0P2ijB8YqWAeRJ12YB1iBPKpRY0ftK9xuRKtx8KRvVzll2vtrjlK7OCMTHc/mSb3z2aIey6Q6cLb8HqnVhMPfK2tECVRytHKzNnYiBKjXRhr5T5gP2Vgi74TM6TMRi7/tqDSFbvOm0Y3l1ZvAn2u/wB9rjt8EKfpnEgKJPmZc8Ioq5NuNtX2Gb0GnErY9VJ0WMjI63c5HGyjlhDTgkQQHRAa0RWKfnf822npMYU7q3UqRe6yGqX1u5Aj6hsrD/TXzl8qAfhr0nvWyxTuddz047lYhOkBuh0ECvit+P74D2GRAS/vofpy2FBI4prQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dC/74bp+BqmAf1SOVvdMtFvpzCxOBl7jbMe5hevtfbk=;
 b=izVpHqYMXCF0PcAIxJ3pj7cUYQpxV2M8EIzI76pPXWl5D4uoC9krhuCVmyX6H5UcyrmUGk1x8mWpYg6M92apfyacx3OISMtAXQPYQ5Uspf/C1WgsN76TkPgqZIjdcQdK89gzj0jbUSwEDgI5eMOi6jvmCilPv+C/qgDsbbyA165VtsJRgjo8oJ1RayNbMaEgA6j/S9lnkTTaf4MZ8KK0cg+ck39J4NBKaVVBRON7rwyUReTal4DuB1+bcYPtVrudBAL4nucR35Krl+04a6lvQ7eX4NTOfF3FzTrw9xKbtoS/vSu+sZgVNzuHU+hWkSQi+0z+Yx7YWekTqfps8Qiu9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eckelmann.de; dmarc=pass action=none header.from=eckelmann.de;
 dkim=pass header.d=eckelmann.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eckelmannde.onmicrosoft.com; s=selector1-eckelmannde-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dC/74bp+BqmAf1SOVvdMtFvpzCxOBl7jbMe5hevtfbk=;
 b=XWUx1q3bd1aJ38s7jlran/R5hOB0NC5aY1Kdd7zXqMW+7nc8XPBtL2HbDBFHfsEEBXCdfERkYmpjoQesb1V4SQD0XKUEYS26AZQ0tPktAHXcfP/u725ibzu7kjScB26pfOUSfletZ5dD7JoXhlCEa6mfzfMAm2SA56rI1AR9j+8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=eckelmann.de;
Received: from BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:6e::9) by
 FR0P281MB1738.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:83::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Mon, 5 Dec 2022 21:11:50 +0000
Received: from BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 ([fe80::5ce4:4d27:491c:555f]) by BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 ([fe80::5ce4:4d27:491c:555f%6]) with mapi id 15.20.5880.014; Mon, 5 Dec 2022
 21:11:50 +0000
Date: Mon, 5 Dec 2022 22:11:49 +0100
From: Thorsten Scherer <t.scherer@eckelmann.de>
To: <barebox@lists.infradead.org>
CC: Thorsten Scherer <t.scherer@eckelmann.de>
Message-ID: <20221205211149.olbstungmceamcsu@NB142.eckelmann.group>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-ClientProxiedBy: FR0P281CA0066.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::12) To BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:6e::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BE1P281MB2529:EE_|FR0P281MB1738:EE_
X-MS-Office365-Filtering-Correlation-Id: 60514e8a-ad84-4d17-df15-08dad7055398
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JcAkSq44Fz50urWEPJVAUBn2D8OTST24kIWlrmsH8xmDu/Xv6qodM/J6OtFlb0/54x0ViCCb95VksmuoOxFi+lknU+IXVG7EcC99+Xm1MKuuj23DFNVKDi8DoytzlOf/vf93UONdTJYZTIu26c4c4Y2ww8eWoaUoHYYzRY/mMi8mQu+Iy+RwIlWGBwfI7nZCivIBnLg709BznJrwH5+BLU3NSHLn9jR0qtSNUbz7jxeUxETpyg92h7mswKv84nb/HPN0ErBN62GoZlGH8EHjB44gyj2gFIXQRPL7YEMk6nqhc9E8tvZD0AYD6tSHD9aqRdlXFcCmSCzP7dezcAgTRKdF0GuqmxxW2UH3nUJQDrJYhI5sSgnGwv/GhozwUAD+ZhhE3C6aNC/NdZ/ejf/nA2xXg3bHc6yG8GxhR1/GfCuevYfBEjOjt9Aa3CDWnX/assSm/0iVcfYT2lUPe4cq+xPEczpSE7dhWbItG8CXOtA+7n+sbGUiNMvizGamW+MEApeVNILoVljS6aiNcyiHrt+uJw0JwpgOox2bEaeR9le6gdPdnYaXLng8H6hyvyil7kITx/9x6oXinqhb7M0F9MpdOOwJWRxS1K7FEpzgUoP1RGl432vqXE0lqiuj6tc5jL4PN5mHvKT0peuWHS1cwQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(366004)(346002)(39840400004)(136003)(396003)(451199015)(38100700002)(86362001)(41300700001)(8936002)(2906002)(3716004)(5660300002)(4744005)(4326008)(66476007)(6486002)(478600001)(66946007)(316002)(6916009)(66556008)(8676002)(107886003)(1076003)(186003)(6506007)(6512007)(26005)(9686003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/TJpNHbgYVAOm0WP4tvRh4DB8sNFyfRQoEiEku5qsaVBlN2tt2rXFv0650iV?=
 =?us-ascii?Q?kWOEPZyMoOa85ezbWcnJinQlDpxwqFOVAgLOiq4mw6dKUcS/YE+0M5i7OrWD?=
 =?us-ascii?Q?+GSfzxSE5SJNqcVvS+CJ9hK88Qqf6lRv3LmQzYmop8bcLzcdC3aHc0k3li8x?=
 =?us-ascii?Q?a2fBxa8AjvZqwtk8z1JQS6fYWmFJgBfUWWIrSQw6E+ANJ0p706p5jFRGVM4A?=
 =?us-ascii?Q?XOyiK0xPW6lYMPwp7jkrGsdNVarAcWPub76bDbTRwpo16FLfh7WmZSGjWSS9?=
 =?us-ascii?Q?1S/FDmhqWgZOBB2nDuurgfYz/bgZYYqlJOTih5n7D9SrrjsJh/4ddBMKb0Wa?=
 =?us-ascii?Q?zdR4geiTtgp6yS24ut0XzUzhfAuixrucWL0xVXUt3DyszlMt9R/EzGT3RG2j?=
 =?us-ascii?Q?gcMnK/48t0ourROO7T8Q8B7/XQL45dhiwwOvyD04ZRixi6i9qceWBaeyTY18?=
 =?us-ascii?Q?PZOTYmkhfIXcOzuhoCcPrgNExwwP/iEzRjqWprC/svO12s2AcVbXvHUu8HXB?=
 =?us-ascii?Q?clLc1cnzO0t8qde2cRlh+wiNBD7xWwEZBTBWbFSurGdmEJ0XzZDNdrCo/rFU?=
 =?us-ascii?Q?HrraMs1kP2QhON8DViYBOjKCUGovWXrv0PA6uvACpQ8DhAuSMhy48NtgSH+H?=
 =?us-ascii?Q?Up5CEumTg7i+MHUQGE+CC+VfA/riuqlDADYWUPY/tWxNSBPGPiRBzb/7qMY5?=
 =?us-ascii?Q?TIpTtOK7MVDzoGU8yfUyjJ6KD7dTmUCBD3ArT1C7unA7qOxYKYNoY2M4KIqQ?=
 =?us-ascii?Q?6T71/UFTrnPBMwaKL+wZBl3tSvqHDaLayjmcc8QwMqdjUXyU6gzPpecDFuMI?=
 =?us-ascii?Q?wTXSfPViifkbXIbm/2+C2WgcjK9f4hBwg+pNhsYotMgb4MN5BYeDHYSnjUEy?=
 =?us-ascii?Q?GUsHd3x/+YNJ9F8R0GXB6o/KOe1ibjvWhh6NucixYXJe9AiBxfovh+e1eJGv?=
 =?us-ascii?Q?W8BM7Fx787Xp3LKbLHJNXg+RENeJgKzYr46G4h5TLcP9o3gzojHxY0HS3lL8?=
 =?us-ascii?Q?HBN4Q/V/bfbHDjpYqlDYjBCd9KDg7mnKKAxfqUz+0gH4qeB4fz/1lH1MrzpI?=
 =?us-ascii?Q?Mqxf9u3axHxq1ZsPyZ3Cm3h19IMFqQ1UOS58AHwXeOPai0VGNakVrlsTBd2R?=
 =?us-ascii?Q?4EE1QHhtwjWo5zGuk1HS4zK0O3atJME0QvJUYpK03WJIU89DTlj6pIMv+Bps?=
 =?us-ascii?Q?TIZfju8C+iP97peknTzMQMVBDgCPi5fTDG1uAL8HqciD0l4BE0iiJt8XOEHz?=
 =?us-ascii?Q?WZZHiB5f0909aWrcJO7rMs5x1Klj10RWezt7O2Xlb0i94TSyClO1sSnSrOY0?=
 =?us-ascii?Q?/IkqwuqmvrGtifAdfxIL28I1aWdMZ45zX0RTqoLUVsRO9NFrjpaBsf+BFfBo?=
 =?us-ascii?Q?PKcbaxCJmeIZeFp6S0wvqShIe5vftJ8FHcnAqwMyfS7jc3/ZfRwgCvlYhsBN?=
 =?us-ascii?Q?mHBfABdgSRC+OuAEGH6YrCpQmwKzbRBJyrq4GBZAzuVSM4gEzgElt/8HnfDj?=
 =?us-ascii?Q?66cPc/LQmPR88fP7Yo9MxP6DxML1lhxmdx5fHNb1eEJHGW3oiXKVdfXtZSVL?=
 =?us-ascii?Q?QHVvCe58Cdn/coZyr+WgFH6tx21UOTykqoZEr4lAo1nxU/vnZnycXTcuthh5?=
 =?us-ascii?Q?AQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 60514e8a-ad84-4d17-df15-08dad7055398
X-MS-Exchange-CrossTenant-AuthSource: BE1P281MB2529.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2022 21:11:50.4463
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 62e24f58-823c-4d73-8ff2-db0a5f20156c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xau8uKeQKBO2odiOMzgG49XwXfV5kSVF8FzbMcO3nbLgeDVqYWMV2oG2zUcCAOmOEA8SYcQC6UrVEMV7iX8mYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR0P281MB1738
X-cloud-security-sender: t.scherer@eckelmann.de
X-cloud-security-recipient: barebox@lists.infradead.org
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay66-hz1.antispameurope.com with C5D5A31C03
X-cloud-security-connect: smtp.eckelmann.de[217.19.183.80], TLS=1, IP=217.19.183.80
X-cloud-security-Digest: a6eb6e168e98010d29e6406a5430db64
X-cloud-security: scantime:1.910
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=eckelmann.de; h=date
	:from:to:cc:subject:message-id:content-type:mime-version; s=
	hse1; bh=9Az7aUr/SuhKWukBYi8XXK7SqtdxYdO9ZC099/cNBPA=; b=R2lo1k/
	61dl5S26V02EXZL703TdoSCcwtcTTm8FMZTWC8Ezj9mEu0cminJy6yN2zIQ4X0ZV
	X7tLGCMYXqvqu9rW0qHhJ4bi0Rzad3jDMvs3wY4GKom91KLGuA6TYRQOgqN+Khuo
	qlQGzlYXBTThvx0ml19i7JlYD1Mtma8EMIlQCNcnBG6U/AZCAmp7LX0SX/RI3KiR
	a5a6qXy4ZfdBKsM/wQ9uxIoIblrFfwvBCVlc8UslXjDj1ismyFOhrhvA+/IxNgIV
	fQZ7MpBGtTLL6KclNhflUUECyq7uaX7dTo3uwxXJhIQsENbJ57o6aiVIn1hHJ8+M
	v1tHYJJBa/hSm0w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_131200_409002_248C8505 
X-CRM114-Status: UNSURE (   6.75  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: devicetree: Add folders to toctree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixes: 594d5d58af ("Documentations: devicetree: bindings: document watchdog-priority")
Fixes: 21dda946e7 ("restart: do restart-priority OF parsing in restart_handler_register")
Signed-off-by: Thorsten Scherer <t.scherer@eckelmann.de>
---
 Documentation/devicetree/index.rst | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
index d03db3cf82..61ac0433fb 100644
--- a/Documentation/devicetree/index.rst
+++ b/Documentation/devicetree/index.rst
@@ -114,5 +114,7 @@ Contents:
    bindings/leds/*
    bindings/misc/*
    bindings/mtd/*
+   bindings/power/*
    bindings/regulator/*
    bindings/rtc/*
+   bindings/watchdog/*
-- 
2.30.2


