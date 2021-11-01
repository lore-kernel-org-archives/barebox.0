Delivery-date: Mon, 01 Nov 2021 11:10:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhUH2-0000RY-7O
	for lore@lore.pengutronix.de; Mon, 01 Nov 2021 11:10:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhUH0-0005aK-JU
	for lore@pengutronix.de; Mon, 01 Nov 2021 11:10:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z6S1PRfL+7B0SAxEuZ8haGPosIycvyhnNb8V0FTfCSQ=; b=VqiK8sfTphcmhl
	vw3FDptxqD04obleOgtKPzsZ+8+YQvZnekAy/Y19Ae8A3aX2O6xAzEsx8sp4jsmJxCZ0OdPPoW9sd
	JROnjGrSO6amnZFolaIfFCZ6RAh5UKXwCXZWRtDpOMaao1NJ7uW/TnEoCgeFePnV4V6CJmo/wSIFL
	d7xU1mJBVJ6Yd12RnT2fNiskgMF3NfwjLri4Nl71ug19FRh1n/r9qqnhBLaaqz3OZG/MkW49Fk9XI
	Jih24GnsOHqmoalJyMYO/TXUAl2t3f781gCkH69NNWWj+/Emoa48gLdfJZcL5XU6lrdj9Do56x4ga
	DFAGqBf0pWLYcx1UUNvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhUEm-00FudG-HT; Mon, 01 Nov 2021 10:08:20 +0000
Received: from mail-eopbgr10049.outbound.protection.outlook.com ([40.107.1.49]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhUEf-00Fuba-IK
 for barebox@lists.infradead.org; Mon, 01 Nov 2021 10:08:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YGhIx4n+wHf/HHIZ8S+ZElTdv4U3spI9HV6AvLcQ94uMAoFLid8KXCR39dj2epIYnzpFAU51YTYcau0wdTRGq8MOJhv606Xb36bNlzyRdxvhf8ZPblEErQ/fuXvjXf93DC4yLANmpPuEI+s73r1i0LFZJ7fi91ET2CDRkKEI1p+4N4W/CexuLxU2XylbrppQUtQahNNg/A3mbyxGnd9ms4oyxI3aPwZoKsElb4GAwSRbVxfTI1fBEC3siTUkT3xaiM8tSXiNHQ1fOMAfnryCfUJZWe+ZUEaPsAJ60ZzhZeT3vSfxv5R2wxAre2019JMDnwwhCgXu1Jcn+Z2s41ts9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MauMqoXEZw0dCzeIeyit6QU4P2//87Zhh2mJJF63svE=;
 b=GNee+a9yArQc6J+c63Ex3koECbvdbFDZuCg5scEMbV9DVlvKnourgdOTZa+B474Y0sjrWTorFLBXb50tjK0F77Skau9nQAAUYxZQI2PmFbH87vgKjNQPdKBbxG5+jZTxF+pFv6EC2891Kg2dSVcy9KtJFRZkxedj/lDBxfmysHb+X1e8m4NbsRpMTo9LJYKuetUTGYy5OwKl5s3ZBiGRIInXXsU9MlmNSFZEx6a45LkTfLD+JGi1yYJ3bHpqKHHxqCviGIlnpIWzl4ocgdYP83HOQrE5GoRoP9PV95VhzEZ9JbdFQ/RkafdFsSzx7OzcEEtb4Au5rIBOJYLmCBG/Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MauMqoXEZw0dCzeIeyit6QU4P2//87Zhh2mJJF63svE=;
 b=C6Rp/poxnqsmMiuGN+9Fo/roKU0UbSXCOKeUrpL85xYWqKp8l4VD4aDq74YLkhlf4qyTzskW3n/lNRRTRsgCqA/Z5tWVea+xW0E97ZxLTmhn08YT+5TboBJeLPWS05HS5LufX7DOxkH/c3DtxjkgEEM+u6CyYcs/VJCJKl82QHw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 HE1P192MB0187.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:10b::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.15; Mon, 1 Nov 2021 10:08:00 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::cd56:de39:90bb:7466]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::cd56:de39:90bb:7466%12]) with mapi id 15.20.4649.019; Mon, 1 Nov 2021
 10:08:00 +0000
Date: Mon, 1 Nov 2021 11:07:57 +0100
From: Joacim Zetterling <joaze@westermo.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211101100757.GA40552@wsevst-c0022>
References: <20211029110600.GA310644@wsevst-c0022>
 <47f1aab9-0594-f35c-f6d3-95a799b65b14@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <47f1aab9-0594-f35c-f6d3-95a799b65b14@pengutronix.de>
X-ClientProxiedBy: HE1PR0902CA0001.eurprd09.prod.outlook.com
 (2603:10a6:3:e5::11) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
Received: from wsevst-c0022 (90.229.138.185) by
 HE1PR0902CA0001.eurprd09.prod.outlook.com (2603:10a6:3:e5::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.14 via Frontend Transport; Mon, 1 Nov 2021 10:07:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a7c2542d-47b5-4759-7bfe-08d99d1f7c00
X-MS-TrafficTypeDiagnostic: HE1P192MB0187:
X-Microsoft-Antispam-PRVS: <HE1P192MB0187AFA3A433843297EC4FDE9C8A9@HE1P192MB0187.EURP192.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iC3vyZIlXi/YqTaR8sos5hsQxYHM7F1o6MaTE/KWFjf/+bUeKrQ/IR4eelWh4F5fScCEV7MXOomJywIxvkZYc19h7E2Zuf0MzTmtv+HOFDtd8T7cjLi/AJIMhnNXc5XMWjWXXtN4q+a4TbIK51GBZbC3rFiM0GMybMkxbePqvvYuAYNvYjKB5WXIeEa8ZdnfUCDtzhCI7KylxD8aJJEnwYMNXVw5gvcFiGOAUmGu8NNqaDwXwqiaxJ09qsecqEZQ+D6UJbM/QgxrtiqX3Ov4O0gD/LsuI+9oLeji9rlDpvJvhLCC+KOttySxYPlePDh5Mf7dLbim04W7oPGjKHvtjY78Er4qW7Rp1+ZmMwZ0QnTu/yiLwQxR5ISsL/il12mBoI+dYQBw7BZGr+/WyfOcG8bEtPFqpF2EsrQW37ICyQ2Ucygn/FCXqGXCPpwxWvOXdqn63U91qnsW+ZhmJKZLhXWgCuqlyCcTak7aXdIdn21ekPVgWAM7eIp6nxkwjPFhOUmXM+xwgbIr40anaZHCkl/zMafMC7MPt+JiUgPkT7QsmJfL+VKHOmZmKpOPF6XwB/vqOVffrqNBxaigJB/KEEDR3B9TcoK/fQ060xHo2IL3so7THy2cdLt9t+4TindZImJfh42q4UXasehUpas7wF9jFXYH85uzw28xCzEYhh+ZtDdRsgmaTOzh00Z+3jnbs3ikFM6II+fbY+vDlnpMOjqdd6RuIm6yzsS2zOv82Iqfcb3CXsgxD5eI9X+zbTN4bCsvo0nK0ofTQ/iV4Lm8/RvfXSYvJZ0sNSrNed0Tvu4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(9686003)(8936002)(5660300002)(38350700002)(38100700002)(966005)(956004)(53546011)(1076003)(8676002)(508600001)(55016002)(26005)(186003)(33656002)(316002)(66556008)(66476007)(6496006)(6916009)(83380400001)(52116002)(33716001)(66946007)(2906002)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?G1ow8DIqASPy/4nXsSkcNj3tC0WbFUDQt24zqSWij+Z2oO5bxXNW1H1pm4Ab?=
 =?us-ascii?Q?AFpzgo8IIA0DPxHdK5KNzNPps7XjcVLx5S3XNXblkOWcAvxQ3V+cQRLdn+hu?=
 =?us-ascii?Q?Y8jbvQ0+4WiCVR/Acyn1gsHWwZJI8hfAL/WM8AYIufr+vDT4jeUWE9wM27lc?=
 =?us-ascii?Q?vrGFZlB4tlDByJ5u5Hbw/Jy2SO6/qMUDDe9qq4gD4MtWuK8ffWGKlYpBpPYD?=
 =?us-ascii?Q?yXtYC0Wb1aBrmajP+3MMGY0HU+yfkk3OAtdn7uSTJbbCklaZn2vHQ/5KJDeg?=
 =?us-ascii?Q?32z1eFbD4OilvEwawu7fDmhfN20DjUfflQr6XKNJgKwy0J89v7RH0vZEMWt6?=
 =?us-ascii?Q?9GJ08zk03o4+A2Gk2LHXU8mLFZIK989jH3l3IsI+nk2UISfeQMWYRlroBLDB?=
 =?us-ascii?Q?bk00NWpZQ0qhzBqW2WTRPGpyMvHONJGIimf2uMQ+sXpDtce76plB4xfcWIhy?=
 =?us-ascii?Q?7NDF8Pab3opR2RiOylcNcrGK4tfjD4jqvnilCkqL/ncTem8rCwxUPdZl4Y2o?=
 =?us-ascii?Q?T4KYflnMRf2rculLLj7Cpa7vJ5CCOcI/D5TyE7G10qDM6sFgW1NgzYVov6Vy?=
 =?us-ascii?Q?lKqzkyTRVi6CglcxTuFcCt5nwQbqms8IYOI6yTh+QiRw1TPnIOwvGB5fAIvh?=
 =?us-ascii?Q?nlLV676nKlU8w4mwFEt+/MoycSM7RuxdNrEjhz/sEiaXa6kbmn0vz3ForsaG?=
 =?us-ascii?Q?i9sq/ENn2IhpYeicpzwwCBzOw7LS+pm+GOfkCeXJxu0FtxmpC8k87QPo0ivY?=
 =?us-ascii?Q?FY2Mpk5QruiIf02IdVyTwKWOLf1skCcH/Cxb928P9BUsJOOE0ZR+zsdxTQu9?=
 =?us-ascii?Q?y42e2xMR9jqo32jITjRc8rSQpcitZwT8lZ+d/GpMJFGcNceHmrSudcSFTbtt?=
 =?us-ascii?Q?Z8PoL8ISaH8xEppVlnYuOV9UDF2AX4Q9+8BX2efSqa3Fl62JDlK/hRR0HK6f?=
 =?us-ascii?Q?l34XV0hVLoK3PcrGugE3wWwN59m7qRWZBImQ+w9zLryVTQkwSnUUan3FiDPL?=
 =?us-ascii?Q?u8cmP8UswIDevM9uL+nWkMRPD+2sv3OBJk1oTc8LkYCFBp3MFosmyQnyesBx?=
 =?us-ascii?Q?1lIPrQZ1WYi9evugRFaWx+86m8QpXcgLSPIlPlHCkSqSn9ka2mwkil6iauwJ?=
 =?us-ascii?Q?1gmy+mJDOvbnBFSjPTdV6mBKqKJh1Qw7BpFl6vGvgJC+RWTvqHL0YH+l1Q7q?=
 =?us-ascii?Q?YICul/c4f5CqJfZpXMB3sTet3+0Ee9MdhXFMNYwNh/Uzc892y62Avgrsbi7Y?=
 =?us-ascii?Q?cKUcL0QQsact1xDZLtc+TxZOVK/PVQaIUaj3Cu5Va3Xb43aQxAjPlanGOMUA?=
 =?us-ascii?Q?CiepivR9cp4x2rnaxxBgTu82NAGIgTC8oT1pA7r8DSr7FYQJg4RLXzfuuraQ?=
 =?us-ascii?Q?9vYA+GNJUzbC/j/CLwJzXG+dsBq34lAfzKXZBzdVVwsjK9C2c+27S9lBGrQV?=
 =?us-ascii?Q?OSIqnmPmiNvcQSf7fJfOpW5htNJHA0utLHIazfmzmwBO8Uyc0gk6i8ziQL3o?=
 =?us-ascii?Q?ajxjmbGP0zhbjgTSM6TCzDx0MoTJc/FCDlZmRLkZ4fY2I0+JRs48wkKtpz7T?=
 =?us-ascii?Q?/flEWT9SM1KzToiTkcu0Y8dMAdiTqRhnoSg6LSOVn9LB+6D+7qbSTlc9VNI4?=
 =?us-ascii?Q?gIpmgs7WouMcc4XdpIChE/c=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7c2542d-47b5-4759-7bfe-08d99d1f7c00
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2021 10:08:00.3307 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E3E2IzcZpTFwquaYGPT1msGfbvUaXBt3Nwoheiv9RlzteTMvLmEBh7VPqdc7OZgR2JRxlDgnc5agGwle3u88ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1P192MB0187
X-MS-Exchange-CrossPremises-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 06
X-MS-Exchange-CrossPremises-Mapi-Admin-Submission: 
X-MS-Exchange-CrossPremises-MessageSource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-OriginalClientIPAddress: 90.229.138.185
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-Antispam-ScanContext: DIR:Originating; SFV:NSPM;
 SKIP:0; 
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-Processed-By-Journaling: Journal Agent
X-OrganizationHeadersPreserved: HE1P192MB0187.EURP192.PROD.OUTLOOK.COM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_030813_867201_108F47FE 
X-CRM114-Status: GOOD (  40.96  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] ARM: imx: Fix problem with imx_ddrc_sdram_size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Oct 30, 2021 at 03:45:57PM +0200, Ahmad Fatoum wrote:
> On 29.10.21 13:06, Joacim Zetterling wrote:
> > The imx8mn has a 16-bit SDRAM bus width access but the calculation
> > of the memory size treat it as a 32-bit width bus which makes the
> > memory calculation to be wrong (meminfo wrong and memtest fails).
> > 
> > There is a difference between the imx7 and the imx8 familys.
> > The imx8 family has a device config field in the master register of
> > the DDRC controller which the imx7 family doesn't have (the bus width
> > is 32-bit as default).
> > 
> > The device config field together with the DQ configuration tells us
> > the actual bus width of the device for a correct mem size calculaton.
> > 
> > From the imx8mn reference manual:
> > +----------------------------------------------------+
> > |    Field      |     Function                       |
> > |----------------------------------------------------|
> > |    31-30      | Indicates the configuration of the |
> > |               | device used in the system.         |
> > | device_config |     00b - x4 device                |
> > |               |     01b - x8 device                |
> > |               |     10b - x16 device               |
> > |               |     11b - x32 device               |
> > +----------------------------------------------------+
> > ...
> > ...
> > 
> > The imx8 supports a bus width of 4 bits or x4 (device_config b00).
> > This is a problem for the calculation of the mem size when it only
> > handle the bus width in bytes. Therefore we must treat the mem size
> > calculation for the half bus width (width = 0) in a special way.
> > Do the calculation with one byte width and then divide the mem size
> > by 2 later on.
> > 
> > Tested on the IMX8MN Evk with 2GB DDR4 and on a IMX8MN custom board
> > with 2GB LPDDR4, checked size and made memory test. Both platforms
> > has a mstr_device_config of b10 and the mstr_bus_width of b00.
> > 
> > Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
> 
> I agree that the computation for the nano is wrong. I have myself
> a board with 1GB LPDDR4 here and with this patch now, it yields
> a correct result.
> 
> I checked against other boards we have in tree:
> 
> arch/arm/boards/zii-imx8mq-dev/ddr_init.c
> 45:	reg32_write(0x3d400000,0xa3080020);
> 
> arch/arm/boards/nxp-imx8mn-evk/ddr4-timing.c
> 15:	{ 0x3d400000, 0x81040010 },
> 
> arch/arm/boards/nxp-imx8mn-evk/lpddr4-timing.c
> 19:	{0x3d400000, 0xa3080020},
> 
> arch/arm/boards/protonic-imx8m/lpddr4-timing-prt8mm.c
> 16:	{ DDRC_MSTR(0),	0xa1080020 },
> 
> arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c
> 14:	{ 0x3d400000, 0xa3080020 },
> 
> arch/arm/boards/nxp-imx8mq-evk/ddr_init.c
> 45:	reg32_write(0x3d400000,0xa3080020);
> 
> arch/arm/boards/phytec-som-imx8mq/ddr_init.c
> 45:	reg32_write(0x3d400000,0xa1080020);
> 
> arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c
> 16:	{ DDRC_MSTR(0),	0xa1080020 },
> 
> arch/arm/boards/mnt-reform/lpddr4-timing.c
> 15:	{ DDRC_MSTR(0), 0xa0080020 | (LPDDR4_CS << 24) },
> 
> And all of them have a width of x16. I find it hard to believe that all
> of these boards have so far detected double the actual RAM.
> 
> I am wondering if there is another parameter we are missing here.
> 
> Cheers,
> Ahmad
> 

You are rigth!

I started to dig into the imx8mn evk DDR4 board and found some things.

The imx8mn DDR4 board has an other mem layout than rest of the boards
compared agains my custom boaard or the LPDDR4 board, I see this.

>From the datasheets:

           DDR4   LPDDR4
Banks       4       8
Bank grps   2       1
Rows        17      15
Col         10      10

Therefore we need to add two things:

1. We need the DDRC_ADDRMAP7_ROW_B16 and DDRC_ADDRMAP7_ROW_B17 support
   to support the DDR4 number of rows.

2. We need two add the DDRC_ADDRMAP8 and do a check for DDRC_ADDRMAP8_BG_B0
   DDRC_ADDRMAP8_BG_B1 to get the number of bank groups in the mem chip.
i.e.
	...
#define DDRC_ADDRMAP8_BG_B1			GENMASK(13,  8)
#define DDRC_ADDRMAP8_BG_B0			GENMASK( 4,  0)
        ...
	...
	if (addrmap[8]) {
		if (FIELD_GET(DDRC_ADDRMAP8_BG_B0, addrmap[8]) != 0b11111)
			banks++;
		if (FIELD_GET(DDRC_ADDRMAP8_BG_B1, addrmap[8]) != 0b111111)
			banks++;
	}
	...
	...

I verified this against our custom board (512MB) and the imx8 DDR4 evk board (2GiB)
and seems ok. I also checked the values of the other boards in the repo
and I think this will apply to them as well.

What do You think! shall I make a v3 of this patch with the above changes?

Cheers,
Joacim

> > ---
> >  arch/arm/mach-imx/esdctl.c | 30 ++++++++++++++++++++++--------
> >  1 file changed, 22 insertions(+), 8 deletions(-)
> > 
> > diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> > index e56da3cb76d4..1d76f26dfa39 100644
> > --- a/arch/arm/mach-imx/esdctl.c
> > +++ b/arch/arm/mach-imx/esdctl.c
> > @@ -320,6 +320,7 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
> >  #define DDRC_MSTR_LPDDR4			BIT(5)
> >  #define DDRC_MSTR_DATA_BUS_WIDTH		GENMASK(13, 12)
> >  #define DDRC_MSTR_ACTIVE_RANKS			GENMASK(27, 24)
> > +#define DDRC_MSTR_DEVICE_CONFIG		GENMASK(31, 30)
> >  
> >  #define DDRC_ADDRMAP0_CS_BIT1			GENMASK(12,  8)
> >  
> > @@ -361,7 +362,7 @@ static resource_size_t
> >  imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
> >  		    u8 col_max, const u8 col_b[], unsigned int col_b_num,
> >  		    u8 row_max, const u8 row_b[], unsigned int row_b_num,
> > -		    bool reduced_adress_space)
> > +		    bool reduced_adress_space, bool is_imx8)
> >  {
> >  	const u32 mstr = readl(ddrc + DDRC_MSTR);
> >  	unsigned int banks, ranks, columns, rows, active_ranks, width;
> > @@ -384,15 +385,20 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
> >  		BUG();
> >  	}
> >  
> > +	/* Bus width in bytes, 0 means half byte or 4-bit mode */
> > +	if (is_imx8)
> > +		width = (1 << FIELD_GET(DDRC_MSTR_DEVICE_CONFIG, mstr)) >> 1;
> > +	else
> > +		width = 4;
> > +
> >  	switch (FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr)) {
> >  	case 0b00:	/* Full DQ bus  */
> > -		width = 4;
> >  		break;
> > -	case 0b01:      /* Half DQ bus  */
> > -		width = 2;
> > +	case 0b01:	/* Half DQ bus  */
> > +		width >>= 1;
> >  		break;
> >  	case 0b10:	/* Quarter DQ bus  */
> > -		width = 1;
> > +		width >>= 2;
> >  		break;
> >  	default:
> >  		BUG();
> > @@ -412,7 +418,15 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
> >  	columns = imx_ddrc_count_bits(col_max, col_b, col_b_num);
> >  	rows    = imx_ddrc_count_bits(row_max, row_b, row_b_num);
> >  
> > -	size = memory_sdram_size(columns, rows, 1 << banks, width) << ranks;
> > +	/*
> > +	 * Special case when bus width is 0 or x4 mode,
> > +	 * calculate the mem size and then divide the size by 2.
> > +	 */
> > +	if (width)
> > +		size = memory_sdram_size(columns, rows, 1 << banks, width);
> > +	else
> > +		size = memory_sdram_size(columns, rows, 1 << banks, 1) >> 1;
> > +	size <<= ranks;
> >  
> >  	return reduced_adress_space ? size * 3 / 4 : size;
> >  }
> > @@ -466,7 +480,7 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
> >  	return imx_ddrc_sdram_size(ddrc, addrmap,
> >  				   12, ARRAY_AND_SIZE(col_b),
> >  				   16, ARRAY_AND_SIZE(row_b),
> > -				   reduced_adress_space);
> > +				   reduced_adress_space, true);
> >  }
> >  
> >  static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
> > @@ -508,7 +522,7 @@ static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
> >  	return imx_ddrc_sdram_size(ddrc, addrmap,
> >  				   11, ARRAY_AND_SIZE(col_b),
> >  				   15, ARRAY_AND_SIZE(row_b),
> > -				   reduced_adress_space);
> > +				   reduced_adress_space, false);
> >  }
> >  
> >  static int imx7d_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
> > 
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | https://urldefense.com/v3/__http://www.pengutronix.de/__;!!I9LPvj3b!S3iOaFKhB9cEFWi6RANaZPNtXi4DwFoFtNmrEOpNT8BaPsH4hfSSr4ppbB93VGU$   |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

