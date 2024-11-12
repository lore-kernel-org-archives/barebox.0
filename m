Delivery-date: Tue, 12 Nov 2024 12:54:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tApTV-000zu4-0T
	for lore@lore.pengutronix.de;
	Tue, 12 Nov 2024 12:54:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tApTU-00077P-Bh
	for lore@pengutronix.de; Tue, 12 Nov 2024 12:54:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rOPNjQcDbXLRP0U69nHoVY74ZWRnTs8RLonHUOS7i0s=; b=tvS3FQItzYEC6oz56wl3UANxOx
	L4xU/mGkYnSx2xQsOCfrdaMMeoqPFk1pVNCcfZZkvMG8A3YudhU9m/xetbBhqRyUrTXgWQk20BIFJ
	VRaNgbUXVNjj+oTeTRVAUjbCvD3WGZS4AmMBICIwbOSa+KcLmHolDfRmEHhWW5in48r6oTorSjVbm
	Z/Sv2BZQZwJ0t1/90Ck+Gn+fwqsnrYTCNQpc84p6kCU8aSx0/Otj+qjA45UOM1hWXnkHlNq46cL4W
	aCeM+kTo74bHRo7TwINJRb4hNHcloz9UzULgp3MOs48KojdugvBIB6jmcXDjcMIXUVz44oy3CF+sp
	+3Ekgf0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tApSm-00000003Iub-0XGk;
	Tue, 12 Nov 2024 11:53:40 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tApOA-00000003Hcj-3nva
	for barebox@lists.infradead.org;
	Tue, 12 Nov 2024 11:48:58 +0000
Received: from pps.filterd (m0163891.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AC3ctwK028429;
	Tue, 12 Nov 2024 06:48:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=rOP
	NjQcDbXLRP0U69nHoVY74ZWRnTs8RLonHUOS7i0s=; b=Fj+/k1iXFmfWPpNvRI/
	OupaNjSBRW8Yr58oinF6NWQ5AEEf4l4+eVAiiw9kqGjyhKE237QlSKw8787Yt/Gv
	NnYgv3IfwqJoUwTQbJIb2hvHVlFdvHsWuQMMfHz0nb/WPVbD32EhTuP72ewln3zQ
	r6pfACvhcEzH6oljPZigPGmYZ8pvOjJdVoV1Msx4CJbiTHnv9M10ziQVg24I/SRz
	s4WiXlZmtt3rujZ2h45xAodMsBnKqfTDAAMMaieZKmUlzB3rHHL8pU4oI4KCEwxs
	HHbwy1UP7XdoyLIlQgRmTLmVHsAzNz50ogxnMiIO8PEWACcO8GefczOU3P6zfYCC
	jiw==
Received: from sj2pr03cu002.outbound.protection.outlook.com (mail-westusazlp17013075.outbound.protection.outlook.com [40.93.1.75])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 42t3g2ybkc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Nov 2024 06:48:49 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rq+FhCOPwj8/66N21O2fIx6LHpwNy2RBS9UfixPjLSi9g2eb771QOCBxL4jwVLTpQYh8Grfh8lDxGi5vKf0QthWYoQO90Psbqxg5WSPi/dUb6OXbfRYqvMhgaFe/04qZF4sRf94VzEhw/Aw9y76rvLh1RvrjiJW5yEgk+ptt3mYx3NRBJ45pnm8U162S9+PKeMW9MHmUFWBxDOA09BlaBk2tH/UB+CCZl37nXFkgr5fcXk1Pt/ogHCeWARdw3aDHJmBxgQ3KIYW7iJwvk8JZW8brWqAq3PVPYGnRY2R4vroNl4nFxCsfRvD8/nHpBmtTxn35WwoCId9Vu3d4JPTmOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rOPNjQcDbXLRP0U69nHoVY74ZWRnTs8RLonHUOS7i0s=;
 b=IVBAJtpghzVeZPH1KvfEPH1AQQG4u1ddE9wuoBf3ddUm9hDCrsH/v+j86S9WwrJseEOBJO05rz/OwJZFiwP6ow4HMf+bz4IXHrmbo+YlmWJvS1beUxTPOPUGfa85oQX3XejiZO8ZlCesORLteg6Crp3MN4hh2St4zMUDKo6Fr8ce6ymNYFeUbWvWD4CwbgqsIvR+v7VMFWuF7WvGKMaUxHkw5bSmEniRHeI10wg+OAgfRkGYP3KZXoDJjUc9Uy4z600B0qNKmw6XcbQ9JlMOuYcGucahxQAAtRYowyU9SKhq+9MyuyugYK/GqRjit32qa1CJ8ETN2t9+7Bh/7B90fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rOPNjQcDbXLRP0U69nHoVY74ZWRnTs8RLonHUOS7i0s=;
 b=S7lKwBXRmjDTi2W4sYvqew2ObzVWjyFgapCVdT/hBNfh6AvLxRte246W2VRN6K+r9WhsdndkatlOhW3A6+ylTcNYk9D5RByscd0ghKSiJpZiLnHNYmLnNqihMbYuswYzWE/HNMWe1K5Ad2wTNQQwiE/N/AVKA4GotxRxI/ihUy4=
Received: from BYAPR07MB4358.namprd07.prod.outlook.com (2603:10b6:a02:c2::18)
 by PH0PR07MB8399.namprd07.prod.outlook.com (2603:10b6:510:9c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Tue, 12 Nov
 2024 11:48:45 +0000
Received: from BYAPR07MB4358.namprd07.prod.outlook.com
 ([fe80::4c6d:4703:feb6:237c]) by BYAPR07MB4358.namprd07.prod.outlook.com
 ([fe80::4c6d:4703:feb6:237c%7]) with mapi id 15.20.8158.013; Tue, 12 Nov 2024
 11:48:45 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: NVME o nLS1046A-RDB
Thread-Index: AdsxGtLdjaonMz/6SkiE9xEoFPlidwAs1RyAAJWiWeAALPGzAAAID+3Q
Date: Tue, 12 Nov 2024 11:48:45 +0000
Message-ID: <BYAPR07MB435804EEFB6FF352E07CF9F9EC592@BYAPR07MB4358.namprd07.prod.outlook.com>
References: <BYAPR07MB4358138C14685D6A11CFF8A1EC5C2@BYAPR07MB4358.namprd07.prod.outlook.com>
 <Zy3wh0qqT_LY8SkR@pengutronix.de>
 <BYAPR07MB4358A74708FE72C8789667C0EC582@BYAPR07MB4358.namprd07.prod.outlook.com>
 <ZzMKUugcLKGY4aq-@pengutronix.de>
In-Reply-To: <ZzMKUugcLKGY4aq-@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR07MB4358:EE_|PH0PR07MB8399:EE_
x-ms-office365-filtering-correlation-id: ef3fc24f-a906-4675-47e4-08dd030ff6e6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Al//nEG2fl9dCko7r8m719S+9wHq7FE9623hxQplqRGqDrleCxUSslkGhrp3?=
 =?us-ascii?Q?JioYyEG8cDuzDq50GO6o0j20gpVjZH2hEKJiERFQdYmoK9/ApZqSXDg/cshM?=
 =?us-ascii?Q?1TJvQNgnjAWs+Sp9m6eK4gzfOpyw/Eo8AyAhJGpWI5I2NTicIyX69RYB9OSq?=
 =?us-ascii?Q?FhbU0R2Ug3O1eg8etDmvzBT2k5ITzdJRlwzbtaH+Fg5NAjGoL+b+3lYV9xsQ?=
 =?us-ascii?Q?K/g+ISY/Yi+R4qtoo+zwQeLhgIOrxVqOdxATbtEYR+gdgyCq85oE9wpZ/4jF?=
 =?us-ascii?Q?C7T4WuGxVg7kUGd7PjQF+eSP9Z/ZhUw2UKUfgON7tlNay6McCdMnfMt86QZr?=
 =?us-ascii?Q?JTu+0Dobfy7E/UbuoqH1PZNqmKONiscs2M+2fkzHRcl9ARzpDePZQ5ZlftSm?=
 =?us-ascii?Q?EkeH3ksfi7Hcjh3/rnFQI3VomJP5+qcfoqSpb9TBAONkrthPY5s9EWlb6H6m?=
 =?us-ascii?Q?fB4VzJxGrOFuZPbXEIvUGzpVi4uTvRcRtjtyBPa66t7PLR+ZB5SrCAc95Ksz?=
 =?us-ascii?Q?rZc1tKZcyTK/byku/C2G0OAE+4e366/MQZCQjMTA3Ot/Jx+r78lPfBbUEvrO?=
 =?us-ascii?Q?34iVS9EjEeUVio+0ysjixQR9V/gqWS4e7FGWLUx/a8IRd6TZeoZp5vUcrx2P?=
 =?us-ascii?Q?c9BoW5cfiXzoPf5td00SgdAFA42Epzu8+z+tkwVcNpX1QibQtSWYhLfm2yHn?=
 =?us-ascii?Q?DqUjY/cQtbnb4LPJsRJX+xk+O5QqWDhvXkJFqd+d54a7/9Vv+9tQbbQu3l4q?=
 =?us-ascii?Q?NThkQiRxlV2iaE8zcpYoHLJ2EFUnOR4u75BAnjaX6SbYsEX7mK0b7y69TcW1?=
 =?us-ascii?Q?/Cjhm1Z/SidQyPsl121Stehzx5ycYNG1KXi5o6tR0CIL4VDjdE1qordnuhko?=
 =?us-ascii?Q?EQo0jL4GaP4b+WCqvwyGBNquVISpgg40bb/cWM8vZ2SeoZIxfTBkamNmAd84?=
 =?us-ascii?Q?PfyF5+rjVFpc0u+GgyrjNlnHDYY9aTVxLtSy4UpFj+Smn+kIgPBf41HWzxA6?=
 =?us-ascii?Q?F2qjSrUCN4ysPHibU672ga24rDu0K3vb672hhkVGHbxvGWzOasCagwDgmbC/?=
 =?us-ascii?Q?5BdmonngqR4YnWIzOLNWZJtiapzo/plWLAAXpshTdnZT/YmV9mzqGHu2rHuh?=
 =?us-ascii?Q?Cvow9ZzeSzYThQumf70J48g4ae2hWYE1q2vWPvHlENXTzM8IY4Ddy4/nCBcp?=
 =?us-ascii?Q?TZPo9qVFmU1HfI6MRp5v1LNV3vfEPAzukLnyC+dr31iVhB854u+26XsisxOS?=
 =?us-ascii?Q?gPXlxGTJcszFQFsp7nFOJlU2QcM4pGX5/ZcVHWnH2db2Q82DvXF+Vu0ZQ0WC?=
 =?us-ascii?Q?n4miOHKvZ4eDxDxpAZ8SQL2o?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR07MB4358.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?G0C6LqmnEzPtBi5cIF/L4Wp47goB7PF3EoKDDwxIHVkXG+13fH6v0ZYJTLtG?=
 =?us-ascii?Q?rEVTWaMptb40VcNQhNLbl9VBudiadn2HtEqDvMlQsS1GrzSzjSLqLp/dzgMW?=
 =?us-ascii?Q?xreVjxUGj4SbibTWo0fwzORaqsttjj3CaGuToMrs5vyQo1+6Xp1OHbIh/32y?=
 =?us-ascii?Q?wt6zk2hHJlYxz5JWAtNvaCBSA0RxaTFSfDFPqYy4oZ+sppQZIWMpAbOla11h?=
 =?us-ascii?Q?CCOEyY33txETyOOj8OL2HajXTQObFhehQw2LuPIg9Qxr38FfJYYuzkXdwlqL?=
 =?us-ascii?Q?E+1R+sHZmHL+t07SV5GKD7THu4P98MbWwqUSHUnoqAybqyiXH/tyf9jv5itV?=
 =?us-ascii?Q?YknLYmv+j2cjlFNmTga2++SRNRjySafXbst/AD/F73VhVZMDOuU4RPs5B1Zs?=
 =?us-ascii?Q?SQhZM4fs/G7cxkt/0czCGWaaYRB++zLr2QUgjwhCFjcIGiSSFmUr9Qxks+C/?=
 =?us-ascii?Q?mzluWbUY2e/yUX0Wva9nyTNu2ZRUXEUaSJ+Rri6kpDSPYFJXtTKSt1z5DlK5?=
 =?us-ascii?Q?VlmVCXU3L2uR/11MW6WlRoPItv8Crz8Kw+9C2ocJrC7ZiuMeZox25ru+iB7V?=
 =?us-ascii?Q?89tpPN4dfJPgpDwQp+uiOYTK1DzJwbWnWUeTWafsFWmJwhKP+B8s9RPO7LYH?=
 =?us-ascii?Q?WhZ8bZLoJWbnoULx0GpV8z4LIwEJFJ+Vly6mlXSyPcUC0vZlzKx5q/moOXtl?=
 =?us-ascii?Q?IS5zczBMAKhE9fjaAsUbw8Uu7Xd6ANfkajiwtRL/pLqEdTRmMrvrIg8SKB9g?=
 =?us-ascii?Q?8Kz+p0Z4NBW0kf2BGu/ZQzST99xvXl0txd3mR2FmRl0H8kUT6KeTIy1C6uu1?=
 =?us-ascii?Q?Pj2gEZ7O+FyUJFK2n8o9gP7bvdNYdWAxE2d872Yo9iUbSkZ5hgGnPdgFw1T/?=
 =?us-ascii?Q?6TIJ0Qk/QT2jiVB82ifCYrKMl0GEtgv9AwgPquyFURuw2vYDUJtjP5BKzbL/?=
 =?us-ascii?Q?PPLTgdck8mftSXSqIFFQ7cRTBkzSsX1MC9dFH4pkKCqmVSWDZdUyZaxOoAay?=
 =?us-ascii?Q?jjyc289qaOaTO0n5jHAeUCQNpxo095yBkCfOyetW0kjM4erx326LSXQBBl2V?=
 =?us-ascii?Q?zOV/y49xKwcXO9kL4WeEg9yLjnyfW8Q1Xve5dBl1YW0v9nmmnHZTmo3wa/Vl?=
 =?us-ascii?Q?tAtYAG0u/i9fX4SjykCx4uvorT36BhVhpGX6e03ATHAgHoy4fcCHr1beMNPb?=
 =?us-ascii?Q?UOTaaSFVEQIZF4aZtAc6EonrUFrFXznxriMBl1J+DMMgct5vXUHGNtbpaOAx?=
 =?us-ascii?Q?S0MeGiBP2p0u8RDXyhKpU6JpZwv5xTspYZMvV5hZfMB90/0Vy7/fE7U6fbHX?=
 =?us-ascii?Q?p40S4FhahNig53rCi6WbPZlFGgGSzWlmnMsUkAMsjNfHxE2l1Bv+lxjCLd3A?=
 =?us-ascii?Q?EroK7EcIQJKstvKLGvM6UsJov4h4hw1KXP1gySH5godZrBwAR1qUoqXTEsii?=
 =?us-ascii?Q?vxwLc38QCiAupEZHRF9iWoXxmtadlynO8GLUprtkzuZcPoejSq+0RG+h68eR?=
 =?us-ascii?Q?9/8PMTvMvyGAdjm0IjRmbnTdudMrZcd3Hyzw9JguCU0mz/xQBexwBKfHgFow?=
 =?us-ascii?Q?qZU9hD+NTePxlCCK6woxOjkh2qiW2/jObIl1jasU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR07MB4358.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef3fc24f-a906-4675-47e4-08dd030ff6e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2024 11:48:45.8132
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +c6qRtcT4zCwxYlInFNv1bDnl9fnwjX/CwvMoijjZ+dauiVIhaKp7g4eJRNo4sMafxO2XFZcP7E+S7xFGsLuOW0kmghWGGfsXPqxBZZghlc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR07MB8399
X-Proofpoint-ORIG-GUID: V6B4Mfm2qTT5zJ2vO6yCpfee5koWpI4a
X-Authority-Analysis: v=2.4 cv=VO6PnMPX c=1 sm=1 tr=0 ts=673340a1 cx=c_pps a=nstxx7sbfik0j6lNDJSLGQ==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=VlfZXiiP6vEA:10 a=t7O-Hdu1JCwA:10
 a=m3P6IW4lH-wA:10 a=uherdBYGAAAA:8 a=bGNZPXyTAAAA:8 a=GfGsaEgzISByskkS6CAA:9 a=CjuIK1q_8ugA:10 a=yL4RfsBhuEsimFDS2qtJ:22
X-Proofpoint-GUID: V6B4Mfm2qTT5zJ2vO6yCpfee5koWpI4a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 malwarescore=0
 phishscore=0 mlxlogscore=860 spamscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 mlxscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2409260000 definitions=main-2411120095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_034855_383477_15039B41 
X-CRM114-Status: GOOD (  13.05  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: NVME o nLS1046A-RDB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


>=20
> Ok, 0x00000000 could be correct or not. Try md -s /dev/nvme0n1 0+512, it
> should give you the protective MBR at the end. Or use some other non-empt=
y
> area and verify with Linux the data is correct.
barebox@LS1046A RDB Board:/ md -s /dev/nvme0n1 512
00000200: 20494645 54524150 00010000 0000005c                EFI PART....\.=
..
00000210: 40c45fac 00000000 00000001 00000000                ._.@..........=
..
00000220: 37e436af 00000000 00000022 00000000                .6.7....".....=
..
00000230: 37e4368e 00000000 1fc28552 4ef94807                .6.7....R....H=
.N
00000240: c1d791b1 f9f74875 00000002 00000000                ....uH........=
..
00000250: 00000080 00000080 a95c01c9 00000000                ..........\...=
..
00000260: 00000000 00000000 00000000 00000000                ..............=
..
>=20
> DMA issues as Ahmad mentioned is a good guess.

I will go for the newer barebox .
Thanks.


>=20
> Sascha
>=20
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       |
> https://urldefense.com/v3/__http://www.pengutronix.de/__;!!HKOSU0g!GiA
> 4jHEWr6erg1nQ8tci8dnGc7rYsIO3FriXc_wSiCDkgfIBsd0hF8nKRgPCdzAIlVSVij
> 8yeGe2rvSrR63YJ_bzAQ$   |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


