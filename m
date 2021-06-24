Delivery-date: Thu, 24 Jun 2021 18:11:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwRwo-0006Ft-Ii
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 18:11:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwRwn-0001jC-0S
	for lore@pengutronix.de; Thu, 24 Jun 2021 18:11:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eXKDZvfikjkGhI/CFlpXhRa6MuzOIWaZ24d7D6xrh18=; b=vOtvkyPzBm3IbH
	pQOh3Ki2YK5CIkzgQ/Ic3WIvhIgiI8/WQeRHVppu7XtrBspEWk7UlprGFQxyUYHzPCxmyL9HRS7Lo
	5C3Mg/iYKKHra23t3Srrb6m0dCQutUger386ypiTHXbRo4AGdCQqAbMepeUVFmJv38gu3EvmTOa15
	S4QK6kczzuHLUpTRkbwo7kGMnCgwALNqIkwkIuZufQDgv+G7pAlJ9G8v+1cJF0vHoqnm6jP3FrFpm
	VhdRZzX9a18zcb1ylqQ5z53+juYjWSU9cCtyPgq0waxYI6I+1240raZa6qy+dBc0nnXdUYulHFihh
	ljnTxmau7KsszKwGbpeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwRvD-00FPe5-RN; Thu, 24 Jun 2021 16:09:44 +0000
Received: from mail-eopbgr60046.outbound.protection.outlook.com ([40.107.6.46]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwRv1-00FPbR-Nz
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 16:09:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HeSWdLjcnKARDooRdzJioM/h3X0rfCJxJ2sOoNmxWS+V3xGakLekBw4cmRb5TMiKib+NjBk6xgFxcJdLH0nPQ1rSLnjHNZqj/VHrVBmMm7fXdaZVltrbt5xr8HGaHXWsalQK6fPZKDtuiWBVhoHdFzaCG0pLMnOAjGIZ2zdhml9BQjLvcRtz2r5gr5YUMPPPZ/PJWWKZ5oT2sNkBKPWLvazx60VqfTozEGVcEVIDYNPcDTRQzwUpcQXzaJwXAe7CBOJhYQ64WuqAf1K24F/TBHpy+RIowRs4/ymUhx+xVMLMQDYY8hMVxawPDHNPiBas8V7RUf50Pshn5tklXYWyQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+q+BHQ6I4WsSHa3Pg/fiUrsM9LnC2fq1RUx510+lZsk=;
 b=BTsElmgxRHG/rd09mpnOdQBX6KJoNGFy8UP8p93OE9djjYB3SJCKJ+TXResbZyb4M29EHDlukKo4Khg6XLyH7tFQ5JFBtwJJOtZ8sE/yMMFZkG+V/C5AJHYecd9+Z8zG9MTvdVZRg4kgMTLtW53tJ4ky5aObNrMrfD0rve1GJdWQakIjUIOhRoIBmAxWHpm6MulwModLxoOqvSsyix97GqFMxIXqOCVLZapxZH9S1xF07K7uLOWZNVOtTwyztJV/AcE7oEsN4d9nxoIVO9J5QU5AytgBhk3QQiU4SbNJ76qi1SzQHnBGZw2zv4q2IjoWmvdDwbNx97YULdHhF4b9Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+q+BHQ6I4WsSHa3Pg/fiUrsM9LnC2fq1RUx510+lZsk=;
 b=aqbgt9CKVrB0w+zYs0wnoNKfSGAWmcgOR7uyMNsQrERBY4StpGj5vwAHLlGJRkFBAKvfn8qHlpZASL7vxPcAzqv9a7NTUSEDkdPgR9wjWAObYat/gy3J3RTTJnwe2HwBs64vY80S7KBxBZ8OjYvEoC7eysV0UXsWF+A2HhSNbOA=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB8PR08MB5404.eurprd08.prod.outlook.com (2603:10a6:10:117::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.19; Thu, 24 Jun
 2021 16:09:29 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::7067:f3cb:b0c4:25dd%7]) with mapi id 15.20.4242.024; Thu, 24 Jun 2021
 16:09:29 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Thu, 24 Jun 2021 18:09:13 +0200
Message-Id: <20210624160915.21897-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [91.118.163.37]
X-ClientProxiedBy: VI1PR07CA0181.eurprd07.prod.outlook.com
 (2603:10a6:802:3e::29) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR07CA0181.eurprd07.prod.outlook.com (2603:10a6:802:3e::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4287.8 via Frontend Transport; Thu, 24 Jun 2021 16:09:28 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1b7a0983-94b4-41fa-c8ad-08d9372a71f9
X-MS-TrafficTypeDiagnostic: DB8PR08MB5404:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB5404361F3007B1BB2CB54787F2079@DB8PR08MB5404.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2582;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xemHB8ESXO3RxIl2NWBomxx0MVbZANMXLqEyp+DNs/SgYrBMnWMl/mc75QEeWkinAZsGrVsicG82JbUyT1f+RDiCVP1sEfAdlt03FthxwifOO+Wl/wiqilvbeo3aoxHQSCpfhimLOMU0QNMAORmHK9WxrXOTeeM9K/nsFu+yiXdWfvwtgBuK7+7QAeIy/WtUDjxxgkHdqhVXkJDdzTzQOwQj1qIMzVg2Ebtlz3qZydNKujmpwTrm8UybvyPwte56drpIfhWmHKz0J4ytRRVIylc0MgMwiQR8NjETbq9a2gWWuaYcdBozMV+zbKmwKq/WtgV6DUYyv0aV+oKh6XhWc+I9W2L7+eIOudJpAC3pYw6WqDxXNool23fdcy0WbV59fbQ3BoVgM1m6UIy97wqRk+I4ATI6I5teVmteTkYTR+qInMbodu6KQBedFwOUun5kcgxkJQcynjViz1jA0SZ7x83RaP12XkMxGjVPL38IFK8KOYNtBYnT3T/h3Y+pnuighdt70Fq0OWHBYseqwWwbJesJauNrNZB3f0uscvRrZGtRM+NBiY1E40Ty6kcFa6Chl4jqvr/B2YT5KglVoxxfmHUkIKD2qUgaKzBshfJsC2XajRqFEe03HeTlAEQk4eSlstLFPBiQl+Nhm5jbSrtLSQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(39830400003)(396003)(376002)(366004)(6666004)(956004)(2616005)(36756003)(316002)(6506007)(8676002)(52116002)(6916009)(86362001)(1076003)(186003)(6486002)(26005)(6512007)(107886003)(5660300002)(16526019)(4744005)(4326008)(38100700002)(38350700002)(2906002)(478600001)(66556008)(8936002)(44832011)(83380400001)(66476007)(66946007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JG1GbkOiO0D3OO9R5RHcneptKFG2M5JJ9nOcXtaUYBTdgwjBpl/90UUJ7Y5F?=
 =?us-ascii?Q?B7x3LPshhYCRlllvssIzKFuI1SeQunEb3rba/IOzjHcMK+IyQ19Jje1kFzOh?=
 =?us-ascii?Q?qg1Vmhe6mUGefSI1iMsyiqFRnzy26+p3Tv1BveWQEpdORPARKflhj8RzCunX?=
 =?us-ascii?Q?gqH+dNh0gKaLxJR8Y6NG3jyOlTBrTxitwt9dIdpXcU5zsvj4f0KOfu9Omr4L?=
 =?us-ascii?Q?S4O1BOjJl043ymW/YobsK2q4kRNW4dCu3yrxd1AUE1dQnWc/GctrjVTfsV44?=
 =?us-ascii?Q?N09Mo/jGLUcKXcJLKOr6tjD4RnTe8VBRx/Dit7KIaVLD/0ACpyjF9Fq81m7e?=
 =?us-ascii?Q?tZSJwPC8uOd41KFCeV1HbOgeWB81m9Rg9IlptSxnb/Hjr+v7nltGVR0oi7Oh?=
 =?us-ascii?Q?EvVuupcD+ZtOH2sOqBTvJLvCYC5R/snqb+CON59HtvAdE1euJCzQkABSXwIT?=
 =?us-ascii?Q?+LbYdrsuVj3WZT02FTXaU7/bBBvHTCFz+EBkxOcG+OghQSyrxHqYWjFxr96c?=
 =?us-ascii?Q?/PQ1+UiTSvaG7dRmlFDtA7Ks21AUPzyYiuG17JBwQespYLXp6oDnZGgJkqiH?=
 =?us-ascii?Q?GUjZX6OOz0aW9ODF4QGqbn6qOUVpAQYP6+2PYuWwevSf62CgVseROLoBLu8C?=
 =?us-ascii?Q?CMziWFmqMKsgsa6rLjBjbKDB7repWqwW2NkiJfEzXudk+o81CFrvwtJaOMEB?=
 =?us-ascii?Q?vREy6ln+13Htjuq+1ns7PV2StfJWqE9/xSuQAxPNGgSrMnBdfHUK/HLk0ZoR?=
 =?us-ascii?Q?j6KvnLoEV72CRk8OaHkgtBJCpIJMtex6iWeV1fdsZbj3Mz9xiA6FIoYg9HyV?=
 =?us-ascii?Q?y5MAnxp0vP9PEVC0UWxC4C/ZhTTYyDhgLYggDvy9dFE9v2HgjLuX5tKxkQ/B?=
 =?us-ascii?Q?wGVyNuJ732LJL7OmWZbUgPsw3IPGpOQIOKwT9NezyZqasui5Hzw73ZQwzTDt?=
 =?us-ascii?Q?dnNVyfUl5hYR3kwQuTR4rPkNWXaDwNb5HuznQhZ8GueGcIyAVOsOLnOhpSvc?=
 =?us-ascii?Q?9iHuTotdyWDl0NFwcmnONxfUVglsgw3jcf/tBXQdqMe1iSXJlt7kLKp5dOWK?=
 =?us-ascii?Q?8ULP6iqPeAIYZO06T3xN68W5uJ0SdClqaRApA/2XrcY9D9QTjwnTrNATLHJR?=
 =?us-ascii?Q?6KhiprJ0Qzr3jez2ThWWL4wsn7ZwMEwYcevGkgMVf0O1MQSSZN0BSt3f+hDf?=
 =?us-ascii?Q?rmbsn0RoYhdplxDgW1wkxmhi7rHN4IvqnkQQ6p/3dtu8bZp11jh2IrTQw8dN?=
 =?us-ascii?Q?Bz43/ORLPu/SETWnH4OsIjS89yRff1ro/MwiHozcQcHf/s/kWzo3lVMDMuI6?=
 =?us-ascii?Q?1vOHbhiQNk1y8tKQ8MR022u3?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b7a0983-94b4-41fa-c8ad-08d9372a71f9
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2021 16:09:29.1884 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fHbXTjgvmDLv+lr/JJqHjtMpUdUQT5i86GPlF8fSEvpx4N4tnZ5qlYZA8WWOuwILcpRCoA2zztDMwBpcpIzS+m8wT784ZnXllTeBP5be3k8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5404
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_090931_835216_564406D8 
X-CRM114-Status: UNSURE (   7.44  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 0/2] add support for Rockchip SARADC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Michael Riesch (2):
  aiodev: add driver for Rockchip SARADC
  arm: rk3568-evb1: add support for Rockchip SARADC

 arch/arm/dts/rk3568-evb1-v10.dts |   6 +-
 arch/arm/dts/rk3568.dtsi         |  12 ++
 drivers/aiodev/Kconfig           |   8 ++
 drivers/aiodev/Makefile          |   1 +
 drivers/aiodev/rockchip_saradc.c | 197 +++++++++++++++++++++++++++++++
 5 files changed, 223 insertions(+), 1 deletion(-)
 create mode 100644 drivers/aiodev/rockchip_saradc.c

--
2.20.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

