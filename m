Delivery-date: Mon, 07 Apr 2025 18:05:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1oyf-009c4U-3D
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 18:05:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1oyf-0006HK-7m
	for lore@pengutronix.de; Mon, 07 Apr 2025 18:05:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CXxP+MvsObu4rQkXfqkLjDFdNG7ggg22QeknS69L+CI=; b=OAA9S0eL0qVchq
	Y0bofEQbBSm0IgjUKxmIe65og5ugMKt4jLn1CHGjPRkjKig+z21kgZQUbRZgfZofjoO41x6d6aNL0
	KXQoqHCf5PzOBVeRdqbQcerMK9R3IwmyQjZ/SsqoZcjbbnSXyhbatkg567aYEYK4SMddGnqgAPYR4
	yjMyAVfoZ06GDeGCJCKYMuSNwFYgRczkgUaYyejiQg8ymXtER9Y8cuF4FIwsnqdKvKUwD8fi+Xmgd
	NXrQOxup1pjOC24RdWjI/I/kejem35EFD0BzBGdBCT/DZ4D8fZIFh3eiFuT1WkUdNEVhWft/GxwJq
	gDOhIMrrs3GzXQn6+7SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1oy1-000000013aA-1ykN;
	Mon, 07 Apr 2025 16:04:57 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1nsV-00000000pXV-2NRf
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 14:55:13 +0000
Received: from pps.filterd (m0163889.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 537BldwV028949
	for <barebox@lists.infradead.org>; Mon, 7 Apr 2025 10:55:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=pphost; bh=CXxP+MvsObu4rQkXfqkLjDFdN
	G7ggg22QeknS69L+CI=; b=GBTf3ug9OTc3fmF0YwA0b8QwZ6dAwmKxFMF993zKT
	eIf1+jqLbkmGUp+oozSDtzoj2MqOH4luNk/vGTIQE3cwDP8cwDKOiTyAaKuMm5cd
	elDL50+FtAMBkOsWReROujZg+bvcnw2b0zJ9ZQnodK+cf2J0yxyySsKcFwZRjCIZ
	QD+AZ1WQsiU3Pu1GIlJ7G7fM0KIk2DWkt5KwoGJLJCdKuO2Yz789KDq1VlIXRRqc
	447oEEYMbuxBx5+xWzJivBkN+0CpFdPCyJMHx192On+cwLMdkaIg8HLNcg75NPEn
	4pUbp+zKQqtFLNTwKqUiVubKPULMW5n7ueSVXe5eYjZ7w==
Received: from dm5pr21cu001.outbound.protection.outlook.com (mail-centralusazlp17011024.outbound.protection.outlook.com [40.93.13.24])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 45twd4d1xm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Mon, 07 Apr 2025 10:55:09 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o2dCb6p3ebWw6KhhUXVanBFY7p4IBv6JFKtZyPfWjt4r1G8pghx3AOh9DFvDD2g0Zk9JYyr2jJAfZllSERnYlmYM5k2UqjVn0b88RAkSMgG6p0egcOjL/TGMOOzrCyAtF3OS6QsdYGlXab80ll8Kz67O2Tffsk/xgP2i2Ej9Sb/9oUP6lAR1PanqS5ZJ8MyjuiA3/fMgBbk+TxswIpcBdAjDE4Dhj+V8iVxYYKpXScO2UFWKAgSTkzCxXbClt9mZi0bjlJPc86p9OyTyNmtrXoiLFDlFhEqd2SWSCibdmtVWVwrTLUyhw5oRrBZXtuJppAbE7dpHqwop5s6h599eUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CXxP+MvsObu4rQkXfqkLjDFdNG7ggg22QeknS69L+CI=;
 b=KHdwqO8Nq+am64++KXW2yhxnYgCncfUi1+S9d7zjv24jvoGly9ouhKfAgB4I5ErGNfn2L8+OBfBpFqGbF+oyKERTrwLT0pOpp6CWGL2lxFMl/DeO6ifZWN1MtjDS21VUgfgv9QTZ/annDFqi84F7KiQFp8Tlv+9+8iaMzcQ4LUP/S8plUtAw62ii7fOmgXRg49Ae+UpfTtByGbt3NzV2VOyhR35N2dWEs1a0R6OnV/Y6XYuEg2GAeBjQ4pdVckwYi2H14IF5okzHJPWh4FvXCBXZL/1dUrpXc8Jy/GnQIoEtbSca3WDW6FUcSGFg0eUxxFpYYf/U+AHec296UQWZEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CXxP+MvsObu4rQkXfqkLjDFdNG7ggg22QeknS69L+CI=;
 b=UsZO8UTuCdl8b62y+06eYZQ3EvXsFLj1rTH4nSIW/ZYODxM5/MD9VROTrcF7MUCzCvsEkMCZbf6qTLOZDFbrMivql71blwdhzz8RvOtGHCZuqjgonb8l5su5uwOkqoQerhGNoTW9LK8PMhqz748UU1mxFhDS4eFK4hEFoc4/bEQ=
Received: from DM5PR07MB3532.namprd07.prod.outlook.com (2603:10b6:4:63::35) by
 PH8PR07MB9464.namprd07.prod.outlook.com (2603:10b6:510:22c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8583.46; Mon, 7 Apr
 2025 14:55:07 +0000
Received: from DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec]) by DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec%6]) with mapi id 15.20.8606.029; Mon, 7 Apr 2025
 14:55:06 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: PCI memory mapping
Thread-Index: Adunx0oODuVzmVfJTPqjQ9JvOjjfsA==
Date: Mon, 7 Apr 2025 14:55:06 +0000
Message-ID: <DM5PR07MB35326053D9A1078A2B35A979ECAA2@DM5PR07MB3532.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR07MB3532:EE_|PH8PR07MB9464:EE_
x-ms-office365-filtering-correlation-id: 80e4ce10-a3b9-4c9d-5345-08dd75e42f97
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?NsRyKI3hxdtIoF1NAJV2asjWMnM1yCn+aWScfdV2tIvsD6IvJPwPKz4w9F55?=
 =?us-ascii?Q?kkqVxsmbSCuc8g+8c/qeWKp58qVNRMt0i+BXehqZOpwl0wJ+sZcuzgvsDFXL?=
 =?us-ascii?Q?CyUXPiLNBWK+g9I3zC1LyPuK3qIikP0cdLQ8ora0dwOtJnhIvtbN9V4tU0TB?=
 =?us-ascii?Q?JXAOqE/+gF4xeny5cNo41i9fyjn+Rhxvktt8uLCDg2GOHIDfc07UcIf2YnUT?=
 =?us-ascii?Q?8iIPbes/PS7O7vFCQ7Bp31HATo2Wa83vyF+7HVy78hIDI6nOxkMdIAfJ/fAb?=
 =?us-ascii?Q?EdHfFC7dTyW3e9dWPXM8zK5RfTSrSMvepbLdF2Rv7g+m6m5C/XDOrhgJ8sPT?=
 =?us-ascii?Q?zSgVL6B2HfYx2z9UmxmLM6jzBJCuuKfqA7GftMuKe7ukEHh44ixN8OJSmgj4?=
 =?us-ascii?Q?It8ZfEpTAOsVaXdAr0xLo+eD6MoromoDN7csMZPgk34bSh5lY1JArKMWJnTz?=
 =?us-ascii?Q?nJqh/O6cSNaT3DGp9dNRq2+vsvU7nzmiN5NAps3+wKGby45ZmWiqS5HUr5EI?=
 =?us-ascii?Q?xoQ2sKeVKJMokR4pbdo3CqKTc0SYlB5n2Oh1MYqDkstGZFol7qsU1f4g4pOr?=
 =?us-ascii?Q?oeJ+EXIyRrfKYsafF+kzcUentLmjnn+kLzFvEPxMiaq50rZe55P0hKU+0hE8?=
 =?us-ascii?Q?EpAml5OdIfdPlb/Ujxg7LdHLAUQrPIVo732Fek8eGln+09U8uKUd438THxPP?=
 =?us-ascii?Q?Wah14iaqmbUCOO4SA4KkB+I8WrJEAc35iHPBOUAXqZxqRJvOA3++aVsINoTE?=
 =?us-ascii?Q?ys+KJKlP8FAqhR0U9MVcfJ6/SOpwAL9XUb5ksbXoYSfsSaEdLRwlvdhQtII/?=
 =?us-ascii?Q?hIYNG7ceLzy6KUP0nzPyDi5BLuuw7+knCkXN+6MyAMP0kqGq42ISnq+X0+hh?=
 =?us-ascii?Q?WLvPh9R0GCgVSCyuetI02POSQizBxY50M6OY9FJEM/pBhiXmToUEBdk5cZoq?=
 =?us-ascii?Q?XxsTVKnqd3trSzXIRTvBU5K1CU4vNbwAKnDDkDmc2zhOqHWVz310K7wF086S?=
 =?us-ascii?Q?1re2R4qx/63YvdKwy/PuxCSYmZEfqg6UVKDHljIaMrnF0lR17QAsNqoH/jRi?=
 =?us-ascii?Q?m/6qIzTwOTgyVkphHFyGCrmaAvA+FaocUsaZ8+sc6e0tzRD3MNB4MdmgditR?=
 =?us-ascii?Q?eHUuz3+28puGl9U9SAXJ6Jub1YMxjqVbWLcQCzwxP5GRWKOYlHjUJSZcBqye?=
 =?us-ascii?Q?KsFlg3jUPG19b7aWYHUtDYWle5glfirk8yvmi1p64xKaiwD5V/dc465GXexZ?=
 =?us-ascii?Q?OlDAd/P7PWf9Pn7FhB0aCoc1arZLzxH7ay7Vls/uAcCos/B+mnEwkR33KQ9S?=
 =?us-ascii?Q?wVdkfF/VSn0hO5bTg8T6NS0cPjPQC/4V1yVXhDjYcg9xeXgNkqhZw8SGo/kc?=
 =?us-ascii?Q?D2eKjLUMrU+vRv8f9BbnrDvnyDl0agPGnZPA1syKnKJv5BgJ4Upq8iayyyoN?=
 =?us-ascii?Q?GDfkiNu9sp18uPB5C5R75wvouDOjtzbm?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR07MB3532.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1HXxbNyw3xeJzPaXtiosCRHaZhh3XK7ccVdZpHehpqR58p8PM2l5QE2vEFpC?=
 =?us-ascii?Q?zcck+Lm8DmxZ+Kddfna9i40W5kIrEErgEwT6vk9xOg/zLyE/Ro5iOH1tENXu?=
 =?us-ascii?Q?l7tSDmmZuogEZTJ89tjT9n5sWKe/wlQSzoYJ9GiHN+ebRfvFBdKhE/E/1ZPa?=
 =?us-ascii?Q?rNyCAsgQt5SnczCo2KMI6t9VGshd5YNYDeRJVEXNFATxyMDN5ReOlE+w59KO?=
 =?us-ascii?Q?qBfkOBywTd//rgNFmkRSt1T7U0L0vXURjxPmQtYL+aJrYmJj1cZOIgNsckV5?=
 =?us-ascii?Q?to7vG+O5DQNivTKrvwh7u2XfKfE8p0IuWfWFLtlsnV5oboSbkGoVXApSzE8w?=
 =?us-ascii?Q?Zjo8iLSxYYpenxJYa04Y3p1lSNp5Zuep4BCKtw9liIBI90ifRJTqWR+yhTSZ?=
 =?us-ascii?Q?qNH0JcclW+aoG/grj0rczzjcPun6Vl19VUH6JfWsvt74/4kaaXGqV/RNNIbF?=
 =?us-ascii?Q?UWaZxM/g0QLW47Ni7CnNciwdUIsCrFXdlqulJOm8OZvo537gSVJKcHNSw2oh?=
 =?us-ascii?Q?sfpFxXs5xgPYIfC+aAl8xzzAMqIZK8i1QvG4iGYEX4u8kHBN0TKYVPl5cKHx?=
 =?us-ascii?Q?JBYnH4iO8RLo2xBZm9zaKnBIXjMJ2YlzeUlmccBYAasDX+me/ChyGnurnU9g?=
 =?us-ascii?Q?PrKc3O9LasDXXf6SBca8e9Xwbe2pQ1k6Ce0sUzMRGAtQ5ZDObcUVDI+wIn5y?=
 =?us-ascii?Q?wSCopYmAZNKU+KrWteQdNIttzN0M6xLbR/ihRLxU+55nk33suoxGVawd8vad?=
 =?us-ascii?Q?ro9Nkj+5Repow8P/zkhRXYhctYNYQjdgEPFCl02hwjwRVQwwEjRvxmMQBy+y?=
 =?us-ascii?Q?4lj01AUED0IbpDm3ANI/Vl8JYSLhvMIj/qKNC7g+cz1aqALmvEjlnE5RFdAP?=
 =?us-ascii?Q?gDTrzJ+vmdewb+d3qv+86y8h6zp164ecuD8wyCDDFAuxMJsD+2s/cqDl79Qm?=
 =?us-ascii?Q?tlUiT74T/0+zDJUzAd4eoNbYDYRksuyL8BgqEaJy4MYXrB0yUtqUVbmOL4LN?=
 =?us-ascii?Q?cmPE7pyBMNybpn8Rb650rUd7J0L5VhGL06y8HA7+ycefHrrBCjG6ezZLShk4?=
 =?us-ascii?Q?3+8WBVi1UiSvNQNHtFVfviOSjhwfR/yko1odu8qcv88VYohlBFp+YvLH3Wm+?=
 =?us-ascii?Q?TMPLrSo+/M2dXOj9tSu4s6YhMyiy+lDfKXJRdrKEH4KRrgdT175PCgwpeKFm?=
 =?us-ascii?Q?9z7KzBr9AzmE9z4hAsk5S9y/W/MTxq2h523npp5VIxksM5i2Iqp0pwEDxJbK?=
 =?us-ascii?Q?ny5BvINqPGx6u4K+EYntI35cA9+Zi+f7SyrT0ggsjQv4ya8zLEJjvEOdPzKS?=
 =?us-ascii?Q?IUUlqFHcpxxWNKDs1346LT2Sxco2lQc+EpAMZsl7hEC4LRqt9ywV+J86bIfj?=
 =?us-ascii?Q?6N0zCJgaNzil3S3D4u37LQCWSy+FXterlRHVyZhgkrNNcvTaQyzVCxRe6Y/y?=
 =?us-ascii?Q?FqnOmYtfHVQyDZBm8cbCnVUMFytCdCyMvQqTuU/r1w7kjNATKbYOrqN/LA0z?=
 =?us-ascii?Q?Eopqb9OBmpXjaNOf/Qj0tLfqAaYIUd5rRTWF/Ai4c43vYYGTMhhz+QqFzwYB?=
 =?us-ascii?Q?UPSSetbtuO/NGkymeHBfFrb2G6NwiZxrM6X3cKAk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR07MB3532.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80e4ce10-a3b9-4c9d-5345-08dd75e42f97
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2025 14:55:06.7362
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +yDNakRUsdsmMH4Ii0OqbWE4uDO7p9lLLf+am6KJLVCL0Py3liumdZ+yqJxg5fkLsKMN01t+H4WKdVK79hlVEZNNjdiHN+A2z1xrVs5JvU0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR07MB9464
X-Authority-Analysis: v=2.4 cv=auyyCTZV c=1 sm=1 tr=0 ts=67f3e74d cx=c_pps a=pibkrh05mLzxjy7FsoIMmA==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=XR8D0OoHHMoA:10 a=m3P6IW4lH-wA:10 a=Uo_86BU20xzhBZ43C2wA:9 a=CjuIK1q_8ugA:10
X-Proofpoint-GUID: T3IbymmAEc79JqLdPpTxjlkVkzc3zfhJ
X-Proofpoint-ORIG-GUID: T3IbymmAEc79JqLdPpTxjlkVkzc3zfhJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-07_04,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 spamscore=0
 suspectscore=0 bulkscore=0 phishscore=0 mlxscore=0 adultscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 mlxlogscore=999
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504070104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_075512_012571_5A352872 
X-CRM114-Status: GOOD (  11.17  )
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
Subject: PCI memory mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,
Barebox version: 2024-09

I am porting the Linux PCIE driver for Broadcom Cortex-A9 (ARMv7) chip.
So far I am able to detect the bridge and NVME device attach to it:

pci: pci_scan_bus for bus 0
pci:  last_io =3D 0x00000000, last_mem =3D 0x20000000, last_mem_pref =3D 0x=
00000000
pci: class =3D 00000604, hdr_type =3D 00000001
pci: 00:00 [14e4:b170]

pci: pci_scan_bus for bus 1
pci:  last_io =3D 0x00000000, last_mem =3D 0x20000000, last_mem_pref =3D 0x=
00000000
pci: class =3D 00000108, hdr_type =3D 00000000
pci: 01:00 [126f:2263]
ERROR: pci: last_mem =3D 0x20000000, 16384
pci: pbar0: mask=3Dffffc004 NP-MEM 16384 bytes
...
pci: class =3D 00000108, hdr_type =3D 00000000
pci: 01:f8 [126f:2263]
ERROR: pci: last_mem =3D 0x2007c000, 16384
pci: pbar0: mask=3Dffffc004 NP-MEM 16384 bytes
pci: pci_scan_bus returning with max=3D02
pci: bridge NP limit at 0x20100000

The PCI memory address is assigned to the device and map (pci_iomap from nv=
me_dev_map)  but access to this PCI space crashes the system:

pci: pci_scan_bus returning with max=3D02
ERROR: nvme_dev_map: bar =3D 0x20000000
nvme pci-126f:2263.0: enabling bus mastering
ERROR: pci:  __pci_set_master
ERROR: nvme_pci_enable: address: 0x2000001c
unable to handle paging request at address 0x2000001c
pc : [<9fe3d6e4>]    lr : [<9fe3d6d8>]
sp : 9fff7f38  ip : 00000002  fp : 00000000
r10: 0006b52c  r9 : 40000000  r8 : 9fea9b88
r7 : 7fe18500  r6 : 7fe295a8  r5 : 9fe8e5b8  r4 : 7fe29538
r3 : 20000000  r2 : 00000000  r1 : 0000000a  r0 : 00000027
Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
[<9fe3d6e4>] (nvme_probe+0xd8/0x4c4) from [<9fe14650>] (device_probe+0x64/0=
x15c)
[<9fe14650>] (device_probe+0x64/0x15c) from [<9fe14778>] (match+0x30/0x68)

Tracing the problem, I found that if I limit the scanning in pci_scan_bus t=
o 1 device/function
-       for (devfn =3D 0; devfn < 0xff; ++devfn) {
+       for (devfn =3D 0; devfn < 0x8; ++devfn) { =3D=3D> At 0x10 I see the=
 crash.

Then, the NVME device is detected:
nvme pci-126f:2263.0: serial: A012410180620000000
nvme pci-126f:2263.0: model: SM681GEF AGS
nvme pci-126f:2263.0: firmware: TFX7GB

Has anybody seen this problem before (I havenoyt seen that on the LS1046A)?
I am not seeing much diff with the master branch in /drivers/pci and driver=
s/nvme

Cheers,
Renaud








