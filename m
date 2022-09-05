Delivery-date: Mon, 05 Sep 2022 19:17:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVFj1-007k4c-Ma
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 19:17:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVFj0-00084n-4x
	for lore@pengutronix.de; Mon, 05 Sep 2022 19:17:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DDFdWOGrEf/vlDhMHCvWc9uKdXshn4bM1PnshDaAPo0=; b=T22R79oDt8hySGt9F8fOGL20P3
	4JgZtBE4dlwJGqUCKhZhCx5Y8fw5PVTA7dmclNwPvj7+826bxlMZtkRQpWTfnHryh7kHBnkEnlU53
	LIYlmJwtf/WgPfx3HrhYjp14mG0lVlYfH6zI6N44sSSn9aVKAqv3X4rQyAFnmY7WTST00eyDftuCB
	RGe+Tiz8gHQ+W+tKqZEddVcNp7Le51nUiA17Az3onFLzOP2oeGDIR5ao0IHC49e2Q5HnuI+ivsin1
	/seIYdzTE1+lniETRs5M2p3QaMP0n0hlflJwsmF2HrMw6mBo2/6NpRY96nc4k9Sy3Lqpe+mlyYvjj
	Yw2wy+dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVFgl-007Mdw-U1; Mon, 05 Sep 2022 17:15:15 +0000
Received: from mail-eopbgr80074.outbound.protection.outlook.com ([40.107.8.74] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVDSg-0057Cf-5m
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 14:52:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E+eB/S3oJ+9YT5yZQsXvAaAaw/YQxm0zjMv5govIAzXiO1RKiVcuAQJzjJf6GzEA1qxQMcxItytN0pd5gK6AubkAGdMw+pGsBfYkyTUVgp55BIk+xorL2s3z4mpR3MK50ARQQp4rSE2x8TulxJDicABrwMyQZgoBnl+NIhZDnAzNci0gVBigZPN7tyWKOp1Q3n0D1EhUdxUR6GrFuf7k320WKSft7n4SxZbEaq7oC53L20tbeEs/uy9o0zgrnVnL7tuEXhPK8vk1vRJg7LbZ1T/iD7c/J/S0Yl5ovAuzfNHUqK6bO7ag14lyEqPybRcaO473+cI5mDGKSBcccoe9Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DDFdWOGrEf/vlDhMHCvWc9uKdXshn4bM1PnshDaAPo0=;
 b=WWEvz3EUxwKXIpEvToB41frFxP3gwuyIBoXGr3WEsRsIuttPj2KT7JL8iPJte2TOp62iV6lab6XDQ6DoICVGT4/H9ddeabIrKuMugMZGBfd8UkASuX3F2OwmM3ih+k3Bn+0n18ts/rrNsC2z0r5eH1KZdKgwZ2DP+mdscNZxt151Fz7DByOYLGzMZi7lkOJszutTZoJzRVflDmEnllh3u9caf96WAxcbD+gOAlnu3EKCENhkP1Z1aQ1zpGtunSI1PMIcG4WuygwaAHII7iXT7mH52z5kLJeidRQ4F5xEFWFoHtHnzmRF8LK3vfGRKjdXJTjWA8Rga7hrbFud26/kpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DDFdWOGrEf/vlDhMHCvWc9uKdXshn4bM1PnshDaAPo0=;
 b=dyRZfunMZ36eY51UwPNWlI5OT2aU0y0Pn3HWgqKNU2ljLDcNuDyTzQny/1fVFRh35pH6s76d3LYQBM7do/NcY1GYubugewmoJ2imHQOK09RHBedshNlKUJkRusq2FW2rm6471ALpjj5JKFU0hPbls05yAbN4lVVLHR3AyO7iUn8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by PR3PR08MB5756.eurprd08.prod.outlook.com (2603:10a6:102:90::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Mon, 5 Sep
 2022 14:52:25 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::f1b2:3979:a31a:c30d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::f1b2:3979:a31a:c30d%9]) with mapi id 15.20.5588.011; Mon, 5 Sep 2022
 14:52:25 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon,  5 Sep 2022 16:52:12 +0200
Message-Id: <20220905145214.290551-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: ZR0P278CA0064.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:21::15) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 139e3fd4-0915-4bf7-16a7-08da8f4e3efe
X-MS-TrafficTypeDiagnostic: PR3PR08MB5756:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	PmGk6jHPzmMUGr8xfaGf1qpcz+SWkEIXvOJpjK/UPjS47upU0w7UYXMQZoM7Xp3QUBN90UeHO9q28IuN4nWbGgDNTxLP0foVt5T2xhyltacIUHEd/Da9GXLDLI2rxW+dDrJ9/wkh19e/H+ci0FFqJlJd7rLKBDqubJK+ob0XpuYvKdZDOcBet3KwpCyNbP5oBKmwQeYcao5pFZ9ET1bbnlxl1vDSqwnCao2VSF+SOXD1ixF7QQyuocfEs6Ql2zQNSDrLoJqG+1juCSHeR32NlY90V4cXAuuf49mvKt/ZNgzk3ad9IrLivvHpKkgqqf19fHIQLHzOuhQEL4nVI0Q6/3E2xMSSCUTOlmPUgpsTtPtPbT/PAg1JOFqihcJENwuH0dUrLZJg6J02VlTTYHFzmNpVm89w0K3zckTjMDxipkI6c4b9UnTOekY3m1gJdE8r91NCfEXsJbogA5Amda0WFeBdFvLnKVLk+9Q/m3rGiIas7Ebi3phDwsSWcRRymA2r1uWkQG1eZcOTtbsgsbe7PR4D5aVa19VSplzUCyxOcFntclnRPI4vmhtusHe8M750r+SB60Y14dxHArqFte62yOR4yr26h/BD+BiOM5Za5HObDxzARXdX3e0kfgNdst3b1zkVaFC9iXLC9RGe64sZGiOYdt3pgUDiWHh+MG+wZxgzKCYwZv7qSqeX+fwfZzLE+/Jna4imPcb8ZkoFqF81fw==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(376002)(39850400004)(136003)(396003)(366004)(6916009)(54906003)(316002)(86362001)(36756003)(44832011)(2906002)(38100700002)(5660300002)(66476007)(4326008)(8676002)(83380400001)(66946007)(66556008)(6512007)(41300700001)(1076003)(2616005)(186003)(6506007)(107886003)(8936002)(6486002)(478600001)(6666004)(52116002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?aa3Ivko+tN1x2l9MFksgZAu2B6p0rYAJ8IDoUcKdrlAgmBus/UtcwSIjcXTR?=
 =?us-ascii?Q?/dnzAtJv5HGBp5QqCgc+fqxoYFJCYFd485IFd/CTvvS0cyVxsi++QF7pcEYy?=
 =?us-ascii?Q?2DFulNFaYCTcPjBpXoycnsM1bPa/yUoS1cDSTipR7fUi4YtImvxaCvMDw0yh?=
 =?us-ascii?Q?pAzjbnAE+AdVeLomjt27AqwApDnwmrw8gBxSNXWbcOIvrP3mez8TzIffAljQ?=
 =?us-ascii?Q?yQ2gjZuBGYWO1fj1FjztzVun5KYgELZVH8OVsLhqmOjGYZseUoIb71qFXFpK?=
 =?us-ascii?Q?JcY1jiHiq7eftQnL9eetEBuG5nsa0Al1P+SergvFgXd4x7mPhMZK83kPRj2j?=
 =?us-ascii?Q?VoWiZcCpTHiI/VryUp1hAurzRPMCK7jjDJxHIkdolTDiH/gd5nU0wH+iVmhP?=
 =?us-ascii?Q?Y9roYV7yXea8N/HA4oWJX6VrY5Wf7tZkN1FnA+4ETO6k94QEfMDEGjflzWia?=
 =?us-ascii?Q?A4PCYuHgPzIrIx0H+QSBoiTTSU/mAIaM/BE9Ki6+7bmqIQivZjyi8kGEdaA8?=
 =?us-ascii?Q?CRrSv4mhrtwewuw75DyDjTqFvadjvrjyj44JqA4hW7CjjH87XX/7svPk5kb6?=
 =?us-ascii?Q?tYKI6XmXydOvJarFoFjEl7Thv2gljOeeM5Pv6ljFHf65b9Q623KIB9fmtSNZ?=
 =?us-ascii?Q?Jxxg6X3OS8pqDT1KH436JIiyL92YlumWXsYkpXPkm9oOf395MX2LIPBtPqa1?=
 =?us-ascii?Q?arubNY44oBIygG6C5qzPQlOG5WPAXxCASe3Cr1igkvRkdttRmHdb3BQUnq8r?=
 =?us-ascii?Q?wTpFPosCTp+uqO/J/qYkUUsvgOyxD9pVUCZcDFKvNLUIrf3y8rlnKsr1iZk0?=
 =?us-ascii?Q?ERyq/Vf/WWqx1YMFjq0mEneluppIZXT7gCHutGzUCVOR48aUL0os+6b5dPJP?=
 =?us-ascii?Q?5fynUUNY6rlFwPtyAIIi36tHHuBYHdECeYk2HmfE14YNCDrMbiBKzLwPO2tZ?=
 =?us-ascii?Q?Bb0MUrZkfZ2LoK0SqYK4CWx2q27jZQhtrnMBK64KBo+1GCHJ7ogwLVDcbmr5?=
 =?us-ascii?Q?aAjQAnPb8UXrT/8vSuCFYCF2+w7L4wVtZZWNcM9mqZTr/hjaB0P/k9Jn9KW/?=
 =?us-ascii?Q?ianlRaoohdcXaRs7w/KpO2cUe+BPwdTLf2bfEJsGacpUVKMvZkoqK5l4xlnr?=
 =?us-ascii?Q?/4Lao4/jNRfy2RRARSBNKaOJwZYzfHrqoZm7Ol9vTZGer90b81yXgmzefQ4a?=
 =?us-ascii?Q?gyVv6ELr1yfUPO6VZfSOj0qnCmS3o3SNYT+wZzgl9KXhOMWgF6Dcpun9ve+z?=
 =?us-ascii?Q?usidSFCBznaMOA2pLXwL3EP/V79QsnewyaBtjY78wpSEE/MN2UZ0gK8SNuKD?=
 =?us-ascii?Q?66qWKgImM7y6rXauTOD+FLWsJmFoxgpx+4GhJzG9mfQ8Nl6HlvL1PTnA2Og0?=
 =?us-ascii?Q?haDamuBNuFd+KmDOrwcHSR7yNEQuf3UkYogRe7DxXUk+mINkjduSBZw2eOoD?=
 =?us-ascii?Q?KiueMz1MpaRwP/xnJ8i6n1s5CrNsBfYvOP83WqpQqeO2nblCZ3g3qVRRLXgJ?=
 =?us-ascii?Q?Ft1q8RmMQw0i5ph4G9VKtW6Cz4p7s7dLyl+uWaYm2c3eUlEHPGG7ZPPm2FNH?=
 =?us-ascii?Q?A9KFkR9vqzvWD5Dfbg2e9lx7g6UOW+4ZEtB2C21EgULwcRMLn8aBKacA4kEw?=
 =?us-ascii?Q?cyt1JspnkcyrBXwVKhWeokjfwGLloh5E0vkwwmM0XU+wDBePLSGUMJLc/sIV?=
 =?us-ascii?Q?Q0VBE5d+KUp1Db4+fJKrwuV2m2I=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 139e3fd4-0915-4bf7-16a7-08da8f4e3efe
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2022 14:52:25.4344
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9kixYoJ8Wu2RTuZ8w7TITPKJMA9nHH2CSJHXR5MsOPqzDUTBXsqsKibQ66KkX+Bbz5yQPUnu0q1UDrBBizf5XU05yGNPe3tWV1Zr/SdouXk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5756
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_075245_349421_2B6B7143 
X-CRM114-Status: GOOD (  12.09  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/2] soc: rockchip: add driver for rockchip io domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

The IO domains on Rockchip SoCs need to be configured to the correct
bank voltage. In Linux this is achieved by means of a platform driver
that reads the voltage value of the supplies and configures the bits
in the general register file (GRF) accordingly.

This series ports this driver to barebox to provide support for the
Rockchip RK356x SoCs. Please note that I could only test the changes
on RK3568 boards, so I left out the parts for the other SoCs supported
by the Linux driver. Also, it should be noted that the Linux driver
uses notifiers to react to voltage changes. This is not supported by
this barebox driver.

WARNING: Use those patches with care as they have the potential to
fry up your board. That said, testers are very welcome ;-)

Looking forward to your comments!

Best regards,
Michael

Michael Riesch (2):
  soc: rockchip: add driver for rockchip io domains
  arm: rockchip: radxa-rock3: remove io domain configuration

 arch/arm/boards/radxa-rock3/lowlevel.c |   6 -
 drivers/soc/Kconfig                    |   1 +
 drivers/soc/Makefile                   |   1 +
 drivers/soc/rockchip/Kconfig           |  17 ++
 drivers/soc/rockchip/Makefile          |   6 +
 drivers/soc/rockchip/io-domain.c       | 223 +++++++++++++++++++++++++
 6 files changed, 248 insertions(+), 6 deletions(-)
 create mode 100644 drivers/soc/rockchip/Kconfig
 create mode 100644 drivers/soc/rockchip/Makefile
 create mode 100644 drivers/soc/rockchip/io-domain.c

-- 
2.30.2



