Delivery-date: Tue, 07 Nov 2023 20:25:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r0Rh6-001cUV-16
	for lore@lore.pengutronix.de;
	Tue, 07 Nov 2023 20:25:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r0Rh6-0008En-5G
	for lore@pengutronix.de; Tue, 07 Nov 2023 20:25:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NUIoTtBwGNVmuOUbgOLQKz3o2IbiEX4foBI07laKvGA=; b=Nf/KeSrE9KPDdt
	jA7zt2pcb2cddF4oR2PFD/Tc4nDdTG8qiovwvxpPj/Iu6QANqfyJiYg3tbejufTBWeJJ1GeHw/Hy6
	5U1DxLEQMHx8hpIs6UEUTy9XTXQ4tdE89EZP7BlK1zZcV4Z4oZKWNOrI2hQCVPwHnnAeNA0WORSxm
	ymEhHXelgFb8tX0SCBmitlJCVPd++EnuANSrOUGvCiC3PxN3kTBTnGN0dS1g26u1IOzza4XqDgraj
	MUoSRNl9bP0BZ/9/k3+CqFhnvo0cC4u+SM2zGvPMagzXMCpcPODDfZ16WzGrBFao3QcLEp//Sid55
	+tAcUNBavc37vb5IlgGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0RfU-002GXY-0K;
	Tue, 07 Nov 2023 19:23:20 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0RfP-002GX2-2j
	for barebox@lists.infradead.org;
	Tue, 07 Nov 2023 19:23:17 +0000
Received: from pps.filterd (m0163889.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3A7G4aFR021483
	for <barebox@lists.infradead.org>; Tue, 7 Nov 2023 14:23:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	from:to:subject:date:message-id:content-type
	:content-transfer-encoding:mime-version; s=pphost; bh=NUIoTtBwGN
	VmuOUbgOLQKz3o2IbiEX4foBI07laKvGA=; b=MkfWUh3MBLjQmOBHXY2E8krsQE
	thAksPB9bObzUtJMk4gbjtOQ8JjqsO0EPabgFTcvNnNJdUBncYL10BBlKFS+xuGn
	Mj7ijHcw/xw0pUAUFqhbCrEb5ewZd9fqtmTUAt/E6BVmFTNUJd/E6RRal1F35GlN
	44QamHLDCQ0CH0qQP4MUM41FAu585f61swx9c2xP4zI6G5p+j4BFIZpGiHSpKGq5
	2rJrbJ6hSqxwi3n0kVKX6N+Q/2dKdGkoPp7jIls4Fod7OEpWkj3tNA6poEHO9JI3
	b6xIeA+HrxP3PO4ShQrXN+cdYqywOB27tQIQr69YL5AqGzqds/ioIaPYJhoA==
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2040.outbound.protection.outlook.com [104.47.66.40])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3u5eu2bqqf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Tue, 07 Nov 2023 14:23:14 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O68fR1K/DPLRGfF9J7lxM2IQUKyqnmFCmrn+3e4CI9rUqX3Fi/VwkrBHV2amXgOSmstrci+dZCRRHo+O88ZteMEER+hahxogBP91F4BERYyVWSYwUI/K3wsFYqw09A/dJiefbU49X/1UpcIDT1oKfZi5GDqJcwqti/KvolPgl9hakRr9Tci7AYIEDo3vUjKXiqVEjNqXEyqDXZlSytSM3z+joPNisInlx32RuZJ9ien9W4sX0g3MoFwN3Iys8vCMoVyXLKArSE8mqKM3d7Eda2TItceWIeJCK4MAl2q8NXoG3BITdSmzcN8Jdn/04cZBbQaXOw6iI7TLmYRzPwS61w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NUIoTtBwGNVmuOUbgOLQKz3o2IbiEX4foBI07laKvGA=;
 b=BRWrzUtlZe0jtFQPhaEJFc6OpbbNSa4Nogq2vL4WlnFWBOJddLzCWAwD5mxA7YpCqWuwoDEW1nuh2GNrXb2d6xABvl5O+9Mzl7cOJlByor6k5qp1j4xh7Rc3TKNah5T9B6Bj6D97bf5DUFpdboCs00zU152esf1YlOKINO8VKGTbTxbe7yd5RJtvlVWVnToPaoWljg5Uumr9GJurVIVissTj58i8a5PUFayJ/OpiEclH7ZK+qSJy1y+mDEQLo/+w3cec+o3+McVyHN7c5qO35YCMwNBtrC1lXz7q2diHzJvxbKjlmkxcAITsKR4fv272xwF0kczseuYhKmVxaXNmyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NUIoTtBwGNVmuOUbgOLQKz3o2IbiEX4foBI07laKvGA=;
 b=D30Uff30vkK/Akz1NOSLvuYPVNzW7Er/tR6TeqacYENoNlGo44zlA5s1h8eq/+Qnxg/T1fW3GibOXd0kB3h1zhCP27Y5bJ7Jeng50YaALLGB7scdrc0UOZYzLCtag8wGt8/M6cI4StBU5kOcak4aqnrUwTNFXElCFu54A43htw4=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by SJ0PR07MB9057.namprd07.prod.outlook.com (2603:10b6:a03:3e4::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.29; Tue, 7 Nov
 2023 19:23:10 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::deb5:2c53:7713:aa3e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::deb5:2c53:7713:aa3e%3]) with mapi id 15.20.6954.028; Tue, 7 Nov 2023
 19:23:09 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: LS1046A PCIE
Thread-Index: AdoRr6vrta53vMKWTe2l7cFR7DSlgA==
Date: Tue, 7 Nov 2023 19:23:09 +0000
Message-ID: <BL0PR07MB56651124C62CA2DA8B681867ECA9A@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|SJ0PR07MB9057:EE_
x-ms-office365-filtering-correlation-id: fff5c5fe-3f0a-4444-7865-08dbdfc6fa34
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kJcU0kQ0Jj5vuCIlGX9bUIYiAHQdhyIBL+kilwKCzggNdKD5APy/fUgKGwWERqJHFLhUCrYpxJ8+TsdPhZu5YxkRmBE4MNA4SnesGWWSjH0fvDOLtSWa8JZCK3FIZ9VasBdLN9zgVTQwixQZGEdDOuPm9YYyktVpM5CmoO+T5h4c0OMLkUBFA9BMjL4MET4XLU4mSXR6xeLD6yOhUoH8l22mwIOK7x7hcTl5wprP4bMBOZz2KN+IRoHamZSgTS4YlV+YsvFK6DhVWEqDTDPacp0wV8gDkNcKeRsfa9l86x79qNkoL84wzvgWsLcrWTS2wEl0bVo/oAvOl2la4Nhvr4JKI0bS882AzG81nsZVCC5asxo8a+glE3hqJW3qd++keN74lFx2O0tSwN8Adst+w+a4U7OvZsPY2do4S3mTX9etz9i5r+8WbDTlvNkmInXWM977QKYJ5ZtwZa/rnOeTj0scsYPSd+J1gBSF8/xpiAZm3miZBiaizIlb5cZMvbIb6Fx/iMeMEPscyLEXcIFGhXxsTWLQyLTh2jWXsMcgfR5j/UZ2DA8ks5Gyhh9kl2a/+ER6XRxgwqUFVFRqu7IcRN8lTzY/ZxsccO6tXbVdbUs=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(366004)(376002)(136003)(346002)(396003)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(5660300002)(7116003)(52536014)(8936002)(6916009)(8676002)(966005)(6506007)(7696005)(38100700002)(316002)(4744005)(64756008)(83380400001)(66556008)(66476007)(66446008)(33656002)(41300700001)(2906002)(55016003)(86362001)(122000001)(26005)(66946007)(76116006)(38070700009)(71200400001)(9686003)(478600001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PgYImTqTkpR6pTROo/eg1QHb3OostZWVeeB8bya9sIq2w2YzIC1psHF6+MkM?=
 =?us-ascii?Q?8Mje9AsmBY/nePfa296fldy0kFMbpFCfji0NpiXA43fI/gQSEey2pWAlVnCU?=
 =?us-ascii?Q?A3OTr1ahGldpfeNTNmfMbHHSa85dMGPYNMBHK5ayEZk8W5NLqxH3jvHhQkII?=
 =?us-ascii?Q?PXCATYdwCGXn/0clYUQEoW2vn7WPM2u5wrquTfLx9syHNzr65gfx9kJcsFFl?=
 =?us-ascii?Q?F+S0zKdjMdJmRMV+uVpVKv1pyvgAf6lqi0y9riyMniZGlGyrHObfcc/v9XMD?=
 =?us-ascii?Q?V7gVGTRW7i2G2U0WAsgGL1yiWamJa4rMn8bcGMFwp0xHy2TO5xfWL/P5ZpU8?=
 =?us-ascii?Q?BRjjrfSF9RQOX+cjmQMNI/55stx0CRr30TgL7ArxaiSXgX63oj7/qfJYLEBI?=
 =?us-ascii?Q?LB6ZBz+ST+NmKxpF9LPKbyHVf0PteD29lPbbzGKQU/XiM9D+nHaJTVagLC40?=
 =?us-ascii?Q?YY7lHbKGfgQBYc684kYR/K6ueZwmze/x35x47mK8F3ue+CHNJJskeS0QHWro?=
 =?us-ascii?Q?VWVsYcZFWnNify7rXb2CbBu0mI6zxsB4yrRICTV6LIi3wbVU51hmzs5Fld8r?=
 =?us-ascii?Q?29NlVmSsIWTUKjMnjj4vbafRhHGbFulexdZ41arD+VISdM7/lIftjiqqMYRp?=
 =?us-ascii?Q?yaAjJ5rmItLJn3dWRaxgZGFF4ENG5+66PYYA+SiaaQx1IUg4oHFS8F/yaWeO?=
 =?us-ascii?Q?HaZmuKd87ULDQFVDhfYW4js4NPTF4aAeHsrbzg64cxzEikeGenXOkUoISRAW?=
 =?us-ascii?Q?frBG3Dp7PvNaCX+SR66cF1Vpr5wKHnKP285kkgWQYufXzxC7cpDdCd//TqB1?=
 =?us-ascii?Q?9Kby0NpzcHkpdhVdowu770xECMhz2WPz2NWIUjfNmByEr9g2CSmy2CQzucF3?=
 =?us-ascii?Q?rMpb7CzICdzUaGBv2W3plgSwlAJvsvSrEeEGNc/RUavjz5D0+0KVCs8GUvT4?=
 =?us-ascii?Q?yaopuUTvTgGDKHJlmO5RRi3UnJYdgh3gp2HYXkUUXbAgDnlC1nr+i4rNSGAB?=
 =?us-ascii?Q?1a3HMfllU3Ikn1w97RqG4P9pUlNbiA8OEKK593SOGvJ8sQZku52G0y/iXvT0?=
 =?us-ascii?Q?oOuIQFfcRMOcN1evdQ1rJI5tSS6per5Hz7o2YbVDXa+BKBC9UAssjI9mPNwx?=
 =?us-ascii?Q?4p4SFwwtTwHceqIbSEP9mCwYxm9/xOoB/GYwETbpCg3WDX+ZHBbhnErcN5NV?=
 =?us-ascii?Q?szJ0rLQOJl77fIGec1PIkOlV0W3uOPtpiH8DULyzOj3MC73L6359QVwpcat3?=
 =?us-ascii?Q?Ff86fSSmJ//eZ2Yt2vVpOIYdoSktPZ6UBxS/Bs9wN/SpMQYrnFq4hVdyIa1W?=
 =?us-ascii?Q?KtDETt+iEzzBuDSyLQFunM3dyxQKsoonARhTv6qHBt4XRclzGsBqSZuH6Phi?=
 =?us-ascii?Q?iwUBLVuE4shXVxPocIgru2OgTSoSpwB++aukpPFQaL68kGjIa2vj8D/susZR?=
 =?us-ascii?Q?8PnFD6ljJGSOqbeusJQ6v+bTLfrHc1LiOND50avIoyn6lvtGhqPRAY4XpheG?=
 =?us-ascii?Q?vlzInkDbcPXqQkqCBsNL6lcdbDYZ16BrhmM7+avZSzazMzvlC2sIYdJBnoIF?=
 =?us-ascii?Q?1Pe+qstEUEKGICUu3gyQWGLEmdTRAcbRdagVJMcU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fff5c5fe-3f0a-4444-7865-08dbdfc6fa34
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2023 19:23:09.6751
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zD75hBCIaaULai5uOUkYf6xwaXJnJkZ/b23XyMOEodaW17qTLA6vr2iJBt+n9vhb2FL4gI6wt2M9wANPHlcxelpv+zCVz1BykXA8/Lihu3A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR07MB9057
X-Proofpoint-ORIG-GUID: ZI9Klrw6XRepLnjWUXKGIu_UunWmUxIe
X-Proofpoint-GUID: ZI9Klrw6XRepLnjWUXKGIu_UunWmUxIe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-07_10,2023-11-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=2 impostorscore=0 mlxscore=2
 suspectscore=0 adultscore=0 spamscore=2 priorityscore=1501 malwarescore=0
 clxscore=1015 mlxlogscore=172 phishscore=0 bulkscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2310240000
 definitions=main-2311070159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_112316_346227_D1DAE75E 
X-CRM114-Status: UNSURE (   7.59  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJ_ALL_CAPS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: LS1046A PCIE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I noticed in U-boot the code in https://github.com/u-boot/u-boot/blob/maste=
r/arch/arm/cpu/armv8/fsl-layerscape/fsl_lsch2_serdes.c
There is a function setup_serdes_volt to set up the serdes which I do not s=
ee in Barebox.
Why was this not implemented?=20
Are the RCW enough that the code is not needed.

Cheers,
Renaud




