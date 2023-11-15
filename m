Delivery-date: Wed, 15 Nov 2023 17:48:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3J4L-00CkK4-08
	for lore@lore.pengutronix.de;
	Wed, 15 Nov 2023 17:48:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3J4K-00085u-So
	for lore@pengutronix.de; Wed, 15 Nov 2023 17:48:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uu4NQby99fc7nIeIaxqEYHFN+/1aIpIAAbLSCcEqO6w=; b=o5vnmDtxkfK2nI
	gi58ie0KSJCyYXPH/HVAQwfDZUIApPAPqaaSXlQB8gTjO55VYWuk/CW/s5e1UROODBUPxr/xGUNFL
	qnesBVZY9GKnYaT8SfaI+7fYZIWOut+CmBHWfO/4JE1TV/LkZL8XQ5djA81VEwNHywFMuz0L/rmim
	JMqauFb8bAW3vW7VVeYhj1aekwMVuTepwLQRRZKs/Bo5ZMinzsPN0ijLjlK0i0azU4B13jTkHDT0n
	zPTDWu9Rtt/sCSOUN5td141/MSvehJxZ48O8wbbnKUQBOuCq8ryQjPKMYZIulKNaeRJS5UalRGe/b
	1t1BlJLeBNLyMcKx8nKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3J2p-001MYp-3B;
	Wed, 15 Nov 2023 16:47:15 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3J2l-001MYI-2M
	for barebox@lists.infradead.org;
	Wed, 15 Nov 2023 16:47:13 +0000
Received: from pps.filterd (m0163887.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3AFGfBIR023562
	for <barebox@lists.infradead.org>; Wed, 15 Nov 2023 11:47:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	from:to:subject:date:message-id:content-type
	:content-transfer-encoding:mime-version; s=pphost; bh=uu4NQby99f
	c7nIeIaxqEYHFN+/1aIpIAAbLSCcEqO6w=; b=VQ8u4/ytpBqUZcQ/TdRMogpgJ9
	XfvHiYSpJsjitgnISiRTk+JU7viB0TNHQ6vgNyRIBQxP48CaaTQTrAbglrnPYsE+
	EHFHNCvtelRzs4oHOXbnqMDL44KZ9bZM/nEYPaLHDXYGRlEfJTLfJ/VpLiBtahiQ
	KF8e1BTSTKzTvP0coH6FmoJ8FOVeN3Ztf4PbOhZ0rqKvdVXJ1zTHayHrgVAucQqY
	Pbunw3u/qCf6u9XEf1NbMynTtAdLhE6P01FdhS9XMiVCpqP+1wNoCfoB2n1oDkYE
	U7F8bAVtrJXi9CCHjxAIVsbMkRL36b7aEBwWqn0wbtyw6fFe4UvSziTQc5tw==
Received: from nam04-dm6-obe.outbound.protection.outlook.com (mail-dm6nam04lp2040.outbound.protection.outlook.com [104.47.73.40])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3ua4a9r84s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Wed, 15 Nov 2023 11:47:08 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oZazyjs+G8p25a0/FZAHpFDIpY1JwF2vgF0Ajf5URPT31D5mD/VnR/e/uQ/Y7dmHHSrVfCmrTbPQHL3DcHW0pWyld0fXNuUwc0VcZWP8prokjFcNGvShsk3JbWE1VX+5mgPfKPmRWwXXj4saRuaajx/58z/MMDMq9LQIyUIxNb/A3DSMcJMIidg9KkqfmVJHjifTWPolzZNxjJoyWwEeRWiGlWjxTF4pZqVu9Qam3KoYx6Q+gbzHTv9EWpURMVJunww357nvPP4cbpA8VFb5UD93YB1xayofuKSIM32JgL6uRc9q+xcuZvhfBfZKJQKDVv6LffcRSpUKUbtdixOPmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uu4NQby99fc7nIeIaxqEYHFN+/1aIpIAAbLSCcEqO6w=;
 b=Wnv+wBS/0nzV+NsSX70kOe2M6UYx+h9F2mf6epQMAyU2Ks+oYMGSDffIlpUfc02oYZBcbduLiVic4lJTEJ3U/9ro8cGIzFhl9Fxb1U62gPhjM0JbfhbCjguS01rYOEcFg+DQ9fsGQgDBbJzO0Tsn0cr2B8eeu2+I6TkMl8hr/aT2xds+z6ObYiRUeTyeuszLvT9aQYwA0dmGit8U5Gm3Y63dOpLRob1LgM2vhswKWGvfqP4zCaoPO9ZGjmx/M/SpYzmmM7DQ8LEv56VakWhGnAijCjHyMQif5n57elyjZy8pmjxmZpmRjiqPaKSWkuc78XEFmDLUM7GFdRqhEynAYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uu4NQby99fc7nIeIaxqEYHFN+/1aIpIAAbLSCcEqO6w=;
 b=R8hGe6pmYE8BXiT0hEYfk+rM8B2cLUYw7IsI0JA3wBg/pGU1vnO09TpIoK2OEC+Gd+XShDDzFMSrFqCoqlOgHb9MLLimRr1DKtCNQshfaEcWbL8LoFQmiz4r8mZf3GQ9Oqrz9dtFwiLL4w8iCQW5GAOn7a/vCiHqXNVHQVHsSdI=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by PH7PR07MB9466.namprd07.prod.outlook.com (2603:10b6:510:1ed::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.17; Wed, 15 Nov
 2023 16:47:03 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::deb5:2c53:7713:aa3e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::deb5:2c53:7713:aa3e%3]) with mapi id 15.20.7002.015; Wed, 15 Nov 2023
 16:47:03 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: Device tree probe order
Thread-Index: AdoX4vMe7RBgUH5LQa226HLhGZtocQ==
Date: Wed, 15 Nov 2023 16:47:03 +0000
Message-ID: <BL0PR07MB566525C65379702E930F2E99ECB1A@BL0PR07MB5665.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|PH7PR07MB9466:EE_
x-ms-office365-filtering-correlation-id: e369e74e-f85c-497c-f152-08dbe5fa7eef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j/spyQeCx8Py/pPePxzNEhPeYQSodJj3anFLckcL4N9lnGKboVIPgJm+o6LglYlckNO0UPA3AUKaj8QCQ2vg6v5wcbcjepWpsCE0JGGBLeg2VfiN/g5cPIMdB68Or8QlGwCAufMUlkuHu5vkhS7JKErd3EWtr87WyXvGTFQWb1mLTvaMmkDBnwutcCicq8xKGPuUFdDWxXeswET9CAJGChr8JCF08sTISY8vORQ35AMj5im+CxPaG+50bd2X8joCD4RG2nlZJyJujS7OjvulbT/UW2Yi3ydnEegeIpCuSgt4sA68GS4i/35gOLPDGFnNQhafntRI00Yo5SYDRv8iwIYHxLwwJ0xBcnLrtsLcjIDT6cTbmUhN1nJObpG0UsxjvB9yisT3JgZxmgC9rrYImO8Lh4uVTnIoySUAJdiZqPQxvC3X1nZi5kOUSJxdmb3fxenmtPesmEzDXJAqhl01Y20aLZ5C2zHw6jB3tGu/KX3uwY/8zP/Uz6NOVHqGWbHapqITlpELf3kLZedwsKBtGl0TMqiAB17RAJitA6R9FtMFnKVU5Mb4CDJxxtssHY3VKOf3MukI+duAPfwg5oI9mDIf9TV3Xmt6RyHYKXwNDbgBauYwtEGUsSui5jDO/yl0
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(396003)(376002)(346002)(366004)(39860400002)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(52536014)(478600001)(38100700002)(41300700001)(86362001)(3480700007)(33656002)(76116006)(64756008)(6916009)(66946007)(66446008)(66476007)(66556008)(316002)(4744005)(122000001)(5660300002)(2906002)(26005)(9686003)(6506007)(7696005)(71200400001)(8936002)(8676002)(83380400001)(38070700009)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?d65ebHPSjZift3MtA/An1cUZNWY7q833NG1uWG1rHK7rqPz0DnnAx3Kcw7Ni?=
 =?us-ascii?Q?AWkzs25ZgmkcQfEi4+ofKvTl+gf8sBxkIHWF/l3qquWN9Owm45F8aI5f170f?=
 =?us-ascii?Q?FJQat3CiYDfaBIHWT62W9FeglIUPNa1aRem41KLMveOhRautjoB+Oi+ZK8lV?=
 =?us-ascii?Q?32TR+V4SJ6l1EVI4wIOPuQnAtv1Ss8nA3W81WovkhR4NbGMhv9ZxBggXcdJ0?=
 =?us-ascii?Q?S2q1lamNrq8mEli6ec3ZYPm3cHJb8cDWkmx2Sacfv65guwn6HTt37nOMWbwB?=
 =?us-ascii?Q?38rDPf5NohmJallNHpssrZCeU11KgNuXcleHP6/Vf/nTmweCUfgsnQttz1mE?=
 =?us-ascii?Q?xxtODB6qHo0rv19UTNWVwt8xN96rRdY1/mO4v2rSlzOQBl02JBuNDQC+qe+p?=
 =?us-ascii?Q?pF/V6GJ+/S+nTCTzl2zj11meW5u30sy/li/6deS9jgweXtPrNLz64pAlj4/k?=
 =?us-ascii?Q?sX6RVe0z93yO+INaynliygdLbKd63Z2MhdxaSj8nirVQBxRo09UDzg9NWqGW?=
 =?us-ascii?Q?o+9Zq7En0phuLNaosWNsFrf1Er+JyIuSfXB05pppLjOYX3X1pYY4BGWmspSG?=
 =?us-ascii?Q?wWPB1h9PGpvBhrugmrqI1X5cxCmogcNGh/dHqcSSs4GftjZ9pL8bj7cuBM9O?=
 =?us-ascii?Q?xMfASu6hZSoTNCAXvAFgMqelo63d3xbBkmbYQ3MYXBo9YlMGldn2rGmOg3kH?=
 =?us-ascii?Q?yT1zqzCa0rw953ri3DEVpUGaO51tI6hPTpAU768ipvIXNKTBim+uqQRWWFId?=
 =?us-ascii?Q?DzfDXIGGjP1sMc1Sk2D/zSJozv3Ie6AZ200cvxzuXSoH8Jv2yRG81aUGbGoM?=
 =?us-ascii?Q?0A+cga+O1oWqhXwRtxkIVIs25WZ5oUZeSF/ROCeCxaxtBFdU/fBkGF5nH1WB?=
 =?us-ascii?Q?L+6ZrVWpD+WivdfmZMM9oYtjl7VO4ynf8gvbcxFYIsGpi5mddp/CD2ZTJsku?=
 =?us-ascii?Q?TnRpXAVclgGOKddtNfrapXBczaFSfuAdksD3J9I7ZCdO8IqFsxkeBrD5+Wmv?=
 =?us-ascii?Q?F0YioahgnumKc/bXo9sR9TzZoKxPCkygIBbFIg1jV7ZHAdCONbbPAunHI+Y3?=
 =?us-ascii?Q?uNh9BW4Mp4tqRl50C6pm8lXW5vr0ABD69xvQhKyLSxzn1+JihzZFTKUNhlH0?=
 =?us-ascii?Q?qA4t5C0qfHIBY0Y/7nlxo7WB8eNKywxpHAvIwb/RC9QfaK1UZPC5tSe/a6d5?=
 =?us-ascii?Q?FCA5TbAmnwNLXEfO5BcyHZciFg4aqyg1i2ottgGypt05vMO1gt33MeUXBVnH?=
 =?us-ascii?Q?qoDZ5STpbh4OeU1184xXccuBkGtwMvqPwC5sM7zQTUbm4+8pkThnxpTL/51O?=
 =?us-ascii?Q?JW5+67ynl528syt3C0pk1uvM1bmaqZxE9DyCSPiWgs7z7w9yd/j+alx+jAr8?=
 =?us-ascii?Q?ZqbZkOMiMbWJLLaMAuyZFR5/ZToYjr5jyLUscefe1smHiUePXDbq2a3hAkJz?=
 =?us-ascii?Q?uXV79PhLGw7jITs+Sv67mZYgto4p+dcloLRImaDBBZvBLyQO687//l9IYs/i?=
 =?us-ascii?Q?CK6bOBEopxtthhlS3WW33RChGIBR5E5cPPcRMnMry9SBnJ0X1uuW5OdTkN3W?=
 =?us-ascii?Q?A/S/emuCYvEAf0/baqxezZLIGlZg+Dskxf3PxbqB23/UzJ78RmvB4XOrh7/Y?=
 =?us-ascii?Q?WA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e369e74e-f85c-497c-f152-08dbe5fa7eef
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2023 16:47:03.7067
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qi+3NQp72/I4+UCFY61K6OIoXQYs5nl73yEv3XKP4Ka+VPM1CRX8YcnU3rkd5K/K6IyoVCKuz30gs9AXkPihUYQAgKf/+4/eERwJOjrL7K8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR07MB9466
X-Proofpoint-GUID: iIDaR5bT9la6CJLRMkdxALjDBPkVC6GA
X-Proofpoint-ORIG-GUID: iIDaR5bT9la6CJLRMkdxALjDBPkVC6GA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-15_16,2023-11-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 mlxlogscore=511 mlxscore=0
 priorityscore=1501 malwarescore=0 clxscore=1015 suspectscore=0
 phishscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311060001 definitions=main-2311150127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_084712_308208_807F0839 
X-CRM114-Status: UNSURE (   9.78  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Device tree probe order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a board based on the LS1026A with a boot SPI NOR on the QSPI contro=
ller and FRAM on the DSPI controller.
Currently, the DSPI is being probed first and got the device node /dev/m25p=
0. The boot SPI get /dev/m25p1.

I would like the  QSPI NOR to be assigned to /dev/m25p0 and the FRAM to /de=
v/m25p1.

Is it possible to change the probing order or the device node assignment?

Cheers,
Renaud


