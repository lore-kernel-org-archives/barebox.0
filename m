Delivery-date: Fri, 17 Feb 2023 14:46:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT141-00A9sg-LX
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 14:46:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT13z-0008N1-OD
	for lore@pengutronix.de; Fri, 17 Feb 2023 14:46:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pQaNRcjYRTTrho9KGpSh4MoirgbFWfEx2JDMxfCHW7Q=; b=1DVViogltSeasM5aSkHup5AGYG
	waX6zRYydnFKwBI5mB4EIjmy9idfFwym6022YrEgaE5FlEKKmta+fB+Y2HkotDm7CKEImDdVKMaig
	+IuoQ14wgwnUhbR+/KZ/vM3jAjFjmL+LEZqyZ/DFY5v7p2CbQTQJrE10Y4z2weMF7Fc3wLpmiIJpM
	qnfVRj5wyHGeQ/GJx9d4jvMZsPjX2PBv1SzHKoyzvNQidGwQYjezI9v8rBNiwrFk/GoEIORtTgnG/
	Uo887Ia+Ww6VUWROokOtnB9tmAu2eZ9IH5/D0hDGZhZ39q9JN2CtCF2/lwNK2kmqvK1/OEdYffXcN
	8B09/48A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT12Z-00ENr2-2b; Fri, 17 Feb 2023 13:44:43 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT12Q-00ENmx-OM
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 13:44:37 +0000
Received: from pps.filterd (m0163884.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31HDfp8C022766;
	Fri, 17 Feb 2023 08:44:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=pQaNRcjYRTTrho9KGpSh4MoirgbFWfEx2JDMxfCHW7Q=;
 b=fFt4EFWOS/6DGiYKu2hc3GNaGN1YHc5yfHu57bmFSUzgJ4/kkEZxZIjXVKBQ/ZWF0cvJ
 cfVtHUErMR+1nkFPSt1kwvIBaESJP3+bOJkv2cfGyFhHWftXqpDpWhlqWbkT50RypDdh
 fXYxMLDAnMI8TKw3t1jUAqnvBiNrmGFcs2WFlIRdPjykuM6i4HnIUovQFfoJ+P8kCvsm
 0SgPkOaOnIlxCYLtbfG9cpCaAyLVsp8I/EW020hJ3Ij1mgX61ovSzSVQtDnb+/9KUzaB
 dhoo2a4H25ya8or/s5Phml7b2Z23S6+T1jQcVo33+wDYpiaCLlVct0hTHalFduDzYWIN Sg== 
Received: from nam04-dm6-obe.outbound.protection.outlook.com (mail-dm6nam04lp2044.outbound.protection.outlook.com [104.47.73.44])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3np5ssbw7g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Feb 2023 08:44:28 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f/eB1eKA8Fmz7eb0NBtYhakC/0X/5FFlKjmZMkO9rlkZD69K2l5dSXe/djoRqtx5uvBarFHsPQ60t3T46U0TcPFH4z2gYDSj77hEVHvJ0qrd/9JXa0B80sliwfR5Zk5NYpnIJxUcrqO9WLZ7r2V3wbryqcQHhdzh7z+DKA1Bjd7Wc0NC/yG9xdJ71cfrTohVl4eCyW7q1IEBcpK2dbYoL52USV1rDpQogMhnXGq75NfI3gd4NLf4W+OsA0Un2ZOVyn+8ynzP1OLRYZIiQpxWeZ36Mk9peH0d3vIzVDi/bXvHG70fJ12plBJDp/OOIaq9Sbs7WdHnYJJNc3X0wpfe9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pQaNRcjYRTTrho9KGpSh4MoirgbFWfEx2JDMxfCHW7Q=;
 b=ZypcOjUfWTH7oJ8+LJ0D09y9o+7ZNduBYW0RGm6xWDnIzympw6Kvk4u5jhYs3qS6EErlmNdPlwzTXrBB5GR6g2xXoxiSG7bC2GczsVWwRgSj3boedP1M1ZB/yFMpoqplZKGP7jtHFUJtUV/Cwht/gZbts49g7XiiGOtlKf9Yvza1ylARY2D5oJbiQYZXOBYf1O2spAYPuMQA0X10mEnJ73aQ8zvV0qsPHdCx2ugcg7CgYVN59+5hJQIUSKrSq56VZk3FBhT/aTXey7JaV2uuM4HQk1FVMsRl6R2sTobv3VfY9aVdTS34IkvrsiPnnKF5woDW5TncNGQzqjsVb0zCMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pQaNRcjYRTTrho9KGpSh4MoirgbFWfEx2JDMxfCHW7Q=;
 b=o31u0F5oUb3VXYTLx8jJw/P3PdfMS3I6wqk9ZMGCCxv9rOJVCE+TzuQV4avOcZfbVmjPUHURbMkDGq4Y9VkiFu+QZH70eDgaYXBX5yoWhG5oQ3tidUCLsdr5nFOl+5tKl10tiGytgGgUu/re/AQSytlrgonHClsvGVV1Sln2usk=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by BL0PR07MB7876.namprd07.prod.outlook.com (2603:10b6:207:1c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.13; Fri, 17 Feb
 2023 13:44:26 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6111.013; Fri, 17 Feb 2023
 13:44:26 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Sascha Hauer <sha@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
Thread-Index:  Adk7wNf9VK5kFY61TROWRHlLMdbVRwBiZWcAASvyx6AAAuYuAAACHXTQAClAqIAAB2UEEA==
Date: Fri, 17 Feb 2023 13:44:25 +0000
Message-ID:  <BL0PR07MB5665182C6ACFFFB3B4AB456AECA19@BL0PR07MB5665.namprd07.prod.outlook.com>
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
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|BL0PR07MB7876:EE_
x-ms-office365-filtering-correlation-id: 1d5de827-cd22-4775-400a-08db10ed15ba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  By8v9QtiJMs8IbPXJ4o4a4QOpPBIKNxuQe3GBtjhdEsegAzfpMWABibjJGTTqlpJ5SfMJnpULO6oWBdkmhblIa/9VN01deU1ZGQoWgxDefC2spBdc2gsRxbo/cguMTIM2ZK2dGWJWOIOpwSsIA8lJxJJSaOXAKLjeHkNpkOb7a09j/VTxEHt6x64cRFWpIUm3Q4PtJYlE9chwy8kSDfxSD3bnBVPs+3NJxK42n/LKA5IJO17EGmYSfhtSthoDj2hEPxBmGYaFMEC9l36HetKTaRSG7g9d+FwoSBfQ2c2SVCgomHcUk4bauHqzOXlR8TWW+Ja8f06vN7UvrlIyj9ndTuAGAYeGKtXmsf0UQBPZJsgEYz1fayZgJ/Z+syEtUib/mAnK4drgqN0dQVKe41mI9S7shvVTxNZItcnx92dmKH1dNkdAiqRJ55q3aZakIF8AIi+nbFoJT4L627ggcl5CaXq6IeHjLhmGywwuxtK3wSi+xv34/UyvPI08efO/C+sepirIgETrXQLLaPD4iylIHbe7leciHsudtRkrcwDLji68eg0UCd7VVtxls58XwNd8fff0EMkeeQ3wRNz4vXC7peqkDRqTZkloQeA3GQemGliogpaOUHuf7b7gfMfRx23djvY+Ivxo66hpAyKSC364QroLoCo14LNNeBQVzBAvkWcvpJQTKwsdsNjC/7wwEQJiYuD6YtxG3RXLq2G+M9AXw==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(366004)(396003)(376002)(136003)(39860400002)(451199018)(122000001)(7696005)(86362001)(33656002)(6506007)(9686003)(26005)(186003)(71200400001)(55016003)(478600001)(38100700002)(8936002)(316002)(52536014)(2906002)(6916009)(41300700001)(8676002)(4326008)(5660300002)(38070700005)(66946007)(66556008)(76116006)(66476007)(64756008)(66446008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?rhtGpDTLynzQ0xhMgYtR92UT08EyuOgTYd/xvJ/Gq7n1ncS1HoC3VChd1MaV?=
 =?us-ascii?Q?ou1diDQPeKsP5Iu3BPe1uSDpdrNM3TI+eOBpAo74ngtIDFgMyXvwaCTBREk8?=
 =?us-ascii?Q?xgj+ZNGvr027DC5pKLf8eVRNwj38kZaGIKksy21f0aTbuJSQ341qgVOOsBUF?=
 =?us-ascii?Q?o3a09cOK7wUWmmmemtXHyiLWRBQTmA5DpNbEE+zcV4awMnliE3LNmCt+t0/u?=
 =?us-ascii?Q?Yt8auAjE+En6EDAXXWod/MH1nF7r5y16xigT3LsfS3Pebv2PM33j5NRKS70S?=
 =?us-ascii?Q?MOXS2QZWo8lnjhiJtEjFWMQI5VPF/1x2zhqIS2Ku1RAKDWap76ckXcywlhS5?=
 =?us-ascii?Q?OdKwkZcEqH6dkIrYwhMTD+OZz1IpDK6gYbS9LxSNvD7q1pEeqsaoFUA5BZ4c?=
 =?us-ascii?Q?hjMDk3n8sIJlZsgFYQLNHxTt6Hs9hC/wOGSThxrLDW0SQMIn2mhf5g0pU4GB?=
 =?us-ascii?Q?6VMmva/moWk8WAhIPkTCOUHLp5tq1qbZtr6rNf7Ui3d579oESaDSAXY+rpSg?=
 =?us-ascii?Q?/cmybo26oXgmDVVqKyla2FG4QArxiDpkeMjCMTRCdx/gd8Oy3l9ksAiioXgU?=
 =?us-ascii?Q?j8b3rhmdjiLdprUST5QQLQnNb8uPreP9bJtJOpbFXMLBzmTyl1uomm37nzwk?=
 =?us-ascii?Q?OTb5+lqwVTUiplfdr+Ala3tldEkPZfX++wFF429m3LWaLYvZIOHibCzXISSH?=
 =?us-ascii?Q?gws9vd+SAcUwqRQYg0+5OfOqDhXYHJvInd8QaIAKeY2sUSLt7478XlXYLbp8?=
 =?us-ascii?Q?2O8RqWfi3BwpPbjgFmluJiO8O+KiMTX4KOrK2VqA5Oy2/CsBFCvIB0TKa/US?=
 =?us-ascii?Q?v8DVZ4HlKrhD/ZPVm2PkloM3T0K1cqlUYT7ag1EVN5jUOhXr634WFtBoMCoB?=
 =?us-ascii?Q?OOis2BBC9ziEY/ZfP8OCjpRa8eJfZhzBIfK43zS9AinA8JBv5lN6S/5KouHV?=
 =?us-ascii?Q?ehQwZz6FahDpBGY7YnAGe4STu81K/d0g+TtZlFdYj1E5tM9/Jbpa/rNGQZEu?=
 =?us-ascii?Q?LTOgjvlojJEnB73i0j4VjvY74zJhR/zQKghC55Z9wyph1pjVGL+FI+eXo6yO?=
 =?us-ascii?Q?hFg7A2IoVqyOV9tboyWu2CzyQY34jIJqg6UqXiUCrCWtnu81aiDbwPI9+QxU?=
 =?us-ascii?Q?fWDcNSvrx4Zjt+0o0EbokyT5Tsiq5fTNxe6qkQHTdirV3i8ZPup2hO2WCl+x?=
 =?us-ascii?Q?ag5+/FUdhNoDnX8DJoC7hrCZOPBVm1Ork9PITWoW7LoSzGVIY3GsCKL3gMQ/?=
 =?us-ascii?Q?AzBEtlmTZ5an06MR0I24B694Or1kk60cgcPCo7d9vSj4lsjT6qb7ScYZslGv?=
 =?us-ascii?Q?DAt7R2ddGwI4AqG3FlM3VbFKXlJxGwYWEUAL4ZiIJeLMvKbhtMjwSHcjGyyJ?=
 =?us-ascii?Q?J502+OLKvHqb1wDNST02bmvd7T8nXbb421NFiq5Xdl1w9cJexA7MCFp2Q14w?=
 =?us-ascii?Q?clCkRSP6oubMvil5v8R5xGu1aJMDKa/NOZTGSbrgFea+xg7bdSOf4sR1UJIh?=
 =?us-ascii?Q?uOr92mlb6nwU99pkbGP56ZZTU/ANhxuNAEIzuS5EOr1XgnQHeCPiGz0tfjYv?=
 =?us-ascii?Q?vJBBRff+Iv3Xm1cJINYSmbbMKFCTOIKh7Ev28Uj9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d5de827-cd22-4775-400a-08db10ed15ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2023 13:44:26.0253
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WPJv7J9mHzKvyfKriAyK6+Tqu6YTNYnQr4RRTmdJ7Bi0P6fiQByqzd2opabzeqnGMq/ky/yIL0N8/6X4Xg3q/LY6bWPkU16IKXtjDu39/zQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR07MB7876
X-Proofpoint-GUID: vM4zC40yA6ON0phSdn4uiYaIZYLWTqpM
X-Proofpoint-ORIG-GUID: vM4zC40yA6ON0phSdn4uiYaIZYLWTqpM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-17_08,2023-02-17_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=999
 suspectscore=0 mlxscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302170124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_054435_659267_104797EB 
X-CRM114-Status: GOOD (  19.40  )
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

>=20
> A phy is registered in phy_register_device(). The call to register_device=
() in
> that function will end up in mdio_bus_match(). You could add some
> debugging there to see which phy ids are matched against each other.
>=20
> An idea is that the at803x driver is not yet registered by the time
> phy_device_connect() is called, but I don't see how this could happen.
>=20
For some reason mdio_bus_match is not called.
So if I understand the sequence correctly=20

First phy_register is called and assign genphy to all phys

phy_register_device id =3D 0x0, register genphy_driver.drv =3D 0xbbe7c5fc, =
Generic PHY
phy_register_device id =3D 0x4dd074, register genphy_driver.drv =3D 0xbbe7c=
5fc, Generic PHY
phy_register_device id =3D 0x4dd074, register genphy_driver.drv =3D 0xbbe7c=
5fc, Generic PHY

I see no call being made to  mdio_bus_match


Then I see that the Atheros PHY driver is registered:
register generic for: Generic PHY, id =3D 0xffffffff, config_init =3D 0xbbe=
143b8
register specific for: Atheros 8031 ethernet, id =3D 0x4dd074, config_init =
=3D 0xbbe15f38


And eventually phy connect  who uses the generic driver=20

Is not it the problem that the Atheros driver should be loaded first.

ret =3D register_device(&phydev->dev);
          if (ret)
                  return ret;

          if (phydev->bus)
                  phydev->bus->phy_map[phydev->addr] =3D phydev;

          phydev->registered =3D 1;

          if (phydev->dev.driver)
                  return 0;

          phydev->dev.driver =3D &genphy_driver.drv;

Would not the line above  overwrite the Atheros driver anyway?


