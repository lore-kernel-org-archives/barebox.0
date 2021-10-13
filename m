Delivery-date: Wed, 13 Oct 2021 14:43:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1madbI-0005U8-7c
	for lore@lore.pengutronix.de; Wed, 13 Oct 2021 14:43:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1madbG-0002Ez-Ct
	for lore@pengutronix.de; Wed, 13 Oct 2021 14:43:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tgT8O8Kemj5yqonqv7UzZ6KbCf7KIohzpfqXAaMODYc=; b=WIrQNvUMLs5xk8
	djKC/XwQXjEDLX95zxXsQfPs0/WMNXOLStgoloRiBT0UtlZqAgtxxFAN8UdKK5cpxy8r17jmBy5kf
	At84NDUddHth4cbQ+nPLpkwgECcE6Jbmyt/CLIBgK38OX1REw76IcT42oTQqalfjQTNnocGxMZ0o2
	joz1IEE+LGfzqfjkVUg74eXg5yVU6Q+/YCCYJQUOEFrAYoW5FlXTjN7+SNNzOI0J+KGkzSstsBfrc
	RphoxHHmuWTWDfImDEiCKiVgOGJASb6PB5LfxZHM23nA1r8N0cJ3ih85VAeC+VlNCWPS4Rsd1KNJZ
	QBEcnL4qIFtNcXO1gzog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1madZZ-00Gd8G-NV; Wed, 13 Oct 2021 12:41:30 +0000
Received: from mail-eopbgr60088.outbound.protection.outlook.com ([40.107.6.88]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1macLi-00GHoh-Qk
 for barebox@lists.infradead.org; Wed, 13 Oct 2021 11:23:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m+Eog0Htf2VaoNTsV34bVMQH/tYjw5foiMLSCarH3+1a5O1ja/7kAWwskKNLCcfiEfMTpI1uckOWncIAs/9/Gz1VmaxsKFHBhLzK+8nxcmHCCmoDDT0H3MnDmxlrgy4810IeBVZdrg0s8LrTfFHC0KcyrR8VS0M6rhXEWwInvvoMGuXc8L4hwNi/B1563wu8bGLlZHnDNCDc2llQY/6lpappYefilHA6SrgTtcmwLY0IjBslYG2WhU1VwasyJnGfE8SUXKXhIyKrQDAPURLm26C18/9KGuWh/qQeGLQZU8v6Ea9QjKmMAgwGb2kwFoMrV6+YM935+7NWckN3EtP1hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l5ZcboL3VbLE7ty4qErTnX/IMhRRpAyR6vbdUKoTX4c=;
 b=fW29Qg0VaToMExg6qEtP7DTBO8ymqROVV0EE7RAGMOZoocAAhDcUyXl8kPHbg9hU3bxcC6oeD/B/dzyzMe+Z5G2qDim3ffJN3h05iMZAnN2pXsEnDwuMvd4h2QoUcNo5zS04glI28oWLCSCVFz9IGzXH6DtHrnG593Bt0+Ewj0ds1XxS7+zgakQZ6FB76zqcMnraHymxpB8oSMNoRM1a/oauTCeTszJMlmsY5fAYcCgbD7QFSodqcg4JqjSv1p0gaYOMKkr9DsXmdr/QUtW6ZYGorwezJUIchG8hzFgD2gs1P47DNmk4+hUG9AyFTTtejBDuOBaCmuFEQpcBURJNRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l5ZcboL3VbLE7ty4qErTnX/IMhRRpAyR6vbdUKoTX4c=;
 b=SLFXJBfQZMNAaWi2rTxZshSmcO4yl41QX2I2q6l7lPXwJHwjIZt9QjsansgVcgTTCxResEqysQ3EQmlgx4cRlCnqAsUnszHPc+gBS2Baf2c9OPhsA8T1SJ66pGWHl3FkecIMpqzoAWhuCfstInxnCea5Vvxa6mBYg2QqgCH06jI=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB7PR08MB3545.eurprd08.prod.outlook.com (2603:10a6:10:27::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15; Wed, 13 Oct
 2021 11:22:59 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4587.026; Wed, 13 Oct 2021
 11:22:59 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed, 13 Oct 2021 13:22:46 +0200
Message-Id: <20211013112247.3065-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: VI1PR0302CA0012.eurprd03.prod.outlook.com
 (2603:10a6:800:e9::22) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR0302CA0012.eurprd03.prod.outlook.com (2603:10a6:800:e9::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15 via Frontend
 Transport; Wed, 13 Oct 2021 11:22:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6b70c032-8aa0-4fe4-a574-08d98e3bcfae
X-MS-TrafficTypeDiagnostic: DB7PR08MB3545:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB35451DDDB23E69B7A2A18FE0F2B79@DB7PR08MB3545.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v5niRH1GFuhqMlNqN0O+R9l6L/kTu3n/rTROp3DRpVcdZIL9xFOvAu4iaD40bJms+vLQ3+vZF+C6kf9ypVJAok1uvLPRIf16JtqM0Id2FTncoO4vt2mVkRugBxtOc+eYwM0nBiUlXKMQAKOLPr0gQVgy6n6tY3UfdwWJ5E/7Kut9z55q5r3z1y9Lqu47naUF3+pVGTH2AfuKEfcMN7rjxSKoCgB8TD9KZSYhW1mn6zhT/TMcH9wqKFCIk9/Z9G6l2ciVzh1VIfiQz/8BmKkSDlEFDQcgiFn5LAS/IovNP6wLqco2GKczEXTDyYp2baG9WU2Qk9HDhD3BsBoBWLSLGGPDwuJs+Qomz8Exi8IulrfJulyzX5W1ixqip1qwQQk0Zmv+0kWDp+WKeL0UdKFdsmxMMOxJD916UkJmJe0KI30XaJOxkWc24+wqNEt0Yeo8BnNBa1jKgIm5W2Le3OSkSoXUhNuk/WXH+gw36dB12u1u/J8/AIAhiaGVoOAxOzk6MmdRMbo3R8FM986paUqXpdcX1gQZSHGlfmj5QqR+W83mH4u/gWRX0UvJ57erfFSooKBztUOkViT8ADNPehlilnHTaTDIkkwdVgL4cSmI8BdhpuxOz5qXmTz84YKrN29Zth734HrX0I0ZKw3j0ewXnV3S9/88opmFQKcLbW8GoLQn5XuBpuV9qnqxjhcNmreq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(376002)(39850400004)(346002)(366004)(6506007)(1076003)(38100700002)(38350700002)(4326008)(26005)(8936002)(8676002)(5660300002)(4744005)(52116002)(6916009)(6486002)(66556008)(4743002)(66946007)(66476007)(2906002)(36756003)(508600001)(2616005)(44832011)(107886003)(186003)(6666004)(86362001)(6512007)(956004)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?j74ev4Jlq62aWASApz4VNRVxuzN3Nf2nQhZc0y70s0SIS+i6NteRONU6jphv?=
 =?us-ascii?Q?uuT8rECtNVnfFEm/FfBaTYAYG5vSs05j5fWHeG/JMwHSxb2MmwLR2KwvGscK?=
 =?us-ascii?Q?6LkKMvERt7VuE18ajHJOsoYZ7mCUBXkcg4bhRq0EeTqRU2GFmlHPR6roTkOX?=
 =?us-ascii?Q?WeTHScC9If6qrRKi/A+ImVDqayHPlZ5h2DRIcVjQ/aZ77wEvAV3i/W5Miyhw?=
 =?us-ascii?Q?cvv9Wp+zoNGAgg+73Mq5/7iIVxyD+s/C+Rv0yLVBqwT5UjPTV27/yetw5kTn?=
 =?us-ascii?Q?99b4WSSRfvbkIzH6EWe5qNJn71H4itG8TTchmqJ+EexodF8GirEvpNinrz+h?=
 =?us-ascii?Q?zsn0T6PlmhiQwrVyn9yrepx+bbxQDPqlI0ED81NwuDgZskDnsuQ+wzTt0Yer?=
 =?us-ascii?Q?MreYnM3gV5AHydZgf4ZOpek3hsndrAEsbpv8wJ8XO+WIg1/1lYjLoIYe6Qzs?=
 =?us-ascii?Q?A8r2wYLVXhIrUbi04LxjDTlvqvwVt7OWScyzo03+zbLxQj4EN3kfDJyt5L5U?=
 =?us-ascii?Q?CYSHJTIoiabcAGTR42j6489EEbb35udy8a6vc4PbwvCIpeq+mv6QlBAiw1Pf?=
 =?us-ascii?Q?zM5i5mvI9oH9Cs63ZWlVKAdjTuurSwanBfRugiJtdo8CwoydGgZGf7CHO2h2?=
 =?us-ascii?Q?S2uMD4PBjsoBDFdaUgxtSkMAVz4wbHx4ut1Mw7hFRL0Z3Z1sfVcpnZ/8CPdC?=
 =?us-ascii?Q?D7jO0j5d84voTw7S+9QVTgddbBVGWF8Gh8GaneyU3Z5AIV4DVybPxzRFqdmW?=
 =?us-ascii?Q?rmpkKvtDHqeWgx5Q0SGJEoRE/22Z5cAjP6tonYoe0avz1u1SdLVaCg9HKpxd?=
 =?us-ascii?Q?GjQNOGK+E5QSMCowRCYYMS/sSMpoGDTfizn2zBFkYPCDO5ZyP2bP8KBDoD1W?=
 =?us-ascii?Q?qNtclFRt+XpCfxIgaR532hTzU0E+WiRRAYrdkt719iNEClUcPYqlEqeFqNyd?=
 =?us-ascii?Q?IVCZOlvCzxceWn3hcMXFjHIV93qeJSnNtm4c+ZTfrKDBVOLSJCmjESncyU1+?=
 =?us-ascii?Q?jlNfluFPIrMTCg+ptsv1VUZUjP+hrOXkmrTFwPG+VCh86MV6umuLwix6+Q7P?=
 =?us-ascii?Q?Bvg9zypiNK83+3Y8u2W525+UTxDKzJIvjy4xgMB5VjF1clBWiIxi4LmNBwWa?=
 =?us-ascii?Q?b53BZ5dBhM/r1YUu9/iAp3t5kO7EBPR3Dewqgxa/ExmVOMNIiK4Lv+GhCsp1?=
 =?us-ascii?Q?lTWMZuUcpVH6W6afpzk3UA383J3NN/ka6vUY/d0bLGRbfypDmyL5U3Wn36GE?=
 =?us-ascii?Q?uGbN9kNB7fkFsif+E9MgPb9CjUuMRDYN/o0sUQIm5FCxHTT5rZSHZe0pDWW/?=
 =?us-ascii?Q?AHK5KnD/9djOylBd5t0SqiBK?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b70c032-8aa0-4fe4-a574-08d98e3bcfae
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2021 11:22:59.0578 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: slXkIU81bXsvKHODUN569MxpU8LkC/QUVph8xg1QVjxuxe6xy46fkScjIKmeLec4PMYn81v0+8CJix9qXR/qhAnB/npKg3liM2vHMh7wFtw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3545
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_042306_991488_95F7DCB9 
X-CRM114-Status: UNSURE (   8.75  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 0/1] gpio: add driver for xilinx zynq and zynqmp 
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

This patch adds a GPIO driver for the Xilinx Zynq/Zynq
UltraScale+ MPSoC architecture based on the corresponding
driver in the Linux kernel.

The work was mainly carried out by Thomas Haemmerle, with
several format fixes and the revisions for v2 applied by me.
Version 2 of this patch considers the review by Ahmad
Fatoum.

Tested on the ZCU106 evaluation board as well as on a
custom Zynq UltraScale+ MPSoC board.

Best regards,
Michael

Thomas Haemmerle (1):
  gpio: add driver for xilinx zynq and zynqmp

 arch/arm/Kconfig                  |   2 +
 arch/arm/configs/zynq_defconfig   |   1 +
 arch/arm/configs/zynqmp_defconfig |   1 +
 drivers/gpio/Kconfig              |   7 +
 drivers/gpio/Makefile             |   1 +
 drivers/gpio/gpio-zynq.c          | 436 ++++++++++++++++++++++++++++++
 6 files changed, 448 insertions(+)
 create mode 100644 drivers/gpio/gpio-zynq.c

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

