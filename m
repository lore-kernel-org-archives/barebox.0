Delivery-date: Tue, 13 Jan 2026 19:27:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfj7F-000y4V-35
	for lore@lore.pengutronix.de;
	Tue, 13 Jan 2026 19:27:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfj7E-0007mS-Kj
	for lore@pengutronix.de; Tue, 13 Jan 2026 19:27:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=njq+mCbtIo6tFxu0tVnS9OjrviOP91UVIbMXL0t5E1E=; b=SGAkX7BWHg8LkiehiTM6HktzxS
	JGwdwGWPttdvcCHjLfoPSk3O+iRDjW8ey1TtGuQTbP84DA4keMFi22A1b9BnjwUy7oIpOZChuvYhH
	zlwyh2L0PBfPUyDsdEyHsy5f/QANXfVsaFM/cbkppOUOb7zamMZ01EQ1YpjIknMEMKB4neq/pijz+
	u7l2ZXaJLK1HXGPm0CkhJEC5eThaWoHLyPJzmPTZuPkLK8RDhmqif953xY4OzEBsiXZb2z1LhyDKE
	88RTlrJtP6cp62MKw2Tmr0xMlgFU+6eRdjSwfnMe0B3WgcZe/BXS+O8jBqBq3Xs4HUY6ZvIThDBJZ
	fciwsD8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfj6R-00000007aDs-1XMl;
	Tue, 13 Jan 2026 18:26:51 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfj6O-00000007aDT-0DgY
	for barebox@lists.infradead.org;
	Tue, 13 Jan 2026 18:26:50 +0000
Received: from pps.filterd (m0163886.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DFcqhn3495499;
	Tue, 13 Jan 2026 13:26:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=njq
	+mCbtIo6tFxu0tVnS9OjrviOP91UVIbMXL0t5E1E=; b=V7X3lt3yzkj2Mut3eYb
	ay6V5jS/yTmUVFVwTps8nk3LVM5ylmtfGVldUtu0MFJ9pLw5LDKHeZe8joKphr8T
	2TFa3mqih77yoVz2sFfiq7oSrXRS2Rsk0YHUoK5iBfHLYaGvaWyoMatP3gX2rtkM
	mu4ChBK1CzxIdDFtiisPdOxiaPkDBm1zuJ4j0Ebp8JybYbe+EqmcstD4ok4yIVRa
	0vChZMe6MAHJgzxQXCNbzoeUth229bW2YeoXDWmKG1DgajEDjUJeLLGHns2UWg8a
	Px3PAgNFp7xpoFvFMA6N4cxXrf1GbZyA/b4gUUHFM8o86FH60u8pInDMuGwAzvTY
	YMg==
Received: from bl0pr03cu003.outbound.protection.outlook.com (mail-eastusazon11012029.outbound.protection.outlook.com [52.101.53.29])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 4bkhux3q3u-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 13 Jan 2026 13:26:46 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qmMTCrquDZ5BNFptid+JT2ed23VzXOB/j35iRyaNAolq9bDGkIbBprSZ+PA0TY4JAn4SAdL1h1IrclU4Ik+tD8Ugx6MjpMZkMiIJd0gR8jLZ7gdpnuctxMFk+tAqfZrOv926C25TQOaTptESRKriVsUmfnzgmE+2weJInDoKpWs75UWos5Em0WMm+FgquIizMhgSV0s+2Vj+Ab1aN4jkeL3Ul2RgHXFIuIP9upNqR6JuVp3WfhoPw9PokzgQ5S4XDiDuH21n1qfsDz1scCdiA+qTRfOah3aJAn4aIBBdcb96Ze3MpLvkTqzQvF7yMXmsbuPCodFrdkc9DkOMXAgS0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=njq+mCbtIo6tFxu0tVnS9OjrviOP91UVIbMXL0t5E1E=;
 b=PZbk3Z4ZiA4ZYrn/mjpoQAr4/BBD9bMn4QMewgbppvi7lLyKm56M4hQeGkxf/+G0HUdBS1qFRHkd+qfarlfvVeHeMqnxo1cbxSvo0RnLCeV7RN6+hduQaxVOblsPY97vinV4uVmxRdTmY6bUXJYJHL+W89trqDPWwdCSj6Jj8+lhVLw8a2w5iNFj+mRWAiGkKzYVvvS6MEyRImRnHw5ZQTSRCvbZlVqXmSfEullIHh582Jz4GOS+Npfsb1vFgylphvqQRvC7V2yEwBipM5hmU9axGOqriqSmDxD9Vslp3vYrzJ/moVZ3PbFWEIXni5uUvEjQDZY5YKFC/0Oe7tYxlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=njq+mCbtIo6tFxu0tVnS9OjrviOP91UVIbMXL0t5E1E=;
 b=u8RZn0zMigKgbHmfDvzFhON0bcq8PqUlrqRUYg/F7xumEmf1CL7bO+1ptBC18P9TAlfFN83kILau7qW6VHxkiHsXJHGXN5Tf839YJ7ucjjFq9CxpkjEVWNCwYTV84yZAIxLH4tXt4mpBPo8WHeyKH28zMuzU8RuH55K6XocGfwY=
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com (2603:10b6:a03:4e0::13)
 by SA1PR07MB8596.namprd07.prod.outlook.com (2603:10b6:806:197::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 18:26:40 +0000
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2]) by SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2%4]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 18:26:40 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
        Ahmad Fatoum
	<a.fatoum@pengutronix.de>,
        Barebox List <barebox@lists.infradead.org>
CC: Lucas Stach <lst@pengutronix.de>
Thread-Topic: PCIE on LS1021A
Thread-Index: AdkL8DOb81y0+p2vQua38NWFw8d4qwADQ1uAAAFsyICGmUs+AAHp0PYAB7P/fqABZf9OwA==
Date: Tue, 13 Jan 2026 18:26:40 +0000
Message-ID: <SJ0PR07MB9766897F421E8809B42266ABEC8EA@SJ0PR07MB9766.namprd07.prod.outlook.com>
References: <BL0PR07MB5665EA1D980C39F834845849EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <9bb964dc-3c24-7c70-b007-759c3aa85511@pengutronix.de>
 <874d52d0-f476-53cf-1331-72f80bffacbd@pengutronix.de>
 <BN8PR07MB69932217E808C9DB9435411FECD6A@BN8PR07MB6993.namprd07.prod.outlook.com>
 <9923f2ef-cbce-44a1-86bf-6aaf829d3008@pengutronix.de>
 <SJ0PR07MB9766972613A435D5377F3EBDEC84A@SJ0PR07MB9766.namprd07.prod.outlook.com>
In-Reply-To: <SJ0PR07MB9766972613A435D5377F3EBDEC84A@SJ0PR07MB9766.namprd07.prod.outlook.com>
Accept-Language: en-US, en-GB
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR07MB9766:EE_|SA1PR07MB8596:EE_
x-ms-office365-filtering-correlation-id: 5559a293-f043-416f-4572-08de52d14bbe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?bDdDcW5yWDVma2ZsaWNnbCtXVUtFRHVkWmVRNDZjVGJMenhoY21YTFlSR3g5?=
 =?utf-8?B?c3FacUNua3huT3FVUEdBNHN6TEZBV1grWlYzMUt1TWdHV1hJdExraW9XVGh5?=
 =?utf-8?B?NUVZT3NGTm1yTUhBc3ZnbkpLb2VMMkpIRC9hdXBLbzBIeXduczRGV1hrekpQ?=
 =?utf-8?B?L0x4VjUwaFkxdCtRYlRTNkVVT3Jldkt6R2tiQkg5S2JhenVwRlB4SnBlYXI3?=
 =?utf-8?B?aWdnZlUrQVVZTVhuVHU3c2V0MXZYVWhwMExhNFRhcEN1K2pKYTFINldZTmtL?=
 =?utf-8?B?aXBITFhaMm85NGdLQUFlSVc3amRnUFQ2bTRPdDNLd05KNExPd0JzSHNHc0xw?=
 =?utf-8?B?ZXAxWVZJZ2J2VUNDby9nZS9mMTRMTG9zYTNxd0RyM2xCVnZGWk02VXMybm1B?=
 =?utf-8?B?WkJyV1k5SUdGb0tpVHVLVkMrZlFNR2NQV0NkNDVpdmlPbFUzUlpTWmFZelkw?=
 =?utf-8?B?dmJIZ1FYNFRINHhVRU8vdUpOZGx3b2I2OTBaYkJFa0pKQkI3bzRyWHRDamtS?=
 =?utf-8?B?TFRuRURzUGtJTnNZM1l6dmx1UitDdU9rWnEzMWRrcXFNOWtFc1dFQzN0amUy?=
 =?utf-8?B?YW1USTh6RGZjU0dvQU10M1h3cWNQMkxXa3F0Z1R6b1BJajA5RU84NjhUUDVh?=
 =?utf-8?B?K0xSQVFPc3hjQ1QrUWQvS2Z1eGdvZmw4YmRCN1ZQcWFrKytxdGE3ODZneW9I?=
 =?utf-8?B?UnpPcUxvWlBJOGlqWk0zbmF4WTlucEVOYUEvVm52Q2lJNnNSRDNMaXhuN0U4?=
 =?utf-8?B?czRqaGw4S2laMDdKT1ZmRVJGTVRPdTlsRGhGOTZKM1hsMkIwVlpIVDZVM29S?=
 =?utf-8?B?UlQxUm5WckdyMWx2VlBTNXk1NHVLYzd3Z3ZtVkFkdGU0cHQvb05DT1JWM2RF?=
 =?utf-8?B?MHVMdlFhL0ZqVDJDa1plWDcrMzQvNWN1Mkc5Q28zbU80dHdBVEkwQ0hJbloy?=
 =?utf-8?B?ZG1OVVFPclVXN1BzbExrR1BtMWg5UjRCUElVNEN0dGh1U2Q0NlB3Z3drWkJC?=
 =?utf-8?B?Q0JFaHlFdW01MFR5SlVDaUM1WTVJK01ZaXlsRGJBd3ZFdzluN3crTk1LYTZt?=
 =?utf-8?B?cFFnY1pwWnpRckdRMG44Z0hWZUtKajU1RzRrQTZxcnpETHVOS0R5VFNJRVE4?=
 =?utf-8?B?UXpIM3kxbEFlK0V6OE4zdENhTnAzdS9tUUpnaWx3emxpSnhHY3BobDIyWUtq?=
 =?utf-8?B?cjVIYlRKVkdzdW9DV0dEZ0ZmSmhac05ZUEhkL1kxZjZFVGFHMjVBNWJpWVJ2?=
 =?utf-8?B?RWE3ZEtoaXl1S1d6TEZPU2crbitkVE9HeGUrVkU5L1BYRG44ZkQ0WFZ3K25N?=
 =?utf-8?B?TUtCVWJEM0orbGVBdVArenFtU20vcDRRK2FOMWZGN0kxRTcwUVVQS2FxVE9T?=
 =?utf-8?B?ejBCUWJMZlpjbWQ5T1hkeVBMVHAxN05FckQ4ZlJ6NG1DMWJmZm55SzVXSEJW?=
 =?utf-8?B?ejVrMDduUkhnYjY0MXNOZlVhZXMvbVNBeEJKckdSazA2QUU2YmVQUGNTSFVJ?=
 =?utf-8?B?OWdMQXhIaUJabmN6R3J0ZHE0ckxzclBIMy9Rd2xYM2FFUHp2UzdUOXJlVnMy?=
 =?utf-8?B?RVpVZngzSjQ1aTF4NDN4K2ZzeGFJNWVocFF3K0ZoVUtBcUNqRy9IT0ZCbEtI?=
 =?utf-8?B?SnE0OU9LQWdWMVhVbHkxaHBoNjdOQXFISmx6ZTVsVXowM1JyaDJBQzZmMFBI?=
 =?utf-8?B?Mk1DZ0M5ejZxWGNXZ2pUWWc2cUpHdkZOZU1zTWFpc242Mm9NWjRkNy9SV1k3?=
 =?utf-8?B?ZVFjWFRHUHBEOGVzSk00enNGOHQwY3BIODQzaGR5ZE1qTTl1aXJSK1hCWXRF?=
 =?utf-8?B?Y0ZzSUo4WWI3bmZGQTVQZmpKTm9TSnk2bGRGYWV1aHp6YjdJWXFVQ01scDJX?=
 =?utf-8?B?WWsyRHZ5eGloeWNiQm1YK1Jqd1pRNWNwNUVndFJ3Y3RLL0pPbzJPZE0xb0o1?=
 =?utf-8?B?QkM1eXBScmtiUmwySms3dVhvR0pJMDB0NUt2NWdkZmd6bW05cWxaVk5MV1JN?=
 =?utf-8?B?bHNyR0d0bWdqZk1wc2dMekhvYTNzVi9sOXNsRFNVeHVzUHEwRmtDbHI3NHZz?=
 =?utf-8?Q?m8JTYZ?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR07MB9766.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZTFCS2Znc3c2eW9sYUlMaGNMTmI3MnlzR2UyWFZ2UDN1dllvVmp4UWpWYzNq?=
 =?utf-8?B?UFBqNytsT2tsQnlETUM2bkUxUy9BQjBQZkZiSDBvTzRFVldzanJsdFBMOWxI?=
 =?utf-8?B?N1JLWmROa0lBcUFZMDV4bjZFR1RPbHV4OEVBTFZEeTVQYU8zUGlsZ3c1QzJ2?=
 =?utf-8?B?Vk1IVWZ4N0tYM0p0L2dSSHNKUnNsL3FpK255akE0djNjK1ByMTJjQjFoTzRl?=
 =?utf-8?B?bTZYN0pJY28zaVJ6OXhyZXRGQ1hCQ0w5S2RQb2FHbjIxK3U0ZEsxcVJDRUdP?=
 =?utf-8?B?SnBxS2pqVy8wR2xrblhkTXlSblVEajhXcDdLS0F6alN4UjB1ckprUmdFaVEw?=
 =?utf-8?B?aEZSV1RpUU5rOEdndnRMV3l5ZjRmcm9JMGNqZXVseVZDWis2SytWT2JabGl2?=
 =?utf-8?B?ZlIwSXYrWXRkb3Y4d3kxS0dtT2tmWFRyL1dxYlhaN2dtZHBSbE11bllaWjd1?=
 =?utf-8?B?L2RrYjRPWWVnc0J6M0oycHM2UjJXU3hxVlFwQjRZbGNhc2pucStia3RvL2pB?=
 =?utf-8?B?Y1BpRGpWcXgvRlp2bHFEY0gxSGNTdytiOTYzb3Zpemt2cXhsUEFMWVlzbUF3?=
 =?utf-8?B?WXJ0WVhtd1JidElVV0FZS0VJbTFJMGltTmhKR0piY1UvTlhHSmNRWXZkaXZj?=
 =?utf-8?B?UzdyQlF3S2k3RWZ0c1RJeFJ5UVJmRjhnd2RpY2ZMTi9sclViZTBucW9IYzJM?=
 =?utf-8?B?VENnTmNHR2FPMlg5c0dSZmtSVEVESmdyYzNyQXY0MS80VXhnVml3UmpNaUg2?=
 =?utf-8?B?bzdpSE8vMEdnL2R5TnllUUNWQkcrS1hOWDY5R0hDczk3QzVQSkg4aml5ZmRL?=
 =?utf-8?B?NHhjdTR6Q21VZVRoMklETXdqT0pLcUt0SkRQcXVIdWRobGU2anpBWU1FS1RI?=
 =?utf-8?B?OThjNXFtdk5UUUtzMVpLdWlweHlrUHpKOTFDaXgyLzFBM3c4NStGMjFYajR6?=
 =?utf-8?B?TS9mazBNNk5xdTdXOVB0ZUZyUE9rdCtaZVNqWmJ2a1R0Yis5M044M1Ayc2xz?=
 =?utf-8?B?RWI2NmRuNDRNKzI3bWx5d2Q4RVlqMWoxN0FwQkNKUUI3a3JzYllxcUw3V3dW?=
 =?utf-8?B?eUJsWnZ0eTdSZ0RObE1RNDI0dzRWNDBLbjVlVURzU3puOFZDM1pPMzhrK3Fw?=
 =?utf-8?B?dm02d0kyeDllRVRFaUwwY01nYWlaT0Q3bFF5cWpyeFArNmlaRmdEQ3oyNmdl?=
 =?utf-8?B?VmxJN3R4c2VUZXZSb3VTSTV0SjNTSzdHUUJxNGxHMG5oUGJiV3hEd1Y4aXZt?=
 =?utf-8?B?WkNDL3pxWWREZUUrckYwa3FTdnZzRHpBRDlyQmxiSmdDNDE5S01zOGx4eTMw?=
 =?utf-8?B?V1haK24rdFR6UkdOOW9EOVpZSG1PUzlZOGFOcmxRbjlaMWg4NEQwOFk1aW9x?=
 =?utf-8?B?anNYd2lQSmNYOU5sc3RpZWtzVTg0UllkOVZyY0FDUE1HQmwxSUVnYnZpdlpo?=
 =?utf-8?B?cHl1NEZORmE1MnA4WjJuT1hxWVlGamZCQmlPNWgrQzlFU2dvMXJQeldiMHZP?=
 =?utf-8?B?VDE0RE4ycU5JZCtiU25OUno5R0tyTjVtY3ZnS21yM2tNTlJ1MjV6UjV4czZt?=
 =?utf-8?B?NCt1d2xjVzRaV2VXamR1eXo5SW9BVml6cFpBZGdCcGJtYmxqWjg0SUlWSnJi?=
 =?utf-8?B?TDN4MWxGNHREeWE1ZWxab001NG5iS3NOMkYyMkR6TlB6YWRLV1IrYndua3Bz?=
 =?utf-8?B?UG1US0hqNEJiQkJvV2sxV3kxV2QzYVdmc3FYSTRoQjF5TjBXVjg3am1QZHc2?=
 =?utf-8?B?aG51NUQ1ZVJjaldLaEJtNGF6TTBIZ3NETHQ3ZnJVQjdGRFhBcDB0RmVzVWxE?=
 =?utf-8?B?TTJFdUtwcEJJS1RaWmxUMEVlUmk3Y1g2Z1hwNjZ2Y3lTaUkrZlYxMkhGMmkw?=
 =?utf-8?B?bXJETVNhVG1OK2NpYUVFbkhFRWpoTUNDcUZLdFM0dVQxd29obmxzQTNOV0VC?=
 =?utf-8?B?VnJoU0lWWG5sT2ZDdTl4Tm04NHFadS9rWmY4WDN1cWpPNWt0SXJ0NkpTRTBH?=
 =?utf-8?B?YkhoYkkxcXZlTkhLd3hiNEU1SWR6ajY5cmVHaW9iNTVDVU1iVndSWHg3ZW55?=
 =?utf-8?B?eGw0R05VeU52WWFmQWEvZ1ZXbVBaYUN0TE8wTVh0bEk5WDh3N0NDZnAvUGRp?=
 =?utf-8?B?dG80OTFUblczNTZhR1VEVWNnL29nVjJrd2xMRGk1cUkwckUyd3dRMnRqNUMy?=
 =?utf-8?B?WDlPYitybklIcksrdjFQcVB4ZnlvWTFXQVo2RlAvU2NZRjdISGlFdWxqclo0?=
 =?utf-8?B?NGJkK0R6dG1QY2VFT3JIMUR2TkxRckdHZVpOZGdPTDd2TWdXbFRaR1RqSWlu?=
 =?utf-8?B?RmV5RnFyRHgraGYvQWQ3TUhKY2RSajJaYTVUM1NPbU4zNWpmWWVndz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR07MB9766.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5559a293-f043-416f-4572-08de52d14bbe
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2026 18:26:40.4953
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EMmykSVaJYz1e82Q8+Gl97So0tPPDfkFzwLa2ga3GEwmGNSvBgVb+aAHs91sJCzrzIxNsuK2VqRJaWscHJhTmbvucwFMwTdY4eveOsn7xAI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR07MB8596
X-Proofpoint-GUID: 4bQ5ACliUPcZaJMSCln8fS8ejBeU7qqB
X-Authority-Analysis: v=2.4 cv=Dckaa/tW c=1 sm=1 tr=0 ts=69668e66 cx=c_pps
 a=uvnHr/yu0CVMxYA77rd9og==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=m3P6IW4lH-wA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=JfrnYn6hAAAA:8 a=VNJm9ReZlmLKgBptMLYA:9 a=QEXdDO2ut3YA:10
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: 4bQ5ACliUPcZaJMSCln8fS8ejBeU7qqB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDE1MyBTYWx0ZWRfX7cyhlOC0j2pZ
 lgMZRtajkabri1O2cK73xZbrL3QhB1G5zxIzR1rHVCGWr0uN92we903nibLmbk/41wI7v5UfDsf
 Z8f9b36wqSdOVBsQ6PcAyabmzw82sFwFhkAFPCSkSK37UNd15c1ATLu6DIXtSrhg5IJ66g740YN
 zMmdmQOp4gE9X/OIlvqFPQIpPo7vB+RhjRNY9KzR7Evz2aaFu/eJNTHMWOYhj0OsD38WhfTcLzq
 wUsWcKdwuq+1HSNCq2Ql2G+xPajb2TCjaawqPVtw4yM2jY7+1YPNVgWKMbDH/R445xEscNs9+LX
 qE54vhoIOWUVpa7jT/c6wDldswQ44QGBdUIUVzaLqfUaOOzIbRSyv/xpuIZjBvgqqJedl8i8MWf
 W6L5eYIPDZ3aUXrd17aCb4A4QJuUbNkhO1IahLSjGZMGpBOSwRlTyPNnUuiPtQpyFREoeXGrUy0
 VA4AAtfEwx4CfGmT1xg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 spamscore=0 adultscore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_102648_480025_0C00F57D 
X-CRM114-Status: GOOD (  17.40  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: RE: PCIE on LS1021A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Q2hhbmdpbmcgdGhlIE5WTUUgdG8gdGhlICBQQ0llMiBidXMgYW5kIGZpeGluZyBhIGZldyB0aGlu
Z3MgaW4gdGhlIE1NVSBzdXBwb3J0LCBJIGFtIG5vdyBhYmxlIHRvIGRldGVjdCB0aGUgTlZNRToN
Cg0KbnZtZSBwY2ktMTI2ZjoyMjYzLjA6IHNlcmlhbDogQTAxMjQxMDE4MDYyOTAwMDAwMA0KbnZt
ZSBwY2ktMTI2ZjoyMjYzLjA6IG1vZGVsOiBTTTY4MUdFRiBBR1MNCm52bWUgcGNpLTEyNmY6MjI2
My4wOiBmaXJtd2FyZTogVEZYN0dCDQoNCmJhcmVib3g6LyBscyAvZGV2L252bWUwbjENCmJhcmVi
b3g6LyBscyAvZGV2L252bWUwbjEqDQovZGV2L252bWUwbjEgICAgICAgICAgICAgICAgICAgICAg
ICAvZGV2L252bWUwbjEuMA0KL2Rldi9udm1lMG4xLjEgICAgICAgICAgICAgICAgICAgICAgL2Rl
di9udm1lMG4xLjINCi9kZXYvbnZtZTBuMS4zICAgICAgICAgICAgICAgICAgICAgIC9kZXYvbnZt
ZTBuMS40DQouLi4NCg0KVGhhbmtzIHRvIHRoZSBmb2xsb3dpbmcgcmVtYXBwaW5nOg0KLyogUENJ
ZTEgQ29uZmlnIGFuZCBtZW1vcnkgYXJlYSByZW1hcHBpbmcgKi8NCm1hcF9pb19zZWN0aW9ucygw
eDQwMDAwMDAwMDBVTEwsIElPTUVNKDB4MjQwMDAwMDApLCAxOTIgPDwgMjApOyAvKiBQQ0lFMSBj
b25mIHNwYWNlICovDQovL21hcF9pb19zZWN0aW9ucygweDQwNDAwMDAwMDBVTEwsIElPTUVNKDB4
NDAwMDAwMDApLCAxMjggPDwgMjApOyAvKiBQQ0lFMSBtZW0gc3BhY2UgKi8NCg0KIC8qIFBDSWUy
IENvbmZpZyBhbmQgbWVtb3J5IGFyZWEgcmVtYXBwaW5nICovDQptYXBfaW9fc2VjdGlvbnMoMHg0
ODAwMDAwMDAwVUxMLCBJT01FTSgweDM0MDAwMDAwKSwgMTkyIDw8IDIwKTsgLyogUENJZTIgY29u
ZmlnIHNwYWNlICovDQptYXBfaW9fc2VjdGlvbnMoMHg0ODQwMDAwMDAwVUxMLCBJT01FTSgweDUw
MDAwMDAwKSwgMTI4IDw8IDIwKTsgLyogUENJRTIgbWVtIHNwYWNlICovDQoNCkZvciBzb21lIHJl
YXNvbiwgSSBoYWQgdG8gY29tbWVudCBvdXQgdGhlIHJlbWFwcGluZyBvZiB0aGUgUENJZTEgTUVN
IHNwYWNlIGFzIHRoZSBzeXN0ZW0gaGFuZ3MganVzdCBhZnRlciBkZXRlY3RpbmcgdGhlIE5WTUUg
ZGV2aWNlLg0KVGhlIFBDSWUxIGRldmljZSBub2RlIGlzIG5vdCBldmVuIGVuYWJsZWQuIA0KSWYg
eW91IGhhdmUgYSBjbHVlLCBsZXQgbWUga25vdy4NCg0KQ2hlZXJzLA0KUmVuYXVkDQoNCg0KDQoN
Cj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogYmFyZWJveCA8YmFyZWJveC1i
b3VuY2VzQGxpc3RzLmluZnJhZGVhZC5vcmc+IE9uIEJlaGFsZiBPZiBSZW5hdWQNCj4gQmFyYmll
cg0KPiBTZW50OiAwNyBKYW51YXJ5IDIwMjYgMDk6NDQNCj4gVG86IEFobWFkIEZhdG91bSA8YS5m
YXRvdW1AcGVuZ3V0cm9uaXguZGU+OyBCYXJlYm94IExpc3QNCj4gPGJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZz4NCj4gQ2M6IEx1Y2FzIFN0YWNoIDxsc3RAcGVuZ3V0cm9uaXguZGU+DQo+IFN1
YmplY3Q6IFJFOiBQQ0lFIG9uIExTMTAyMUENCj4gDQo+ICoqKk5PVElDRSoqKiBUaGlzIGNhbWUg
ZnJvbSBhbiBleHRlcm5hbCBzb3VyY2UuIFVzZSBjYXV0aW9uIHdoZW4NCj4gcmVwbHlpbmcsIGNs
aWNraW5nIGxpbmtzLCBvciBvcGVuaW5nIGF0dGFjaG1lbnRzLg0KPiANCj4gQmFzZWQgb24geW91
ciBpbmZvcm1hdGlvbiBhbmQgVS1ib290IGFuZCBJIGhhdmUgc3RhcnRlZCB0byB3b3JrIG9uIHRo
ZSBMUEFFDQo+IHN1cHBvcnQuIFNvIGZhciBmdWxsIG9mIGRlYnVnZ2luZyBhbmQgaGFja3MuDQo+
IA0KPiBJdCBpcyBiYXNlZCBvbiB0aGUgbW11XzMyLmMgZmlsZS4gQXMgSSBoYXZlIGZhaWxlZCB0
byB1c2UgdGhlIDMgTU1VIHRhYmxlcywNCj4gYXQgcHJlc2VudCBJIGFtIHVzaW5nIG9ubHkgMiBh
cyAgaW4gdS1ib290Lg0KPiBUaGUgNjQtYml0IFBDSSBzcGFjZSBpcyByZW1hcHBlZCB3aXRoOg0K
PiBtYXBfaW9fc2VjdGlvbnMoMHg0MDAwMDAwMDAwVUxMICxJT01FTSgweDI0MDAwMDAwVUwpLCAx
OTIgPDwgMjApOw0KPiANCj4gVG8gZGV0ZWN0IHRoZSBOVk1FIGRldmljZSwgdGhlIHZpcnR1bGFs
IGFkZHJlc3MgMHgyNDAwMDAwMCBpcyBoYXJkLWNvZGVkDQo+IGludG8gdGhlIGZ1bmN0aW9ucyBk
d19wY2llX1t3cnxyZF1fb3RoZXJfY29uZiBvZiBkcml2ZXJzL3BjaS9wY2llLQ0KPiBkZXNpZ253
YXJlLWhvc3QuYyBhcyBmb2xsb3dzOg0KPiBpZiAoYnVzLT5wcmltYXJ5ID09IHBwLT5yb290X2J1
c19ucikgew0KPiAgICAgICAgICAgICAgICAgICB0eXBlID0gUENJRV9BVFVfVFlQRV9DRkcwOw0K
PiAgICAgICAgICAgICAgICAgICBjcHVfYWRkciA9IHBwLT5jZmcwX2Jhc2U7DQo+ICAgICAgICAg
ICAgICAgICAgIGNmZ19zaXplID0gcHAtPmNmZzBfc2l6ZTsNCj4gICAgICAgICAgICAgICAgICAg
cHAtPnZhX2NmZzBfYmFzZSA9IElPTUVNKDB4MjQwMDAwMDApOyAvKiBYWFggKi8NCj4gICAgICAg
ICAgICAgICAgICAgdmFfY2ZnX2Jhc2UgPSBwcC0+dmFfY2ZnMF9iYXNlOw0KPiANCj4gV2hhdCBp
cyB0aGUgbWV0aG9kIHRvIHBhc3MgdGhlIGFkZHJlc3MgdG8gdGhlIGRyaXZlcj8NCj4gDQo+IEFu
ZCBJIGdldCB0aGUgZm9sbG93aW5nOg0KPiBsYXllcnNjYXBlLXBjaWUgMzQwMDAwMC5wY2llQDM0
MDAwMDAub2Y6IGhvc3QgYnJpZGdlIC9zb2MvcGNpZUAzNDAwMDAwDQo+IHJhbmdlczoNCj4gbGF5
ZXJzY2FwZS1wY2llIDM0MDAwMDAucGNpZUAzNDAwMDAwLm9mOiBQYXJzaW5nIHJhbmdlcyBwcm9w
ZXJ0eS4uLg0KPiBsYXllcnNjYXBlLXBjaWUgMzQwMDAwMC5wY2llQDM0MDAwMDAub2Y6ICAgICAg
IElPDQo+IDB4NDAwMDAxMDAwMC4uMHg0MDAwMDFmZmZmIC0+IDB4MDAwMDAwMDAwMA0KPiBsYXll
cnNjYXBlLXBjaWUgMzQwMDAwMC5wY2llQDM0MDAwMDAub2Y6ICAgICAgTUVNDQo+IDB4NDA0MDAw
MDAwMC4uMHg0MDdmZmZmZmZmIC0+IDB4MDA0MDAwMDAwMA0KPiANCj4gRVJST1I6IGlvX2J1c19h
ZGRyID0gMHgwLCBpb19iYXNlID0gMHg0MDAwMDEwMDAwDQo+IEVSUk9SOiBtZW1fYnVzX2FkZHIg
PSAweDQwNDAwMDAwMDAgLT4gQmFzZWQgb24gTGludXggb3V0cHV0LCB0aGUNCj4gbWVtX2J1c19h
ZGRyIHNob3VsZCBiZSBhcyBhYm92ZSAweDQwMDAuMDAwMCB0byBiZSBwcm9ncmFtbWVkIGluIHRo
ZQ0KPiBBVFUgdGFyZ2V0IHJlZ2lzdGVyLg0KPiBFUlJPUjogbWVtX2Jhc2UgPSAweDQwNDAwMDAw
MDAsIG9mZnNldCA9IDB4MA0KPiANCj4gRVJST1I6IGxheWVyc2NhcGUtcGNpZSAzNDAwMDAwLnBj
aWVAMzQwMDAwMC5vZjogaUFUVSB1bnJvbGw6IGRpc2FibGVkDQo+IA0KPiBwY2k6IHBjaV9zY2Fu
X2J1cyBmb3IgYnVzIDANCj4gcGNpOiAgbGFzdF9pbyA9IDB4MDAwMTAwMDAsIGxhc3RfbWVtID0g
MHg0MDAwMDAwMCwgbGFzdF9tZW1fcHJlZiA9DQo+IDB4MDAwMDAwMDANCj4gcGNpOiBjbGFzcyA9
IDAwMDAwNjA0LCBoZHJfdHlwZSA9IDAwMDAwMDAxDQo+IHBjaTogMDA6MDAgWzE5NTc6MGUwYV0N
Cj4gcGNpOiBwY2lfc2Nhbl9idXMgZm9yIGJ1cyAxDQo+IHBjaTogIGxhc3RfaW8gPSAweDAwMDEw
MDAwLCBsYXN0X21lbSA9IDB4NDAwMDAwMDAsIGxhc3RfbWVtX3ByZWYgPQ0KPiAweDAwMDAwMDAw
DQo+IA0KPiBwY2k6IGNsYXNzID0gMDAwMDAxMDgsIGhkcl90eXBlID0gMDAwMDAwMDANCj4gcGNp
OiAwMTowMCBbMTI2ZjoyMjYzXSAtPiBOVk1FIGRldmljZSBmb3VuZA0KPiBwY2k6IHBiYXIwOiBt
YXNrPWZmZmZjMDA0IE5QLU1FTSAxNjM4NCBieXRlcw0KPiBFUlJPUjogcGNpOiAmJiYgIHN1YiA9
IDB4MjI2MywgMHgxMjZmIGtpbmQgPSBOUC1NRU0mJiYNCj4gRVJST1I6IHBjaTogJiYmIHdyaXRl
IEJBUiAweDEwID0gMHg0MDAwMDAwMCAmJiYgLi4uDQo+IHBjaTogcGNpX3NjYW5fYnVzIHJldHVy
bmluZyB3aXRoIG1heD0wMg0KPiBwY2k6IGJyaWRnZSBOUCBsaW1pdCBhdCAweDQwMTAwMDAwDQo+
IHBjaTogYnJpZGdlIElPIGxpbWl0IGF0IDB4MDAwMTAwMDANCj4gcGNpOiBwYmFyMDogbWFzaz1m
ZjAwMDAwMCBOUC1NRU0gMTY3NzcyMTYgYnl0ZXMNCj4gcGNpOiBwYmFyMTogbWFzaz1mYzAwMDAw
MCBOUC1NRU0gNjcxMDg4NjQgYnl0ZXMNCj4gcGNpOiBwY2lfc2Nhbl9idXMgcmV0dXJuaW5nIHdp
dGggbWF4PTAyDQo+IEVSUk9SOiBudm1lIHBjaS0xMjZmOjIyNjMuMDogZW5hYmxpbmcgYnVzIG1h
c3RlcmluZw0KPiANCj4gVGhlbiwgdGhlIHN5c3RlbSBoYW5ncyBvbiB0aGUgaW5zdHJ1Y3Rpb24g
MyBsaW5lcyBiZWxvdzoNCj4gRVJST1I6IG52bWVfcGNpX2VuYWJsZSA6IDB4NDAwMDAwMWMgLT4g
RmFpbHMgdG8gYWNjZXNzIHRoZSBOVk1FIENTVFMNCj4gcmVnaXN0ZXIuIEl0IGRvZXMgbm90IG1h
dHRlciBpZiBtZW1fYnVzX2FkZHIgaXMgc2V0IHRvIDB4NDAwMC4wMDAwIHRvDQo+IHByb2dyYW0g
dGhlIEFUVSB0byB0cmFuc2xhdGUgdGhlIGFkZHJlc3MgMHg0MC40MDAwLjAwMDAgdG8gMHg0MDAw
LjAwMDAuDQo+IGlmIChyZWFkbChkZXYtPmJhciArIE5WTUVfUkVHX0NTVFMpID09IC0xKQ0KPiAN
Cj4gMHg0MDAwLjAwMDAgaXMgYWxzbyB0aGUgcXVhZFNQSSBtZW1vcnkgYXJlYS4gU28gSSBndWVz
cyBJIHNob3VsZCByZW1hcCB0aGUNCj4gYWNjZXNzIHRvby4NCj4gDQo+IFVuaGFwcGlseSwgbXkg
d29yayBpcyBub3cgYXQgYSBzdG9wIGFzIHRoZXJlIGlzIGEgaGFyZHdhcmUgZmFpbHVyZSBvbiBt
eQ0KPiBzeXN0ZW0uDQo+IA0KPiBOb3RlOiB0aGUgTU1VIG1heSBub3QgYmUgc2V0IHByb3Blcmx5
IGFzIHRoZSBvdXQgb2YtYmFuZCBmYWlscyB0byBvbiBUWA0KPiB0aW1lb3V0LiBJIGNhbiByZWFj
aCB0aGUgcHJvbXB0IGFmdGVyIHRoZSBOVk1FIHByb2JpbmcgZmFpbGVkLg0KPiANCj4gDQo+IA0K
DQo=


