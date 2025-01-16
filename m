Delivery-date: Thu, 16 Jan 2025 11:52:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYNUS-000ZDf-2b
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 11:52:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYNUS-000511-IQ
	for lore@pengutronix.de; Thu, 16 Jan 2025 11:52:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=223xNHFqafmXhIO14zb3OgDHExS+IuuNGWzuCS08GOk=; b=x0xuaoJPmZDATQ
	9ernucq1V+GABQcLBl/LQFAZkBiu7OFNWhobsBmQnez0ABr8b8/9y/W/ylJfguNv7wjT4DFIDH4Zd
	AIEaGt0/lHaBlD62uLeH1yxQLviDBy07cm6FmvsfqLvjHrnZ2JynoKWzcKF8EWFxbCjIDUHkRPEKw
	A4JoX12ww7f2eRO/fzR0n0LjDoCqeZyoxMQBjGl7AtVhJk/4EkWKmws0HMQLFNjDYzjlDr00t7/76
	fFAcvPn7H+HmEiVyS9JWpUcH07OchB82/o4yseXgZFaglbpo8y787APNIucqHoAiuPXiZe1NadZPd
	DAK1QvUH/+lXuXl5gWzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYNTr-0000000Ecce-3f4Z;
	Thu, 16 Jan 2025 10:52:07 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYNTp-0000000EcbN-2Eco
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 10:52:06 +0000
Received: from pps.filterd (m0163888.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50G8O3VX029541
	for <barebox@lists.infradead.org>; Thu, 16 Jan 2025 05:52:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=pphost; bh=223xNHFqafmXhIO14zb3OgDHE
	xS+IuuNGWzuCS08GOk=; b=szKR3GNdLw+jYb8eexy588KJX2guWN3HeJZENl9lv
	gkL2Od8OnY8pybtA/DaL95OMwKEoTl9kjwa10lyXMkYzOWwkcVLCeLK6LxSJx5+E
	RMGKx5XAoQnZqRyrsMban4AsZLWSErIYHooGwF0tr7XZU/ljtkSuVtyp1/7J9bdz
	rCt1T3Et62jDNYqnk0OExnyZKcOA7VUP1xIXHv/vd8yk4eP2BBpcYUMF7VrW6+kB
	GNbv2DCxzaU/gJghl5ij8JFvPqR4Rxq4k3LEjbsy+XeJrdkMm2KbaCF7Z7+Bx3Cq
	yPzBt42FcRdg9XNXSS/sSSVMM3fLviQGpfhZxNPVq82Vw==
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2040.outbound.protection.outlook.com [104.47.55.40])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 446xjn8b19-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Thu, 16 Jan 2025 05:52:04 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KLBnKFC3wZVw+NV8/mmL4dOyKIxXvyhSZbKPvdpTtx1qZhwEWj0R3loLtxU0MZ1Hobou2mI2xZZDjsrB1sPAnysUeWy+aPFil+N8AP9nCh1KssAU1XCWGfUhgF+M+2halYl9Mfxu8iFmcuRpKwuu4INQ07qX7IiH4yqyeM9ScBlCTc4CnD1wyf5stFhM8ZS6LeEyGopI9rKXobReM3tbFF7u3EuIuJKIwBwGli4LC/bU8JDTGYtPG1U4JTKck12S7DJrKziikCq/Il/DuzHyFd8WDZ6lEXcX8pNbRtIczFjqoUm9A9xkwdTZ2YJ2nonPzsIBXv6Rq//HTAQK6fwsDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=223xNHFqafmXhIO14zb3OgDHExS+IuuNGWzuCS08GOk=;
 b=OKT2Q0naT01F4YXKc5sX3h+YgP+kqko6eay5rV1roLxXVG2MFzq3DdWpy+YMdHev9H3n467lbh5v3FYFcXLPaysRfwa6wIfm/88yLkmmgD21VLd85XE/nfpx57XSSOkMujkCIN5MIb2Ulktb9srN8KBTvPvklvy9Bm4uu5NwiFVP2Lxa4a9vou7MZNZhYu0dCCY/5veMdkIkny/evzg2kEtno/7dbLAVX9vBBp6HBg1ae21qhlgGD8NcOwdZprgF6lZsTnM7BqIr+kvpqlBBQfKRNuuZniAQ0zx9CS478ITtaQfWdu1KbI7UnrTsYIN8wSWvOXvIqRjheN//X17JHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=223xNHFqafmXhIO14zb3OgDHExS+IuuNGWzuCS08GOk=;
 b=TbPaZTBqB194ZQdSslRG0O3bYf9fU39+bcwG5+AHvaxKaBBmbGIPKju+QMBpj6UFK0V93WNEA8jY40wvjtB+6l0dCcmEkwNRk5gePDd+F9abV4t8FcYnVPVmmroXKCJS96vyUIdjE295tArTagVRjaP4YagT4CwMJc3vwfVEs7o=
Received: from DM5PR07MB3532.namprd07.prod.outlook.com (2603:10b6:4:63::35) by
 MW5PR07MB9330.namprd07.prod.outlook.com (2603:10b6:303:1c5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Thu, 16 Jan
 2025 10:52:02 +0000
Received: from DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec]) by DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec%4]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 10:52:02 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: Subject: [PATCH 1/1] nvme: add erase operation through sanitize
 command
Thread-Index: AdtoBJQUhHQyyG31RNKcDJXhxbHL9g==
Date: Thu, 16 Jan 2025 10:52:02 +0000
Message-ID: <DM5PR07MB3532EA1B89A0848CE2A14C53EC1A2@DM5PR07MB3532.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR07MB3532:EE_|MW5PR07MB9330:EE_
x-ms-office365-filtering-correlation-id: 96387552-6520-4bec-f403-08dd361bcf6b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ruMgb5fZ16opv26p3eSffSHMBK86XPqamBYbHI6TadJXgcak8oODGslCHez/?=
 =?us-ascii?Q?geUIfkpBadyZw9uR8HEvj+Psq3jgf4gmdaCy0v9xa1yoGjUsZBbTYYpEu9c1?=
 =?us-ascii?Q?FOXAiWxsPAFDjF8YfKQBcxFtC+EzudUW8nAi2m/lvLcPEQ+V/3IXT2smjwMG?=
 =?us-ascii?Q?HQUXKASOaHuDQ7OZXHhegXxv85VLRAP/7rH+d+2DpQhmNeMU1X7TUocXaPPr?=
 =?us-ascii?Q?z9jJMQIhkqjxSXNXEMl1HmOiVwpCPpHfyxMwaQt43X0P/ddUfCopOmujyPF4?=
 =?us-ascii?Q?YeeZKoRl8oj/q3XMidNLIGcQL8/5ic9pAcbsYq7XkIxyjsnopnFg3uIbMTxq?=
 =?us-ascii?Q?70o+dl7Hv2ZeSYbRhdzWYzHWVG7GVwXUzKUs+HQamimWWJkGFTK0k6dApQYw?=
 =?us-ascii?Q?378yzfH4w7TjenCnJC6SAMMINUWJ718fGO8TEDBufGXVPgNXxKZoUSWT2aKZ?=
 =?us-ascii?Q?3BcS2t4JaRjY5MAw9ai3ItsHnjv9GKXXtq0O+2qPqCUGUV5Qrei5fm+Jz4MV?=
 =?us-ascii?Q?Y9nBV23P2a5zgX5mE3lcq2865BcQ1e1LichhAi5+ORFnvdlM5BSAyFFhKj3c?=
 =?us-ascii?Q?v25lSnM2TtMXknspG4Iza1IkOH8cZGqqrASzsq/XxbFyTwxETqbEDXepbrUC?=
 =?us-ascii?Q?7sjD6b/8HuIhXQvqNBuy6tmtnlrvqrol12Afm34oWxsAA/P0UhmdRoEorbfg?=
 =?us-ascii?Q?SlgyY2sIK75+etk8YPDnuiuZmFebP9jB/mgss+g5n7y5JyapuJT+dPUxkcTU?=
 =?us-ascii?Q?WuSlORPp6TIPv9Z5glLAD8UURxyPsdiaQ2+2UnXYvX9hOv8se2JnXrkqb4Ip?=
 =?us-ascii?Q?IrlScN0QSn7vKuswthYv1Ilqcw05jDkfdZAq7SQ+08wOguQehwFHwz3SUl5Z?=
 =?us-ascii?Q?7YjfMgfSSG6mP2kewV+N8kynBIhtEVOFn93Ar7vAOhMALUZhG40MZOMy+TDe?=
 =?us-ascii?Q?49bAENClaysWhMMzr245EsMAVg4NIDB325BMnwKAt+6dAUGg+gvV/FFsiJmK?=
 =?us-ascii?Q?ahG9aNZn9VdVuunKtTzXjkg2/NCG4rqmLR+BeVX1Ni1VsvEsOBZZTk5IFk4Q?=
 =?us-ascii?Q?wWboZffsEUz4MJS932ZNTBkhaiWHm7pmQDaVgp+6A6cxEibt+dYwEWRvqh7u?=
 =?us-ascii?Q?FnF9WJ89RFk4bZKsYbuPiLjtTMWNvE36KYqFfzejer4kVsziphSOOFAEMSEa?=
 =?us-ascii?Q?X1JNBnP8lBNkR8TRFhdI3xLjUoRUUrH3ybEhiWlkBxGBQqEyOVRTW8FgzqK9?=
 =?us-ascii?Q?S9Un6oX94q/ehya7YNV30h1swililHewZO93kmLyqlqCJ3HJYmhiN45TDxBs?=
 =?us-ascii?Q?vUNucBwFGfKhxEDwVbunLSG2aOe3TlEpd0GFBX5HODpxPS/IJJBaeUDj6SgU?=
 =?us-ascii?Q?dV7oLJKUfuhByVsjnW7MwCEZP13+k66qcRzItoBlkHfmdrfG24TG0t4/l51E?=
 =?us-ascii?Q?B2z+fbjMBPQ2KUZExwbt/oW4l2spNW/k?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR07MB3532.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RVjdUOLKwNlDGZQRf4Y0+jNYYaUrDzmXEilyvzw4sYv2FFHwfE8UTl9gaQeU?=
 =?us-ascii?Q?o6iO08CNefcotDZ/YbvOxRbtn2FeoyVZLzueMUNSL7Hy/SqjKM6V/2X3g9m5?=
 =?us-ascii?Q?pWC9G/FOYIbeO+NqnjPzaVVEbaHa1uWnBgFjm73SDxLCldDqmGRRpQKA7BKx?=
 =?us-ascii?Q?zGFKwdjxBaKMjT2aZ4ivoe+zh9i5giHvIx67wHZ1XAOuIXSD/m9xO820x+9O?=
 =?us-ascii?Q?IhVsiebP1AZlwJIqKSRokMlHVGsltIXQ97bWH3tP/57dNSzUQw/e5Cgl8vtd?=
 =?us-ascii?Q?EspGkx0uu44oSNoJvejuQi+zVd8ta1sZXqmMWMwBHlKXjCGYxhlMogFhJJKP?=
 =?us-ascii?Q?7Kd9s0c8/a7sQbGsb90meTDeL13hbp+Yvdj15BJWBEIKLKRqDFvgg6kb/90D?=
 =?us-ascii?Q?6fmkmBUkjsrOhfoHuUjUxbJ9ZKDmXWgDjjPtP8ChsdV7MymS0hljg8LvTibV?=
 =?us-ascii?Q?6IuS+ZKmbx3caMqnbPTQMJB88YkGVuTbEaS0z8LDU1DHInoC9BH3Kf2mOWgm?=
 =?us-ascii?Q?iTKcfE++F9Kg8fuP8jmMrSY5+lGbyVrUDid5HYjmGdwWCEmZ13hckzvPyV0D?=
 =?us-ascii?Q?PE5t+5g205xCHo/RsL5z0usW35PbdlYenWnfhJtbOoybN876FLt6KCr+5SqK?=
 =?us-ascii?Q?60kEnnDdSAc/5LkpFoxBUK995iExV9tpSnzvkTX5P2PUt98FmJGAVdk9bK9J?=
 =?us-ascii?Q?bFyld5LS/t4/UUjsrz/SKe+h0XNHWje9BeW51EBCkSr2ljsw00SrUreYLi7I?=
 =?us-ascii?Q?aROSAUTcMD9VCSo9oYKgz3WTz4ziz03+bRGheTIdZcyiBlDTWY5mvJ45Qx2f?=
 =?us-ascii?Q?vSJA1vrOPFb3UnNDKlEttVfLRHT/Gh8oF81muBaXBTY1iXhJAlXeXGiRaTKZ?=
 =?us-ascii?Q?6NY60u3PhZJ3P0tIk2KhMX5IObCZ26u0LkMeCFHwQGTwgTXFxupJSUhRVbos?=
 =?us-ascii?Q?6D2sx3edyuRD7LRLvqjZgogZgDyiqTZsRXetENX2qdGB8SRD4Kvydh1g1Htc?=
 =?us-ascii?Q?NczxhhMhHJ9R5QA4qpx6RJEL+AVAyLHYyWu6k+COnXtR+Zj9MHjso/rjWXoJ?=
 =?us-ascii?Q?xqYHnHAtjgF9eZnt0SvGXTFRJNubRi2nLuZyjv1wLw6sdi1cfiugQtRF+25W?=
 =?us-ascii?Q?wP2y+JnFgOG9nUK25LUg+FhLv5DV2NTzNJGsB8Oty/bty38tqYM6vhgHItut?=
 =?us-ascii?Q?hf8ey13A7bfQGouooYgDKyVVD98z9mCjcwE+JtVHW9yi3ox3k81ZrgyaxfvD?=
 =?us-ascii?Q?7ViliE9/ggKqBav2vguO0ZXKQBAJudqgu/OxeYLtK9/wuQwuwfJaMsJQAIRk?=
 =?us-ascii?Q?VNVbhmR1pEVNvoY0B8nlp1nBt6gBvaH78H9Fgqq1U/KpTyPGvxCJDdiT/N53?=
 =?us-ascii?Q?6AJdIQ6bGUyhLIo+ShTkneImtFwbwEaZSKpiame2k6Z93yEHP6hFnFhwEKjh?=
 =?us-ascii?Q?hZvA3/vU2BXVlaisk+EMTdnSXg2L2x/agkU2jHsNyEUgKBWINoF352A6jxbz?=
 =?us-ascii?Q?c4HAw/RF6SJ75qTyxkxknz1SJPXpO+TDeIf4dXeDGzeVP+GGniwahl4eJ9a6?=
 =?us-ascii?Q?FzPb1AL//s7Ij7jKmAK9JpGsB8bzJB4u4BxISPDQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR07MB3532.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96387552-6520-4bec-f403-08dd361bcf6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2025 10:52:02.8089
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X4XNwck7jUX+rEYMzz3NaoZe82hIzxC6/f8C0ZeCfmStnTj10op5Pl7GUshybrO0q/T8a2T3Xsotu/TsOLsVjYerdewBFrfyVQx2jcI1Dho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR07MB9330
X-Authority-Analysis: v=2.4 cv=bJ3sIO+Z c=1 sm=1 tr=0 ts=6788e4d4 cx=c_pps a=OemXRkCljtmPz/OzEC+nkg==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=VdSt8ZQiCzkA:10 a=t7O-Hdu1JCwA:10
 a=m3P6IW4lH-wA:10 a=LpXnpPx8AAAA:8 a=JF9118EUAAAA:8 a=T6tSd0zDzlsb9FQkNrsA:9 a=CjuIK1q_8ugA:10 a=Ey38a83BNdVfKQu74yMN:22 a=xVlTc564ipvMDusKsbsT:22
X-Proofpoint-ORIG-GUID: v_d58HXsMzEx7Fcqa5BidrKB3L6y8oyj
X-Proofpoint-GUID: v_d58HXsMzEx7Fcqa5BidrKB3L6y8oyj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-16_04,2025-01-16_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 malwarescore=0 phishscore=0 spamscore=0
 mlxscore=0 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501160081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_025205_697556_6214A3D3 
X-CRM114-Status: GOOD (  24.08  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Subject: [PATCH 1/1] nvme: add erase operation through sanitize
 command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Based on Linux nvme sanitize command and kernel driver, add the storage
low level block erase. This operation erases the entire device, any
user-specified size smaller than the storage size will result in an error.

Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
---
 drivers/nvme/host/core.c | 82 ++++++++++++++++++++++++++++++++++++++++
 drivers/nvme/host/pci.c  |  2 +
 include/nvme/types.h     | 38 +++++++++++++++++++
 3 files changed, 122 insertions(+)
 create mode 100644 include/nvme/types.h

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 33a592caeb..fcc2167763 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <common.h>
+#include <nvme/types.h>
=20
 #include "nvme.h"
=20
@@ -64,6 +65,72 @@ nvme_set_features(struct nvme_ctrl *dev, unsigned fid, u=
nsigned dword11,
 	return ret;
 }
=20
+static int
+nvme_sanitize_poll_log(struct nvme_ctrl *ctrl)
+{
+	struct nvme_sanitize_log_page *sanitize_log;
+	int log_size =3D sizeof(*sanitize_log);
+	uint64_t start =3D get_time_ns();
+	struct nvme_command c =3D { 0 };
+	uint32_t numd =3D (log_size >> 2) - 1;
+	uint16_t numdl =3D numd & 0xffff;
+	int ret;
+
+	sanitize_log =3D kmalloc(log_size, GFP_KERNEL);
+	if (!sanitize_log)
+		return -ENOMEM;
+
+	memset(sanitize_log, 0, log_size);
+
+	c.common.opcode =3D nvme_admin_get_log_page;
+	c.common.cdw10[0] =3D (numdl << 16) | NVME_LOG_LID_SANITIZE;
+	/* Poll the sanitize log for operation completion */
+	do {
+		ret =3D nvme_submit_sync_cmd(ctrl, &c, sanitize_log, log_size);
+		if (ret) {
+			dev_err(ctrl->dev, "Retrieving log failed\n");
+			goto out;
+		}
+
+		if ((sanitize_log->sstat & 0x3) =3D=3D 3) {
+			dev_err(ctrl->dev, "Erase failed\n");
+			ret =3D -EIO;
+			goto out;
+		} else if (sanitize_log->sstat & 1) {
+			ret =3D 0;
+			goto out;
+		}
+		sanitize_log->sstat =3D 0;
+
+		mdelay(1000);
+	} while (!is_timeout(start, 30 * SECOND));
+	ret =3D -ETIME;
+out:
+	if (sanitize_log)
+		free(sanitize_log);
+	return ret;
+}
+
+/* Perform a low level block erase of the whole NVME device */
+static int
+nvme_sanitize_nvm(struct nvme_ctrl *ctrl)
+{
+	struct nvme_command c =3D { 0 };
+	int ret;
+
+	/* Input arguments based on what the kernel sets up for the cmd */
+	c.common.opcode =3D nvme_admin_sanitize_nvm;
+	c.common.cdw10[0] =3D NVME_SANITIZE_SANACT_START_BLOCK_ERASE;
+	ret =3D nvme_submit_sync_cmd(ctrl, &c, NULL, 0);
+	if (ret) {
+		dev_err(ctrl->dev,
+			"Failed to trigger the sanitize block erase command\n");
+		return -EINVAL;
+	}
+
+	return nvme_sanitize_poll_log(ctrl);
+}
+
 int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
 {
 	u32 q_count =3D (*count - 1) | ((*count - 1) << 16);
@@ -324,11 +391,26 @@ static int __maybe_unused nvme_block_device_flush(str=
uct block_device *blk)
 				      0, 0, NVME_QID_IO);
 }
=20
+static int __maybe_unused
+nvme_block_device_erase(struct block_device *blk, sector_t block,
+			blkcnt_t num_blocks)
+{
+	struct nvme_ns *ns =3D to_nvme_ns(blk);
+
+	if (block !=3D 0 || num_blocks !=3D blk->num_blocks) {
+		dev_err(ns->ctrl->dev, "The whole device must be erased\n");
+		return -ENOSYS;
+	}
+
+	return nvme_sanitize_nvm(ns->ctrl);
+}
+
 static struct block_device_ops nvme_block_device_ops =3D {
 	.read =3D nvme_block_device_read,
 #ifdef CONFIG_BLOCK_WRITE
 	.write =3D nvme_block_device_write,
 	.flush =3D nvme_block_device_flush,
+	.erase =3D nvme_block_device_erase,
 #endif
 };
=20
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index e74a43b9aa..543be9a235 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -400,10 +400,12 @@ static int nvme_pci_submit_sync_cmd(struct nvme_ctrl =
*ctrl,
 		case nvme_admin_create_cq:
 		case nvme_admin_delete_sq:
 		case nvme_admin_delete_cq:
+		case nvme_admin_sanitize_nvm:
 		case nvme_admin_set_features:
 			dma_dir =3D DMA_TO_DEVICE;
 			break;
 		case nvme_admin_identify:
+		case nvme_admin_get_log_page:
 			dma_dir =3D DMA_FROM_DEVICE;
 			break;
 		default:
diff --git a/include/nvme/types.h b/include/nvme/types.h
new file mode 100644
index 0000000000..7b5aad1ca5
--- /dev/null
+++ b/include/nvme/types.h
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: LGPL-2.1-or-later
+/*
+ * This file is part of libnvme.
+ * Copyright (c) 2020 Western Digital Corporation or its affiliates.
+ *
+ * Authors: Keith Busch <keith.busch@wdc.com>
+ *          Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
+ */
+#ifndef _LIBNVME_H
+#define _LIBNVME_H
+
+enum nvme_sanitize_sanact {
+	NVME_SANITIZE_SANACT_EXIT_FAILURE                       =3D 1,
+	NVME_SANITIZE_SANACT_START_BLOCK_ERASE                  =3D 2,
+	NVME_SANITIZE_SANACT_START_OVERWRITE                    =3D 3,
+	NVME_SANITIZE_SANACT_START_CRYPTO_ERASE                 =3D 4,
+	NVME_SANITIZE_SANACT_EXIT_MEDIA_VERIF                   =3D 5,
+};
+
+struct nvme_sanitize_log_page {
+	__le16  sprog;
+	__le16  sstat;
+	__le32  scdw10;
+	__le32  eto;
+	__le32  etbe;
+	__le32  etce;
+	__le32  etond;
+	__le32  etbend;
+	__le32  etcend;
+	__le32  etpvds;
+	__u8    ssi;
+	__u8    rsvd37[475];
+};
+
+enum nvme_cmd_get_log_lid {
+	NVME_LOG_LID_SANITIZE					=3D 0x81,
+};
+#endif /* _LIBNVME_TYPES_H */
--=20
2.34.1



