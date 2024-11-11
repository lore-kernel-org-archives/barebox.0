Delivery-date: Mon, 11 Nov 2024 12:17:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tASPp-000ano-2t
	for lore@lore.pengutronix.de;
	Mon, 11 Nov 2024 12:17:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tASPp-0001HV-1j
	for lore@pengutronix.de; Mon, 11 Nov 2024 12:17:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jvifTKJQkDBxDTsHD7kW1oJqzmKfQ9GXkkf7bE7MLdg=; b=lKEActzKwDrRXIqmOEo6DCe7L3
	yK040x4MmkM9i77frm5ZYB6gtFxzfwImFuFdiWM5WGEa070EltLwzc/WSbT/O0gX0n9WIS7oPDQoe
	lO0zBXFwHR/XU2be7SB1aA0o9gjprK7/lFLSl7OHr3fhdypJ+ickT7OkCQakIpcapq5pT3raQTosL
	cdeXnX6seVvvzvxNox4b43n8GE1KA8jfuh80WqD1mrsHQ+pJnHc19AYYW7GLLHwvEZPQpfGH4ApGr
	SGelLBY+W+QFVt5Ws3MLduGKKCx/alS9gqhaSBzMljk4Tag7bm+zX5GzU0tnVkPXXOOGzY9NSKppk
	Z+x0LZmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tASOl-0000000HPQY-1HrW;
	Mon, 11 Nov 2024 11:15:59 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tASOf-0000000HPP0-2DN5
	for barebox@lists.infradead.org;
	Mon, 11 Nov 2024 11:15:56 +0000
Received: from pps.filterd (m0163888.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AB9vI0R011629;
	Mon, 11 Nov 2024 06:15:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=jvi
	fTKJQkDBxDTsHD7kW1oJqzmKfQ9GXkkf7bE7MLdg=; b=RjQDxUjm1ddprYn7tZh
	aL27UTViwhRdT7nRXxsqE37rzNbmPfcMr6+H0VxI2R2/cfiixV/5EYSAebS8Ec6Y
	QOecHMPV6NzNPTRXgzM/rehvu+N+WjjmgHGQfJBqDguke2oxh/STrHhmciFC36EA
	lEzUevMqf1mXNYdb0yZRdRaIjifUwx/ILmAWM/cKuiin12o1CVuNnTSQjCjsSF6j
	mugrJFhCLTWdKzYRgi2lQRjhrEnMjFnMu3JA0Zw2eDPoR08ay7wSvljN4Nuezri7
	BwMeEOc/tm6vGx6E1aGtiUz5vU2nMHVOmGnUaGvdNvYGCpkMcpGbkrbLpBuIDs+6
	vTA==
Received: from bn8pr05cu002.outbound.protection.outlook.com (mail-eastus2azlp17011030.outbound.protection.outlook.com [40.93.12.30])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 42t56wuyhh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Nov 2024 06:15:50 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IG1I3tZoVetNA2FPB0ayCmFMPtat09lsnfv/dN/jeWjECBjWEwKHQqXYjdVMGH8GHthKGSow5pnUZ3rCEFo9w3ImaeWnWQ4kjuoLo3gyhgHEOqAsoJ+ScU+H3ZtPJqh0UGod3uSHAh/0QlnGzvq+GMMTowXhzaXLCCyITtQt/sPBeLOokvgPsBJgb/f0NsTBDAfDRB5C3cO2Ki0OFotPU24KmYO1dunqb+PUdF0S4KCUAXdqpHt0YlIx5XvnULOGlGYWCBA9J242SIZEqO0nqT/EkkncturU3So7e/JGjNSgUxFOzMnNy4uNsm7sT6wXtZhqHYJdy8m0mbio8i54Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jvifTKJQkDBxDTsHD7kW1oJqzmKfQ9GXkkf7bE7MLdg=;
 b=PCXvHylLMvob8dQHAqq2DKTDx6BLAvNpsMcIItac/dfIlukJjktiulKax3xU6DVqZ0Mdmx9Cx14RwaTaQ/FvvWqEZ0c9ektMCWQE0X2YQK7ag/fWO2IbcAp1rQj92U97riQfDg1X/+tqqyRH3ohVBDiYNttjmDJd5eVdYc08Wm8uiKKGZdqCZ5SEvbEBZ1bsT2uBne1LKMWEgxRwrnhU4HQpsQQDBIBjULDvRT7Ou3r8D2lQ/px16/yGnqWTWtP/RNFRKK6PuqruNQ+rPGw+ttRA+LKGugS/ot4P0zQk33nSDp/WLZXgytVwI/yFsTgk+ZnA12z96IK2sV9+lDx2mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jvifTKJQkDBxDTsHD7kW1oJqzmKfQ9GXkkf7bE7MLdg=;
 b=kvXFUqOcJdEwPJDZ41KViwPKXpvFfC8F/+9pOdeJm2J4gKsTdcgivOipXl0jz9AWt7K1d072GywJ5E8AvbaCRRQMnhLuEm4hVYvr/Vhz4tFtSwiYy3xGFjSd67vyIyVdo9eXiCgaX8FYYiwkYbf6pfwd4pkww2PjFG0Wv9+jaUs=
Received: from BYAPR07MB4358.namprd07.prod.outlook.com (2603:10b6:a02:c2::18)
 by CO1PR07MB9082.namprd07.prod.outlook.com (2603:10b6:303:155::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.28; Mon, 11 Nov
 2024 11:15:48 +0000
Received: from BYAPR07MB4358.namprd07.prod.outlook.com
 ([fe80::4c6d:4703:feb6:237c]) by BYAPR07MB4358.namprd07.prod.outlook.com
 ([fe80::4c6d:4703:feb6:237c%7]) with mapi id 15.20.8137.027; Mon, 11 Nov 2024
 11:15:46 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: NVME o nLS1046A-RDB
Thread-Index: AdsxGtLdjaonMz/6SkiE9xEoFPlidwAs1RyAAJWiWeA=
Date: Mon, 11 Nov 2024 11:15:46 +0000
Message-ID: <BYAPR07MB4358A74708FE72C8789667C0EC582@BYAPR07MB4358.namprd07.prod.outlook.com>
References: <BYAPR07MB4358138C14685D6A11CFF8A1EC5C2@BYAPR07MB4358.namprd07.prod.outlook.com>
 <Zy3wh0qqT_LY8SkR@pengutronix.de>
In-Reply-To: <Zy3wh0qqT_LY8SkR@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR07MB4358:EE_|CO1PR07MB9082:EE_
x-ms-office365-filtering-correlation-id: 97309408-b391-4ba3-db7f-08dd024230e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?1AXDA/WKtekJ0Yer4jUxE2yR34K00B9a+I71hhIvWXCZ54qXiBfu6pkv+atC?=
 =?us-ascii?Q?pZWHQS6Tak9L4yl+iPwNZH9UEnzDGcaqr1KkQpOMutFerTCSSz5V7aRqkIhe?=
 =?us-ascii?Q?4yWKN5VpLThAqfXXtmsXtVqL4bVDPtlsLe4W+NJYbXkFnzLpYzBoKbQkMr7k?=
 =?us-ascii?Q?pT4ke/7B0QpM3AHNHCdNn8jFC0NXYNMQeivEq2XXRXSBaew0fQGw98qulgxH?=
 =?us-ascii?Q?KUIqCSJpyCxRUt+6s4y8/sXupYQXj9X+2xzBjJru+rW+oPf+nnIe2t88iws1?=
 =?us-ascii?Q?sKwPEemjUMebOTSDndEAOxTpjzZT3gIbHVsOZJ3PdzHD8EumsCQ7DIyc22eW?=
 =?us-ascii?Q?zG0DfWz+3N1Rac5KtwN5jrjD9bHru/5lUZOgKbO796oVhGVFLd1ehjaGGysX?=
 =?us-ascii?Q?5xmGwrEfnfmAbmML0tWzrKf65NFiGTR2hCQvPKzjfjUp9GNng1/5hh0sYlWc?=
 =?us-ascii?Q?gk7ORFHqe5c2QOZcbETVntKvmMwZX5Gfj9K3Kidwj0yJZE9koGmLQcxn3+wo?=
 =?us-ascii?Q?m9Q3VRXQXacbYm5sc2q+21irnUkKXd9zPS1ADKZ3VAyhA943h//hhWm36vr6?=
 =?us-ascii?Q?EpjVpBj0wa1FbZrkl+Vst+8DuzW5pspxarQi0iHL29y2UMdweZw4xiHBL+Jk?=
 =?us-ascii?Q?EKommIV0IIzpwDgbi1F9n6Dv2ph315tJPV7jXMKPrJqHYCZfDe1RPsReiAav?=
 =?us-ascii?Q?tbW/0T8NNnqxfqY/dIYUhTHBUZeFGC4wPkBjVFrmPqtfaCJkn3J0wwEMKo/k?=
 =?us-ascii?Q?MvD/rfHq52X4m2Zq8+lKK1f6sX/e6jxLCh5IuTePUbrMeikCIGYSsyPbAQo0?=
 =?us-ascii?Q?fcj5irA+X2fwMvj1IxhyOVHyPWKRgXyqetzP5PrjjYmvV0cyKP2rav1ObZ3C?=
 =?us-ascii?Q?AXC5nwuYTPyeEFDXp2dW0oJ1i1B4Mn7e9Ow8VKQDU3AR9S8G+Yu0vMzhkaRQ?=
 =?us-ascii?Q?5tDpBpr7e22m132s/umdUldCNIZuSVurKXbtqi4dN/uC4YW14mVXGk6bw0qh?=
 =?us-ascii?Q?exrzR+jkK1NK9gmj0WsiSi38ElnBgqTGJO0RAOCtjJWxr/pQdZynyj7q86+P?=
 =?us-ascii?Q?RE9DqZyyNOAM0bgHkt1l2/7iGS2Wn+pmdXvBWszR6gwIwzIXshBt77hD32pT?=
 =?us-ascii?Q?/k7/DykSBlkyplbkDstacFPX5oqG8idTTwhCozBmPrUOY7wFjwuEskbnA0j3?=
 =?us-ascii?Q?2jK0TB8zH0WSF0Kc4QTAk/ZnUDF4zJmpiI4FOBOIBkIvj68FbLjCKbP9l8uF?=
 =?us-ascii?Q?DXueltI3CJjyFRwODwEijVY4zGFokkuI/w+yFaP0ZHHp2Et+59+mOCWTx0kN?=
 =?us-ascii?Q?vN+TqTNdXvEAA0ZbVm9KWnfA?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR07MB4358.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lmQAPpA5qafrTBHgKjtLCB10SXpbDnoGqftDbG4flhxEz4XSV/gLR502N1gZ?=
 =?us-ascii?Q?u81GNnI1j73tQuAvP3lfj/QsUytGLTq2VT35mMdE1XoCocLgpPj5BOjy+HYm?=
 =?us-ascii?Q?gJsJ1vMUjiGiFNwZMdDhnLy3lq2CfWQpL5qDLBAoft9biwhTmwbJ0NScVwsB?=
 =?us-ascii?Q?VtJDBOud1x/1ImEunNM4hSmeDo8Zz6dFWSOCbJdZSuKxDzHNDeAyM2UOAFid?=
 =?us-ascii?Q?3YtHWKHBF78HJE2oEw6pqOzbumnpddNBoGxkoOWhWg5jV3JzT3kUHmnvshYu?=
 =?us-ascii?Q?VM5nR0/rpfQRAI8xk7isQLHGnHZUQAbW5qfn/B/yb8SCWjbOUlF3Ff3Ph5ZA?=
 =?us-ascii?Q?0kTTTOmRFjpJchMSbok5e211vpjGeivXwd4/ah8N4Vjp5BCsQ4Bv3vjl3iaH?=
 =?us-ascii?Q?RiR3WP+oi39JcdfY/fAiDWydCaU+yDzVdEMltmqOKyev7lYVZ6z0RnO6+4yC?=
 =?us-ascii?Q?xOCxSOBAVKclfS1liIDR5nlyhld3bTklkc0DhC8KBtl6CDaG+20C7nX4/cwB?=
 =?us-ascii?Q?+eGwhrm0H3UGyMGzVwxzfAsYnBoF4Wbc5y60SXk0DOZRDC+0bRBWfXCuCohf?=
 =?us-ascii?Q?sZ+n2kG4mknNwEyqcfVHPsQYD8P3tIuWhL3iVuuVIyX6imPoRgCaX8o/vDd5?=
 =?us-ascii?Q?aTU1VHsyov9Fn4XCn53Mu/nHnLfsQw3oCsxeLitwC3AdwFFYYisn27f3hFKd?=
 =?us-ascii?Q?eDYVYucJVFL/e2gbds9y7Op+wgf3IH08U24zoNtnA0SmbAIELLeTZVDZVXem?=
 =?us-ascii?Q?z6BmFxPHnn5EAYBK4wa3cWL7UlFh4njHbMiaQSeyeMrP1Trv38Gy0c/nlvzs?=
 =?us-ascii?Q?2yYdgkzplMuPQCz5rpDr1z/HzhbJaSDVA0O2Ityq0ICJhiMeuKDURjIS95Q/?=
 =?us-ascii?Q?yudGZ4jKDM8lDgmVLfHUb6YwkNjwnFPcncWBPKLUj/9VU0Js+xV2FWb9Jzu2?=
 =?us-ascii?Q?zBhhHWZK9EwCBy1p/N0PGEdJz04xTkM66LySrCFpv4huA/MrmGfsfrnzLP68?=
 =?us-ascii?Q?fQ86PYtrJ59l36V7u1urcUqJH/WF759qA3OHrzIx148o8jmY9EwNtVKCW3Nw?=
 =?us-ascii?Q?lPG8ZqdagkltCYVU0XxmQrreyJ6Tu6kYE0jTYaXP7eX5T581nwc+Wlh/bOQO?=
 =?us-ascii?Q?ItVj4Sf7Caw/noKVwAf2Pyle2TWktxpTKDnUWxEIEmNjgkg26UvUHCIuO8OI?=
 =?us-ascii?Q?CBxHb+4Cmp1TgPQTJ/tBm2GC0a2phEkVCXUUIMHOn3V6Ggd0BIi6aklsvgzZ?=
 =?us-ascii?Q?H2D1mQ51o2B4RJzCgHOFLfUG0Ubm2WWij/rlkr5aRyDsMeeRw1KSxRY/pcwX?=
 =?us-ascii?Q?DbpeJUYkpPBTCYt1rXFcjAl5atAOLJrahS+dzuAvq1jB5bojDCP7jomQmMVF?=
 =?us-ascii?Q?kcy7ds/dBtZrQMGZ8wLADZp/Yde6aLb9jXyKgWHiDXuWcvjKSpnVTcy3+F23?=
 =?us-ascii?Q?4qds2MXKExpj2sF+VAaQ1g5+zNe6JRy4vce+Zq+IMDz6BtZbrhCMJX/HgeJ5?=
 =?us-ascii?Q?5UxOr2R3WNpgH+bBRu9ad5e23E2SuxR8HEDYzS6hxeObMrhkn369ORY4pbQK?=
 =?us-ascii?Q?ls6kKn6Sjkca57+esnpzCIAjfaap0BCQLzYnKyEa?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR07MB4358.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97309408-b391-4ba3-db7f-08dd024230e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2024 11:15:46.7393
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I3R8jZ4dU4ffQxgDLV/ZDismG/QDfE5JhLbD4oOrgPgjuPTq8gDyfJPCMxkfK6QWIhIPhXG83P7YKYjvOiiwDYXTPY+9zBqlTOjH8TyhHN0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR07MB9082
X-Authority-Analysis: v=2.4 cv=MqsA6Hae c=1 sm=1 tr=0 ts=6731e766 cx=c_pps a=f1nyBA1UpxJqkn7M4uMBEg==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=VlfZXiiP6vEA:10 a=t7O-Hdu1JCwA:10
 a=m3P6IW4lH-wA:10 a=uherdBYGAAAA:8 a=bGNZPXyTAAAA:8 a=QOaCB_HVsaDIzkRaGJUA:9 a=CjuIK1q_8ugA:10 a=yL4RfsBhuEsimFDS2qtJ:22
X-Proofpoint-ORIG-GUID: YhijTax2MYvPdjr2ftqZAr3W1WDCRlPq
X-Proofpoint-GUID: YhijTax2MYvPdjr2ftqZAr3W1WDCRlPq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 mlxscore=0 priorityscore=1501 impostorscore=0 clxscore=1011
 adultscore=0 spamscore=0 suspectscore=0 mlxlogscore=999 phishscore=0
 bulkscore=0 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411110095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_031554_047122_1C220044 
X-CRM114-Status: GOOD (  13.13  )
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


>From barebox:
-------------------

The node /dev/nvme0n1p1 does not exists only /dev/nvme0n1.
>From barebox, I saw that below once.=20
It is not repeating at present whatever the command I use:
ERROR: ext4 ext40: probe failed: Invalid argument



>=20
> does "md -s /dev/nvme0n1" work as expected?
barebox@LS1046A RDB Board:/ md -s /dev/nvme0n1
00000000: 00000000 00000000 00000000 00000000                ..............=
..
00000010: 00000000 00000000 00000000 00000000                ..............=
..
00000020: 00000000 00000000 00000000 00000000                ..............=
..
....

>=20
> Is it correct that there is no partition table on that disk?
>From Linux:
---------------
nvme0      nvme0n1    nvme0n1p1

I have created a 1GB partition
[root@openware]# gdisk -l /dev/nvme0n1
GPT fdisk (gdisk) version 1.0.8

Partition table scan:
  MBR: protective
  BSD: not present
  APM: not present
  GPT: present

Found valid GPT with protective MBR; using GPT.
Disk /dev/nvme0n1: 937703088 sectors, 447.1 GiB
Model: SM681GEF AGS
Sector size (logical/physical): 512/512 bytes
Disk identifier (GUID): 1FC28552-4807-4EF9-B191-D7C17548F7F9
Partition table holds up to 128 entries
Main partition table begins at sector 2 and ends at sector 33
First usable sector is 34, last usable sector is 937703054
Partitions will be aligned on 2048-sector boundaries
Total free space is 935605868 sectors (446.1 GiB)

Number  Start (sector)    End (sector)  Size       Code  Name
   1            2048         2099200   1024.0 MiB  8300  Linux filesystem


[root]# mount -t ext4 /dev/nvme0n1p1 /mnt
[ 1719.613897] EXT4-fs (nvme0n1p1): mounted filesystem 676323e3-52d3-4352-9=
f94-7ca67e519f1d r/w with ordered data mode. Quota mode: disabled.
[root]# ls /mnt/
bin         dev         home        linuxrc     mnt         root        sbi=
n        sys         usr
boot        etc         lib         lost+found  proc        run         srv=
         tmp         var

>=20
> Sascha
>=20
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       |
> https://urldefense.com/v3/__http://www.pengutronix.de/__;!!HKOSU0g!Eb
> HLq7boyynRkd2Ikw5fIfA6sIstILSQg9LnoksyTtzNL8N6AL0jY58qS8CREAKjqs3
> E5QWQDBuvPPzxm3PujIi_Ag$   |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


