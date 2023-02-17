Delivery-date: Fri, 17 Feb 2023 16:23:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT2aV-00ADE0-MV
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 16:23:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT2aU-00085Q-9b
	for lore@pengutronix.de; Fri, 17 Feb 2023 16:23:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qhv1afaV9v/+kqm53dyjgtkKt1PEZv9Nb+6xf3FOCZ8=; b=Ugg++Cb+ZU6/JqK0VogPvdB5Ts
	5BzTXMuT26nuGiDqjUc3VWKJf+krlSUkYt+ETXac2LHFsmAN0T80zm+8sqduViAYZajnYkDjjKF82
	smLgOvOwikoCJdhBOfQJAmglFpxj8N/A2Z38coLyKeOobh89yHl9Y5eDJnqijHjYKhgVNnTHeuO6S
	EDUbec0ae+HrbPsTNqqxo3Y9l50eZ5meItK91hBi38C5g4V3/WLcj2azeVpEe4lldeuD+6+92nHVz
	qXquGgHeMvpxRNnyxC3VR9ScdmpCn0Rn4bKe92TEoQCZQQejl6KN0otvXbijq6p0PD6aDKsjC9HJv
	croHGkrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT2Z0-00EqrG-Px; Fri, 17 Feb 2023 15:22:19 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT2Yu-00Eqq3-Ru
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 15:22:15 +0000
Received: from pps.filterd (m0163886.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31HDa4T8002497;
	Fri, 17 Feb 2023 10:22:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=qhv1afaV9v/+kqm53dyjgtkKt1PEZv9Nb+6xf3FOCZ8=;
 b=egLu/IzsShBEQpqS51O5oelY/2z+omnCBdvPK5lt/TFoOpaLi6SjF2qoxbQ3Xwf/XsQ2
 kjH+Bnqhtmxl/jH3wwG/ne0z5XggDB8Ugx5+1bqyFD87F95fGXHvred49aFi/i09TKbe
 hymQck4EmCcZWtFIoLO3qRIpK6Y3y12Lk3DJF6tJ2thhdMlkMDbBcrDYv4l++Jts4lCg
 FGkH/IEsZPsWRIx/fJHurQlMPQcm/aW+SpNe+6MQ/VmdMeFOpqPurz8HN0mdK38Hj7uP
 +rjKY64Wq9CHTEq9Ay+5LteQA9ty+vouOg1Hp3WuY2MkP5ZlBvehyIpIY86tVar2cxGN 2A== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2044.outbound.protection.outlook.com [104.47.66.44])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3np644n6ew-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Feb 2023 10:22:06 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T7lrnnLZLMsBQvrEgEt/pDF0J0DW9lPAb+7pdewpbFQT9U3Hd6UTPhwY8BTpxw0ONQwm9jAPCdY3dsIYrZebOxec2N4zMIOBRdcBCCWc1TOBSSkftDEWsdxhDKe9U5PCau1IZAk3qhRxkJ6BHxma4vvwbfNHOrtw7o6L9A8ewcN4HiJ43eYnCUJcBAD41rmL4OdY/Y/YBTuASufdYCfqvpNWKNLRxihOC9wRzPJzHxAt98CLOnVkh1+q3Odu5hMoJ06jKSlfOc6leHlAz12ZLqXo/Jbise+4yTWmaIUqhMvAeFG5Redp3DEYtWizRUtU1ztV4uvKcdTcbY2DopGT5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qhv1afaV9v/+kqm53dyjgtkKt1PEZv9Nb+6xf3FOCZ8=;
 b=C00CSuiOgtGrPVKBdJr5AG+Y/gJvY7x9k16V/UkCiJ784GoEulIPKOQK9yMzM4BZ9TihwJPNC5ZuAwI1OSD3dezx+si1MtNzhDYKiPPN9qBW6bv/FKzgdst/IEhUYEQ5x2ITiwlBdofBQRRZRXK+j/PRxvcQl9IXmq2eItUAb9R6hMvZuia82O0QkSgEXUZjL6x8mdXKTtKqtWjlvpLIJLG28lGTeHsduAlIS8XztAVx6FsL5SmXgRec33foMHtEQ0z/k6NkoQI8x300yY/Yqqebc3jMm5gJ0bqqM4ozAEqlUZbF/+YX3TTRQ8Hc0bp+IvmQMSkSbne0Y6YAU5EUqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qhv1afaV9v/+kqm53dyjgtkKt1PEZv9Nb+6xf3FOCZ8=;
 b=3zk5b3lL+M3vyQXaXJ+8Ounc9CUq+/R9ZsXSocEUSZdJFKgB18wphek94K1ftyiUa6f7rk50KXBPliG+nVwFJT+tyjGktNeg28olhScq8psI+l2QldP34gc6g2PSF3wUse7vLEsPd3UsUl+mfzXM8Z7S+9ai1vvjg4wSSqeCxSA=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by BN6PR07MB3492.namprd07.prod.outlook.com (2603:10b6:405:6c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Fri, 17 Feb
 2023 15:22:04 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6111.013; Fri, 17 Feb 2023
 15:22:04 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Sascha Hauer <sha@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
Thread-Index:  Adk7wNf9VK5kFY61TROWRHlLMdbVRwBiZWcAASvyx6AAAuYuAAACHXTQAClAqIAAC/oXAA==
Date: Fri, 17 Feb 2023 15:22:04 +0000
Message-ID:  <BL0PR07MB5665BD8EF62784E9C8017142ECA19@BL0PR07MB5665.namprd07.prod.outlook.com>
References:  <BL0PR07MB5665C75B684154A56F54D498ECD89@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230210122306.GX10447@pengutronix.de>
 <BL0PR07MB5665285FB23BBC620897BABEECA09@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230216125434.GN10447@pengutronix.de>
 <BL0PR07MB56657046F95666F3464A4BB8ECA09@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230217093619.GP10447@pengutronix.de>
In-Reply-To: <20230217093619.GP10447@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|BN6PR07MB3492:EE_
x-ms-office365-filtering-correlation-id: ab287f85-4583-4d61-cfd7-08db10fab97c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  N9iN0tsKCB92iHgHN5SvCr6X4EVo3fyDj5p47OTNMcW5esYGRN4I4DfmBF4bG9B9d5lBxcmuwXlyobA1VYrraVZ6ToTvIsyq3HIf7+0uwNg1yj8CenU7/sqgFJJy0/8MHLtAep01IZQ7rAEG7DIACjk4+lrWdktLHshUR60WN8jb5eGaT6M4mEa0RbmupfuKVTd3mjEQyVRR94BJjN1rZK25h8P1K11Mxgx3cSn/WnPwskFSrQLBukxoYWxOlrpzpE9pVnoXcJC12uW/D2fVg9RFAK6xHM+oPrbKAJQGpgJvcDHaE5sfBRhM6APYVDmjxxMmUd3EijgvY8JyrEL62RdvzOClAQSgLREd6wM2Gno8gZngOYO/oxoHqFOOvgQ/oONaUnhnzLZeDug/PLZo+zS5yL859KN9eWIwAZ88K7dFPSjgeMr08PYtgWGpMuG5tzE1N3Gy3CbIkJV98BNSIZjbEWFxLhRL6STlvH8HB4oRzd45b0/d8VrAsJ3Rk4Tl5S2rvyw8ze0ZlfdL9XYiEmR/wo3M49cS/x64waBnm2EcnaCKn0sV4dw8CuZVN8c4qJI0yCvImFIEpbs+BVWbJwV3YGRG+/HgWcy7SPlaaMlMlxcvxJcj5crI8jMKEGApb15UbRtpC8Afw/frJmWBIOL/RILCzmbJ/xb5lVxCU26nyyLqbbFT5dZJ06PkA7bNDzSG/1J1pd1MFeMqUxn1Xg==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(346002)(366004)(136003)(396003)(376002)(451199018)(41300700001)(4326008)(66946007)(6916009)(316002)(66446008)(64756008)(76116006)(71200400001)(8676002)(86362001)(33656002)(66476007)(66556008)(38100700002)(122000001)(38070700005)(186003)(26005)(478600001)(7696005)(9686003)(52536014)(2906002)(5660300002)(8936002)(55016003)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?NeGno6BrBqBNxEn1pr8qLm89p0ws3nWwxFel3eCGic2UUpo5LM09k1yrBs6Q?=
 =?us-ascii?Q?MQyzfjorHS33BOsTjJN/L8aK0NnYi71i0x7gXT9vkGXPu/J+AJT9fJ4C88yq?=
 =?us-ascii?Q?XZs2OltNLTr3cR7GS7Dre1QsRoI2kvFLG8bV8jxXEOpD5EbedYwTn47lG0ks?=
 =?us-ascii?Q?2+koGSPnHEiU2VRvoMPk5VV6ZqD0eyCUx6itK2ZIDZi66jh9B84G+k/DeGT5?=
 =?us-ascii?Q?0Y7gLhF9hCObV9a1OBCQh0Ct5OgcZBf6oDTbAGdjM+Jwb09mXIoNugrfIz29?=
 =?us-ascii?Q?EALZMwUpVbyUy39nFm5FXQC4Z2wioKHqOblRpiIB05qAeZnIbbgEa5Lktuyf?=
 =?us-ascii?Q?6Rf/hPlkiKMbRHoT2y7IAqNOH40Fdm6sG4lzktKHKXGc8wEsXCI1nhGJOAFX?=
 =?us-ascii?Q?IpmrIXSEs8rra472dcLbMdt663AEEyga4WWCB1QPR45FvvuljgDEDRInigEN?=
 =?us-ascii?Q?nM9vRWsEWyXL5JO10uRaPP6S09mpyi2/mFJayJfU6pOCjmPFnndL24UIjRwn?=
 =?us-ascii?Q?Zn94uiIKzO+DMWifatW0vTdNvGO+rotXWZqWjndtgGXPlziR5p6ymX6Jpvxk?=
 =?us-ascii?Q?bthsS3cIYKots5vVOwGy0tr3tcgn8WznvPk+l9SmKMh/vcosm8RS1qbNxbvk?=
 =?us-ascii?Q?qpMdTvYXYZ7DJN5Q8cSzDQVYq+hX5Mo/vd9lMZ6/rwOst4D0LBynxGt5SRpW?=
 =?us-ascii?Q?ig8E/GWxoXszg70AaiedDhV9vCR+CKXKBUTz+jq2L4QqQzG94Qn8HB2IRQfh?=
 =?us-ascii?Q?YugIvYNrUITUNwh2VsKO3o44gL8TxZYEFD2LQyMLGcdCmn5CFGz0QJBm9wKj?=
 =?us-ascii?Q?lqdxVjsn6t4DEcf0JwH6psCu8WE8mSvZq39apGCwSsDVBWRYoQsx0vvBmkyV?=
 =?us-ascii?Q?FfDBQhp2ud1B3aPKdX/zZs4BcNTsTVHRktX9yvicWKRQIUnVQKu3oe77FW5k?=
 =?us-ascii?Q?Ra9uO0IsrwmxtSSPsszwjKPWxm+noL4ZyI227ZNMu/+93ibjA+ks4u9A5Y1T?=
 =?us-ascii?Q?BxVkEVsRJ8KIapWnQye7glIMuJLmIJTXTT4l0XzNUvq899gU6EwvqijG0K8k?=
 =?us-ascii?Q?0zqENjBjUOufB7dJK0qxIfzNHlFwGkQVxnA81C011VtqaWfWMbt46oFP9Idb?=
 =?us-ascii?Q?Pd+hmF/p43KQ3nPzRn/vztCgg7Oggsm0tJA+Xl29C0JVmjuIawDxVWxnojrx?=
 =?us-ascii?Q?BzFbp5XrIrEi+/lgkMqYyeUtpqSS3OZQYQtNgmgPUpOELwopEiYQc1pJ+lRn?=
 =?us-ascii?Q?oDPEy9OATiGvEfhLBeXd3RfhlU5rZ9Fnh3fDYl9Bs0tgCFhJHoGJUPENQLvs?=
 =?us-ascii?Q?rwRMCRZZd3TATUCSBafgQg6JD0vEmxPIPKl//k4K/hAZCurPQ12PCg3gMHcR?=
 =?us-ascii?Q?JRdWWR/aBdx13cFURF/8Zm9fJ0vdwY8Pa4qbEechRUkXLyQtnjKubXvu0TW0?=
 =?us-ascii?Q?ZVZ8UmciDKK4dru5XWzar6w/3na+aEt62Fl8GgcD+yDYUHiNmcNozsVf89EP?=
 =?us-ascii?Q?g6O7rYjH/pSl+4s4/8Y/L0mWGxOZei1Gw/3lRChZSXMrWxLIDW/ItrcbuSNY?=
 =?us-ascii?Q?UBGSo0j/l/guKXm/243zDN01FTkdQPmTu5rH6VpN?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab287f85-4583-4d61-cfd7-08db10fab97c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2023 15:22:04.2733
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EAy7CtnmzKgtzuQXPGj+1TVXQ4Qx8qW6wvhlknOv2eEqJoQzzZXRwgisWXCVJn+erkBTa5ZWe7bEcz/VOEMqDIccVcdLqqoqmEXicAf098A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR07MB3492
X-Proofpoint-GUID: 3HNsASyeR7Q9LXuufXN43Yltds7SsODg
X-Proofpoint-ORIG-GUID: 3HNsASyeR7Q9LXuufXN43Yltds7SsODg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-17_10,2023-02-17_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1015
 spamscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 bulkscore=0 phishscore=0 suspectscore=0
 mlxlogscore=838 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302170139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_072213_773168_676E3FDB 
X-CRM114-Status: GOOD (  19.57  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

 > Indeed,
> > barebox@LS1021A-IOT Board:/ miitool -v
> > mdio0-phy00: 2d24000.mdio@2d24000.of: no link
> >   product info: Generic PHY (vendor 00:00:00, model 0 rev 0)
> >   basic mode:   autonegotiation enabled
> >   basic status: no link
> >   capabilities:
> >   advertising:
> > mdio0-phy01: 2d24000.mdio@2d24000.of: negotiated 100baseTx-FD, link
> ok
> >   product info: Generic PHY (vendor 00:13:74, model 7 rev 4)
> >   basic mode:   autonegotiation enabled
> >   basic status: autonegotiation complete, link ok
> >   capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
> >   advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
> >   link partner: 1000baseT-FD 1000baseT-HD 100baseTx-FD 100baseTx-HD
> > 10baseT-FD 10baseT-HD flow-control
> > mdio0-phy03: 2d24000.mdio@2d24000.of: negotiated 100baseTx-FD, link
> ok
> >   product info: Generic PHY (vendor 00:13:74, model 7 rev 4)
> >   basic mode:   autonegotiation enabled
> >   basic status: autonegotiation complete, link ok
> >   capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
> >   advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
> >   link partner: 1000baseT-FD 1000baseT-HD 100baseTx-FD 100baseTx-HD
> > 10baseT-FD 10baseT-HD flow-control
>=20
> I have no idea what goes wrong here.
>=20
> Some things to dig further:
>=20
> A phy is registered in phy_register_device(). The call to register_device=
() in
> that function will end up in mdio_bus_match(). You could add some
> debugging there to see which phy ids are matched against each other.
>=20
> An idea is that the at803x driver is not yet registered by the time
> phy_device_connect() is called, but I don't see how this could happen.

Ok. I have registered the mdio driver from the Ethernet device probe functi=
on with platform_driver_register (like the ls1046a).
Now the Atheros driver isregistered first prior to probing the mdiobus. I g=
ot a crash but I shall figure out.

Thanks.


