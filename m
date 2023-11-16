Delivery-date: Thu, 16 Nov 2023 10:25:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3Ycw-00Dg3R-2P
	for lore@lore.pengutronix.de;
	Thu, 16 Nov 2023 10:25:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3Ycw-0004X0-Ij
	for lore@pengutronix.de; Thu, 16 Nov 2023 10:25:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3W9WQVK5qygXkJCmWZyzuhztf5FtX/dWOP2kuQRY4UA=; b=AOAmnj4pOOZQgDAbEPlxC8aU0l
	jj2vDSzj6v8P1pfeXfrij/OfShlQAEGbtlvqCCF71aJf7j44fF8o5Gs7TZDle1K+2LkAQQk8AJ21T
	X4pQSyL7O/XzI3YhKHbfSdHjQ8M3hbaI/BW8wOpqcqiW0YMTvNYjv06hydxuA0Begfz6Nypb3VssP
	oMYpwqeUNXwI6KJruLHwsYevjUwFbaZOQmseuAqsQlnEQe0PWttc6XfqHvTpzWiBWEfRqDJMmNVEt
	yYjUGGgx6lgSv4/5H2ijHnvJMiYLbKWLVt4tkp/YXtPJ2hYUSEmZxB6g6Sr1x4YKEm91JwbCv8AMO
	JUMGqB2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3YbB-002xWL-0S;
	Thu, 16 Nov 2023 09:23:45 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3Yb6-002xVB-2L
	for barebox@lists.infradead.org;
	Thu, 16 Nov 2023 09:23:42 +0000
Received: from pps.filterd (m0163887.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3AG7ZKdT023562;
	Thu, 16 Nov 2023 04:23:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	from:to:cc:subject:date:message-id:references:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=pphost;
	 bh=3W9WQVK5qygXkJCmWZyzuhztf5FtX/dWOP2kuQRY4UA=; b=gDydVgyzJRMD
	Av1dua4U5+OUkqIMAI8UI22R60HpTws8LyokVmwpJk7UCm6VCCL93ZDZB75T8DlT
	gAVRJynmGEBNxZKuq5rmc9rcFkellF+DdrCpwYsH+C7dJI+iH5DPzgwC1/k2EHjd
	k4PIkoC/HT+QpWRPQfCT+htpT7xLCzNEF370zyh1S99Jr+tNFQe6aBfLYlfu9pil
	fjeaV0cnrghvdHYAHRgeroke7fGVsHD/mQLlBStJ+ot9UH/S1bchipNQSS7FVGSF
	qAdYGDvdDCWdu3eAc+5yggSDXF1BT6mGE1gPZCJeFxPCG2FVNh70Be5PG8WWDqBp
	M+X9tLSIRg==
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3ua4a9u11m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Nov 2023 04:23:36 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MMx90oPv0XtEMM/ASdFnnhUQCTmX+/nxXK59WzVzrvOQjnww1v/4F7d1+nhOfxiN/pMzVJC+z2Qbm6c9bG/tmGqjKyWdNlVGauFq0rWiNNBdbL78f4DP+3OIu71fLhBwdstzyONHk4b8CCgEDXMP5UqlIG2VtNcYUhodettIMOIRSqMBIzS+gk57vyrIdoL5Bc1E/08SNbBIuvHh73qmlYxFHCBMqTL0oqYCfE6s8Jj3b6ngjfVw0kvntJcXkOnFvPWQ5GHL/+saB0Pd+NtsP22UaJZsWxjLiXy6hiJjGPcw8mgWa6DuygwlAE+wdu0B28PQtg+3HSG1VCo+nWTx6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3W9WQVK5qygXkJCmWZyzuhztf5FtX/dWOP2kuQRY4UA=;
 b=PzuiKopd9QAmtYGnaOkegc2E2dhqP3m8TZNzY/QGzrQWB0Ff3ZxYN4iWj2BImixuCwIVh3s/6q4fXuT2f4qtxwrQtyY5OVfgyxhZSCYoYK3OHQvjbnVkOCTSrUyjP413t7Uk7yyI/jGccCa+8K4+7+poELIhJneoh5z8MtuZ4rjTElElQBZEvtvZrLTYLluAWnroGYMF3kL6SP7OE4d3Ha90KtOJMRx4zUiEL+HQR5WuRmTpUMXyiASaCtnvSFgHribo1U4GoAbkGCitzeVvxpmAjHGJr/JcnphPdaHWSyvqWm/L6ZQuE/RXK6Yeec8nz4zWs959rwHXXPLyc/VXhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3W9WQVK5qygXkJCmWZyzuhztf5FtX/dWOP2kuQRY4UA=;
 b=xT9+xU6aC73KjlJksq7S/8TvAYmoQ/jbloqknmGOnQJyzP9tvFTmxdjcpDgTYSK0PCN3nu188lx60LTqEQlERr919JTCRnEZVP+GWn7884vvUQkkXbVzj6yFUYoMkchQjcC7R6gpKooff6a9XASS8f8jY0aGjoWFi5B7bSrrG0I=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by CH2PR07MB7318.namprd07.prod.outlook.com (2603:10b6:610:7b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Thu, 16 Nov
 2023 09:23:31 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::deb5:2c53:7713:aa3e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::deb5:2c53:7713:aa3e%3]) with mapi id 15.20.7002.021; Thu, 16 Nov 2023
 09:23:30 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Sascha Hauer <sha@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: Device tree probe order
Thread-Index: AdoX4vMe7RBgUH5LQa226HLhGZtocQAf2l0AAALzMxA=
Date: Thu, 16 Nov 2023 09:23:29 +0000
Message-ID: <BL0PR07MB5665A554A87D4AB3027B268CECB0A@BL0PR07MB5665.namprd07.prod.outlook.com>
References: <BL0PR07MB566525C65379702E930F2E99ECB1A@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20231116075610.GI3359458@pengutronix.de>
In-Reply-To: <20231116075610.GI3359458@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|CH2PR07MB7318:EE_
x-ms-office365-filtering-correlation-id: 80f42bab-b6f4-4c73-ec51-08dbe685b256
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JI8ZMuYLbZ7ElOWA+uG4Bhn8qY0R8iOhULd1n71EHff/anieLBD8zFHJVwOe4bKunxdbZAGtix6P2zyjPVCHfTdAF388qOuLHjZUYTa3WzxzazpzB0A22QhWMNcFCLw6ijDPKbGfOd729fDVgV0fHicuX631GfvSXu2NAZ0p6jK6hF9vIw5TOj3n3nvULvOtdvyGTif+X3jwrprQTKjQL2mnMaST6zzMwfzNui/d6nfJGWYsdmsBj/eYembal3xzV2MHlHQ/anmwRt2N+8/3ZP0uk6ny4/LKxOcn6vi7MgVkxMpaMJFEEtTdjnbYGV+JyH51QyNJbsJQoih6kQM9ggPzQQGkWJqK1rX68tcdmCWOmD1if92Ej6rs9EVI56jtKlmRxfbqh/wspfE5UvD0CSUP6mEev0RZst/gICdovD/kJKlJMPIc1hybOusIpwafeVw13FR4EpMmVSjB+7gDo7NQ2NG1awixtk4wengNpmWQwTXogNfxBdO8tR+cGf2WATurMrjhA9h8f3q0le410vQvYSLBo0lRnlLE2nTph8j1VZKbqqoegGFoPJ52kebkmC/+bxwLBQ0WcUaR+UCW3j91YxllOKjFgfSiXc8FfISs0MCicYRZFBvA0uvuDj0oSuw+5g6QFCe9d5KloB0GdQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(366004)(346002)(136003)(396003)(376002)(230922051799003)(230173577357003)(230273577357003)(1800799009)(451199024)(64100799003)(186009)(66446008)(33656002)(64756008)(316002)(6916009)(66946007)(66556008)(83380400001)(76116006)(66476007)(66899024)(26005)(7696005)(6506007)(53546011)(9686003)(71200400001)(478600001)(38100700002)(55016003)(5660300002)(122000001)(2906002)(41300700001)(8936002)(8676002)(4326008)(966005)(86362001)(3480700007)(38070700009)(52536014);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oYC/rXVxvRTN2Aw/qz3+yl2HmLHD7+VF4WY5OQ6RxDj/xskR62DG5AsOxb2P?=
 =?us-ascii?Q?HXA9XO0VsFcGwtl54blf+nMI1PLt5j7gu5y+rRN6Qt4p8H4sayMYb2+K5ehJ?=
 =?us-ascii?Q?jRDYvDc/91U0Y+NLyXhjUMHlgnRKSgMT5bwXjh0IR92UlWE5/+e57ndzujYv?=
 =?us-ascii?Q?t54/UQ1B5Pr3n6mbk8R2QDuReIvrFpixbhou8SbawZ8xLJDWFehjJHsSiBWK?=
 =?us-ascii?Q?qY8W8oNoHb8M3Rk2bBNF5GlcboaydE/yHKZS/019nLmuCDV3TevlQh94JhwE?=
 =?us-ascii?Q?0G3TUIpUGGd+f5f5ZN0JEOQpKusQKrguyD2jEZ8z7YhGSL8VgTJpRjg9pFPm?=
 =?us-ascii?Q?FYWJGq01xqWCvwcohSGrETevvxZpdYAwn2EcI3djhUuyx24OPCIDcgBCSygH?=
 =?us-ascii?Q?WN0feeBLOJAdhvvMjv4w9mRkyAqLvNwPa5qT3R02dvCqVzHXZhhODw1XF8dX?=
 =?us-ascii?Q?SM2fOQE3brMdi9TgeVkvq/gQCQcwKm1ZZaMiX/1DuWSlWpFM6DKcY2kf3qaj?=
 =?us-ascii?Q?5ScLL4/ACNcql0qVicfgmBCQlF1tYAbUHHPf6oHjQl5axTsV2LvUg1GnRdi8?=
 =?us-ascii?Q?QBNnwdiQfLzdfDYHCw2J6D/1Z4VL9hDNtdZ/7lT2eqHk6IEw9aT/aeVBmuLf?=
 =?us-ascii?Q?2LM5XHgGw0QtDQV7JD8W6pSSn0bS15GTlD0y0QRsKoTdAmN5+uDu47sQv2xQ?=
 =?us-ascii?Q?7EFER9Tuk0N1QRKbJuIHiWMyw9tnHAUhC8TEaLVeHQMSq7i0Pw7et5xuHnhj?=
 =?us-ascii?Q?zf22HcL334ynQbYwDRk3lYXDHr5xG6czuB9/iLEHoWwThLaphtERNGTqmHxX?=
 =?us-ascii?Q?F0yK35JnuqGGB1KUPqzpj9T0XtltKl2iYcROiJJYuoUPA4Sti3iRFq3OE7/J?=
 =?us-ascii?Q?FktppYo+jThMrsgg8AvEddqU8eZopZ6WZmIM7aXNDaItXxfAZwpAKswjs6S4?=
 =?us-ascii?Q?RSqJlixmeGYUrvpfVnXZC/xyubxz0JKf4FPT9miD4yLwdv6mLDXTaNNDhwO2?=
 =?us-ascii?Q?I76ILovHfzRemQfl+3n6XqoQ57jwrNtKbZzrY/xi7vGxTxCmLW90mq6zO/Ap?=
 =?us-ascii?Q?59wono3Arqvwad2y09OggeCjdAUr1amJK/d/eKKennNbgHNEZ0fZbi2Xj0FD?=
 =?us-ascii?Q?/AkKIq/IGcMmbeaW3WXNQznhoV5kfLlIpZCnZF8jzzc7pDSnvTJUe2XqXQfu?=
 =?us-ascii?Q?vnxvFdoH3g9ELcxaXiXKC44ZowtTgPg+x9kZUAAIjOaG9gt9tBaU3eh0AOlM?=
 =?us-ascii?Q?AeEddL2KOOwzdKgv504P3otW3OxDuyoacoeBBWKyryq6Tws1gjnbJb+QmcZq?=
 =?us-ascii?Q?BctkXwRVYnu87edqKRXeRQfLtKMtz5yAy8KK+8ZVz2rZ7BwJL6cCUvhWB5p8?=
 =?us-ascii?Q?DQS76JmVRX/MlKKiN+i8+ef0ZAtWr54+miWcPVnvSADmJzfI27pbERbd6VBL?=
 =?us-ascii?Q?cSDKRIYBMQDxHpAicOchIiFd3GltoKYb19YwFaILl9POfs8fgF7BCi3mlDdX?=
 =?us-ascii?Q?OTtX/Y1EhWcaocX2YzksPGYp8qKBpVUlfqebE33TngG24sy5tsf6PEa01KQG?=
 =?us-ascii?Q?Pyu06Nog9yIe0HTTIoWjAT54vcG2ht4qV0cBHsOxxca1ere7fIZ2e4Ro9g7n?=
 =?us-ascii?Q?sA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80f42bab-b6f4-4c73-ec51-08dbe685b256
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2023 09:23:29.9662
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YjxYWUZZaII/gmr32iPxFEr7fJSY7zECRersbnUywrsM8M2l0VD3OGKQlmyEeVZ/A+sjmhJN8snrcFU3+LmBSIpOElM8UFCJf5lUR/EI82s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR07MB7318
X-Proofpoint-GUID: NI5Yesj3VNPhBQrTNYwZ_j181gcZQzQP
X-Proofpoint-ORIG-GUID: NI5Yesj3VNPhBQrTNYwZ_j181gcZQzQP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_07,2023-11-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 mlxlogscore=929 mlxscore=0
 priorityscore=1501 malwarescore=0 clxscore=1015 suspectscore=0
 phishscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311060001 definitions=main-2311160074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_012341_237266_026052BB 
X-CRM114-Status: GOOD (  23.79  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: RE: Device tree probe order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Thanks.
 I had found that swapping the device driver registration made the QSPI pro=
be first.  Changing DSPI to be registered by device_initall and QSPI by cor=
edevice_initcall does what I am expected.=20
I will look at the method you offered.

> -----Original Message-----
> From: Sascha Hauer <sha@pengutronix.de>
> Sent: Thursday, November 16, 2023 7:56 AM
> To: Renaud Barbier <Renaud.Barbier@ametek.com>
> Cc: Barebox List <barebox@lists.infradead.org>
> Subject: Re: Device tree probe order
>=20
> ***NOTICE*** This came from an external source. Use caution when replying=
,
> clicking links, or opening attachments.
>=20
> Hi Renauld,
>=20
> On Wed, Nov 15, 2023 at 04:47:03PM +0000, Renaud Barbier wrote:
> > We have a board based on the LS1026A with a boot SPI NOR on the QSPI
> > controller and FRAM on the DSPI controller.  Currently, the DSPI is
> > being probed first and got the device node /dev/m25p0. The boot SPI
> > get /dev/m25p1.
> >
> > I would like the  QSPI NOR to be assigned to /dev/m25p0 and the FRAM
> > to /dev/m25p1.
> >
> > Is it possible to change the probing order or the device node
> > assignment?
>=20
> You can create aliases in the device tree for both flashes, see
> drivers/mtd/devices/m25p80.c:258:
>=20
>         if (dev->of_node)
>                 flash_name =3D of_alias_get(dev->of_node);
>=20
> Sascha
>=20
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       |
> https://urldefense.com/v3/__http://www.pengutronix.de/__;!!HKOSU0g!BN8zz
> nbk0b3uelLqUvSN2rw8QCvPlzwneze_sHvn80jabgpUMpW6mKUMPR5ix-
> ZYthtB_DT_P_RRp4-IpE3s$   |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


