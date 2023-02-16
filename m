Delivery-date: Thu, 16 Feb 2023 12:55:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pScrj-009J16-CA
	for lore@lore.pengutronix.de; Thu, 16 Feb 2023 12:55:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pScrg-00017u-J5
	for lore@pengutronix.de; Thu, 16 Feb 2023 12:55:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6jLrvsSkuWOmQObeOJJnmHX44vmxFA2o8hMsU822vhI=; b=zE5HyMg1c+LbsgQOEfZaVdT/Ox
	hNLtUCcU+e3fLSACjfmrKc5BwXpIjqAoF19ixr2V3y27wCqm+LbWQGQMxSsFT/tz2mwCHtzwLtRiI
	pvAhIvKecs5Y3RDmE3XuPD1K1SjWUb2spz32ObbyT0zaf/uKgQ98+H2/NmKfzJ0IAkB2kjghTyd3F
	v8Chbs59V7WZIeX46XTFwhvHsk0KtiZDQQAGJp+wdwEzvFXJWyUmwVTESqj6VQKWWmYgbKFB9IQMY
	snhM1lz7Dp0oqxhmqfGCZKpF3AwXjjLwKAu4eSWB2TsJtV1SB7f0sB0HYim7YsrYPJ4/iu2hrFdz3
	XCDSoyPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pScqK-00A2mn-0F; Thu, 16 Feb 2023 11:54:28 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pScqD-00A2kU-PL
	for barebox@lists.infradead.org; Thu, 16 Feb 2023 11:54:23 +0000
Received: from pps.filterd (m0163884.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31GART3V011518;
	Thu, 16 Feb 2023 06:54:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=6jLrvsSkuWOmQObeOJJnmHX44vmxFA2o8hMsU822vhI=;
 b=ZFI9KIS0EgdXEVQaxZMh5mGoHD2oeVBmsCCy3ZOYrgNQtN34JBIJR2OPUgUvz86POJId
 gvEnUKZlmWU9raB2VuACZogT3BoXqoLrMO8cLgzqZtA8VpTxfGkl84SD3WNuLAbSOT0X
 A3nf3ioFZC299eI8LuiaoMsTb+RxYyRrdu9fA7Sdc+KSPvOIrhYxIawSmQMkHnIupPFw
 X3d0apIHjMkDmV0HJFtt1yrHsgOHCdKV1U2g7snjmIF8N/77Xlh6InUmdlmA54ry0CS1
 WkdN0Pi9B7oIyDumgFMjbUtThg6nMHI0+FUpTp2RZq4e0uE+RQ1SFY1bCsxI9kKsyxpo Og== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2046.outbound.protection.outlook.com [104.47.66.46])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3np5ss7sn8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Feb 2023 06:54:18 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D52flMIC4FeL6ViaZdt8cqOuLeDwuCVkKzVTvL2PWyluJoft3naE/ibF1W5Fi5FVW0RyxuxH5oC1zTXtQyo1uhnjpyo51IOFyYP9Ymg4eW8Np2u4Vy9y6HIguhuxGigjcITueJNwszvCbFoCKtl4BkG7PvCWz3dBdPbVJh+8+7DopyzPkiyoalLLHKcAyCyC6S3pZiMO3jPlTaco2z5+WTYYi0/KTUBUm04WbNVO8bbh2Rrw/P90TdV+zrwRKulIJJfdmdBvsgB4GMyBM7hjy0MYtb+IGcXHS167M8mt6H+O72H7fjODENgHumiL5mC18ZrMTIe/ZK6zZtXWOKXyyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6jLrvsSkuWOmQObeOJJnmHX44vmxFA2o8hMsU822vhI=;
 b=LbIdg3oRTPwryZxTmI3vo28AGwXvASoyrtZm2pkQSrWZasR58VgRD+tnMTiWJHs+ugDon6xTEtTvVQuyVx6mjL895IyWqNrXyKjJP7Kzq/OnDm4/YQGx/E9+PtOfg1Ag2ukxny9BEB7MfWTbqW2H+EyLcmwiv6xSw1MxPqdnO93vB+RuWCZmliiKocvs9bOLkmaq80wKIeo7syN3qbagsI381uCP0M7W51ft2lwXOXDnVsCq6J82eKlmVB6wswhiotbhBGNUOj+VRVV/491rZiF/9+3gf8iSTFUmUHtE+IQB5pEnyYoFx5GJrglaeL6ET276zU5pqgInXK1scguPSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6jLrvsSkuWOmQObeOJJnmHX44vmxFA2o8hMsU822vhI=;
 b=0mIMmBwL2TpeeI+X3aNsoCRthYSSQLKEu3ZizHFTJ2XEUOQHn5AMGF1+RtchN83xISOqMArw2/yJwZ8gOAhoqpAmDLsTUvtgfUizKyL5OPT7yNESyfB/kUJDN2GotH74qUJNstmlBRmP8EF/ID4u9jBckbqd301rfTBsQxw7Dso=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by BYAPR07MB5429.namprd07.prod.outlook.com (2603:10b6:a03:5a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.22; Thu, 16 Feb
 2023 11:54:15 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6111.013; Thu, 16 Feb 2023
 11:54:14 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Sascha Hauer <sha@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
Thread-Index: Adk7wNf9VK5kFY61TROWRHlLMdbVRwBiZWcAASvyx6A=
Date: Thu, 16 Feb 2023 11:54:14 +0000
Message-ID:  <BL0PR07MB5665285FB23BBC620897BABEECA09@BL0PR07MB5665.namprd07.prod.outlook.com>
References:  <BL0PR07MB5665C75B684154A56F54D498ECD89@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230210122306.GX10447@pengutronix.de>
In-Reply-To: <20230210122306.GX10447@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|BYAPR07MB5429:EE_
x-ms-office365-filtering-correlation-id: d8651aed-6ff2-4d05-59e6-08db101486aa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  qPhw/jqo/fmimqk/Jeol+58QnWwZeudqIuxv4DZEKvOgBP7/CeWkDaMZ8m3pX9FS7U5cjlFpfhYJ8SCR7A+h+hPU3BkzV0/GqHFmOdZKzH2kuh561uePiSGdZMl+i/so7yLSUsZiCTU+ifYxezCKj5oHMsuNhlN7nD5QhOZrigP6HozpuJ+QRWYHsYgvCf3tS88SlPJZKT0JpcCOiqoxc8RsWF1Se+tB35Rqq4VC4kqsM9PJ4NlfcCxGXWk97FsorStiA7MHvp6e3kswLMVKdF/qLkDzMgG2gsrPyQ7GxqUkjfV/Sf0UJH3kxJIwxyDA+I7cMm5mYAvnMKLJXkcLriSMZkSv0wB2i+AxAKxpF01jmUdfr76yujkh7hzt4Cpc7ugNYXK8jR7kVanAAPW9VWRKZnMpamt4Vc5DijDMl+N97G5sGnHJUv0b3uHk9fBj/2iAjN5O27mTWwCao3+BHeuMIgbozWxHTbfrGlRff12YykmStGB3/ggR2Jb5d4c81RY7jLJhQdYJaJ2aP1BfLZ2s6DDPZDeANT2ERshyF4DFRi8QhUR2O4EA8s/jMAatOeZxjTRKc94xIkGMmkcfXEerx6Yzgzyl0PCuR5UQdtXHbp93kMfoYuOjwfb7pdR4hflDUodzhtADr+31SzrkYq6wO6knL4vAKCWK/eY+VndmTpOP+ar8hQ2vJWcWcQHK5OMcii2pZN/HA7KVKfl2OQ==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(346002)(39860400002)(366004)(376002)(396003)(451199018)(186003)(26005)(5660300002)(478600001)(7696005)(71200400001)(9686003)(38070700005)(6506007)(86362001)(38100700002)(6916009)(66446008)(55016003)(33656002)(122000001)(41300700001)(66946007)(8936002)(64756008)(52536014)(66476007)(4326008)(66556008)(2906002)(8676002)(316002)(76116006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?/9gTL1X7kxHRHQRlxrXAue5MwCJgPazqXI38uiSu/Wt+j5wi+E0DLTvOu9VM?=
 =?us-ascii?Q?A3AmJ0VMc3j+P7DxN1ddDGbuRX+vyu/i7NuCkRMbhIQMUZrrRFLPUMg6ojMM?=
 =?us-ascii?Q?fCiaqDrWk+2nYV7SgXAeKVIIYGCM6nzRelx9U0STFeacqwutSJ/w/jFAhacL?=
 =?us-ascii?Q?kglcKDEzEnCXXXCZCG8MbLeKxGDiOH35S/AI2g5PWPwIfOb3DSuFKn+ypizw?=
 =?us-ascii?Q?Z5ZAYNH5cl+fInS3hQjQgbaFtxx20vZfONCI+kTNbR/ZV5kpP+XLoRaqDa49?=
 =?us-ascii?Q?tM5QGi3/K4SppItGT/eKkJz3omfKgtsA0VIktSWAa+0dVg86G8omkG9kM8di?=
 =?us-ascii?Q?YHi8V96nRNsUcSd0+Xp2ZHy9dZeXHdZbBWCvaCZiGh00BBwdFHmlFFldc4+a?=
 =?us-ascii?Q?fJVNISHW3dYEqMFc0jF8qfqPVLP1I26PnUEgYWljRoDY3TkDIm6cNGq0vhZK?=
 =?us-ascii?Q?E3a9NXWTgag4fc8ElaTDT6fVJXwfaouNtc/zXqFUKaBdMYVH4WQBAl/X7RAz?=
 =?us-ascii?Q?7Tl5LgwS8NF4wQPWtcORYetM59Qy5BfhidrmtGl7JSPRcXgKLjcYM14+BXLe?=
 =?us-ascii?Q?5vnVygMbZlt0K+HExUgSVASOg2rEbsWvo0cUNXyRgzU/5Io1J00shYQZByyE?=
 =?us-ascii?Q?dS2RnSnPW6ZtWctG+Kcepfxy0HjkkOjZSOZG7YYGE7tfPtNGZg/pCv7xGzNP?=
 =?us-ascii?Q?0L6SulxA3eHrvFri6mhKxaJh87PbG/6PdwJW7zgqV1VKq+l3rRtdMrZG33s4?=
 =?us-ascii?Q?DdpPe4KawUiEQp08xiNpVV5uOfpLeIEXQTR0S/YjoUsjxszoAjgJtfyv6bG/?=
 =?us-ascii?Q?nlHYGBHBmFP3E4dgHQa8NlcZQfzMbXdlQSjvRFQ49IcspMG8YBWbGBPmLO3r?=
 =?us-ascii?Q?t/zFgaQBhMRfvhzOUA9ikqfyDg/Q4NnjQT5Z5ZVnQjMGKN67ju5BG+878Fcc?=
 =?us-ascii?Q?JhZDHw0Od0bTltl7sZsIBK9XHaiiDhN5LdHll+NYHRpfinSdTQ8JUWVXerwx?=
 =?us-ascii?Q?giOKYN68GDDYR7+OUbi87SD2U/FHQBMTcmtMRbWFTuuHr/uzq0dIyuux4LmG?=
 =?us-ascii?Q?EXCkQ+oFA0fGXLOTgx9NFzMgR6my5JMMXANOgADTk8YP1BiSKJA2o7MfImNJ?=
 =?us-ascii?Q?44phN+VnQ2N35LpdxffP6yAJ0Jk/p7xKGXlg9lfaxWNcdO0b1Ka7KZVfk6UW?=
 =?us-ascii?Q?LghNcCEw5iPJzB20JHrA7Ndu7dj4PlmBJ8qIG2qNtCBgvVOiPr0l9BkItl4v?=
 =?us-ascii?Q?KelzM0X2DcjA7Riw6hk2p338SmGmR5wKdqUz1qRf1OLPWD+xW56ZdVZDJdU0?=
 =?us-ascii?Q?1deu6SLT7uQhNjRY/0VNwJ6qpWJfGrB5wOlozmqzvx71HzcJHMPW8xC9vMFk?=
 =?us-ascii?Q?lEFgpgxb91019tV0kikE1zZI0QksvmyHcC/w6JZJnVqNnxPt1sMYpQeg/CGf?=
 =?us-ascii?Q?b7PqgyNBne53aDHgJVAdWbDKHeJHNOc6Tnw0JHE643curIwDS0DVcLZEoOk7?=
 =?us-ascii?Q?FdpWIo2hluoj+ITePI3DY1aGhnG9fgr46kq5R2tT+OerZqqlkYVJgj8Bbo7d?=
 =?us-ascii?Q?16gHVuPk10Kyy3q/ycyA2yvA/whN18nko6UFzKx0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8651aed-6ff2-4d05-59e6-08db101486aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2023 11:54:14.7289
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qEvU7Jn5jSlO38j52hEaipNUOIxiOPJCnNxRjRVl88sla+TObvuxxLNuK0+8Ea4p3YasxNSkE5c/hCUVefnOp9kP5szKG3Xzhmj7JIssmiw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR07MB5429
X-Proofpoint-GUID: hU4qaP7mq6R8lAuBIcYNg_mpTgcCELyq
X-Proofpoint-ORIG-GUID: hU4qaP7mq6R8lAuBIcYNg_mpTgcCELyq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-16_08,2023-02-16_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=988
 suspectscore=0 mlxscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302160101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_035422_486351_6778D924 
X-CRM114-Status: GOOD (  20.84  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



> > +
> > +/* Currently 1000FD is not working. Below is a bit of guess work
> > + * from reading MMD3/MMD7 of the AR8033  */ static int
> > +phy_fixup(struct phy_device *phydev) {
> > +     unsigned short val;
> > +     int advertise =3D SUPPORTED_1000baseT_Full |
> > +SUPPORTED_1000baseT_Half;
> > +
> > +     phydev->advertising &=3D ~advertise;
> > +
> > +     /* Ar8031 phy SmartEEE feature cause link status generates glitch=
,
> > +      * which cause ethernet link down/up issue, so disable SmartEEE
> > +      */
> > +     phy_write(phydev, 0xd, 0x3);
> > +     phy_write(phydev, 0xe, 0x805d);
> > +     phy_write(phydev, 0xd, 0x4003);
> > +     val =3D phy_read(phydev, 0xe);
> > +     val &=3D ~(0x1 << 8);
> > +     phy_write(phydev, 0xe, val);
> > +
> > +     /* Use XTAL */
> > +     phy_write(phydev, 0xd, 0x7);
> > +     phy_write(phydev, 0xe, 0x8016);
> > +     phy_write(phydev, 0xd, 0x4007);
> > +     val =3D phy_read(phydev, 0xe);
> > +     val &=3D 0xffe3;
> > +     phy_write(phydev, 0xe, val);
> > +
> > +     return 0;
> > +}
>=20
> We have a phy driver for the AR8033. Can you use it instead of putting th=
is
> into board code?

Hello I have enabled the at803x driver to support the AR8031. However, only=
 the generic PHY driver config_init get called.
phy_driver_register: 00000000
register generic for: Generic PHY, 0xffffffff
phy_driver_register: bbe15d54
register specific for: Atheros 8035 ethernet, 0x4dd072
phy_driver_register: bbe15d54
register specific for: Atheros 8030 ethernet, 0x4dd076
phy_driver_register: bbe15d54
register specific for: Atheros 8031 ethernet, 0x4dd074

call phy_init_hw
call config_init for: Generic PHY, 0xffffffff

I do not understand how to connect the AR802x phy driver to the device. Do =
I need to add something to the device tree?

barebox@LS1021A-IOT Board:/ md -w -s /dev/mdio0-phy03
00000000: 1000 796d 004d d074





