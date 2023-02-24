Delivery-date: Fri, 24 Feb 2023 15:11:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVYn1-000yBo-Ay
	for lore@lore.pengutronix.de; Fri, 24 Feb 2023 15:11:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVYmz-0000NR-QN
	for lore@pengutronix.de; Fri, 24 Feb 2023 15:11:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=la3g36tCZu75xWgFY1B0iFryDrSsQ6vuIwr2yHc4uHQ=; b=L5zT/ThhEXpIa14NhoEnBPoqv+
	fk2yjYK7OiDsb6IDJtHMPFBD07FmDcSfmyDEg5doWDGFKjd2iT9tJ9Luxg1tZtVi7qoinnXt+d0la
	O6D8wa5LmZWdkE4oF0b4VXdUW5f9tRks3SbxsgOn6RBjgsEUKMam5N4vgF+M5VAgrLEKTCC2aJbGj
	/DPowxgJWnWItv0dPa3iWEfLFcsnkz79HFk+IpRwebqfFrKQBxGdmQ8gU5Tk1FNpvfhiUnJoAeIoU
	fB9jNW7CJfVUh7Stx1pUY4ziXjbT+lwiIc7CsrRmLMBmHINC2lvJgSY99Ae97VjNq5Zaw8QF1Uvis
	/llEUeMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVYlH-002iEp-Sf; Fri, 24 Feb 2023 14:09:24 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVYlB-002iAL-CI
	for barebox@lists.infradead.org; Fri, 24 Feb 2023 14:09:19 +0000
Received: from pps.filterd (m0163886.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31OE2N3a008929;
	Fri, 24 Feb 2023 09:09:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=la3g36tCZu75xWgFY1B0iFryDrSsQ6vuIwr2yHc4uHQ=;
 b=TNxpizykL6k0kkf5q3JgCCdUOJBCjjuBLrKc/Arqe4BkPoFQ/HkZBXYdEQnVabfKrLx8
 c0kKIqw9H4AMFUHVRxDMCEjGa1s2Q/7WcW/Tdqtq6msVzIuVPGkIr0NsgNCoWwRKvHN3
 K3q5a/B6PpGjwmraMQKnuR0obQuJu72dzNydvHXOBqoyojGUPnYXGbqPQg50mRtFHAv2
 nZN+BgNrzx6/14UreT1+znR1sNeV6XxnxBCdfSB0hog8UHWbZEdayoYkC/rs3/FdE7KG
 dJWMZw50GEzkuat2X/eeC5rIcUmmTXFF2Dei2wZK1LOoeiAy8Z++yVRucVZQb2FmMHbT lA== 
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3nwydb5t15-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 24 Feb 2023 09:09:13 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e98AIcainHn7PR5O/9ATwJNX7yRcN6QWfeZFMqndXwx+yeSaUwceiEF5Wd5a2ic6tWBeChhhN0uvGffdOT+CsI23U5hwIfW0MNwvTg8UG26zw9RP+1iJxQkgrq65gQ1g51UjO9X+GpiZ0nIVf7ZuhZMMzEpPJmPp4LPMhwvzeY3sHTQTpi0g5IjiOCf8Bp35IGV3TVypnrKCcmcnXuJAj7ocT9J1pdDRb4ErB/qAljLG8/7NwWbzBLBx2XFgQIPWo9Ta8hq59jX7b/oj70bbQSPChFf5C/mDm3D79ippAsuyXm4BLeeYVp6zKOyozFNKtDvWKoQa1H6Wxqkf8zaRBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=la3g36tCZu75xWgFY1B0iFryDrSsQ6vuIwr2yHc4uHQ=;
 b=BsoTJHh/Qk0UaSKblN9gUXWl5+Ac6hLsD0iPAyry7Y9JYLiM0kPreYUCf9U0nxbLyilQ4efADeC/hDvYB1FAjlFgBa6w4fn+DRLwC2PyWdavF8mfK9pHd1xtGiEDVeAjoZmxHbaOXd3EKFd48WzcaA2dvzageMOHLxC/rVY15aTNFFiW5Uxf4Oeey4K1XX0pZ7jr5uwZQqKDmIbj654cw2rqdJgkfMmlJ1I/uw7ficouLiM0fbPWJP4S52ABrzXO5x6FpoH/qJFMRNAtj+jggnQ05WRsE0s2Rp8W+4UMahdMcntuoGH8C/Y76xxhpLsvy+l+GyAzeli6/eYPLA188A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=la3g36tCZu75xWgFY1B0iFryDrSsQ6vuIwr2yHc4uHQ=;
 b=SQ4iTmhz4bakSGa0GBE9JX5PQqjHHOe2k/Lgx40aniIp+HliAT2irOKTwV7zcmQYIr5EF7pOVOwLlxdoKrNFDtD5OkdmpDqROhSjumqHLcXQXnwA3L8Xy2+i9x1eQf/Ho/qNhg40+5zU4vb7ia69qYS51B+8LSuQ0c7f8OAwzE4=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by DM8PR07MB8982.namprd07.prod.outlook.com (2603:10b6:8:1::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6134.21; Fri, 24 Feb 2023 14:09:11 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6134.019; Fri, 24 Feb 2023
 14:09:10 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Sascha Hauer <sha@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: Subject: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board
 support
Thread-Index: AdlHjsBiEhCshAcMRVyRnnQXgXtASwArhr8AAAclNnA=
Date: Fri, 24 Feb 2023 14:09:10 +0000
Message-ID:  <BL0PR07MB5665E13FE364D02FB8A36E09ECA89@BL0PR07MB5665.namprd07.prod.outlook.com>
References:  <BL0PR07MB5665F629C595F00D77D51D4FECAB9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230224104340.GI32097@pengutronix.de>
In-Reply-To: <20230224104340.GI32097@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|DM8PR07MB8982:EE_
x-ms-office365-filtering-correlation-id: 322c4dd4-fc45-4374-d5e4-08db1670b372
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  7nXHiPKUzUegicgNdHA8JTZjoGQKrwRk60hrca5PfVvyrjwl6O75pbZmU5/TTZPjz+AZSgS7X8IJJGD9i0C16hFzGrLidxTxt18hbV2HBBBppEWUp7FluAHQj/wsLUrEAqHz8gYmJTqYbVJBmlM+Qf3lNogRpa9+vQjLywIT+Q3IcdWv1ZWsXQFqWF4KnI1hnAZOCOPu807uGlx9vP/aa+gAEWkcOn/lnO5eH0Yx/TCocHpB4il4lEmaMD9uHiiNPvwBiy1y/pPMtr8L71FRDCGLYb+yafE+w/BiPF641Gy8jt2YKLDD27b8RihnFeoBSKQkZrMQdy1ZZkLKO8ppfOJzTg1CygTiyhV+jr2SQ4tAjCFTpctNytfC5yxyDguLldDH12t8967yUnLLgHqXQMifZ0KSun0UuU1EJsLGe/MQAPwYDu6UvpWQ3EY6XPVFt3vFLzcnRjyi4mE/VlaFDciIrWYcq2F4+RnO1fuWqgLW2WxaI+OgF5n8q2yBSZ+R+bdStg0V/jJZYC1xCuEaEZ1oi7I9X1C/gExzQGtZIHui1bSqUxKYdcbjGftFo0yYAYwte1FpT//A234yRJov43oHOqiiuoONJQP8MAiIq+8BbgvbGUSDmwFRGkzruYV5N7McqWiivrsDNPLlfhfuDhieVvcEKyLJZEZikuSFCZecinSNrDATllDpxpJEyM7swEOeenkAMl5fEbeaIlt/3w==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(366004)(136003)(396003)(39860400002)(376002)(451199018)(478600001)(66946007)(64756008)(66556008)(76116006)(41300700001)(8936002)(52536014)(316002)(5660300002)(6916009)(66476007)(4326008)(66446008)(6506007)(8676002)(186003)(26005)(71200400001)(7696005)(9686003)(38070700005)(33656002)(55016003)(122000001)(2906002)(38100700002)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?xYbmhfI3dQ5Qg3+G+VoX2KRoa4iauqqhk+XDpjQp/p0xYidhSWkITw3rxR6f?=
 =?us-ascii?Q?WzAUIcNsq3FUTrQ1E5IaeYpulFFP32NOavoU7W0AdhHupUjs9aHmRInVrtTu?=
 =?us-ascii?Q?LJiXSlC5b5ZZrx1c2kYvAam+l8oFVTLW8qgBiDTkOF0xxiykxkpE7LJ2Bu3m?=
 =?us-ascii?Q?kq6m119Cg9BaN0lNeJapODSzGL9n0nsCk2KrqbFFQG1zhhhWeatahowp965b?=
 =?us-ascii?Q?ft/CuVN5WBw+h8L1sqo2SdixQg1U/3ifzjAOdH5ZbgZ5+3vuC4B5y9Mcnc7/?=
 =?us-ascii?Q?VnSBVale8bQWd4GGZG902DjOvqM9SbIk0y73KBZUiAULXKr4UmL161NkmhKT?=
 =?us-ascii?Q?8dTKTCZbe9bo+Md7MmSLwcJvf3p3n+B87PDBJgYgULu1n4vIT9fDlyGIKaF/?=
 =?us-ascii?Q?nPNf7HNwoNUdullz/WAu8wCdaZ+Mcog9hOkx4j5spQOlteE4iTbq9VZLdr8h?=
 =?us-ascii?Q?UEuA+KUrNeLd4mjnzARJxVjO7BMlV0l6wyPBjUJmcfoAjIVJzMc1qlIREpeF?=
 =?us-ascii?Q?uWmg6dQHGM6yXzfeJqeyLcUF1urrSSNo3Gy4vmyKCVYWclj/qcXR0XQM0Pwu?=
 =?us-ascii?Q?5qRljos/HYC4lQCkjuR9374qmTEJA6gu031/hwfqI21QFFu7X+NOx5p5jdEz?=
 =?us-ascii?Q?Jiq35TMKqL1lFjlD6DLIsHGvP3SPDDIQ+tu+4tHu/rsRXa4ekoXJ6sN04z4U?=
 =?us-ascii?Q?XOHItiM+WDB4hK2X3/9c952HZi/pvLQ/8Wbz12zq5u4UCysrPGTY3Kll3Buk?=
 =?us-ascii?Q?Nzn47C2IH4nqTw6dwdAiKtdaX2p46jseuyF5SfBCoyFgs2i0YICcydPXqHfp?=
 =?us-ascii?Q?8BDXrsbA/unMzCEdgnbYqRMKuGXaMc2WkTOB37Fz+h9aE4jqRfTPrW506/x/?=
 =?us-ascii?Q?S3PvO/YBg90alkjbmUmxndOk2nuak3CBIgF8kLFNYFs75t1jV064l6lId+XJ?=
 =?us-ascii?Q?KPqmDw51UqlPgoWhnzUyFTqyyFfEdlwMy3/GzuomZzsS1/NQ4yW4U/GmIulb?=
 =?us-ascii?Q?BftwByCu3AxBb27301u6I3i1uXmryTfmYNwozufT+DX4U3Hpp4IgLb0sqkW9?=
 =?us-ascii?Q?ydclSxY0vNLIrN7QErdEFC2EtXtHUZ47LMoqUqfq5swC/X1nkTQyrm3lCo2r?=
 =?us-ascii?Q?AtMeaye9ZXTU5JwTzmaKzEUAHZVce9BDVungE2l4RBjrGdIvBB9Gcx6wsZxy?=
 =?us-ascii?Q?ZEe0ygw1bNm0BsVIcb/kOHW0pqq+1f7oV6wohLBK+W+9+2RqjoZBVTROH9DO?=
 =?us-ascii?Q?5ykY89ET7XFSphlh63UgT0b62GhgdBkImoqHkA71Ppga9KLSVBBEddfZevlm?=
 =?us-ascii?Q?BWkahzdl1+JyqIxphmolij0i65UvigdreUIa+aV4PznvwTYACnqCKKTB8HjT?=
 =?us-ascii?Q?0Hl4iTRcgN7Xss3bo5IfJDd3LEzhDJOjcMtBmyb5cEoEcEMQcRy21C+xnwRw?=
 =?us-ascii?Q?S0QDbXq/Jjel19Mrzc2UCs0UQSTLqdfbQL08umAwnxDRrwqIiKrLVAa9uc/1?=
 =?us-ascii?Q?zZu/xhbjLkCF+5O7sKKeFHmEipI2JDkHry74XEdtq5k4kvO1Hua7pRL7eqoV?=
 =?us-ascii?Q?arwo7ZJg+pYo+cup/Sr2TdcaKxE918ALNIEcCsdbYL/8WSIPlO2MmNRImQJt?=
 =?us-ascii?Q?Nw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 322c4dd4-fc45-4374-d5e4-08db1670b372
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2023 14:09:10.5696
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 23Aqvd/gGv0mPNowwAG2SMgo+biLbY/IIbZS1xZIi+qqoj+tGnXTMaIOWgyDr8uhnzY8XhQ4L04s6jtDUkZ2fKfMjPv3EpMlNOyBME0VCuk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR07MB8982
X-Proofpoint-ORIG-GUID: g1vK5JIge746mY_rYLUMX43EIeOaSTe0
X-Proofpoint-GUID: g1vK5JIge746mY_rYLUMX43EIeOaSTe0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-24_08,2023-02-24_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 mlxscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 mlxlogscore=608 adultscore=0 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302240112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_060918_009410_3B6698E7 
X-CRM114-Status: GOOD (  21.89  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: Subject: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


> On Thu, Feb 23, 2023 at 01:58:46PM +0000, Renaud Barbier wrote:
> > diff --git a/arch/arm/lib32/pbl.c b/arch/arm/lib32/pbl.c new file mode
> > 100644 index 0000000000..f4be7b57dc
> > --- /dev/null
> > +++ b/arch/arm/lib32/pbl.c
> > @@ -0,0 +1,21 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +
> > +#include <asm/system.h>
> > +#include <clock.h>
> > +#include <common.h>
> > +
> > +void udelay(unsigned long us)
> > +{
> > +     unsigned long long ticks, cntfrq =3D get_cntfrq();
> > +     unsigned long long start =3D get_cntpct();
> > +
> > +     ticks =3D us * cntfrq + 999999;
> > +     do_div(ticks, 1000000);
> > +
> > +     while ((long)(start + ticks - get_cntpct()) > 0); }
> > +
> > +void mdelay(unsigned long ms)
> > +{
> > +     udelay(ms * 1000);
> > +}
>=20
> This will be compiled for every arm32 build, but the architected timer is=
 not
> generally available, only a small fraction of CPUs actually have it. I ju=
st tested
> this on a i.MX6 and it just answers with an illegal instruction abort whe=
n
> get_cntfrq() is called.
>=20
> We could name this arm_architected_timer_udelay() or similar.
>=20
> This change should be in a separate patch.
>=20
And then you would add a udelay/mdelay wrapper at the board or machine leve=
l?


