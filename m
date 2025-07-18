Delivery-date: Fri, 18 Jul 2025 16:08:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ucll2-001E3d-3B
	for lore@lore.pengutronix.de;
	Fri, 18 Jul 2025 16:08:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ucll2-0002vR-94
	for lore@pengutronix.de; Fri, 18 Jul 2025 16:08:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o1vzWoc23xb1+H5b3KAIrQMYwI1Uzp5N+78+koDJtPc=; b=smpCg0d/bM6RLh
	lqA083Df8QacxLTaphPt85lftCzCIPiDzNTcRt0b34RxsiU12k890MuhewgMZymY3SbftRsruXON5
	SkuySvAr1AFenwb9VrHB6gUaCBYWICgiqu63BUonLholcXri96MmYsNW7qf5XuZrznhVoRK4OhKmC
	Aaw6OddOY7SZlAK+FjcvXagCO9dac5wLqMnhsljO7oG2yeVEVD0FRw+hDfDpD2zWyWeYHR+o/zcoW
	FCCsVCAId3yZGuNdurAsT5GmuCs61qqqnzY3XFUxQXhMFYTLTG5IF+ukJY2FEeE6CUrGJutARTdF3
	QwDmILuVhzRIoAHnHroQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uclkN-0000000ClWp-1xS2;
	Fri, 18 Jul 2025 14:07:35 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucliE-0000000ClHu-3mAi
	for barebox@lists.infradead.org;
	Fri, 18 Jul 2025 14:05:25 +0000
Received: from pps.filterd (m0163890.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56IBLtim014523
	for <barebox@lists.infradead.org>; Fri, 18 Jul 2025 10:05:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=pphost; bh=o1vzWoc23xb1+H5b3KAIrQMYw
	I1Uzp5N+78+koDJtPc=; b=DZQ3+ln9AiOjyUq9tjgL+8Xcr2fRocWauknUpgESp
	7CuIIVHiC1WfQCkL6Na4+DmFwRM5QuNIQkpCCHLZZiMIWzQTDvJTdehZhPbCGpED
	pnIgHPBM3LingD3usfu6ZRQQZ1wNwISHsj48swan6HdqkQh0OONBjKvlL5Xagyiz
	Bx4ote+33jIV2VQlrZnQcjqwwghxw7E9sxfzwtEP1+qFmxJf8KiMNeR+ST0rgZ5G
	tHssjGmtYBi9wpoG7cRE3emH3qK3vMPvlo2LXtB/xAp38Co17v8DQDU+PtFVPLT1
	Hh6lwCzNonnL+tVWmEh2u+6J5hZT0R8gzZOkxXNpMiPkg==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11on2046.outbound.protection.outlook.com [40.107.220.46])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 47xn64edr1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Fri, 18 Jul 2025 10:05:20 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LjxHQCx8CNzB773oAgKsjN91M7v11l9at4vKBoA+OqN3LSrMNANdC7pNRXKvvvRTmDcv1/PsuJFtWE/iG4+JmnFaNX0Rm0EBETeCi5UqybGPoIMZQzmMaWMS8+X2RAPctovMlNfe1QypY7wm90DRnl3A1n1k3TqX72Nu7CL0/rlarzzWxFOxdwcyV7iUfJ33b5ni/i59fSL1fJEP6Ic8f1ZJhsnSJkUrEeQQSAzxsNrpNZ6dHZsvkeF7ZuSq5qdhZYYOhyM1CqGZuf2KZaK+x6PIcjfwP4ybRMXNJEiDt/wBxLNEsubaxsCpeeFJD3GWw26aOIv+qqZPjL0JpreVkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o1vzWoc23xb1+H5b3KAIrQMYwI1Uzp5N+78+koDJtPc=;
 b=LEeiQfO6OfosD/pl111i2Up2LiG1bpM+orBTK5Qc2yYZ/2hAM4IU0dceBMdfrjV1P7C78/L62ssEw9xpivpLNIrXzDbRviKqzqYNr9i8mtjS6shg5DvxgtcP7IwLqlEY/SwmvNbZdyJMOeWo/IbKETwXRFflv4ZMuM2zkBqCEjiCqGNSlcxAh5LCjHPpVV3TbTZ/06Fg7Z34pX0r5+eZbF78Yk4SBmdKZ6A4juI6wr4izTBuyQgTZRRWAM2uS098yTSvotXh3CukDZfm2QlVKZmDgHdY7/qO8W+jVXJzAlHHIDRPgZvHJL/nEmd6V6tx2Cu9cbZ0k1qM5icbPHYPJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o1vzWoc23xb1+H5b3KAIrQMYwI1Uzp5N+78+koDJtPc=;
 b=X0x5BwUKf+0V7XSVzcsp8+jrzNfWbifMOILgG+s7uRA1dH9cLT3Qdmtzm1JccLRFZqWgg1iHp8nMBrk2+oP8qtWWitV+fDfVGImuQX4vtZ0F74aNftOqI39hfQhrBwaV9cTVvCfuKdrZsCYXg5Nnj00J900DSYt5guLobhEmbJw=
Received: from DM5PR07MB3532.namprd07.prod.outlook.com (2603:10b6:4:63::35) by
 MW4PR07MB9321.namprd07.prod.outlook.com (2603:10b6:303:1b0::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.27; Fri, 18 Jul
 2025 14:05:18 +0000
Received: from DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec]) by DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec%4]) with mapi id 15.20.8922.037; Fri, 18 Jul 2025
 14:05:18 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: ls1046ardb tfa
Thread-Index: AQHb99OBvOxBvCt3lkGeJ7Jdn/FT6A==
Date: Fri, 18 Jul 2025 14:05:18 +0000
Message-ID: <DM5PR07MB35323A0A603D7DA45560BFE5EC50A@DM5PR07MB3532.namprd07.prod.outlook.com>
Accept-Language: en-US, en-GB
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR07MB3532:EE_|MW4PR07MB9321:EE_
x-ms-office365-filtering-correlation-id: 0c14bc1d-f777-4c20-bb37-08ddc604206b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?U/a6PZFeLgJHvt5Ik2HeewgjcBLN1bW44vFb3t8mK4uAsKr6dAmUMd8DXm?=
 =?iso-8859-1?Q?uTkzNp4jvsl2ZmTfJoE3WMsh1MNQvm74Wg4rNqx+Bf1M5WOoDXns8kBVDq?=
 =?iso-8859-1?Q?6CbcgY7XbFS8h3bl2tI4CapgHiiX7lioITL/CUT17DUThqPyHpUbkdViy+?=
 =?iso-8859-1?Q?KTLFFkIV20Fmckx+OwOXBr6VWW51Zetq8SRJUYhBLBZhHZho02uOfbfhVl?=
 =?iso-8859-1?Q?kJI/U9i2fgywADmcEU4zxVKM52jayupITG+IA5+pwVaskALLfoNbDduZag?=
 =?iso-8859-1?Q?N8unl9FnETJj0VxDf65P/hBEJeWDlqjRkFlIf6aMAW9Qd1ShuBYnSdyAe5?=
 =?iso-8859-1?Q?NZTHY2kkVtIWqYI6YmlMRHB6OhY8mf/knYhJi2KU/GF/3YNTfZsCArUMjT?=
 =?iso-8859-1?Q?eVTNmzL8W78hYkoEGVZYwUHhx4gu3pBzO9sb+dyLSQkSpmMc6l+k7BTQOn?=
 =?iso-8859-1?Q?9RTbkHF1OU85rTdstu5P+JWz8qYPYJhWI2EQiEX3k9pO0M/9nOWYtKLa09?=
 =?iso-8859-1?Q?E8ZQCCEmUs6oIZlCgPmc0jHegQOE1+o8PM8VqwjGP2wSBua5kv429XB1bU?=
 =?iso-8859-1?Q?k77nZ4yusSqI/1tRk3nAbx7TPWIroSLEh92Xj5uzx/Bs0FBMeZYgKl7bTI?=
 =?iso-8859-1?Q?eULn8PPPgX23wHck5ZCnmJzmvoa9MIrP4VhcC/YnpW+woojMa67z0/5R4S?=
 =?iso-8859-1?Q?9rOMhDEXRTptWRhkxgT2WqvSvNfmh1mozn0GsgK8WrRs1ltge0ZRUrGdtJ?=
 =?iso-8859-1?Q?IMsUjLbwwdySG6NZOYO6XIigd9XTRfE99/ITdcP1A8eluZ5tiya3Rvcbej?=
 =?iso-8859-1?Q?CgQpYb1pAxJvLJ/9Asi7JB9HKYRToMcbWOqiCWXkt5ZgGGIm8jZuEOOPNf?=
 =?iso-8859-1?Q?XSIBnLJlA3d+2GRNBixS07aen9i0/J0/lgNq94ztz9d7390qTEtoedqDBH?=
 =?iso-8859-1?Q?5X6e3azhDgnVHT/2HAd8Ot6Kw8OaAEq6IAAmQ4ctol9ValpsDiQLCqY7fX?=
 =?iso-8859-1?Q?mxtuH1Ymsdd/gk1Uphvsdusy+Msll39eSZ9r0D3uGJ1WMv4z0828FMi+4m?=
 =?iso-8859-1?Q?BSnzFodAwsSJCP2QUIvrCYKovYdkzYfdNpUC1VzsQCgBfx7yEp+lDjqQ8w?=
 =?iso-8859-1?Q?FF1iGdiil+EsYIMtaqJv7Ap7EHGhy4Ghg+6jYqQIwm5tz2Ve26gG5kZh5Y?=
 =?iso-8859-1?Q?znB+c8gClLCSJQJUY9bk5RS7T9bnIvzWbPxHRH/1yhagkGgMZGpiVT+fGB?=
 =?iso-8859-1?Q?Z/OyHv5XCKmxtQUAMK/fThlWbihVhYkIYi9L7ikDHSRV13TvuUzbziAUCv?=
 =?iso-8859-1?Q?IDW0kUDpYEEtP6OqaJyJBbLMEyU5gbLeb0S1yGYDM1dbuyilYgVJjuKPHS?=
 =?iso-8859-1?Q?MFA1f34sgfeLD2RchlMkVu/2rKbkc4E6nTfHb+ejJG8spzNW1Gv/y0ZEi9?=
 =?iso-8859-1?Q?hFol7cCrOMUBuPM1knrD4tU4PTt06DWkRsKwX3o+KVEHQs7QWmtKjTBHz3?=
 =?iso-8859-1?Q?76qs2HtZV7tlx+KDK5XFItx2zRlvQqTNdjamvMEZRK7AjPTyad5A3xmI7D?=
 =?iso-8859-1?Q?psyu/W8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR07MB3532.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?kBQcOOPJRUOdixu+6MAVvykxm27npVlqwrSszaE+9uVjBQmpvVUBIGyYk8?=
 =?iso-8859-1?Q?ZlFfX91ytkca6FEFZvaqY0X9Lwllkh9l5Uh8y2gfGl0NWd6A/9OlwI4AiU?=
 =?iso-8859-1?Q?BRXBt12smaVLBlnGFtnEh2WXBUHFIMAYGxljiaFIeHjCPTJt4VLgo+L72m?=
 =?iso-8859-1?Q?0KsD8w9Qo5ClBNm1S2K1su4FZmdcEBfaDYyBB7wpEsKDgm05tXW+5hcfF0?=
 =?iso-8859-1?Q?/yPYDY+xizozWRGRVBDu6w2SxFf3cxw99ZSmfS84LMk8TzjHlE+GmLAnNH?=
 =?iso-8859-1?Q?D7SHt50QC+W/XE59R/OFX+o0X206LKVjScGY+RaC7EOGBBk23Uih6F3VNh?=
 =?iso-8859-1?Q?QpxZ0ReZ3SdIe3wGpqXaDbsgEzPHe4ZWPHUNYIWhg/oMEsQhOek+Bxbi6G?=
 =?iso-8859-1?Q?w0tGvCqDz0jVcPSjbZ++h62Kmp6zX/gDlodscVKYPsC3kD6KtP42+Hsv5M?=
 =?iso-8859-1?Q?w63rVZ1G28NH7yQWFXbnuiVH0y/QvHJQQwyIAySNKR4cg+t+CRN+5XY9Uv?=
 =?iso-8859-1?Q?2F18a9gnbJwUU9T8hMoceWW7ksYf20s86eFFU+ajzg6Zji/+yZu7TaU3xx?=
 =?iso-8859-1?Q?u6JUNNBZRhVV3Fky7qSv5HG7uMjCxcWKkv9Wq00u2+USykzNFNBGMi/F8B?=
 =?iso-8859-1?Q?K/7ObH8Klat0zAhesj8k12/09Mwq/feBNodlflOkJKeUCJ1VuL505Sy3Fu?=
 =?iso-8859-1?Q?y96oalCF0pji7b5FDpgdYXIb81E13qRKRG4XwV+eyigE06tm303VXHzxzZ?=
 =?iso-8859-1?Q?B2ENI3S24qa+U+valHVGzgq7AfL87QS/pY/TlLuTIufC6ytcpe18ocZKAN?=
 =?iso-8859-1?Q?1PdrybxpBgeKISHQCp1mdbK0COc2L8AxUrGyb6rce9P7BvPQBiGiiF/YeW?=
 =?iso-8859-1?Q?bryyYgEbhVZ7oZlaMItTsEBJclEwnRbfT3Ll22bLjHgQGTGCD8Gqs4FP8P?=
 =?iso-8859-1?Q?0vFteXYtShOVaG2IgYGzFyr4CpXLD1dJRARguZXaA0IKtOKqQk/Ze7Fxqm?=
 =?iso-8859-1?Q?PS9PwsPsZsu7+kLH+50CUjUG+hazya4KtqJGtleQuJqQD0njHMUV9kX2bA?=
 =?iso-8859-1?Q?rSsIhtHJIYMDmLq2xOCDgkCQjjQs6niSkgLKdSCIwnG4GCmKtnwuVdumfl?=
 =?iso-8859-1?Q?n1SJCqGsISr5+mpFJx3J2sVAq2qMwTQ0Rv37cdA8QZGOxzk4pdPzJZEs8c?=
 =?iso-8859-1?Q?R6B6e2X5oEQwzIeUII+u5jU8Rj5Zuk0DpUdIuTNgzbqRRJWlEwqhWjY/Vs?=
 =?iso-8859-1?Q?t7ftEK2bWliENn8CeapHmYL6QiUKiwpqW+KcjCBwjIP46IQifSsZDMv6Dl?=
 =?iso-8859-1?Q?o1FChklKTQtBgRPBtYmlrZ5+dWF6gCgyByZ6OtZu0J2GP0IUi5YCTUi3CU?=
 =?iso-8859-1?Q?RVRLAqZcW4GuJ+u3dQPxOoiLHgoUThVGlRqrokadfnrtbRo8Wz3lmzKKr5?=
 =?iso-8859-1?Q?cZF+QtaIptN6taB6NW0vyXUa/DfWVR6y0FfwiaKpypuA2dfQya6y3qSCkn?=
 =?iso-8859-1?Q?0QE+6eXbwCUeNp956lE1Zz6qdQ8g/SWaWmVD83z+Z2aNoF8HETQinYWnF3?=
 =?iso-8859-1?Q?u8Mz0M4ba2Fo99fNh14angQw3FXELhDL6PjjjyFELlpHadzG/nbyWoqhGd?=
 =?iso-8859-1?Q?9Bqm174EYF9KZoL2yPJ1dlLJGFOSfsbOOS?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR07MB3532.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c14bc1d-f777-4c20-bb37-08ddc604206b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2025 14:05:18.2277
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xl/zfsjUYgLHcgPx04NmzegbPGH/N7/FYphL1ttq+LD2AXR+KVgtnNpcSR9xgP6e7A9z/fycqsTZGjUStWDEk81vGmMSMtKaO4eDGjr5YKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR07MB9321
X-Proofpoint-GUID: 2kHfVWd1jLT0xfUOAYifpG5pqf9YVcq-
X-Proofpoint-ORIG-GUID: 2kHfVWd1jLT0xfUOAYifpG5pqf9YVcq-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDEwOCBTYWx0ZWRfX4QvL8R7IZi1N
 NoFgWTrJiEZWXsGZTaoc3gE5fU4mHowu6Pzsmb2r/M67KMIvMfto2iFuejCvlSndGvbO2yF2c/V
 s3Ns1zK3a3ivVZZ11eIKfOpy9Zawrs93WUwWeSs8HmTw4PUta7KLiHE3RUGKJItm7nNnPIINt3g
 j84QQ1m7Y0wbAXh603F/Ki2ODUm5FeqM8Auc+WBMUL/fYfy/LiVGz9yIUgvqw6wrp7dnbz6uMxP
 yjKrzB+1B9jj1tHfcJ273+9X+FpryYGZ9ej4cjRhzDCIivK+zVw4zOnJwYF1rDwqqCGg8G+Kd18
 Aq0gu9RTYaY6DsYCPFZQeJTsqS66UtJXrI2MfhtLs3qiUt5YN5Ae83Nb1F97LCMXxsMMTGfEvpP
 v+gd00XtKgsdfWc9/USvYv5beQt/0WDVup13YpaP6ffvmVT7EG+eM4Bw2OxRGIlV8bJwoNFt
X-Authority-Analysis: v=2.4 cv=L8IdQ/T8 c=1 sm=1 tr=0 ts=687a54a0 cx=c_pps
 a=WhUEUVamR7lPV9LkVsdNog==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10 a=Wb1JkmetP80A:10 a=m3P6IW4lH-wA:10
 a=NEAV23lmAAAA:8 a=roOKziDOwF7JK5lLsK8A:9 a=wPNLvfGTeEIA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 mlxscore=0 suspectscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 phishscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_070523_344972_4AF4DAFA 
X-CRM114-Status: UNSURE (   7.96  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: ls1046ardb tfa
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a board using the LS1046A (based on the LS1046ARDB) and recently mo=
ved to v2025.06.1.=0A=
There is a failure to boot.=0A=
I noticed that the PPA support is gone from the ls1046ardb and enabled FIRM=
WARE_LS1046A_ATF and=0A=
built the bl31.bin file from  https://github.com/nxp-qoriq/atf.git which is=
 copied under the directory firmware/=0A=
At present, I have a limited knowledge of TFA support.=0A=
=0A=
The dram structure passed to bl31 is as follows:=0A=
 static struct dram_regions_info dram_info =3D {=0A=
           .num_dram_regions =3D 1,=0A=
           .total_dram_size =3D SZ_2G,=0A=
           .region =3D {=0A=
                   {=0A=
                           .addr =3D SZ_2G,=0A=
                           .size =3D SZ_2G,=0A=
                   },=0A=
           },=0A=
  };=0A=
=0A=
Debug output:=0A=
Data Bus test:=0A=
        Walking 0: PASS=0A=
        Walking 1: PASS=0A=
=0A=
Pattern Test:=0A=
        Pattern (ffffffff): PASS.............=0A=
        Pattern (0): PASS.............=0A=
=0A=
layerscape-tfa: ls1046_start_tfa=0A=
firmware_ext_verify=0A=
CH cb617c70c11f0f4d21bc31e1e324a952b313de0629cd13f80bd50470814e8a1a=0A=
IH cb617c70c11f0f4d21bc31e1e324a952b313de0629cd13f80bd50470814e8a1a=0A=
Hexdump of first 64 bytes of 70065=0A=
=0A=
HASH ret =3D 0=0A=
layerscape-tfa: copy bl31: 00000000800975e0, 70065=0A=
layerscape-tfa: sync cache=0A=
layerscape-tfa: asm=0A=
layerscape-tfa: call bl2_plat_get_bl31_params_v2=0A=
layerscape-tfa: Starting bl31=0A=
=0A=
Seeing the TQMLS1046A uses the BL31 firmware, I was wondering if my build o=
f bl31.bin is correct.=0A=
Any help welcome.=0A=
=0A=
Cheers,=0A=
Renaud=0A=
=0A=
=0A=
=0A=


