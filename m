Delivery-date: Fri, 18 Jul 2025 16:33:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ucm9Q-001EZe-3A
	for lore@lore.pengutronix.de;
	Fri, 18 Jul 2025 16:33:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ucm9Q-0004FD-7U
	for lore@pengutronix.de; Fri, 18 Jul 2025 16:33:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FrYPNzw/8sqUhFvLj0Kq2sYXBI3mQ8BrF+kLbRsKWUU=; b=VoCkyhFkhJY6Rd1THPHltxm/8w
	Q/vSn0g6GlxNYyHPC/AH1cMmLxlPJx4GE7eOXgYS91HXxw8DSx4H0R4uEGvZiwYmaUCL8yb9m6XQz
	+X6qytwg5x2pUugBbqy0ZNY8s/PwDjJe1SpqNM2A/YRWegFW1+8rFUJ4geihXhtf7eurZryVXYfU7
	CUUKdLr4sNTcc8EwFdCN/V+h8M7BKvKB2NrFXGXvVUBqJOZXsde9KEhOhxTX2tVUyCgaVhvowM52I
	mOnwDgP6nFxEuviwDejBcC85O15k7Od1czweMnpksPJOW52KCNYKzJ/QpBI3jcv0ZpNukJzT7zVL5
	DtpjNhrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucm8m-0000000Corw-0VOv;
	Fri, 18 Jul 2025 14:32:48 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucm7c-0000000ColQ-3qUv
	for barebox@lists.infradead.org;
	Fri, 18 Jul 2025 14:31:39 +0000
Received: from pps.filterd (m0163888.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56IACX6N000459
	for <barebox@lists.infradead.org>; Fri, 18 Jul 2025 10:31:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=FrY
	PNzw/8sqUhFvLj0Kq2sYXBI3mQ8BrF+kLbRsKWUU=; b=zp3O6T3AM8+B7hkSR6F
	/9L7Xn7nuuXfRadWzBL0b9gRUKLqupW8AXWF7Q9YDsLc82iJJDlq/XGYBBdF4wEE
	EQY5PYBC9FdllTs3AQzPSZJqP8GkAVQnv5Gn881pVcallK/vRV8uOL7Hn1kaM0s/
	EBDSrz3ezR1CGn3W5Dc4rHF18a/F7naECxasSRU/SVv9/zig039CmpXCJ0kFy0fN
	3hZo/gGSWMZ1susUvr2DjbtH7U0NZRXa0hUwrXfaOfX9aNSqNuPO0K21Ifk6TeRw
	/VBhH3rTs5JoXqkX0lJRwD8mwP9AdF01f8jFkBe0DYCyXaF2rCSlHprVihdx/vWf
	fLw==
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam02on2076.outbound.protection.outlook.com [40.107.212.76])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 47ydar9uub-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Fri, 18 Jul 2025 10:31:35 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LppB1YhBJ5w+iA4N/hwnL4GJVnEBdSq5C921qEy6gB6L8t1ZIQ72QU22amUtf0hvgg9BjNX+EydT0P2I+crc/oi0xv10w+d3sHSFNB8HlI4o4jNeU+FDCwMHFsBq9nw/rOr7yQ4MdoriJdwgNqIfNQQRzVkvwvmbW5lVlQ0MqibNRSg2xu6ZOO9wbVk8EDiSvrFz4l12ZmL2Q9ISXoG5AZrv3a2iXlAypGdZ6D+JBBUaTMWqNhCN1bhvVZZLtVKZ4lMcmj9nNaidqoWSSSae9Dq6lNJVjBz20uJ4gtIQoLtyF9rZvgrpxpGFlQyAnuve9zm1qBh7BfeLzc/767FWgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FrYPNzw/8sqUhFvLj0Kq2sYXBI3mQ8BrF+kLbRsKWUU=;
 b=A2Xk2cT4s15DnVRi/6sevQB8+8KehR5PUof9BGd97S+a7YIrfL4dryfmpNbgBDD7jXtT6Lpo1lLW6F0hIVVG5nSSsfxPa/HWETUICx32YSDSi5dMzJBwx8KXvxTBNSvlZDyYAC6TrfjQinwhm/qbYSw63Bh6QHz2NbfagztjGwrKBGnXIYRIUV9dmzj2uBD0gXx6W/O0Vgv2+1CoNwFTkuMmqs9YQb+zvxUFBmE4dY5wYUqBRGKqs8737fnwri81miIY1i+JQ28QyrnApvIm5Jj0xvnr6FQKCOelnogV4IAjYLdNUiG7Wtb4hJDiCrUmVylTf4AXtW1W+qe9jGyXmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FrYPNzw/8sqUhFvLj0Kq2sYXBI3mQ8BrF+kLbRsKWUU=;
 b=nQCHRjGvKhY4RYsWKk02PU9a+eiYH8gYnArzeAxlyiahMrUWuBIr8Mc242BGEq//PZHjCPvqItEH0AO2sOdJ6VV8LPt8qznDo4xEczaUJM332NR9tNzIhyaogEunnVLMIyM0crpnxOGdxxvl0PSjHfS7duAglrCD2KplxNdkw7M=
Received: from DM5PR07MB3532.namprd07.prod.outlook.com (2603:10b6:4:63::35) by
 MW4PR07MB8423.namprd07.prod.outlook.com (2603:10b6:303:106::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8943.24; Fri, 18 Jul 2025 14:31:31 +0000
Received: from DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec]) by DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec%4]) with mapi id 15.20.8922.037; Fri, 18 Jul 2025
 14:31:31 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: ls1046ardb tfa
Thread-Index: AQHb99OBvOxBvCt3lkGeJ7Jdn/FT6LQ38QOS
Date: Fri, 18 Jul 2025 14:31:31 +0000
Message-ID: <DM5PR07MB35327BDDE4AD6E227458EAEDEC50A@DM5PR07MB3532.namprd07.prod.outlook.com>
References: <DM5PR07MB35323A0A603D7DA45560BFE5EC50A@DM5PR07MB3532.namprd07.prod.outlook.com>
In-Reply-To: <DM5PR07MB35323A0A603D7DA45560BFE5EC50A@DM5PR07MB3532.namprd07.prod.outlook.com>
Accept-Language: en-US, en-GB
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR07MB3532:EE_|MW4PR07MB8423:EE_
x-ms-office365-filtering-correlation-id: a9ef703d-8ad3-402e-63ab-08ddc607c9fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?5LbOlBccSIAd4fwpskqi0IzannXXdjUbB+RdH1V5SgvK8nHDOs5j8aw0gY?=
 =?iso-8859-1?Q?vd0LBnv1sbL3mPnYEMCyGYVwB2IMCmtvPjabFSCrGVJY5ELopA8+dvUWg6?=
 =?iso-8859-1?Q?UqH1aDrynUg4kq9N7U4DQMpFDvPb83fTr7RD1QHJOlAQNCJXs1KD/PCOaw?=
 =?iso-8859-1?Q?FLKAgHods0UbJhugTUH+DJLdXxFytnrs7ANFVYJ4LSIHKZ7QrmlnnHzS8e?=
 =?iso-8859-1?Q?e+O7S+pqM4Fq1OtiVlKTxsO2zLVbZMdTk3KUhhGC7KUSrJjD48SOrwpVpM?=
 =?iso-8859-1?Q?iiMbY0zWPbWDJrm6bBxH4d+aoPF31pSu40KaMImkiDUGQLGaEu8J0otqnc?=
 =?iso-8859-1?Q?1MWQTzC7F6q+ntn+mBCduqTrSDTuHoF8t3jlHY5SwHEBnvASPMs97mXrGJ?=
 =?iso-8859-1?Q?10wcvuMGE74n7ZbvXd9nV+HugVFLKbqJ4v+GU6A1lXZO7yeOUER/758yL2?=
 =?iso-8859-1?Q?D3UX6H2PKc1PngByUsn688fxMWb0sov68X82/8a+76P1Un0drf72yX9/7Y?=
 =?iso-8859-1?Q?pVZvmzQjHwageB0Ygx5WlKpKvFCSNWcaCGkV3fuoLSSr3dWWVTd3Rovywf?=
 =?iso-8859-1?Q?BSCmezzwuCTKR1Z3uCXWyw6C9JCSyzpBdD+sdukLF3gB2znmqOmIF8B+iX?=
 =?iso-8859-1?Q?tRIdblYr/jmmd2aXbNJV4tYeM69Qzl1tWOngxU5Q3IOp4FHKy+E2VqcsLg?=
 =?iso-8859-1?Q?xbDXsY4j6UO1AlEVYQJbvmgn692wj1ufvbioYN2VNRhRyBj5Bf5+Ai0Y+P?=
 =?iso-8859-1?Q?1EVA+b9WLWFEmvxhZwrPklf7k4AxxCC6LZU0LM2sg8j+V9mWlpZq6QlhZA?=
 =?iso-8859-1?Q?6wPzUEMN+PJI8hdP7Qpa07bYMTSFOd/+ymTWyvbZjjWkrvg2wJRIHyYwu+?=
 =?iso-8859-1?Q?BnzblgX985wPqf0sEinxhxJqtSGJMJn3m3VysnjwAeY5alsjHUsXKQpu40?=
 =?iso-8859-1?Q?h3EI3pbug63/hnbXZDKAD+1WE1Y7V9RDQTmUjrS7f79ukaRZ9ks38oExS5?=
 =?iso-8859-1?Q?7n6d4Qjx4jxr8i6yeaIaXon8XgFJLo7UxM4uZLOLMu1TwjEOa1EF2wVfB+?=
 =?iso-8859-1?Q?RzNTjSLWCquF99evEQyvrIEAlB/iRb9wSnlEHE54r3VGrgWNJPAgEpLekT?=
 =?iso-8859-1?Q?ZjycHEMowBwWJDK39vR2YG6UVj6dyGbN+Pk16wPVBXG7Cph0DdUj+i584Y?=
 =?iso-8859-1?Q?qasNdcGUj4mOnbADl+qvMr3/K0nljjW9xKhBD0r/N+829n0naMvLpNymUy?=
 =?iso-8859-1?Q?ZpHj2/4c3eiS6FWVy40jJwNgBfXXWk7CHfoalHdZ7Tb7MIdKuyqeN+Ydya?=
 =?iso-8859-1?Q?j6GL2kvDXp1JBRdLT4Cvc0ISITEUpQpJFTOiTAcz1HjW35OQOAevjj/Kqh?=
 =?iso-8859-1?Q?Hvupn0qH/X3pnHcUS7yPruhyd5cvGXyqYgatXjkpkBMTtHAkqgmakdLzeM?=
 =?iso-8859-1?Q?x0c+o8Rhu5WooV0bo0iXSAMnU1WXitUzijRUnpmletLKE8XO8bmHewxa+4?=
 =?iso-8859-1?Q?d+glcZDZ4l+o7iLLasoa5vwkiM/Sv9fRiK2aJNyA42IcQdd9ta119kPlUZ?=
 =?iso-8859-1?Q?tE6EfUA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR07MB3532.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?qHsKcDhfUSqvo4/KGFtQ+XI2BVyQKhWZHn3KgFqphykrhofR2REFrXn/C+?=
 =?iso-8859-1?Q?gy+pNydAgr3lOhqNxLib3T9jd5jPi54IFY3Swkg/lT4zwqpijTdK6lvAAy?=
 =?iso-8859-1?Q?E+Bqr9Ew95xlvi3kwQhD+ixBddqIjRQuPyq7beyFBMDFk/Inew4HvlAM2v?=
 =?iso-8859-1?Q?PLfUSlMBw6NtyGpsrHDAIFsvb+2UUlr6dMOlYQLHTVuzK43bQmwZWZDPl7?=
 =?iso-8859-1?Q?eMWZIcxiFwVHoB9oMmnlsfEJ/psiRKHNdNSDO+vPN4bEKLKegVWherobHg?=
 =?iso-8859-1?Q?CMyC94ofEha0CzdXLNk1nGIxeEbHKTcYpKvtkuh8gB3Ol0eAIMKZB3d5BE?=
 =?iso-8859-1?Q?OGWQ0+x50P8cWnXEzkw+WwKpFgSkWzPfEaLn9WJND2sxmi3Y55wJQxLWTp?=
 =?iso-8859-1?Q?A6u2O/2jr7PdxTUNjTC6yGV2XZ1VpXpks2hKGW1wcgTehEtR57JG3hZaeY?=
 =?iso-8859-1?Q?yI7RK6l+BPIYTq62XwU4pjAfPDCKEtgqTSMEhBH2CRoe0PStLJa+Wk3YFW?=
 =?iso-8859-1?Q?GRGRAh/axXWIUdtcj7zzy7wi5krWSJdqKzSpbxiTDIGQep4PZhp7L/cNqF?=
 =?iso-8859-1?Q?QmZ2goi8mYCfkmWIinAIFCxD9VyDtekdWTVknVsjQf265+M8gfoGm7FyxK?=
 =?iso-8859-1?Q?6WjA3Tl/+LDsV1D0RadYzEJFG/Jas4IlD8+929m10j1oqlrBZsInuFH3lF?=
 =?iso-8859-1?Q?2QOR1eiGaihCWwyoFysp8l3fSO2M6VlE6JIGos1eS3nitn+xSu9/ytXw92?=
 =?iso-8859-1?Q?uBEHdHmJtK+w3qyUTwLwAI6Of93DJzPxuv8Za5LVZW2LOAL2wRL/F0Ufek?=
 =?iso-8859-1?Q?6ubdoB9RFxowtcJI7B65JstGbarT5XJ/uI4Z6K52Ltsn4Fw6AWpSCf3R4L?=
 =?iso-8859-1?Q?9v+XNSZDsz/Kr+rPjxQCSCb4I51/nYIU6+Yhfv7f3hTKL9imt+/MPL93QE?=
 =?iso-8859-1?Q?3647eJQQdrovAlVtOm2AQhfyX1bPLVWOrndezjjMTWOZH7SinqevfMwvbw?=
 =?iso-8859-1?Q?6tkUdXZtrSoJb9X0/BJiTZM/UWzV9VuipvEOF2PfymZoxijQKBIvSZz+6R?=
 =?iso-8859-1?Q?6jA3qk3LmftfmsJX0wvgutGsUXkESfgsiYyJ5EaGGNnMO8JXxVojKt+ia4?=
 =?iso-8859-1?Q?9cJQmY2cry1xzQVxP6KZ9pE7A91UUM6qbndNhuDP4IDuNisMMT4BZmVIlK?=
 =?iso-8859-1?Q?Dib8hjfUMpipwSsYbJt0E1T7TEcmPS0AaLzFImPgzlYcBwuxK0zUVdymbX?=
 =?iso-8859-1?Q?z+PQr8Ky2u36lq0POWXsPJyunELIWMzV93UoLoyF1Lo7gOqbrKGC8VUSEN?=
 =?iso-8859-1?Q?PnJ594Oe0y1JeTXNCglJUwkk2DBMgd0LnUKyoba6U93m0C9eR8jDLqT8SS?=
 =?iso-8859-1?Q?mFpFNWEUnSV2cZBfgnxDnLZsyu5qQsWgMBgN2kXuKbznSeHw5Z3DhUCxAo?=
 =?iso-8859-1?Q?qNUOKlJPxRb1rSJMaxiWmV6UxtXZLZggnNvWyDR1SSk5AcgyyXUz7bPsfz?=
 =?iso-8859-1?Q?rrHB9LP42pEqj7j4/bCzw/tf4lnXoMqwb3awfbsgkAwmyJp9f0lvxHxogg?=
 =?iso-8859-1?Q?5ywLK/iN+iPjgwoG4gGEdC/BWQdx4ZAQ44BZ0U1Foud2nyPgaV3fYRItT6?=
 =?iso-8859-1?Q?BoFDW8pKIBmRrQI8MIqaqD17Z3kWewoPF3?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR07MB3532.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9ef703d-8ad3-402e-63ab-08ddc607c9fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2025 14:31:31.2175
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 98l3NQ4G7+4nCtrEYB7sompSTsdUOzKUoicwqEjBG/7gTQgNbgDTdSEGc/IZgruXo8SnnGo0arT8QxUlaaMEtNs4enb3+PHb+YTIHLI13PY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR07MB8423
X-Authority-Analysis: v=2.4 cv=I9JlRMgg c=1 sm=1 tr=0 ts=687a5ac7 cx=c_pps
 a=RzN8Oae89HSMNxb/bfppJg==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10 a=Wb1JkmetP80A:10 a=m3P6IW4lH-wA:10
 a=NEAV23lmAAAA:8 a=JfrnYn6hAAAA:8 a=LpXnpPx8AAAA:8 a=I5yhdCbzOj6I78eTLEwA:9
 a=PRpDppDLrCsA:10 a=wPNLvfGTeEIA:10 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: toQX2AkY-VsFmnsx5XqD7Ek5wb1Pn1eM
X-Proofpoint-GUID: toQX2AkY-VsFmnsx5XqD7Ek5wb1Pn1eM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDExMCBTYWx0ZWRfX/OwlMQAzEpfT
 g+aresiqmji72KW0hTTkTMOSFOMP89LKiANc6htiUdD12KpYURBBZeYybUdbxmTVdtaDCPK4HIz
 V6gB/SgZaB/XFYu4sM47WOQReNzXNz3BZfoXvZO+dP+afXOl17USYDA53C069busAHsv29bALhW
 +BXJ0RhcEk/DgCUxfBKxp8symF9btMBjXEoy10qKAS7OJbD6lJbfTOO376M5TrqRpawiEw0/wlp
 PJDXtyy0SeA0OrUck0KOjfLFYdeVaahem/VF5LmG3MHpky4Qr6W/UT7OF+pq6BNGNeGVxIjtRPc
 uurGmOuYJ0B3vi7PpC/y6wCUS/8AgADEaE9Fo0/sea1q8/yTo5V3oNPG1Sa1kYIJqFt6I1gvXv4
 FxwdmBnyXCxUBBfgdRo4Y8FiPoO80iH409y7FgTwQNoon3LvoCcJOuallZbV+/JR1iOo9eTZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0
 mlxscore=0 mlxlogscore=999 spamscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_073137_417003_B99257F7 
X-CRM114-Status: GOOD (  10.40  )
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
Subject: Re: ls1046ardb tfa
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I progressed a bit further. Indeed, wrong build on the bl31.bin as I have n=
ot sepcified the platform. Now it is getting further but still does not rea=
ch the prompt=0A=
=0A=
NOTICE:  BL31: v2.10.0ng(release):lf-6.12.3-1.0.0-dirty=0A=
NOTICE:  BL31: Built : 14:26:35, Jul 18 2025=0A=
NOTICE:  Welcome to ls1046ardb BL31 Phase=0A=
pbl_barebox_uncompress: call decompress=0A=
=0A=
________________________________________=0A=
From:=A0barebox <barebox-bounces@lists.infradead.org> on behalf of Renaud B=
arbier <Renaud.Barbier@ametek.com>=0A=
Sent:=A0Friday, July 18, 2025 15:05=0A=
To:=A0Barebox List <barebox@lists.infradead.org>=0A=
Subject:=A0ls1046ardb tfa=0A=
=A0=0A=
***NOTICE*** This came from an external source. Use caution when replying, =
clicking links, or opening attachments.=0A=
=0A=
We have a board using the LS1046A (based on the LS1046ARDB) and recently mo=
ved to v2025.06.1.=0A=
There is a failure to boot.=0A=
I noticed that the PPA support is gone from the ls1046ardb and enabled FIRM=
WARE_LS1046A_ATF and=0A=
built the bl31.bin file from=A0 https://urldefense.com/v3/__https://github.=
com/nxp-qoriq/atf.git__;!!HKOSU0g!C9vKWfP9wujy1d2qcUffTIROvYfo1SQ87Je7j29fj=
UHLloGxr-0qj3cDKsD2vg7HszKQTkxkg6uGG7QTMuTTUiHA55pc$=A0 which is copied und=
er the directory firmware/=0A=
At present, I have a limited knowledge of TFA support.=0A=
=0A=
The dram structure passed to bl31 is as follows:=0A=
=A0static struct dram_regions_info dram_info =3D {=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 .num_dram_regions =3D 1,=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 .total_dram_size =3D SZ_2G,=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 .region =3D {=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 {=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 .addr =3D SZ_2G,=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 .size =3D SZ_2G,=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 },=0A=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 },=0A=
=A0 };=0A=
=0A=
Debug output:=0A=
Data Bus test:=0A=
=A0=A0=A0=A0=A0=A0=A0 Walking 0: PASS=0A=
=A0=A0=A0=A0=A0=A0=A0 Walking 1: PASS=0A=
=0A=
Pattern Test:=0A=
=A0=A0=A0=A0=A0=A0=A0 Pattern (ffffffff): PASS.............=0A=
=A0=A0=A0=A0=A0=A0=A0 Pattern (0): PASS.............=0A=
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


