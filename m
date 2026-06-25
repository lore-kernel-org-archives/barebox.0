Delivery-date: Thu, 25 Jun 2026 11:03:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wcfzn-009ey0-12
	for lore@lore.pengutronix.de;
	Thu, 25 Jun 2026 11:03:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wcfzm-0006Q0-FR
	for lore@pengutronix.de; Thu, 25 Jun 2026 11:03:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/FjIAmw8Vj4c7ynDKWsw+XJGgiupM95SENdZl0L46bk=; b=gIC1gZRaKlQgp+PM5agQ1zw4PD
	3pyHc8MS52oDyqC7QQAKHYmff5Wj+1yoC8DN32g8YSx7YJe0r6Z4q++pipAUPzuiPhDlSnO8ItUIr
	RnFGPQhmv5VJVx8iUhJ4945S39+ko31qir4srhFrziZdGAkgNaaTHCpnippMWNG0yASAjYtx/poMk
	cyG4yRZ57wjMqSmOZ8qESK23Soefwxtk2tEbacj+QYqFp15F01E5ghhbXmLhJAmNPoXgY+SDS73ed
	cYlcciFlUO40gSPXlsaAue04XTukYvTLTIqWzTULfVw7igMGdJirJRHU0Tf/Cb7Zeuj4AjWOCM0Wu
	npuk5wcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcfyM-00000008roy-2zFw;
	Thu, 25 Jun 2026 09:02:10 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcfyI-00000008roM-4ATz
	for barebox@lists.infradead.org;
	Thu, 25 Jun 2026 09:02:09 +0000
Received: from pps.filterd (m0163889.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65P3eDtL1987812;
	Thu, 25 Jun 2026 05:02:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=/Fj
	IAmw8Vj4c7ynDKWsw+XJGgiupM95SENdZl0L46bk=; b=JF8RrKRctB37W1cwATD
	xzO70vAtydOx7D1986iBoZOlfsCG2UGn0EZQKn3k8d0Dgd5/zdiQtADgN7FdLcyk
	imQyOd0f8nshqhEvApTVpNVjLk3iYqBf8WeJZWbwbb0VotOO8m9SlENNsDXJXqZj
	IGM3l77eD/eo6OV/dZEcl8h4sNPhHAbyFBY2DKUEJTsdA4kUV7Im4fTEbJ4Eqfnn
	9VFM1IVeH3C5+bFcXWz0aLOIMH/k7issJ28F2PkAagkFxYEaw7RW54TUQLnI6LRc
	hEpfhG3lMinyWYKx0cgC+3zUPr3ErepSyGWsB1g7UdR6vvDfm6Su6V797dfrEzXG
	fJw==
Received: from dm5pr21cu001.outbound.protection.outlook.com (mail-centralusazon11021089.outbound.protection.outlook.com [52.101.62.89])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 4eysv30d3r-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 25 Jun 2026 05:02:03 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZEWqfFlLyhDi4VEACyUHtQ3Pd2QoEnYgZZWh/yWAXYMtDmHyvPDoHAjQG6oEqkKMucTMMJPrkjcs1x1QlyHoWpO9LImwNz1J1G0s0wSXO7p3ub8EJJ5ayv57So1kOBy37MXNWlVLL2Q1tjf6J0Z4jL19s7b05V3dUcIWabNg68Zw1hESMfVi6E6LoXjVeLZSQyUQXU5hg2xh7ia4zsy0JqhpouusnX/REmbnl4SRZZZHD/khkrEtC5dIe3uIKIW98bGfyS/Q6dDLcJVTOK8JdX9c67sdWwH+y9O4KgHMryJyV9Dg20INPydZ+QfhrhkhDV//1Ox2nUwWoWrhzOLIdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/FjIAmw8Vj4c7ynDKWsw+XJGgiupM95SENdZl0L46bk=;
 b=ILi+LrWZdCDCVvZ3If8VVc6+jB02pHnwgnevyoTQaenN+ITL9qZ29mhw0N/UkMs/c2tQ8puua593MJ/Nhs1QUGWnmhDhXId4uPrFzio98AlzTyBifG7s9Ko4prtig1jdFB03t+C9TtmIlOfqbk2wqKh2zOxSF+NUQqVS722YB7bbpQfmNCNoZl1q7WzyVlWsdC4mw9217nbXZMmReUzWnHSpGgxR1Escaa/B07chSUF/seXJahlxAAQ7z71yJ7j2VyQLQTQEIvRQdQzAQfeIiqGo6Lrctl2VqWMwHTu/uBo8TjXubPc0z7Cg+imL7HfFTI7c/vr54PHg2saQkhmINw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/FjIAmw8Vj4c7ynDKWsw+XJGgiupM95SENdZl0L46bk=;
 b=wwTUZYZXIpIWYboLPAwo/BwYQu3reQOlhiSU/m40zwaE2CGTW9PuDGkrbX1+ivuHRQk+g+lTeMYWkoxNGN+l3pwFj5K7NpJZA7HowwtYNdp9pIiMcx3cTad0+G2vBWyYaSyKIC2mZlU82trP/NRlcWPEgU2Jl6WFEvLbkngB/yU=
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com (2603:10b6:a03:4e0::13)
 by DS0PR07MB10083.namprd07.prod.outlook.com (2603:10b6:8:1cb::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.13; Thu, 25 Jun
 2026 09:02:00 +0000
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2]) by SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2%5]) with mapi id 15.21.0159.015; Thu, 25 Jun 2026
 09:02:00 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
Thread-Topic: Initialization order
Thread-Index: Ad0D7ex0o3CazjLqTAKqwWqlxR5QlgAKLvSAABqd5nA=
Date: Thu, 25 Jun 2026 09:02:00 +0000
Message-ID: <SJ0PR07MB97660A51DC012191F730201EECEC2@SJ0PR07MB9766.namprd07.prod.outlook.com>
References: <SJ0PR07MB976607010E638B0F6CDE5B66ECED2@SJ0PR07MB9766.namprd07.prod.outlook.com>
 <a1496274-e221-4dae-99ae-6ba52220cc9c@pengutronix.de>
In-Reply-To: <a1496274-e221-4dae-99ae-6ba52220cc9c@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR07MB9766:EE_|DS0PR07MB10083:EE_
x-ms-office365-filtering-correlation-id: 1c751a75-5246-4eca-bdc9-08ded2986aee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|376014|1800799024|366016|38070700021|18002099003|22082099003|56012099006|6133799003|11063799006|4143699003;
x-microsoft-antispam-message-info: Na6Ds2z5DQe/eiOswS7K4nNovVA07PKQnC4vKfQRNBUEhfpLlDAhE8vZFuakj1gBaZlYZhgj89aS1p5zxA8ArN85h+H1TYghBvzfvkELxmUPnqkKiSOQEwSXGy2Spmsm+cpoaEfHOj2WhDf/jkiB288g12iI45GjOvN1Cs13wtocBIPmiSFwXl2JybPCuLRW+PkBvtpEyuVVwXUDSXkfw7V4bnnFYljAxLV1I0d/PvyZWlNdePKYzJWPyTGGIRnrmIMfgy0rLDy2mZTlnzaDyrM9Sn7tstEPYYXIoe7XANM/m3VoQUxek012aZth92pXyURpJXCigcWsFNSwcHpeSHVEvEpcvo7Xm+jFtkzn5BISn6MJEl8pzyjv1ZY4ve5hZNLj7vyoqcrk7ZOW3IPuZKMG7YDYX5/HElSMKyEjPZgiaUq0zjeMS3b+0ukaMzZTa1HKXj9Q/3dIUjpwBsTVRlFNJE38VOCdCO2qo8bRnzJY1x57RD0ank1TK9GNv036Ett4ZcHhsjSd4IoXNkET7Q+DjohVmCCH3xhdfWHYtaBl0l8pJz4UyusJgTU392Ce/w1c4xnBH7PaKnktiGAvRIifVTpT+wYfko5V22tgKKIu48ZdmrAZ6YZJqIIDOki1CBch6cPDbPBQRI6XbJ222grfY8D/Jho3eY8NLS4OuF4=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR07MB9766.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(38070700021)(18002099003)(22082099003)(56012099006)(6133799003)(11063799006)(4143699003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eDJCa25panplckptV3dRMG9BNEtZc21jQ2ZPclh2K09kOUltK2FrbnJCSUNx?=
 =?utf-8?B?ZCtSV3dzdGJXMVZqa1ZUdGROQ2xjYlAwTmh2T2NJb1Rmb01WUUZvUmFsK0Zp?=
 =?utf-8?B?djNYeEZ3TTl3Zk41ZGNpUG1FbldxRkliT0ZqRWdsSW5WZC9EZ2RZTHZhQ1lZ?=
 =?utf-8?B?cks0UVJxenVSSGgrb1RTZGRPVmg0amtLb3hwa3dmYXEyaHUrNU5MWUNtNVh1?=
 =?utf-8?B?MUg2VnhoVitYaHlVN1pGcHVzeEg2ZmN6T1ZGOWN0UzRLVW51bmVzT3RoMFF6?=
 =?utf-8?B?dThicHJjbEhjNFlqT1BWRkUyQTZFK2d4Qk90Z3lRSTZSbmVwamUzSE5HUE5Z?=
 =?utf-8?B?WTJvNUlWeW1FRkxLUXdPbWFhQS9OVGlQVXgyUmNQRkgyK3JKZm9Kb0JCTHI3?=
 =?utf-8?B?VEFTTjBraDBDcEF4OW9rQXVyU3JkR2tIRUFZTDBaQ0h2VXdEMHVnVXJNNHdl?=
 =?utf-8?B?QmNBbUd4eGY0K2haaU1Tazl6WTBoWmpVTXZDcStFMDNRNEpOeEZUSkNSdEdR?=
 =?utf-8?B?cHM3TnJmdUZUb2toOUtHOWZRTWhzZWVBeE00bFZCVW1Ib1hib0xUOUdURTJs?=
 =?utf-8?B?eU14cnIrSlNpWGtjZUxlTnJwa0k5d3AxMmYyQVovTHZ4c3RUS1I4TTQ0NUg0?=
 =?utf-8?B?RkZkdlRXUEJOUjFxb3VlVHFqc2JFWmFWSkRhbHBVUXpNS0Y2UWxscm5KcnhU?=
 =?utf-8?B?SytNZmQ0akpnOEJ5TTF5Z1lFOEVwNnVKU3FSWmFzeFdlZktQSGJ3RnZqTzNI?=
 =?utf-8?B?ZDFuTzduUzJMeHZYTGU5VlNWNGpFRGdxejBOZ2tRRDZ1WTBjTHJ1YmhxaXFW?=
 =?utf-8?B?TE5UWkdRWW82OTFtNVhZL1VyM09IaldZYlJkVXNjdUNKMzNpbk5rYkRzS09u?=
 =?utf-8?B?a2F1Nzc4UGFpbTZmZnIyNTUvZE80RW82VmZzeit2SnAvRUpvM1cxanVHeDJl?=
 =?utf-8?B?NmR4ZWtNRE5Ib0RPTFV0TVpqeEUxTkxNNFkyalc4bHJjZmFVNmwreGxHMGpa?=
 =?utf-8?B?T2k3TmowZm1XenRjbVFUaTdlamtlRDg3dW81SFpqKzN5RDI1OWFrNTBtWEM5?=
 =?utf-8?B?TUk3QnJ1aWtiL1NoNXBSSk5wWFQyaXpvWUhOa1NnKyt5akhYZzU0em5lTHI1?=
 =?utf-8?B?UTE1T2Z1UzR6SWUrLzd6S3l0RkJSTFhCUkt0c1I4K29KamxlV21QWWRBWHgz?=
 =?utf-8?B?SGVhQWdsTWw0Y3FQb2g3NUxlU2tHY0xIZkt4Z2YvWnZQZXJoNmdFb1RsaG5W?=
 =?utf-8?B?TGtzSVdVb3F4WHp5dFlrVFZHMjNXd1puajhoUDVibGE0RFBjZE5OT2hPRllO?=
 =?utf-8?B?RG1KSUxrMUdUK3ZzeWlZL0pBSUtLTTVHY2ZxTWR3bDRGSXNvQkFjWktFZGps?=
 =?utf-8?B?ZDBQbC93bk8yckN0alB3Yk0yZTU3VkVMd2VaajF0WXhnQWpvUm1PTjB3U2g5?=
 =?utf-8?B?Y0NwN3BqRmxOb3FxMGZPejZCcmQvR1V3a3RqWG9rbVlka1o3czI1VnJ5Tkhs?=
 =?utf-8?B?djdqWVhUbHVIaEpiQ3lwTy9lTmxRVHFLbmt6bEdBWEZJdjhHT1BENVY4bGtI?=
 =?utf-8?B?L3M0QVZKZ1o3d1dhZE1Sclc2M3Vtb2VEeERSSFVRRGxnWnhlSUREeVVhM1lC?=
 =?utf-8?B?cDllUTUvVThUQS9ya0taOXJIbzhEMm1CcFdQYThiaFd0VldNQVFoZnBldnhm?=
 =?utf-8?B?Vmgwek16dU9jVlo1ZHEyUnYwc0ZFSmdpWFNaTXpkVy8zNHdNRTZ4UjBGNjFV?=
 =?utf-8?B?VmQzU01GK0FIQVE3aWR4WGJ5RmlOTU4rS1M0TjdTWU1uaDdIcCtJL252RVhQ?=
 =?utf-8?B?d1ljcGlJUUROa2lHSFFJdllpak5lRkdBQ1hURDVQR2wzOTJpZk0zUldRSE5s?=
 =?utf-8?B?emxsaGgwbDB3T3IwYkY2QmkwSElNdUxUd2s2RHdEVEpEVWk3d0tudVJGL0Vi?=
 =?utf-8?B?U0pINHFsYVdIODAyL2dYMTJLQnE4M2k4ZWpHcDdSMjg2cUhSTStGV2U3V0lz?=
 =?utf-8?B?cHd5Mk1xWVdRK2hzVW5BQk00ZnJMZkpuWklVWnhzZEFEWHNxSDhpZlQyQXV4?=
 =?utf-8?B?ZjM2NDZ3a0FGTm5xNzlKdXlVZWlQZ3ZaR05HMmFjbFg0K0RQeS96NktaUm0z?=
 =?utf-8?B?Mkt2RjJvVTRzMEFpeExQMno1UDdXVGZZc24vM3J0bUxjSnpUcHVKZm1TcXkz?=
 =?utf-8?B?MzArcHZ1TW1UV01KWGlVcTE2S0cvdithRDgyOUkyMkhTMndIVExsQnlTdXdj?=
 =?utf-8?B?dkRKOUZ6MUtpM3RyckhzNGxwdXlBMHBXQThPc0RxbkNNN1pqN3RIMm45YWs0?=
 =?utf-8?B?R3U4QzhrbFBOVEpkZVpxNGNWL2FVNHhGU0t6V0I1cy83bkpvQ2pUQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: JmcBOPg2GSiRBF+k3bqiyw/6E7bP9d1OVd+vAp0PRpl8lDj5ANR64lUiEl3pswi7L8xtEpYQbzNKV6zKwCal3ov0BGdA4tGVwA5QVrQvn3Jw9V800/YCj6F+xe3+ZfnqDK/cy0fYy1VuoizAfs0UThYWv2XZjbnlZiX9hTEzR2QLDoOIXUypfJ5eeUvSR6iAWfcfVge/zDia/ljwCU6eHf2jzGwTnGqswbssAMudKvQu95igNPUc9PIAsgGzYfOPv485Ce8tiDCChaKRF7fg9J2puC4B1mSMk1yDGvDdsh4/0GWQUm9udcSzHaZUIhejap1/2PFZ2xcCuFX77yLnrg==
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR07MB9766.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c751a75-5246-4eca-bdc9-08ded2986aee
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2026 09:02:00.3721
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rxtF4jhMUaLzvJUiDkeFJGn4izDhsVcFUmXd52z/YWIJZEmoUw18Et0E0N+nViwr2FAjSWNdYy+eY+Yf6vICtoEdr8RIHPRreyUQ8eS288A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR07MB10083
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI1MDA3NyBTYWx0ZWRfX+Gd3qeSpLTU7
 xO0JU7+0C94hECstlwxAo4iybw2nYQDbWJsV8yUFvGK5f2wOWZ56FBt9rjj1o3arzp9xRmJfJ4T
 46Pqh7cJndykcjaBSWAwNEw5nw5gXLU=
X-Authority-Analysis: v=2.4 cv=BqutB4X5 c=1 sm=1 tr=0 ts=6a3cee8b cx=c_pps
 a=5KjG3aPP9w7gb9zJYeOa2w==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=m3P6IW4lH-wA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=nxKGlp_yvOrowMGCFGNG:22 a=vF_fVqO1M9H2DDhkCmRp:22 a=uherdBYGAAAA:8
 a=bGNZPXyTAAAA:8 a=LpXnpPx8AAAA:8 a=JfrnYn6hAAAA:8 a=tCkkohXkVWox2qERimgA:9
 a=QEXdDO2ut3YA:10 a=yL4RfsBhuEsimFDS2qtJ:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-GUID: HFp8yB3NpzGC384xzww6R6S6qUr6G9_b
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI1MDA3NyBTYWx0ZWRfX1OjWi6n9U+Z3
 jRj8QOq7TzCVOHy3cG1d/LnZp40KjxTawCLVi8PiF5cxgJP51WIF+Rj2cbI07hdJ+PX7jNz0Pvh
 PX7DMxS8oa5PKttDIvqMbVb+LjPmAf7YyX4DzOV7iz8ljD0T+InzicAln8a9qOYjrNb87BI6Ywr
 tBmHt9fxVopF/WigN21pBqotuc4D/3tKrTKwUBojTHA2XrTiCmg7vobwmygrHu8jp6OzsGPU9cI
 gGlHFBxphePHer3HMZIA68wtli8POhrrkBd8mwbCkAf8dXEZeA6udAY5Llc/NEOFEbnkIA5jfJH
 gbxjQapBR1tVPcoT7rhOIVbDblE7oMBW30RTOP/UNerUgKM3gPh5mTcCqZ2YxbCXM7+O+qqRA31
 8j7byOa12nle5hJXcotj41rbCslZiwPCAfhxusTJYK3vV09M3dHkaVgik57z109hcyumXSYtihb
 WsyrzppqVclHTKSO57Q==
X-Proofpoint-ORIG-GUID: HFp8yB3NpzGC384xzww6R6S6qUr6G9_b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-25_01,2026-06-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1011 impostorscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606250077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260625_020207_459565_D2664B13 
X-CRM114-Status: GOOD (  25.17  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: Initialization order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

V2hhdCBhYm91dCBhbiBpbml0IGNhbGwgYmFjayBsaWtlIGluIHRoZSBwYWlyOiBhcmNoL2FybS9i
b2FyZHMvdHFtYTkzeHgvYm9hcmQuYyAgYW5kIGRyaXZlcnMvbWZkL3BjYTk0NTAuYyANCg0KPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBBaG1hZCBGYXRvdW0gPGEuZmF0b3Vt
QHBlbmd1dHJvbml4LmRlPg0KPiBTZW50OiAyNCBKdW5lIDIwMjYgMjE6MTkNCj4gVG86IFJlbmF1
ZCBCYXJiaWVyIDxSZW5hdWQuQmFyYmllckBhbWV0ZWsuY29tPjsgQmFyZWJveCBMaXN0DQo+IDxi
YXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmc+DQo+IFN1YmplY3Q6IFJlOiBJbml0aWFsaXphdGlv
biBvcmRlcg0KPiANCj4gKioqTk9USUNFKioqIFRoaXMgY2FtZSBmcm9tIGFuIGV4dGVybmFsIHNv
dXJjZS4gVXNlIGNhdXRpb24gd2hlbg0KPiByZXBseWluZywgY2xpY2tpbmcgbGlua3MsIG9yIG9w
ZW5pbmcgYXR0YWNobWVudHMuDQo+IA0KPiBIZWxsbyBSZW5hdWQsDQo+IA0KPiBPbiA2LzI0LzI2
IDE3OjUxLCBSZW5hdWQgQmFyYmllciB3cm90ZToNCj4gPiBIZWxsbywNCj4gPiBJIGhhdmUgYSBM
UzEwMjFBIGNvbm5lY3RlZCB0byBhIGRldmljZSB2aWEgU1BJIGJ1cyBhbmQgUENJZSBidXMuIFRv
IGVuYWJsZQ0KPiB0aGUgUENJZSBidXMgb24gdGhpcyBkZXZpY2UgLCBJIG5lZWQgdG8gd3JpdGUg
cmVnaXN0ZXJzIHZpYSB0aGUgU1BJIGJ1cy4NCj4gPiBJIGNyZWF0ZWQgYSBzbWFsbCBTUEkgZHJp
dmVyIHVzaW5nIHRoZSByZWdtYXAgbGF5ZXIgdG8gYWNjZXNzIHRoZSBjaGlwIGFuZCBJDQo+IGFt
IGFibGUgdG8gIGRpc3BsYXkgb3Igd3JpdGUgcmVnaXN0ZXJzIHZpYSBtZCBhbmQgbXcuDQo+ID4N
Cj4gPiBJIGhhdmUgdHJpZWQgKGNvcmUpZGV2aWNlX2luaXRjYWxsIG9wZW5pbmcgdGhlIGRldmlj
ZSB1c2luZw0KPiA+IG9wZW5fYW5kX2xzZWVrIGJ1dCBpdCBpcyBlaXRoZXIgY2FsbGVkIGFmdGVy
IGxzX3BjaWVfcHJvYmUgb3IgdG9vDQo+ID4gZWFybHkgYW5kIGZhaWxlZA0KPiA+DQo+ID4gV2hh
dCB3b3VsZCBiZSB0aGUgYmVzdCBhcHByb2FjaCB0byBkbyB0aGlzIGluaXRpYWxpemF0aW9uIGJl
Zm9yZQ0KPiBsc19wY2llX3Byb2JlIGlzIGNhbGxlZD8NCj4gDQo+IFRoZSBlYXN5IHdheSB3b3Vs
ZCBiZSBkb2luZyBpdCBpbiB0aGUgYm9hcmQgZHJpdmVyIGJ5IGVuYWJsaW5nIGRlZXAgcHJvYmUN
Cj4gYW5kIGNhbGxpbmcNCj4gb2ZfZGV2aWNlX2Vuc3VyZV9wcm9iZWQoKSBvbiB0aGUgU1BJIGRl
dmljZSB0byBlbnN1cmUgaXQncyBhdmFpbGFibGUuDQo+IA0KPiBUaGUgbW9yZSBwcm9wZXIgd2F5
IHdvdWxkIGJlIHRvIHJlZmxlY3QgdGhlIGRlcGVuZGVuY3kgaW4gdGhlIGRldmljZSB0cmVlLg0K
PiBTYXNjaGEgZGlkIHNvbWUgd29yayB3aXRoIGNyZWF0aW5nIERUIG5vZGVzIGZvciBQQ0kgZGV2
aWNlcyByZWNlbnRseSwgc28NCj4gbWF5YmUgaGUgaGFzIHNvbWUgYWR2aWNlIHRvIHNoYXJlLg0K
PiANCj4gQ2hlZXJzLA0KPiBBaG1hZA0KPiANCj4gPg0KPiA+DQo+ID4gQ2hlZXJzLA0KPiA+IFJl
bmF1ZA0KPiA+DQo+ID4NCj4gPg0KPiANCj4gDQo+IC0tDQo+IFBlbmd1dHJvbml4IGUuSy4gICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8DQo+
IFN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8DQo+IGh0dHBzOi8v
dXJsZGVmZW5zZS5jb20vdjMvX19odHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlL19fOyEhSEtPU1Uw
ZyFEaw0KPiB3bDRXTC1GdXJ1cDNZWFVVYV82ZXZxSy1FZ2pCeWFiMFlSN1gtDQo+IHhYTmU5eFBK
UWFlSWFTRkltTldZNjRpaGxfSE54ZEJPVW9MSXVqNDlGQ1plZTZaODJrdFUkICAgfA0KPiAzMTEz
NyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEt
MjA2OTE3LTAgICAgfA0KPiBBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAg
ICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfA0K


