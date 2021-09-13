Delivery-date: Mon, 13 Sep 2021 17:27:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPnrx-0000bC-UU
	for lore@lore.pengutronix.de; Mon, 13 Sep 2021 17:27:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPnrw-0001rN-MM
	for lore@pengutronix.de; Mon, 13 Sep 2021 17:27:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KffoSXPBTAH9c/+lj++or+RY1KEryUgVoTiIb2IzgEc=; b=C7VkuP6AlmgKGe
	SZ8Xe9UI9V4zQZbBjscwAkSRYzBfxMD+9uD+fbSkL8D8cUst/UOO1tztmsoz2nZBL5sCs99SOydLF
	XcfKtkg3ck4VSiogkzQGqIt3CZSP+wol0tIv7GHaVXCAqIULg2P1JdOYCWzuvfCybXedEtixFCzMN
	L1t0PrVR3kbA0IRSDVVLFh0txdVOHJD7h1yxgm3vJDP4mGxgfH5eQQeb4pQqndnwdxpT5IDF5r+YE
	T0kDqh8v6lI4dcZsTTZFD+a3PU4r0TIY2YwMByOzroEL2Io4yf+x7ilj/YzXZQkzQ16iF7yu0Z+yu
	IXBlVh719SRsMyjPwj7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPnqH-0029yF-A1; Mon, 13 Sep 2021 15:25:57 +0000
Received: from mail-eopbgr70070.outbound.protection.outlook.com ([40.107.7.70]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPnqB-0029x1-F0
 for barebox@lists.infradead.org; Mon, 13 Sep 2021 15:25:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hasnQX7tOi8/lHF2pNrbTRbRIkkBaY02jNvaeNqNTg52bt3gcEEK+FJnBCrzeHQedi5wDIdhNAxPAHqZ2Qh8Guibvww+RTr7HYrLn+/LWRMz+374dqhVGDB/L/BPvGQv1W3mXAwE8PGRea5UOf99D/FVxeiNTW0wxs/p5BJpS6SxArgs/rV3refLKZCAZYZJxn92bqcBWO5BEGz3isTpkWkplrCzlNRSuLY20A4Bh7morG8lrt8peQhTAOHNYlHCbrSURmxoCj6faixZ1pQnPimh22zELXS2ByjtoAm1NmxxabRCHU8Z14iYcntZWpnrnerk+lmMRKQCNoHAWJ7S3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=zjqN/v0xJ8tC4RTxSCojMAcD6pgCFLuQ+Mx7RH/sb74=;
 b=AJZCP6RwhbzgO7jjuTS3epNQUKcmcAgwsTh2hdQHEe7zh6jZgXIGCwZ/oHoS4gbWKj7CE461vUxieNNfSECh0K8oE91ShFMVm17E0SpdYVlnTYIrdfcXt6O0LpF2sWi2qEOoBq3hWERkj9ZR+HDWmHRUxuCJPoSSgVXH9CLqJDXG90EJrqfuOPuj3PSFU/4J1o0LEVCHKVEw1jl2Zy/nYBHq7WvvCboY3Hw7RhtDvLXfVMq9hk3pZ4GOAlwJT0gvtoCkLzGg1uu04hYiBtjIsmB2Cuzhlp1JCy7TLcwRkY1jbF2HhMBMHATnsrCSKCvv0Q/QJGs2Xz/6xGkuRNCKKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zjqN/v0xJ8tC4RTxSCojMAcD6pgCFLuQ+Mx7RH/sb74=;
 b=IhswEOmZ9RSBhQGexjJALGfCDZ7ICzRF30aQCNkdvEIkT6ILqdF4uCGMqT7Sm4vNJvePsNTY/Go93wLHdAmkJ5BDsU6q0N279bmYK8hOOLftbfopX6dXiYkR7WSUugAXvqOCRuQXR/lidce7CvMvQBLw5P1JGk8uGnNdAZvuUKA=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB8PR08MB5420.eurprd08.prod.outlook.com (2603:10a6:10:11a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Mon, 13 Sep
 2021 15:25:48 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4500.019; Mon, 13 Sep 2021
 15:25:46 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 13 Sep 2021 17:25:34 +0200
Message-Id: <20210913152536.27073-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: VI1PR0602CA0010.eurprd06.prod.outlook.com
 (2603:10a6:800:bc::20) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR0602CA0010.eurprd06.prod.outlook.com (2603:10a6:800:bc::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend
 Transport; Mon, 13 Sep 2021 15:25:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f75c0a10-8185-4f85-d5fd-08d976cac259
X-MS-TrafficTypeDiagnostic: DB8PR08MB5420:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB54209C312D2FEC336666278DF2D99@DB8PR08MB5420.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EJSeofxmm7mndrGew0dO8DU+AKYoOz/ISfJ61IVirvSl0nL5Jno4wGKOMOlF2XICe/rT3IacXYaGaJ3H3wP7eM7XHllFEJ0K+ZI/0juxzPigykkn6qAuzV70W627dT03wOIykE0BZwq/2CPxlZnpZytK/+5yqeRBw/zcsnhMF99yDys5lJu/mlS7t2WxhsE9hnEtp78gJGCBT9v9hU31UV6EK2Fz77jQmN485GaO36YX7MAm4KYcHVFWQ6i1YBGaYt4UccV4cjM7kHT+Bs8jSgA+Va69gfdd1k/Wt4kzVYny6IdJVupHkJYDOyHJ5/c2Z6CjGVfjGuxglJDc5rhWmZ58Ps4H4f4dnPLX65vJMEOtUTyU4w/AI7C9eeFLHP3799hKnBTHOg5iYPN4iKkNWZQezLrhSKjzI6Cmk995A9iJDB+8dQXlwPb/WFXiWUX9/vmqve7hENQapMIS0EIEv14P0f1tttlOScNTavAnyH/aKlxZO0P2ZZlXSIdFP+bVn5PdBm7yZppRSZXP9/R6rTf0aTchRJWUaOtQGhXzAdvkErKqDu+Wyv6Q7sdw1edgwcXWHI2bmMocp56/0/TFoJ7lwG2IHzjxXLN7sm7ho/IxLy8DLrU6jVL4s8FmZ0Y+LbEEYLx9nXLON+UvIse1XwfFsFwOKlMxjwlFkdY/coqt1Pcdye8xZ/8kB/9/JVLbMNJ6H3H7GFWauUMnKYS8xVNR886QEOVMUhygIY9XK06GuuCg9kNGaIbdv5RyIm0tq2F1MDmTT3/E3AgcH/yxGA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39850400004)(376002)(396003)(366004)(136003)(186003)(6666004)(4326008)(66946007)(956004)(5660300002)(44832011)(966005)(6916009)(26005)(8676002)(2616005)(1076003)(36756003)(38100700002)(38350700002)(66476007)(52116002)(2906002)(66556008)(6506007)(6512007)(83380400001)(8936002)(316002)(6486002)(107886003)(478600001)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?M1swEVtd/y+Um97TeyuKUJO92Zr76XYCpiN6avZVEcfeEw/MrOcZGc3/Qui0?=
 =?us-ascii?Q?mGgOFVNHDLwTwHg4EMCLPnjaNZZeWB9ntBCijnbj88z1Ejn2K5DxtShX+efi?=
 =?us-ascii?Q?O/n/usDzGVSceiEA7f4G3wbcx3RL5+nyGIn6DqOUr/tfK8lpH+AP5YWqVf8C?=
 =?us-ascii?Q?S24SCCl7pEdwFGifg4sPrsmh5GkRshZ7YCMf7BFvSREw2mj4mDUgom5/+Mhi?=
 =?us-ascii?Q?YNCirtQ8Fo27B9RxfGMcKTlLcgdiQM/DGLDavuF8X6nvcAok9Wj/mo2Rl19z?=
 =?us-ascii?Q?0Gt45w9H2VRHA7AaGhYl/n36ad6SUdhWfgeDncV2RvY3aItb3d0QJT9yHfkr?=
 =?us-ascii?Q?0UE4bc15Tegu9iwmljcAE43DxAjO+l7wJ2n3HZjqtnd7R0jIP9Z9NfVBrps6?=
 =?us-ascii?Q?hMHMmvEsMRtl94AsxcjcU4JqfGBsA6iwh4oM1tF+40462BeScVCuKsvdjdya?=
 =?us-ascii?Q?Gw8YtVUQ4y3JeiOY84almIFCrl97gAeF85Bl01l8rgL8LUR8OlGF/MVRr+gs?=
 =?us-ascii?Q?6jufMONTfio0w8n06zOzRLesw5HVoPtg84rxd8ocPgvaSUfKklXoPNLTbs8j?=
 =?us-ascii?Q?fmsKyMpVAYmemeGDC6ZgTfHGZ+obVhw7N89uwJyM1STSTyM0oTcRi2Ozx6yb?=
 =?us-ascii?Q?koj0ouiM1hp4LWpWGiN3AiVuJHUkjTgG/tmDcL1NO5gqiWGo7LhgOGa9VP5d?=
 =?us-ascii?Q?8skFsroTe59Ev1GSmDdB58ncTKTA5x4PIH2ji/pGzXyEAZ2iFychb9sXYW5O?=
 =?us-ascii?Q?B+SbDUFtToavlotpvGMGRISWQXkSq4JxN/Y3qUCgl4XFUzi597s0mkWQ5Puu?=
 =?us-ascii?Q?qMG1LdtoCev8/o57vLzhOrSu4gPN9AWNySyAx4g9CqM1CziPMSX9pnJRrBBa?=
 =?us-ascii?Q?uukRNC3T8deoo8XSJ+Y2M+h7q42/cIVni0k5EIvs+4gTArwF5d3ioPfgTVQL?=
 =?us-ascii?Q?NY57j91kGySGjFHwpP+ynTDMW7rDAPWIqLOOK1BuhGotgsR0keWHRc7M951S?=
 =?us-ascii?Q?1fjb8RWnyc2cCzfPdZbLX070WkDARG1zwjM9VwirYNHoMl1p5NeIwu8UIa1d?=
 =?us-ascii?Q?9WV/mkKQcQMxiszFkyztsulxoTIUw2DU3bxdfwuyOq9+dJnI8CT/TJB0csCh?=
 =?us-ascii?Q?pG4dIH5LGkFjw9245gFODtCIGFj5Egl/yys4uo0+zHK4GBKUqq6eoGtQnN61?=
 =?us-ascii?Q?WKBH1tzEFhlqMRj/VHg9658zbvB8qGCOT47OrDl1iTNIxJ+JnIOzBffQ316/?=
 =?us-ascii?Q?dW4MT6h1Lu33T3x36dhXf1rmh2TPNrauZfeFOJxPlQtgqyS2IbMA82aRBcgO?=
 =?us-ascii?Q?95w+6qjGYv8MCn/5jOxrwE8s?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: f75c0a10-8185-4f85-d5fd-08d976cac259
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 15:25:46.7613 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ym3Q2AzgZkOr8FAVRvF0yAuI3AVG6jbLPzobhe97GvjFJVF9Mw6RFQqyorfshQY0Of9+xxtJz5TOd0g+q3+aJrPtoLu5MKePXHpsu4iXFoo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5420
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_082551_633791_E68543BA 
X-CRM114-Status: UNSURE (   8.99  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/2] gpio: add driver for xilinx zynq and zynqmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

This series adds a GPIO driver for the Xilinx Zynq/Zynq
UltraScale+ MPSoC architecture based on the corresponding
driver in the Linux kernel.

The work was mainly carried out by Thomas Haemmerle with
a few additions by Michael Tretter. After applying several
format fixes, I tested the driver on the ZCU106 evaluation
board as well as on a custom Zynq UltraScale+ MPSoC board.
Looking forward to your comments!

The second patch depends on the recently submitted addition
of support for the ZCU106 evaluation board [0].

Best regards,
Michael

[0] https://lore.barebox.org/barebox/20210913121350.9307-2-michael.riesch@wolfvision.net/T/#u

Michael Tretter (1):
  arm: dts: zynqmp: add alias gpio0 to zcu104 and zcu106 boards

Thomas Haemmerle (1):
  gpio: add driver for xilinx zynq and zynqmp

 arch/arm/Kconfig                    |   2 +
 arch/arm/dts/zynqmp-zcu104-revA.dts |   4 +
 arch/arm/dts/zynqmp-zcu106-revA.dts |   4 +
 drivers/gpio/Kconfig                |   6 +
 drivers/gpio/Makefile               |   1 +
 drivers/gpio/gpio-zynq.c            | 453 ++++++++++++++++++++++++++++
 6 files changed, 470 insertions(+)
 create mode 100644 drivers/gpio/gpio-zynq.c

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

