Delivery-date: Mon, 13 Jan 2025 11:58:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXI9F-000ZE6-1I
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 11:58:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXI9E-0002HK-Mw
	for lore@pengutronix.de; Mon, 13 Jan 2025 11:58:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x2vd3K3mcPCgU2eawrkFwpkQhXODU4PI5Eae5AiWfWg=; b=f0hBZwjBm/XTwt
	GoLG6PUDvxenQd28vvxIzDZDGpZRW2X5W2I1nqWn+daa8Dutpb9cE20Gc9OSzLbz4MSS/scREpF/F
	ZV2qpW5C+VKpChwsbLviXrFaswYnKL6dMYo6RKaHYltgtrWRomlUJZHUlFq09PrRtZzFC2nfUeT2R
	xXZMEPNDPpbMEl+QH1j87t5Id1IJ1opsB+EGIqOzQtOR9AGr9bckFLi2vMNPUQMgIzwun618o5CD7
	U44NHOCaVTTPRlnrsIDA4Zh9Bjk+JtnZ+v8gTs6lx51V0VEz+3057eoePNHMmjODBF5nfQU7sd8mP
	CiTVKUvXsbukZtyQyczw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXI8X-00000004phF-0W56;
	Mon, 13 Jan 2025 10:57:37 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXI8U-00000004pgo-18Kc
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 10:57:36 +0000
Received: from pps.filterd (m0163886.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50D8epF7003584
	for <barebox@lists.infradead.org>; Mon, 13 Jan 2025 05:57:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=pphost; bh=x2vd3K3mcPCgU2eawrkFwpkQh
	XODU4PI5Eae5AiWfWg=; b=dRNOPmav0+2XLgkp0Kv0+FJ+APrUCBJFuwW0wuefq
	g1eX1sXke3M1Peuo4+BBXBC6vzf0nQU9Of1rWEwCFqgFWXxyToImWb134X3SXan/
	+ex7icyk3fg2/Ep6zPCjTeg4qbXFTR0Ce9Lag0yhUJ6aGbuOBWvFB0DDZq9a5lie
	sZtOrZrU8u8bCGFlVmh+iRnpPGQqPqStL+/8DhOXrG3fFxvB3y0LiezjUvoyVZea
	2H8ee2Q6CMJPanBusFtZs7ZO8CSTqhUPZ8AxEstaanvRvWRRDt77+vVEguaO4bCY
	raCLZnwxO0tSQLNW3a+5iCyZ5xQ0qk6aa8FRUh2kFwqUg==
Received: from dm5pr21cu001.outbound.protection.outlook.com (mail-centralusazlp17011027.outbound.protection.outlook.com [40.93.13.27])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 444q23hfrc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Mon, 13 Jan 2025 05:57:32 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TFKBOr8gcdK9PL5UDijZDWO+elU1Tsi55xFRz4SHb1eY+yp3U7qRD9dMm0QyBtLDvOKuq1YhfmmrZAroQu9FpkfBmVerpJOCNm58ye/4BVj7TX0gvi1h3pVCf17hH65dGSOPjdA4HJ1dE7DLn/NuWw8nte/Bz9Vm7Pnsi0aY//UlFrhlEXgvQHXf16cfMEVJnAiD1PMWYJUExPBYQyd6KClM6e7GZJt2tf3EGP2QhyQi04KHMpJP1ubd+yPd/D5M0mqMBoOXViXjq3PjYXS4AYYUquEbSiXyHUYShQfVnZ+wmwne9sAFtO0IIESbZIw8P8MgBGp+Ob/b1rJdlCPgZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x2vd3K3mcPCgU2eawrkFwpkQhXODU4PI5Eae5AiWfWg=;
 b=Qtm2bElSmRD+xH2ZJc9uu2LYpiJNtAKDpLBayCZxPC3twHYKPYC462VdH0e9m3UPt9+11Ljjd+jpCxA0ZF+tnc0hS7+De3+JXX5lnoGhyAMUdYRnoO8XNgo2ooEENngWOXAmTCEVIfgRvJ/BRLivH4iFBenr0nyqURPwaUWQt9Wtd4r2yFgf8ODZqLQcODAfluj8cDMfmqhtokuGZstDTgxM5LS7waXNYBjX8+olKra9pRyCECA2YVlr3v7SLN2UQq3bnDUDkA44jZE3WmZTJQV4y36WmjM9z1dT0/kvyA8jXEe5YD6w7scqB0+tQaRc7t6r1kdHt3P6Ra5nzWLd9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x2vd3K3mcPCgU2eawrkFwpkQhXODU4PI5Eae5AiWfWg=;
 b=wih06i243CH8BE11apZjrunwvscpPt4UEP8NJfb6uFbGjd9MlZ0390NbFLQ058xUmE9C62wL0Xy+m39f7C6AHqcaxxsy4pGyDg4qdyE42JKPsMRU2HuUbgsv8G+HL2ba3wOPc+kll8i2xG3BiT9+5lKA6POBRGT84rzGJxBGnZE=
Received: from DM5PR07MB3532.namprd07.prod.outlook.com (2603:10b6:4:63::35) by
 SA6PR07MB11246.namprd07.prod.outlook.com (2603:10b6:806:432::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.11; Mon, 13 Jan
 2025 10:57:29 +0000
Received: from DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec]) by DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec%4]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 10:57:29 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: nvme sanitize command
Thread-Index: AdtlpzvLFXYcz+CsTuq+OBCnofdr8w==
Date: Mon, 13 Jan 2025 10:57:29 +0000
Message-ID: <DM5PR07MB3532BD01391995069161C80BEC1F2@DM5PR07MB3532.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR07MB3532:EE_|SA6PR07MB11246:EE_
x-ms-office365-filtering-correlation-id: bcd73cbd-52f9-4848-5645-08dd33c112e0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?GT1FBBQV4Dl69jbI0m+VVeI2ssBn0npxyWVFHvyLLXpkBftE5fl5djZKbbJm?=
 =?us-ascii?Q?pe+mWqpW2GJ83FmGsp1Hm5B5Oak5scOksbX7XOI7JMo7JqxdsqgnN7hwpiGL?=
 =?us-ascii?Q?MoVVopS5AUWXF3WMOiSxr9WxsmWwrF07NpwWWbjMEYOpABKFf8jlWqVB6ksN?=
 =?us-ascii?Q?H5vtb8s8k028FckRGGm5dgq7B4MKWHpFvirp/jNfz05/GPZ2P2VGRIOZuFfm?=
 =?us-ascii?Q?7uomVm5Zqfv7SAX8jULk+/JSH3JpcWWczPElQzcozuR0q2j2EuS84D5nL5Ga?=
 =?us-ascii?Q?cet+MKg318BQkK/MZnuLa9+P5MT+n4UXsjD8BiYo6RkF6A+kupji2qA9jPbO?=
 =?us-ascii?Q?HaPmJtssdpYlBaqYAiD1VX9lAwUEIM2hf9R+BBRCTWCJjfVT5OaPtH5KbEzO?=
 =?us-ascii?Q?Tgp1rsNcsaJY7ChBpg7MI9qxbQXlqnC3DmmKz3YGlDWuGIHohZeflMAWcY5o?=
 =?us-ascii?Q?N+Or2qxfi9UyuOzYfb/h3aWmdx5o9b+yltWsPpzvX03i+kGTC6SZHbiQNCLY?=
 =?us-ascii?Q?HWnmRidDrefWRfz8HM5z1A8Fy0kUBDCQs5I7ekGDlg9m4uU/cykYb+nAO1H8?=
 =?us-ascii?Q?gzia/H2qq15P2N74VoG3JjAq96rMAelYejO+WlgpMsr3w45RFAsdg3d58GsK?=
 =?us-ascii?Q?6R+BJoR3HlYrYv3FNEun0VLBMsvlZuUxz6p+70An8O/mK3F8DZnjHdvxeXG6?=
 =?us-ascii?Q?WYOk4nt1z1qIlr0ZrifRP5S4eWOsNC8IGqr7R5vUFHCrKzm/REhHma724jj6?=
 =?us-ascii?Q?EEz1xq33GkCs3LTWq9s+2Dzn1Ax36LFcJXD2lsHxXmQYljui03GGXat86xC+?=
 =?us-ascii?Q?B2qYEtN1VwU3ot7u0CCauQPFF88P1SHfO5QYUEYjwgbsGDyuiDWIhFbDexhp?=
 =?us-ascii?Q?afh+KFzE+4ZN01PlhYvi6BscNrAoyRjvGk0Eg2j8UPvP9wU4+UbUcRpyDuBE?=
 =?us-ascii?Q?IHg+8GluwukaKSENINzxmDGQQ8e2NVfadzucZeEj6EZH3A/6PMuOFVavixXm?=
 =?us-ascii?Q?h5hwdLB8Y0RN0orxSP3Odrc4SxsqtrE9VGAkT+t7uUDKp3snSNhuJRhE+6Gp?=
 =?us-ascii?Q?5HLjzMbkNMcsFXzak3yvJZALzP6M8cO0JGufEj8935puHjjVLVauEAjrTOml?=
 =?us-ascii?Q?2TrQhgeyESbeD0aKCjKWW7TEldyK2kKK2L0Ok7d0/NXWnM3KNM+cAw39A8vs?=
 =?us-ascii?Q?5lmU8NrV58+oV01nV3zF1Mr3CP91VCcodfcxELgDM7/2MX9ZVxp0DBWy8EyK?=
 =?us-ascii?Q?wuqkzAemZQossKcR6yCt7RHx+C2L9Lo9+23B3PcAltf4tjds+bdCSPa7EE3a?=
 =?us-ascii?Q?UpAxg8Vl2TOQ7NnofJPfQxOEUTQfPgX7WZlqnaCxaDgWYPWsxG0vgQmzFzi6?=
 =?us-ascii?Q?WEiRBQhivQqbqQ9BY0RyLxFSWqhW8yOLGE6CWE/RlJ/bHfEN1kT+hE0lyooE?=
 =?us-ascii?Q?oGP+70PgaG9mm3f5gJvLOrwduaA+yk7d?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR07MB3532.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VeQFxQceY/QLYkysMTgwKuzQa5bsqp5DqWSI8aq3D1wQ+fcxPtRXAk6luLWJ?=
 =?us-ascii?Q?xnOCutcuhCAzYpRhSMoojouQO0N5/Uzn4s9G6oo1yhBVba0NdgMnHPdKXjDt?=
 =?us-ascii?Q?69rGkbvp4nP/EJQrs/Ex/0adtxjrYzMXIUSTgA73FNrA+6y5c+a5b7fprz3t?=
 =?us-ascii?Q?P5PNxOCJPjHWlnGLYJg/dewOfvha58dh67YbBVxDd5aV0BjRp4KQTG6w+MM+?=
 =?us-ascii?Q?Hl5vHtUIabf2OhFdKgCZOntdbyThxlHF2Elulh6Ic5s6NW8H1S2l4aYvRxLa?=
 =?us-ascii?Q?LlEkh7LmEHYWkryEmZBQfcMxMY40G9zGf4ojEoCiQBxzOpm2tJPG9hTdsSWW?=
 =?us-ascii?Q?45IE/Dp7It2pu56Ffs2xtrbdXd4nISopT+uRqymQHpyuLgJ5NFxj5vCcdkt8?=
 =?us-ascii?Q?Bs02SYSLlRLw8eFHmVPK9d0LxcxNtHhMe8ZLrfehUCcmrYWseqdVYOB/4G8U?=
 =?us-ascii?Q?hAPzP4t8Bjt4Muv4CwdgpomKO/o7aezG8W4YM9L+1Mn/FeBEnumvdQgkrm7V?=
 =?us-ascii?Q?n0u/VMUU62ipj9zJBj0VsVeOLGrmej9F/IyD5TSelgXSztq9lV35is4eLGOH?=
 =?us-ascii?Q?ULyzg/6MUNxOLD5RhDXADxO03oKPvbqUaI0D6C+kUJ+JVjDxkWDDYrPFGygv?=
 =?us-ascii?Q?D+GOyB5cFWIlRtKJ8RcZ2y9YzbE2yHQ+j48J3ysY+MkQ8RNCdV3Y+GGyt4RN?=
 =?us-ascii?Q?ienaOwxPPEeKPSYs6q1MiZvfKvR+oXUoTfa9l+mGBw+oLLvDFS5RB1TH2k5L?=
 =?us-ascii?Q?sHhsENx1v80wCeJN5suS6HHnEzq6pmnRv9vhptriBkmYW1Iaw/y32tCsZ4WV?=
 =?us-ascii?Q?vm6dOd6j7Q3FO5G6tkBQEUbX1J1QPePpzHNMJkYxjV6sAistUgcrmzL0sLFC?=
 =?us-ascii?Q?KyRAHD1AInl6IQPdkpPwRjhUqgYNr/lOmd+ZfOaKTd0oZe4SxCwtt5/f/OsL?=
 =?us-ascii?Q?VC+5ClVXD1b9TPtxE6MXIhzW4/EF6aVmeKrHMiHTNvZiE2VptAK/EXbZVIkj?=
 =?us-ascii?Q?nLyZejcD7cuY+xYe9A5ReOw2dzJ6n2YiZlC2xJuYFcsb9LEbpqJRYKOhSIQ0?=
 =?us-ascii?Q?yvAb5oqgrSZ4sFOUMdLf1z7oLb8N7szrtC7t+A+9nGTd/LteKMsAtuZxmYLG?=
 =?us-ascii?Q?F5Tw1KeOUR8ew+iIRuJ5Vmnq9VKT4lQXnsnEX+AjPZYuKe4OY0jpf5loYqel?=
 =?us-ascii?Q?SqYlgoVK5FT3wrJoDxpW7vwy3YXq6IYjW2TiZcCeWz8OeA8wLyJtkzZxkxo1?=
 =?us-ascii?Q?ZHfdbTOZep7SpP9gUeiRfprDi7P9tbFoxaGzY9SJmCg0NnoFZmbiXQNHXzJs?=
 =?us-ascii?Q?lVJDwkLMKNjL1PVGUPhjffOkkech9kr98Kp3+dWTrKDANz/mh7KgSp08YeGV?=
 =?us-ascii?Q?1u7pIhG9qPTGo1ghejn+36ahUBU69KwjPIW9ZrXDW2c4C89tcnd/1cveSIP3?=
 =?us-ascii?Q?E1dFGwkplNIPB75GVl/0RKPZqZNSpIzfWapmr49ZwXnYaxCavfdJUYWbdITV?=
 =?us-ascii?Q?Aa4nJPHODy7LGt1Sw0GMmawwfxj85ANP+tNNJYNeFapyMlqdUNRVQ66BPaB2?=
 =?us-ascii?Q?Jb0Ldq5u6sKzBwoQT5odufEYfGjYWnBA9tBxd5ee?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR07MB3532.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcd73cbd-52f9-4848-5645-08dd33c112e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2025 10:57:29.4760
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RkJftH3HtttQhVSZ+SPzP4wVsfc6XFC1WE/2x59XXm1Q+xp3ft5yT3gpUq49kn1h6PTSEdMTDtD48dIuihJLM+khxe2WW+I/crHSUFab0ms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA6PR07MB11246
X-Authority-Analysis: v=2.4 cv=WpPRMcfv c=1 sm=1 tr=0 ts=6784f19c cx=c_pps a=U0KzkmEawxegXmCr7eTojA==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=VdSt8ZQiCzkA:10 a=t7O-Hdu1JCwA:10
 a=m3P6IW4lH-wA:10 a=wRKaPearAUFlBop1Fi8A:9 a=CjuIK1q_8ugA:10
X-Proofpoint-GUID: zqDiskDWXGmzUn_ehqDZhY5niDMnfFEi
X-Proofpoint-ORIG-GUID: zqDiskDWXGmzUn_ehqDZhY5niDMnfFEi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 mlxscore=0
 impostorscore=0 malwarescore=0 suspectscore=0 mlxlogscore=565 bulkscore=0
 phishscore=0 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501130093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_025734_660053_62E91CF3 
X-CRM114-Status: GOOD (  10.68  )
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
Subject: nvme sanitize command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I would like to add a nvme sanitize command to the barebox. Something like =
"nvme sanitize" where at first the only option is block erase.
I have a level of understanding on how admin commands are passed to the dev=
ice through the /drivers/nvme/host/[core.c|pci.c.]
Looking at the parted command, I am not sure how it goes from the command c=
all to the partition layer support (EFI or DOS) to the driver.

I see that Linux make use of an ioctl to trigger the sanitize command.=20
How would you approach the introduction of this new command?
Any help is appreciated.

Renaud





