Delivery-date: Thu, 07 Nov 2024 14:43:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t92n1-005wEd-0D
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 14:43:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t92n1-0003zd-IS
	for lore@pengutronix.de; Thu, 07 Nov 2024 14:43:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6I0GQayfF+yQ2ibZqeetweFhs0ntJREBxN4K2+sJvOM=; b=ObtrkB/jDYqtNU
	w5NB4ivlPjxtRUAVTbJhZgMFdfRTYonsLG07KwAe8FGPpVk6gi1ADTl6wHvEmDfKyOft+0kN9wekQ
	wptlYUZ3oi057A8u8IPe0gX2f87znir01DDav+bCd7MHZ7B7jyKIzZS8jzL4FpZCjTw8pK9B/5RC4
	3k5GUZeP+GOB1acSlMnKGPNeeIAC7b8L4lHBovRmsxKaoFFsIwtE+EU0PVrfsHlnL8TZbyQULVfoH
	Zv9MAIryHka+xNYUkh5jkNX2egbeK6Al+dfLSv5lv7IhV/X9uhh+tnKN7QvnOsF6omP/verRwcZdz
	U284lY6zDWggooYZ3Pxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t92mK-00000007917-30OB;
	Thu, 07 Nov 2024 13:42:28 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t92mG-000000078zj-0HmO
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 13:42:27 +0000
Received: from pps.filterd (m0163886.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A7BsJDP016954
	for <barebox@lists.infradead.org>; Thu, 7 Nov 2024 08:42:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=pphost; bh=6I0GQayfF+yQ2ibZqeetweFhs
	0ntJREBxN4K2+sJvOM=; b=N7vPAQSm64rKTGcFeaMR+stKXZBuRLhXcdzSaWUuR
	hjBewZKvhy4Lqk/mp6dYjyp0Fokla5jv1Ff5xKOjZkcAOUQ9KW0wyjHMT86Ju1rF
	XslfhIXoA25Bn27MDm/FtOZibiyeKbEG5FJUcg5RdgOkNofbZxFAIKaRbWAiLXjR
	qr7PTGEUNamlUFFd8YGJJosPzfWXPcNdxOlkuM0TPrTZYyglr9MAZY8ZrB16JkfH
	15gY8KOxDHoA5z3oJR9eExxik5nbqun/gtOlGW8go2k0rLcsV2vOT8aE8A4YouU+
	lTbU1MG/5gWVV73Z+FGFpIGQEvJEveb1rtJDj9JGi0JPQ==
Received: from dm1pr04cu001.outbound.protection.outlook.com (mail-centralusazlp17010002.outbound.protection.outlook.com [40.93.13.2])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 42rw39rekt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Thu, 07 Nov 2024 08:42:22 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X3cAUheYgsLoM/3//OY4S9jn7McLSMoy/sQ1yK18YHbnE8vQkwlvhLbj8ppYCx5925B6CCL8m1ia5GCrX4hiDpatVjGs6TclXXBniBZB9aiMk6jbpb89aNuNIjRhY3yKVgF5Cxj/248uBEusxgcDR7XEVcCbz1ozF1aGyE6364jEqubkwBDtWXNkSDY13m3Wc/rnDJDeskjCKP/fpyXP6lEDa5tMmrDhpMYRskl3UnKzD5kJ+QqWdPLEylUR5EYNoZ/ZPHUvlunBQ09kLkUgm9bvpCIH5D3st+98O9XzrNS1QET70FGBqlxDawC9pz9rGGSgbIUNG9gz7CbGQWpgmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6I0GQayfF+yQ2ibZqeetweFhs0ntJREBxN4K2+sJvOM=;
 b=xKD7HtwBtGwjU+pBbJnlW5/NLVzSNekJyAwTnjoKCQr0zruxF8iUX3rcgaNAQLc/DqYZqRoPiaTwFCe/NCG7appg8icLLkzPe0RW9WqQWv3Ps13WyLT5uolCi9dHV3TeMdndfa8qbMrtZGHEWhdDkz1RNhrQ2/AgtyGNL6LY9D9AMb9vxvwammaORnEAL3GsX69YJ2OzD5/xGYZkqH+AvwGKwAig1icHfuca7tHBjgUNjckfmrnCkmPrIA5xH7kZId11xtvKOu6FIQG2BlFeo3f9lnMpodDhLIWOIgYKKFiQrAeFltecU9oKiBIDyf1tJJ0xGTuA4rHDruUund6mZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6I0GQayfF+yQ2ibZqeetweFhs0ntJREBxN4K2+sJvOM=;
 b=q7shsKrIFVzO1OszElc4DCzr1Iqwt64W93F8Y9Ic1K8cvVKu78LfYR1SRdhv+DZ8xEveer8EFkcqOtSLcy4f3/NzycZaPcsa09y50xKDcdNMgJeSynDcXq165qkmIGaTeNmQmcFJ7Dv0OJeTF1N5gWjNRpPv1/p8U8xsADUsd0U=
Received: from BYAPR07MB4358.namprd07.prod.outlook.com (2603:10b6:a02:c2::18)
 by SJ2PR07MB9953.namprd07.prod.outlook.com (2603:10b6:a03:57b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Thu, 7 Nov
 2024 13:42:18 +0000
Received: from BYAPR07MB4358.namprd07.prod.outlook.com
 ([fe80::4c6d:4703:feb6:237c]) by BYAPR07MB4358.namprd07.prod.outlook.com
 ([fe80::4c6d:4703:feb6:237c%7]) with mapi id 15.20.8137.018; Thu, 7 Nov 2024
 13:42:18 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: NVME o nLS1046A-RDB
Thread-Index: AdsxGtLdjaonMz/6SkiE9xEoFPlidw==
Date: Thu, 7 Nov 2024 13:42:18 +0000
Message-ID: <BYAPR07MB4358138C14685D6A11CFF8A1EC5C2@BYAPR07MB4358.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR07MB4358:EE_|SJ2PR07MB9953:EE_
x-ms-office365-filtering-correlation-id: b97eb287-065e-4d04-31e1-08dcff31ff53
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?W/c98335FAxWWFDTgx+Mhux1BN/Hbt0UiDVXCk2oqqazDqE4A0OzgEwGQVKT?=
 =?us-ascii?Q?7SdrfRRLl37V5WR1I9I38TXNMRVusDdqyTZrusZL3nVmdp3md5SP/iw6UPM0?=
 =?us-ascii?Q?bPdA7D8skjNzc4HXoGMKOGytz8iruOxfpGYj582cYTwL+0Uu7SZ8HVyZ609/?=
 =?us-ascii?Q?97JITHPhAu9LIXoeJp54AxEGYXYvOFfqUmc9ot5aDa3xdh5s5yXHqfa8Dptc?=
 =?us-ascii?Q?L6tJjxf5k5A62VGi7R0zx3BAI6NFaICe2mj0DJwOvoGxInCUvrxDU/zoXVCj?=
 =?us-ascii?Q?hESsWiX/P1q+6cosE0jdQ1/gFPtQodIhLs61nZtExgmwVitNXoVETIdQNe1m?=
 =?us-ascii?Q?65hxVZsf95D2wGwqz9Zu5RqrQZ2HQniyKYhtdtTNy4ONbBeQr05Ke+dOdbiJ?=
 =?us-ascii?Q?Vk5VhMA8Rqd1J7z2qbsCitevxltN2O7o2Z/rTw+IqhGb5S06OQap/fjEd02N?=
 =?us-ascii?Q?loc2gT8lvBgTd3gNuy4BwhzCvTI45upqA4WxuFMVG6INz/Gfl4ZimpabStZ6?=
 =?us-ascii?Q?c0UCp0f4Irv5Rd6IJyjbwVqNYBQ74x8sVjmn8KqrGwyLFhEngqq5VexcprJP?=
 =?us-ascii?Q?XpZ6H796su6dP07wvRjdxVGj7z2XC4100iVEHTNBJ04rpBTHor9N5bPLISE1?=
 =?us-ascii?Q?i/QSR4W/rCRqbLbtylraXFJEcSUoImJ3USKiwTwhMzuRFwO6EGgjEWZV4ebF?=
 =?us-ascii?Q?0bRYXiI4pJ/bEIJ8lsDzNm3zhl08VRDcCfxHKRU67P06Fkug6MuCoN4ExH6e?=
 =?us-ascii?Q?y/KdA1Bz7IakyCvwlpsVXXZlYQyxGRDIlYBnwkVlB0Md8osJkYE9Bn7Pt2Si?=
 =?us-ascii?Q?YIFHI04qzW9/+6O3OdJYzijc55VoRxe1AZrBJuwtMPLGu8gzX+0s+prkpvkA?=
 =?us-ascii?Q?rdVik7la7974Ih1VTarZdtLUE7sFZs47icRE6TV40qG4iB/MHnSa/5+gfSlQ?=
 =?us-ascii?Q?cAOjBFIBrKt/6x08QgD60e5GHLsDY/cwP+gXViI4HlxARLL0jHsaaOLGlDSX?=
 =?us-ascii?Q?7SNiP8twUHvYluyhIJy2K0CKud0d65WmniCo2JNcAy25hqOp4WMvRhDO1sdn?=
 =?us-ascii?Q?r+A+ocJR4C6XVS3CRQ1z14oV27wtbiNPhD8W+UZbNH/SmDcDt74Dhc+NJitX?=
 =?us-ascii?Q?vZLa3WJckeoEXUjztOF7BVl7MG+/QW38MpworWQs4l/RYDlo0qNIYbB6VCMQ?=
 =?us-ascii?Q?kX8MkpMRn18rBX7amET/t/X5rBhIMCl/+x1j+Ljoul/Rj6oz/W8QT9QVP/xd?=
 =?us-ascii?Q?lpj1uRnUwOWsuCkthjKaMRUzjjNGV/mmUpftWw+vryVqZ8y8WQQkvQkmQ9Gw?=
 =?us-ascii?Q?SoVH/Gn/cp+Tv0hYRzbL4aEnLjPMKIinxqe/9kg59ocGtdnPdneu8U+5mRVJ?=
 =?us-ascii?Q?Yw/uSIQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR07MB4358.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8CZw5Jfz3O0bml5zM3PLqedgwY1Z8XRM9t0IObVy2jjQulSFxqB7OMXt09db?=
 =?us-ascii?Q?JqX1bbmKxbCcZKjIJ79oW4Oiyzh3cuF+MXqdfikvVV5JHE/D3gUoAb25vREv?=
 =?us-ascii?Q?NSNG6B9qDxekUrnLh0vSCqy5zLvUlSHMxnW81KCsr7L/4JpUNM4KfD9+BMZV?=
 =?us-ascii?Q?R3sfU+aSrDNqsgZrg/REM+3gL2+9nxXMzVR5FtDVQ7kY//Ixmxp/aVJuT44c?=
 =?us-ascii?Q?ApfAJxccDf02ijYwK1dxMsirzouavB/oqaR0yy6xGMa+ww4fZn8aoHqRlZXB?=
 =?us-ascii?Q?AE8YYvu17oB/jJ5KdJCEGetM9wiQ2f19X2v8AeLjOVyNe5EMr9qAPwvaXqw8?=
 =?us-ascii?Q?oL6vImaXZNbYnP1d98DTuWcUsNoyTJ4x+lMPX5r4Fi8YSWZOJK7iLKmuy/78?=
 =?us-ascii?Q?O2UeYvpRA0Urc8Crh3IuPTgX93UqJGl2dlwkQEUu0GICXITS8AGiuWqJ6Hlm?=
 =?us-ascii?Q?YnBw4NaxOrM7Cw2TMIpYiIlEs63/RbEUwhqSgu3/M/acix1+fVH3PZwOMoAR?=
 =?us-ascii?Q?8x0adu3TeNDnvv+ConPsB1LK6VOA862M+Efs/I6o51T3pvEzWZXmULkNmOyO?=
 =?us-ascii?Q?hCj1O9ziAUDCdXt7WpWCDyX8D/umB4G/AHblWutp3FQTMGPPaCz4k7i60Ukv?=
 =?us-ascii?Q?hB6iJbbShqadkt6dyL5lJuhzF0dtO3tLODdxsg0jQMrej4JrY8D49muxMe4k?=
 =?us-ascii?Q?44EAotO0bhXCZXR4Ds11dsLSNvQTndDdX/cFz0P/28IprhPQzzsR+eiY9avR?=
 =?us-ascii?Q?A9tRPkDAeQ4BbvF0/bCdEtOfPLk2zloltM+g5ND7HHeKt04aGufRCw5/a6gU?=
 =?us-ascii?Q?20+lIzXqwM4oaOLYr7IDznQS4dVsJbELAA0Zt8NmZ4zzSbrUxFHo7IqMFTd9?=
 =?us-ascii?Q?JriDNl9z8hlmOXcLax3qNRdG3dItBz0sIz8eS3UZzxNLomJK9oXx2wgqobSD?=
 =?us-ascii?Q?8dwKDtPQ31L0ElitKvPJAaxBqdhRM0+pIGf9ojeN25I5CKwHFSw2e9iqvzUE?=
 =?us-ascii?Q?F1yxu0mORzW0U9Q2Z1Z1Lb0Ijle3WXZOh8t6Yb9PlXAelNkKBu/MCIGkwgba?=
 =?us-ascii?Q?Gi0wKL6DpdunBhzRZe5gmXDBpTscHcws7if2ghLN8DHZ4k+anGUTLEAXZdMl?=
 =?us-ascii?Q?bgaVBE6IQJF3YG+l94LBVVbdESrAFh8Y5ZeiNpj+S/mcYD3ITyRlGaZ4ZZJw?=
 =?us-ascii?Q?wQWrBGnbUeBSusoOYZQRsFL1pdTqCEV5wM/eEJRbZsKzcWCmcG/A2OF+nl4u?=
 =?us-ascii?Q?FAKXhufNQnqUTBEklfBXdR+AcoGctMfw99KYUXtjQSdKlEhHxlg1hP4fMRP1?=
 =?us-ascii?Q?RAKFuTtBOStUToCgL6Jw7oqSnpboie06HfpZyiKpKklw/0P4IqzfvTkIKSf6?=
 =?us-ascii?Q?h5+Ka5VOD1a6A7ZEFIGEVnsm6mrSrZZUam/rKijBodpr0xzTUSUAI9R9li3i?=
 =?us-ascii?Q?0+WPZyEb1QRcReB6N3uiZ4K9545ApjPWrh3GFD4II4WGZ8AQYnozxs8omxJH?=
 =?us-ascii?Q?NlDorqBNXah/aYQO/nVtbisICPbLdjsDByUu93gmY/bG5oyLRIP3+JAZCY7U?=
 =?us-ascii?Q?z+SKAhqhqGxJFjy57tL8X3BJQDWAY5Qfd3KyL5cW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR07MB4358.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b97eb287-065e-4d04-31e1-08dcff31ff53
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2024 13:42:18.1656
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: epeBbB68WPA0s30nE/7GggDcud1y/vS1K/C+xEcSONJoVD+akIh65F+t/ETUHKm5WKAGoqXXkyaNhATIbusyKI82qNhYruvahRpfYMu2xH8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR07MB9953
X-Authority-Analysis: v=2.4 cv=G6ROEMk5 c=1 sm=1 tr=0 ts=672cc3be cx=c_pps a=rknZK0v7KRh+kGA6vhtu4g==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=VlfZXiiP6vEA:10 a=t7O-Hdu1JCwA:10
 a=m3P6IW4lH-wA:10 a=C2ouM7DNtsUhm55rwBkA:9 a=CjuIK1q_8ugA:10
X-Proofpoint-ORIG-GUID: qFil_1Dd5Tp_FX3rm4O6K1B5hgtC_Nl8
X-Proofpoint-GUID: qFil_1Dd5Tp_FX3rm4O6K1B5hgtC_Nl8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 mlxscore=0 malwarescore=0 spamscore=0 phishscore=0
 adultscore=0 impostorscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 mlxlogscore=605 classifier=spam authscore=0 adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2409260000 definitions=main-2411070106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_054224_474219_2B4C3750 
X-CRM114-Status: UNSURE (   9.28  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: NVME o nLS1046A-RDB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I have installed a NVME device on a LS1046A-RDB:
      `-- pci-1957:81c0.1
            `-- pci-126f:2263.0
               `-- 0x00000000-0x6fc86d5fff ( 447.1 GiB): /dev/nvme0n1

My barebox version is 2022.03

Is there a way to format or mount the device from barebox?


barebox@LS1046A RDB Board:/ mount -t ext4 /dev/nvme0n1 /mnt/nvme0n1/
mount: No such file or directory
running automount command 'mount nvme0n1' failed
mount: No such device

Cheers,
Renaud


