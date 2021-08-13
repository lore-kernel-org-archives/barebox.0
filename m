Delivery-date: Fri, 13 Aug 2021 10:19:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mESPR-0007Pv-1W
	for lore@lore.pengutronix.de; Fri, 13 Aug 2021 10:19:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mESPM-00007r-Ay
	for lore@pengutronix.de; Fri, 13 Aug 2021 10:19:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kY0BvK6B/QleVs2p3tT/g8DLCMKhQAJTA93PK2wQyCk=; b=mVYeXOK8cO/ZOx
	eMMBO5LQfoUCTaoXgMZVoM04uaJ0W68Uk01To6vZU7vxXjfYGMG8e5N62aXWHryy7TqGodvbYf7kF
	4zqN+G7wJYXyQnTJVfqsdaqPmaIT/D7gPyhv8y+95wCT54uhbmlRHkVnhTuthZ1VGULTTBLEQGbNg
	IUzc12gBTIuMZ0eYDKsEyj7pqJ249/114J0E7WKERbh7/Y5desYMtuoB5wOJ+l7HEknOCGxkRUzfs
	IX2jsCvYQ7I0k3t8XbIV1mi4rGA6EXC2WF8g8n6W7rCTfN95M2w/DHbMfhSpLPa5o7L9JDEWeUnGl
	yDcZ3E1Rpo2bm4Kn9gtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mESNF-00CCmY-FE; Fri, 13 Aug 2021 08:17:05 +0000
Received: from mail-bn7nam10on2130.outbound.protection.outlook.com
 ([40.107.92.130] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mESN7-00CClh-D4
 for barebox@lists.infradead.org; Fri, 13 Aug 2021 08:17:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DUERiEDqJxm8ShwDheN/y4j3hHbx6uTyraPHIvcl8szDDBlosd2CX1ush2PRYhusij/5DzDZp7yVYE41iZlOgKuprzhHTRPXyJtdNTAaX2MAk5xM2X0baGN7hzutVdkP3mbcUXBjf7efviizjGZM/4311yls/TIVXpPGT+T+sI1CA1GqnjV5366E40MfMoZLRlfHnZ1w6xAepjJabsNQpx/pBeo5wCfczk/9VkodejqVI/yYNeDC21HHTcIj76CEborK9L4oRlpg9SsVm+EicTVaTOMSK++v414r9JmZcMKEyErar/cgw1tQbInPuiEskku9dAQBS1CsBYMOZPj5fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hM8/hFWZQAwk7mA8p5I1W42efEBkW1+HN/YY3teGbhE=;
 b=jeYvWgQywwpwRX8j8kUwwtV810Ns59XcIZZnJ81F6Gyy0Wnnc2h9sqnjGoYHRSHw8MNvnj+pdDna0kXosNfZHiz/y95uGmQCHa4xI6shfcB80v/xHhFz9l2KpKZFEUOYIjtUItIUmBPKC1bzOKcEXJu5mSrWz7UkM82C38nqlDUqf4Sth91qp23+E2Byx2Sqe1v4SDBdGtN59MT3LrtbkQPIO9VRFXQshmXrR9ZB132lmVDK+PHBf6KXWhQJB+jh6uyiCSYRtnAcfIjaEZbDIFb4N1vaO4Mp6ne9YfjenkGN/PIKyq6tl+Dv43j2+UiAqQw/tQMvPzqu1LfSEC3tPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hM8/hFWZQAwk7mA8p5I1W42efEBkW1+HN/YY3teGbhE=;
 b=QKp8PLbXb93iT/H0GLz44fTt0z+Ges0oynFxySCYeTOwoo60ZIVu5iCJlkAMu1qg7ojxW7Q72Z9bEOfkBlnz98Y50tn0tJgRt+BqwyWJd7K8YznqexbRjEKjGIy328meghz8qmW7230/PMlyBiXA7ea9a5lqV+RcEUqXZOb21nuXTQAcvFfmQPunsUQZtPsQsgFMthaoi5zplOw7p2LoWb3wy3BGjn8+32O6mLBYf4zxHeAP0B/jQE/Cg4BCkn+D0fdSKi8uYwAh3W1uBJCzOr7Cu4ECjEUB7N9wC0V3Oa6+cshPohRGNbWtb0JZREQU/7HveOceuD+w/T6/fZFeeA==
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=abaco.com;
Received: from BL3PR16MB4572.namprd16.prod.outlook.com (2603:10b6:208:34b::23)
 by BL3PR16MB4524.namprd16.prod.outlook.com (2603:10b6:208:34a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.17; Fri, 13 Aug
 2021 08:16:54 +0000
Received: from BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::28c5:7024:faed:6889]) by BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::28c5:7024:faed:6889%7]) with mapi id 15.20.4415.019; Fri, 13 Aug 2021
 08:16:54 +0000
From: Renaud Barbier <renaud.barbier@abaco.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@abaco.com>
Date: Fri, 13 Aug 2021 09:16:45 +0100
Message-Id: <1628842608-17031-1-git-send-email-renaud.barbier@abaco.com>
X-Mailer: git-send-email 1.9.3
X-OriginalArrivalTime: 13 Aug 2021 08:16:52.0248 (UTC)
 FILETIME=[92398980:01D7901B]
X-ClientProxiedBy: BL1PR13CA0120.namprd13.prod.outlook.com
 (2603:10b6:208:2b9::35) To BL3PR16MB4572.namprd16.prod.outlook.com
 (2603:10b6:208:34b::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from TOWSMTP.abaco.local (205.182.146.17) by
 BL1PR13CA0120.namprd13.prod.outlook.com (2603:10b6:208:2b9::35) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.4436.10 via Frontend
 Transport; Fri, 13 Aug 2021 08:16:53 +0000
Received: from selma.abaco.local ([10.1.177.4]) by TOWSMTP.abaco.local with
 Microsoft SMTPSVC(8.5.9600.16384); Fri, 13 Aug 2021 09:16:52 +0100
Received: from ediapps.abaco.local (ediapps.abaco.local [10.1.177.9])	by
 selma.abaco.local (Postfix) with ESMTP id 1E6BFE3571;
 Fri, 13 Aug 2021 09:16:52 +0100 (BST)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aa7527b5-52ac-45a4-14e0-08d95e32b5a4
X-MS-TrafficTypeDiagnostic: BL3PR16MB4524:
X-Microsoft-Antispam-PRVS: <BL3PR16MB4524AF64A9BFC3FC9EE6F02891FA9@BL3PR16MB4524.namprd16.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:541;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NsbJM/SxCwTkhlloxVTtqWR98u2IESeU6/QNo2HpquGdecqqffU7vSAjfJgaE7tnzBgziu6RaJYzMh7aBe4TZpgoNVa+NUEFx0v0LYjQheWZE3ZSmruNptE1GZg713G1haNxx6FZzNcKoa7vl8/CdFbtWjIskb5HYiD74+w0ycOW+INI6QTEH2O/PAKA7HyPQQoCaZB8hI6U3JUCwrRH8Zf0vTSURnft3qNazO2JHKvsTppd5idAhlDLl7F6kBrzjvRosWMSRO2BfP6f7qE8bb7ff6of08EVAudapLo6ZaSBdXtA9h9LltgRWVEltyvfyoh9l5sW26ZzDfKNpzVrlv7/dvBUVJ1p4iGWLf6hqOAixEQISfjVrOjprhS/ixpIsnxj2d+bJ6rEwArkiJKscMkz+DDQq2A8S+YIvnPNYoaf300Z3bFoAP7YaStv1e8JRqWCf7wMESaC9bFnGz1UU6M3jammSfStjKULAmMTup5Ql4ulofoL6+ICzj/L1RWJtpuxKwDKyDS3AyBqfSvNjWYpAIfAzOk8xSg7JWr/iIke7E4L+irTPLO5zHCLx+4Nedwqo3qsK5DsncvI2MP5ej6XRTheWvcp8jULY0iS+yRoB9QPRS65/oPXFFjteIRgt+onH2YfwXXC4P5Bcbf1f9C/PtotiFdkSF/J0sJ2duQ5SttEOgxUOP/oZQJfqTgROa7PhCR/kEpsn7rjEtqsEQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR16MB4572.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(26005)(6916009)(83380400001)(508600001)(5660300002)(36756003)(44832011)(52116002)(107886003)(316002)(4326008)(6666004)(2616005)(38100700002)(8936002)(38350700002)(6266002)(86362001)(66476007)(8676002)(66946007)(66556008)(2906002)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FhT3sSAuHWRVAAhe9BXgX0jGXRkAckyuft7fAd7C1vX11zF2p3psRJDz/2ea?=
 =?us-ascii?Q?vVzV2DxOXyqhXumwlLu3KQg+58r+VUdbyOBFce92YqPa7jKyHOtnygn3KDuh?=
 =?us-ascii?Q?J4EmOPe66FQw7jbFrdgTLS4NWSXDtM494ijU/d6Dv/LycXsht+0Y25F4kh14?=
 =?us-ascii?Q?kn4/2MVj000KIFXLa26KhxxtPF7ZMiTL3uv708HCU3aTcP3F0ziwsCnRyzin?=
 =?us-ascii?Q?QCJG1R0du/r+Uo1eGxHhmqihmU+SeLE41rRYJn/ucDH3OPyjPKdGJvkweK/h?=
 =?us-ascii?Q?/eKD33L69I8RhumfB8AQdOoDjfPFPDUlUUAY+aN3LKDbJ24onLP1QOhvOvxU?=
 =?us-ascii?Q?c3jkp0Hd+Wccly4E4I60NeF6VG4rJ1pq3h5uO5cnkvt04opxbuLL2Jp/pv61?=
 =?us-ascii?Q?ZoH4RK5ks8afVCRqF3/nhGU0F3qCiBKcAx+IJ0g43NcRtKQh+iAqATAjUjaY?=
 =?us-ascii?Q?ligzmXKQ+mQBjE/RkryhnlIGOJybr62IOkCMdYyZr5xwACefmVOScLdqzZeV?=
 =?us-ascii?Q?qXySaqDvYjqKq09dV+zUQnDoMUoyzPNqUXV3bAmU7axP7FxiHvsQ6XKhwwM+?=
 =?us-ascii?Q?qTSY06upnu+ObjqsytNX75/nfpRxMph0LW8TY/1CHIg4jZJKCOjKVh5e5XMc?=
 =?us-ascii?Q?0MZ7ZSheYxqvKgSgQpK6n8bWJZO4KQ4tSLe3RNrjZ+FEhQ/2kPH+8hUOZWry?=
 =?us-ascii?Q?EHZtBKhIVfXs91Ls8EFsYnHPqYXq7nm/M0q8zT9ZgERgn/Whwp80/yqHiVen?=
 =?us-ascii?Q?jxX+fa4vWDBsG6JtJy6bFVD+EaPAXO+HUyjSAh3a3QcZr8PEBs5FZ8PwMjri?=
 =?us-ascii?Q?ixCuAh2uIfIwoJ+EsPF1v8CbgFaB5tc+ZKDlATXibzqekcrp5cfio58RlueO?=
 =?us-ascii?Q?4B05RLNKCKWzHWp9Gsjfr9fWkCbXD2We74V8NYUvkVnJ6z530iIvA1VqlEwO?=
 =?us-ascii?Q?KRnViiYPU6Pu14M5B6lRt/BFF63oyf40qpm3rINTHaqYbMIelSTfEx2Eyi3N?=
 =?us-ascii?Q?Rfojgs1755C4UawDbdC8fRlzThureBXpFBZp6RfpDcb4R/aolEXjpZFRFn9T?=
 =?us-ascii?Q?Zb6RUANZXOxUO8tn+I2hrBlvfw3UiwvoG+YnUfp57VA0vs4mJ1L4YfeueSPc?=
 =?us-ascii?Q?xAm1VvDlj2X4wml+bP6zOrzL95tPbw4ZKyvaaUUNpcSJWVaENA/X+oDbuejn?=
 =?us-ascii?Q?06ddmH0eVENvdoeuq9xJvDe7ZMq7t0AW+88gboM3E+TVwz9IgGVOiVRC1E1L?=
 =?us-ascii?Q?LSLG8e011UoJhEVTfuux5jQ4Ag24YT9Q6qdoN9Ed4f6r2TAjj1RB9CwfJIB/?=
 =?us-ascii?Q?iTF6JsKnVZLeFWhl9w9XOPzH?=
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa7527b5-52ac-45a4-14e0-08d95e32b5a4
X-MS-Exchange-CrossTenant-AuthSource: BL3PR16MB4572.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2021 08:16:53.9287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NL9E+hQGy1SNa3LfkZy3z6DAs78KTb6XCpV066yOtXBQw9NnR3rYX67o+bkHJ/2PQ3Pz5bRD5QxM3jiNPRq0eA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR16MB4524
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_011657_618304_6D012F70 
X-CRM114-Status: UNSURE (   7.88  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 0/3] NXP IFC nand driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This version 3 of the patch addresses the follwoing comments:
	* Move the NAND timings initialisation to the mach-layerscape machine
	* fsl_chip_ctrl_init returns errors.
	* NAND commit message specifies from where the driver is derived from.


Renaud Barbier (3):
  ARM: atomic.h: add 64-bit counter support
  nand: add NXP IFC nand driver
  ls1046ardb: enable IFC NAND.

 arch/arm/configs/layerscape_defconfig |   11 +
 arch/arm/mach-layerscape/Makefile     |    1 +
 arch/arm/mach-layerscape/nand.c       |   44 ++
 drivers/mtd/nand/Kconfig              |    7 +
 drivers/mtd/nand/Makefile             |    1 +
 drivers/mtd/nand/fsl_ifc.h            |  116 +++
 drivers/mtd/nand/nand_fsl_ifc.c       | 1038 +++++++++++++++++++++++++
 include/asm-generic/atomic-long.h     |   63 --
 include/asm-generic/atomic.h          |   49 ++
 include/linux/fsl_ifc.h               |  305 ++++++++
 10 files changed, 1572 insertions(+), 63 deletions(-)
 create mode 100644 arch/arm/mach-layerscape/nand.c
 create mode 100644 drivers/mtd/nand/fsl_ifc.h
 create mode 100644 drivers/mtd/nand/nand_fsl_ifc.c
 create mode 100644 include/linux/fsl_ifc.h

-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

