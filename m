Delivery-date: Wed, 09 Apr 2025 13:13:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2TMq-00AODU-06
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 13:13:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2TMp-0004rX-4w
	for lore@pengutronix.de; Wed, 09 Apr 2025 13:13:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ztpg2Y7EHyGPxYQsDhDNvM3J8mfywMeGp/DzXYJ8ltM=; b=wKgItKe77+O8ucSXYnuEK+CKAs
	nRqlQFl4UOhx0WfvV41YAyANesA1SESCLwiu4kJ4WkUoO1DvAtSDxBy3mLP7ZViMuhGFFfyOMfXeH
	npqQoR216zMw3FVuUIxjN2UvL8ufThaTaDKM1tVQnDCZEMrtpC7ZsmS5PTMnTglq1ao2x1j2JArFz
	1pDn4V49h4d87Mi5idJY685suasF9YV8Id8YV6H/vQ9qP33pAlD1C6SlneGt/r4xUIZy5opempNI+
	E8F4ayOFzYwTyp8nCykCvEp/hGYurntqIlSsM+lJn8It3j0r8TkAZzHl7VfyK8H85z5mdEbo0zIQD
	QJ2Dj0bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2TMX-00000006xO2-1QeZ;
	Wed, 09 Apr 2025 11:12:57 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2SED-00000006mMm-42yF
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 10:00:21 +0000
Received: from pps.filterd (m0163887.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5399EB4Q026061;
	Wed, 9 Apr 2025 06:00:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=Ztp
	g2Y7EHyGPxYQsDhDNvM3J8mfywMeGp/DzXYJ8ltM=; b=0wJPBja7Q2ZnIfCtXhb
	Z9/h3SURs1y0n5IhhD5ZcT8J776NZkL2dd5XBhK93wnOJeaL3/WhmgbsyLIAGcA7
	4AQhuXKAuHF2mfAN7PHKr1vKaJU7n1yhSCTW6L7OMfnSwh5EgFcoAl/A4Qtn9t4C
	YnYaWAF5o//Rj5ea3wOdNTyP16y6z4qHnkf1QM6etGU9dyvbYKuO200WZxZrseXh
	nZ9scrw54PsfKhNfqdBEbzRorFX3XUNAOpfUfGB19uxxS3B2InGJQa58DyGpJ2/Q
	t9yAIKcTKT8lbwaiCw7cL4cJ9qXNYWy4Dmo12e+WfPtX44jPvp6LDjHF7l6yoey1
	ybw==
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2173.outbound.protection.outlook.com [104.47.59.173])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 45w4jn4frq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 09 Apr 2025 06:00:15 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b6XxNwT1rLC/TVsHrcKlt5j0enn2P/Zb2lFYtPX705TUruUtMPbnqK5tb8tAhjLlhd4xmD66VkXk/9hlosEhSARfLu/jbo5rXJMiyEpbkK6fUwNxkDw+P0TqPXccKCR3y4HH7QHfR/zvlweLLO/KwrGVGXNTf42jFHWzCbIjAN0wicA1g/1lNhrBijrEA9g1q0BM8P0zu+zNCY6v3NSt2CCd1HEVN8B4kj5OcdWDAM4AT+9obsD7PB99xi1i1RxoUAE5ZO1k326o8zKZfoMzfddkBdA86ZBX9IbaFbJ1tO+WvHZfnalivcEWf8q9Mf6rKhwGHMp0OHqmNCOJiO+82w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ztpg2Y7EHyGPxYQsDhDNvM3J8mfywMeGp/DzXYJ8ltM=;
 b=IJUsaZBB6DL4KsFI4eBxDnlCcoQ769j/xQkpv1i0UUgxRCJSBCEyix5G+VaxqYI6l9qMUPu2OA/Ve67KvUhknk2xnugJFIHXNoTYYyWqJg59sEX/gV6l6yHJfBStgcLZnQ6PeIiZ4wMYCZyEUgGmQIR0Au8O+AA1oVoFw4oNxdtUOb1c8HcXiYpUyFcfpEbbBAI8EvKWrL7QHJCSzPzkKM1YldtaXMs1LHXHAPXZOkfjiA8HEL590xgaNgwzra+4rBw1o/zbfYJkx81fVsl3syTwTDE4yefEnkShebnXvmxUmd4VaycSuLbcyHQ75pd272T475mrDp3m4NhtWjhgkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ztpg2Y7EHyGPxYQsDhDNvM3J8mfywMeGp/DzXYJ8ltM=;
 b=055qp2lUDWaH28oqdNpooGF75TbwjAdv+Bt5lWyD28UTuv+ufU1S6ttXF+ZomgCDnUEg0cF7943KiOlxsJaMytMUKHiKdSA5wQ/n3M/uyBCQ8Bu4ip4aqEwcNTmOWwNIfNgNCMKXg1LgvWkIAEdVgrCtwG5lcP/M9Q6pwG8YJLo=
Received: from DM5PR07MB3532.namprd07.prod.outlook.com (2603:10b6:4:63::35) by
 CH0PR07MB8330.namprd07.prod.outlook.com (2603:10b6:610:c0::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8606.34; Wed, 9 Apr 2025 10:00:13 +0000
Received: from DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec]) by DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec%6]) with mapi id 15.20.8606.033; Wed, 9 Apr 2025
 10:00:12 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Lucas Stach <l.stach@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
Thread-Topic: PCI memory mapping
Thread-Index: Adunx0oODuVzmVfJTPqjQ9JvOjjfsAApOIyAADJzb6A=
Date: Wed, 9 Apr 2025 10:00:12 +0000
Message-ID: <DM5PR07MB35327AF658A376B836AC8894ECB42@DM5PR07MB3532.namprd07.prod.outlook.com>
References: <DM5PR07MB35326053D9A1078A2B35A979ECAA2@DM5PR07MB3532.namprd07.prod.outlook.com>
 <0eafad113fb0ff1278a216c1083e71d6bae6093b.camel@pengutronix.de>
In-Reply-To: <0eafad113fb0ff1278a216c1083e71d6bae6093b.camel@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR07MB3532:EE_|CH0PR07MB8330:EE_
x-ms-office365-filtering-correlation-id: 9cc31320-cc50-460d-d081-08dd774d51be
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bmpQTmgwYk1uVWJBTWpTQ1JKR3RqbExhU081enBManZOZFU2VFhoL1MxcnpP?=
 =?utf-8?B?VHk4ZnMxTTJyUzBIbGtqWVdzMFE4OVl3ZHZsb2N3emx3OGpuTWxTNHNsWmRy?=
 =?utf-8?B?K3h5L3laV1NPK0FKbWN6c2F4T3hMc2ZsUUVSRnFRUktxaUtBUEc3NEJXUW11?=
 =?utf-8?B?cGtYUDZacFNnQXNncWtKeTQzRkN5aklFb3hkM3VBdjI0d3d6SFRoMDE3Ni8r?=
 =?utf-8?B?RGNPdldxTFhGYUorUHN1QzBnSVRpVFhKSjVNdXhNRVB0Vkgrd3N0aTVNOHVh?=
 =?utf-8?B?YW11dGVzNktJUDU0anJMVEtIM2Z1bm1FUFJyOXhMZ2NQQzRIVG1zSzlBYUph?=
 =?utf-8?B?eTNBSUZaT2srY3Y1cGpxemtGb3l1VHhCOGZUOUxseU80Y0drWEd4UVhiWXJD?=
 =?utf-8?B?ZTdVUUV5S08wb3NDb3RqTTZOOTJReVI5TGpsbmo4ZUVkT2lLNlB6bW1hMDlw?=
 =?utf-8?B?cTRlZllLdGdzSlErVlY2STlQY3dhbnlrVTErMHQ1VzdEQlkxdXBGSHpmeGo2?=
 =?utf-8?B?TU5ta1paNnVKVnJTYk82SVhCSWhmb3RNU0Q2THh3aEx5Q1RzRjJvZFltMFRZ?=
 =?utf-8?B?V1pBZFV6REFUNmxYb1FFN3gzc0IzS2NpR1BhcDhBWnhiWTAzY0xjQ1QzcmUw?=
 =?utf-8?B?YzZ3NFJNazFpRXY2MGU0YXcrNEJpMUpwcWJqa0ZlMFFvZ1J0R2tONWZpVVhQ?=
 =?utf-8?B?c3ZjNWJRb3BZWXppRmNsempzQ1pnTW4wK1pNUnZmOVNHZ3NMUlpJSktIQTlh?=
 =?utf-8?B?RFd4V2FxV2pFd0lpWEU2UVRPZ0JkUExUVTNOSkxlRTJlT1dXeVRjRXY5Q1hQ?=
 =?utf-8?B?bGFmT1NoUmp4RERGUXFWVTFKWkJVRUFnY0o1K2FqQ3NUNUNQeUU2THdMU1FR?=
 =?utf-8?B?eDR4MGp0WlBBUldTbDRwejMyYzdram9yRTMxanpHZnRqQkYrc1FQc1RzSGo5?=
 =?utf-8?B?bDdJK1A5TkpPdFlvNVNtZ3ZNdWs3MEFlYXJ6cHd1dmRhTldqZzQyd0JiVDhv?=
 =?utf-8?B?NEdXOVZnSm9SRnQ0WWh5R3JNWEFNcG8wZmFONUEzUE94QXZsSzlXTFYvL3Ay?=
 =?utf-8?B?dFBUMDJPT2kvc1V3UERrelozSnBqMzBOTi9TR0FTOWtjNnd6bDJVNCszZ0ls?=
 =?utf-8?B?UWN3c3UyYyt4TDRUQ3M5NXNQM05KNGJsZkI2eWpXeWJ5STRhdVJERys1WExi?=
 =?utf-8?B?b3FLN0E2NW9CeVNaNzI5WS85T0tCNlhpVkRvZm9Pb1JhSVdBK29WL3Y1ZEVV?=
 =?utf-8?B?cVVCSEFWTStXRTNUVlkvUHZnNkxGcm5qSGN6NGhvQWVjT25VcWsvRUpldlA3?=
 =?utf-8?B?aldnbnVkQS9vNWNKRWgzOVgybzEyZjdhT3BGYlE5VU9KTVNIanF2dWs4dHdU?=
 =?utf-8?B?NytORFl2U1A4dStiRjJtYjRCaGlsbnlFNWczTFNjMnlCTEhORkxsSXEzZDYy?=
 =?utf-8?B?U3cyckdLK3lNWUlMUlFpb0FuRWJ2STZmaTBKQjlmbUV6d2NNVlFZMzhBeHNn?=
 =?utf-8?B?NEJiejcvS2V0ZGkyeWdORUpFb2F4NW9HVnI5UWxSK0x0aktTTVhySlh2eVAy?=
 =?utf-8?B?ZEZMQzBqRHZadStyZVZ2eHQwMm5PRHRFTklVeTJjRVo4MFJXVlBEL3dIdWE5?=
 =?utf-8?B?bHlrTGdsQjNKYjZ2aUVkNVR2N0ppM3l6YUVwTENCekhLdDc2clh2cXZNdStD?=
 =?utf-8?B?MU9uR2NnUEVhRS9iR0NIa282aWVuOFpQQ2Z2SEJwT2VxYVcwdGUvZXdRL0Y5?=
 =?utf-8?B?elhKZFFvaUdlWGExNkQwYjg3dlFOT1U5RFVRdzI2TkdVN0IyY3djeFgzQW1h?=
 =?utf-8?B?Mmd0NFhUeDNsQlRUanlzOVJTYitkNDlKU0MvZEgxSVF4UVdZR2FEbzlCU3V3?=
 =?utf-8?B?bnZROVVGTXBlZzl4NG83YlZJeDFvaEU1cWNMcW5raWNTU1ZSUS9ndHVBak5j?=
 =?utf-8?Q?N5sWNie5M/sSlhKhxvjWoDy+qAv+IYvB?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR07MB3532.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bDdjMjZQcC9WOUNMM1lOZlVKU1NZV0hDVmV4YzlESElPNXNwbndkZkF4U2hK?=
 =?utf-8?B?emNSVVY5djdpemdFa21YbVJES29MbFpqREI4VGFpVDRudE9FZlNKVDVVOHkx?=
 =?utf-8?B?QWZ3bG1nZmtIUHVzcTR1VVVUSG5NbmdpUzgzZ1ZSbFI5a0FYMk0ybnlSOWdv?=
 =?utf-8?B?bnh3K3p6STkvcVpXNmRndDBobW1DcUJra0hiekZCNnFod1ZUMVhtVHlwS2Np?=
 =?utf-8?B?dkNXbTd6a24rc2c1M3Qxd0RkMThaOUJoZjdxZ0RkVXhoaDNlZUJVNjB3MGZK?=
 =?utf-8?B?QWNiN0Q3bjhtN010UU5BbDRaOGh5Q1NvaWI1QWNqT3Vpb2NlVzlqcXdHTXhx?=
 =?utf-8?B?UDJVaFJiZlRjd2YwZFl4bnpvWkk2U0lnUHdSalVvNFJJYXYwakRIWVRQanJS?=
 =?utf-8?B?UnBoTlo2R2V6QmFET0dmdVpSVjZqMThFR0xHNEpvaFc5Tk5uYXJ0Z2t3bFJD?=
 =?utf-8?B?Z3E4OGl5YTBWSjJPWWlHZ2c4YlV3MEJEdUs5M0tkaDYrQVI5WEVFWUw2Rk5Y?=
 =?utf-8?B?dnVGZngzZEhpSmZ2b3NDRXk4MHdkWkRIQlFPTGNqNzQ1WDdPYzhISEpTNE5s?=
 =?utf-8?B?bHpmZFc1NUVoU1hCdis1MFhzdVBHQXRaSDE1akdHbHFYWXhiVUJRNHZMeDBR?=
 =?utf-8?B?N0poclFQd2ZQNDFMMjhsc3ppY1dEUERHYlQ3bStyKzlOWnNvMkNQaGpIM1Ez?=
 =?utf-8?B?MzlyaGE5c3psZWVqNEs3aDhYQkhvakZHOEw0SWg5ZUhVSmtSQk5Fb0dwanBt?=
 =?utf-8?B?N2xCVWQ4VFI5U1NiSHNEeCtmSWo1WThiVmkyeXV0K0RxKzFzWDk2UkVDRTFV?=
 =?utf-8?B?bGpIMTVuWEYwTVlEQmRNeUZoV2pZZGxrRVk0bzFPSURHREROeXRXajBFZE1i?=
 =?utf-8?B?d3phUkNoeVhCQjROMjF1bnRTR2kvTW1VTW96WnMxTWdWVUtkSXc5L0xJOEk0?=
 =?utf-8?B?ZVNRckU5T0tCYVR1OE82bGgvbXZsWm1temFwU3lhWnp3MVZ3dTZzN0JFWUdm?=
 =?utf-8?B?NThYdWlsQjNKZWZkQXhBU1ZkUmNMeElnMUJnWE9lWW1IVERzUzZ0VVVmWk1m?=
 =?utf-8?B?TTI2d2FTV21uMHU4am8wWU5YQnIvTkw4N0hrK1ljYk9neDcraWtQUDl3c2s3?=
 =?utf-8?B?L0llL0pIbUM0MHN2bldhQnBGSm1oMEl3WWJQQWtnSFd2emMrRkFtTE4vcnN5?=
 =?utf-8?B?MEt2VDM1c2RyUWIvNkJ2T3NVSENGR1FFM0RxdGNSZm5xOWM1NW9pSnJ6MHBS?=
 =?utf-8?B?VVdudmhsclpyVG4zWlJidjJSaEIrZ1JPVnl2WGJWR3J0VnFpYzlZL0xFTEJ0?=
 =?utf-8?B?QXlRaExvUmMrK1dEUXZQVmV6L3VHVWVoMzhvbXhXQnVuT05aR3I4THdpekU1?=
 =?utf-8?B?bllzVm1USUx1d3Q3RGhlVzhabUlHeWhZMWhyRUNqaGxpT3laUkFDaUtRRjJT?=
 =?utf-8?B?WTJMdTZsUmdJc3ZVNEtCWnBDVzgxb3c3MWMyeVBVeVlpdDR1OUdsL01PM2Ur?=
 =?utf-8?B?U1FLSDlSR1g1YVArcGVQTmdiU0RzVkFueHptZjh2dWFVZkJwZ1hVS1dPeFpQ?=
 =?utf-8?B?UDhWRHgveGFTN0ZxM3ZMK2RXclNMMXk3b0NkbUFhZjJiY0tCQVF3NzJ2dUF4?=
 =?utf-8?B?UGFwcTRkUjBPOVBhYm5xVWh2T0NvVTNwdkI4czgxMjFWbUhmRE51Z2haUlZx?=
 =?utf-8?B?UGdoMndaV1pINC9mZGRESXdKcjhRdk5ra1lhVmFSY3MvdWJ2NlQ5dUo4VzNm?=
 =?utf-8?B?Qm9MdVBVaUNJR1RaVEJPaHVacGI5V2owUlptdjlYaUVFcjlVNjE1aHRqbmEw?=
 =?utf-8?B?bDgyMDE1MlBCM0ZtNXhnRC8zaUtkREx4TWlPdnpGZ2huY3pQQ2x0dDU2T3Y2?=
 =?utf-8?B?a214U29TM0pFWEZTbCsrWGIwVWdQTjk1MVFvVUt6RUVqc1FNY2lkMEI1dXRD?=
 =?utf-8?B?bFRWUDMwWVZBbnNVNStTUXZkV0FheGxCWHRXTTdXS0dwN3VSYTRXb2YwU29Q?=
 =?utf-8?B?cU9jVDd2T1cvK2tSR1huQzNEWVREc3pqNm9OVHMxQjZvMWZpbUcwMjl5SzBh?=
 =?utf-8?B?dWtKTThvU09wd1gwMGpwRzZnTjJyVk5EY0U2V2JwdnV6UE1MV3krM1NPQXNX?=
 =?utf-8?Q?rzrs7bMHfXtx2zzl6B9a1vtF/?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR07MB3532.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cc31320-cc50-460d-d081-08dd774d51be
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2025 10:00:12.3886
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nH5yOcW6QefZUIme9hnFOub0nCPnOtOQbAhcyHp2gBBly2ey8ztDrPDW2gqVokuuDO1xsMdanRdSIu5P69+P3yu7A79PIwDvJESFSyDGQTc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR07MB8330
X-Proofpoint-GUID: sFW6E6VjCROkKTMxmwv7oeiGa0e0PkDG
X-Proofpoint-ORIG-GUID: sFW6E6VjCROkKTMxmwv7oeiGa0e0PkDG
X-Authority-Analysis: v=2.4 cv=WMt/XmsR c=1 sm=1 tr=0 ts=67f6452f cx=c_pps a=H8RDR50mQ1szzU+C1Tr1+Q==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=XR8D0OoHHMoA:10 a=m3P6IW4lH-wA:10 a=LpXnpPx8AAAA:8 a=JfrnYn6hAAAA:8 a=RJa6QogmInxUUT_Xyf4A:9 a=QEXdDO2ut3YA:10 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_03,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 bulkscore=0 adultscore=0 priorityscore=1501 mlxscore=0 malwarescore=0
 phishscore=0 mlxlogscore=999 clxscore=1011 impostorscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504090054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_030018_296678_E86CCE77 
X-CRM114-Status: GOOD (  20.70  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: PCI memory mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Rm9yIGluZm9ybWF0aW9uLCBJIGhhZCBhIGxvb2sgYXQgdGhlIExpbnV4ICg2LjExLjMpIFBDSSBk
cml2ZXIgLCB0aGUgUENJIGJ1cyAoUENJZSBpbiBteSBjYXNlKSBwcm9iaW5nIGluIGRyaXZlcnMv
cGNpL3Byb2JlLmMgaXMgbGltaXRlZCBieSB0aGlzIGZ1bmN0aW9uIGR1ZSB0byBQQ0llIHNwZWNp
ZmljYXRpb24uDQpzdGF0aWMgaW50IG9ubHlfb25lX2NoaWxkKHN0cnVjdCBwY2lfYnVzICpidXMp
DQogIHsNCiAgICAgICAgICBzdHJ1Y3QgcGNpX2RldiAqYnJpZGdlID0gYnVzLT5zZWxmOw0KDQog
ICAgICAgICAgLyoNCiAgICAgICAgICAgKiBTeXN0ZW1zIHdpdGggdW51c3VhbCB0b3BvbG9naWVz
IHNldCBQQ0lfU0NBTl9BTExfUENJRV9ERVZTIHNvDQogICAgICAgICAgICogd2Ugc2NhbiBmb3Ig
YWxsIHBvc3NpYmxlIGRldmljZXMsIG5vdCBqdXN0IERldmljZSAwLg0KICAgICAgICAgICAqLw0K
ICAgICAgICAgIGlmIChwY2lfaGFzX2ZsYWcoUENJX1NDQU5fQUxMX1BDSUVfREVWUykpDQogICAg
ICAgICAgICAgICAgICByZXR1cm4gMDsNCg0KICAgICAgICAgIC8qDQogICAgICAgICAgICogQSBQ
Q0llIERvd25zdHJlYW0gUG9ydCBub3JtYWxseSBsZWFkcyB0byBhIExpbmsgd2l0aCBvbmx5IERl
dmljZQ0KICAgICAgICAgICAqIDAgb24gaXQgKFBDSWUgc3BlYyByMy4xLCBzZWMgNy4zLjEpLiAg
QXMgYW4gb3B0aW1pemF0aW9uLCBzY2FuDQogICAgICAgICAgICogb25seSBmb3IgRGV2aWNlIDAg
aW4gdGhhdCBzaXR1YXRpb24uDQogICAgICAgICAgICovDQogICAgICAgICAgaWYgKGJyaWRnZSAm
JiBwY2lfaXNfcGNpZShicmlkZ2UpICYmIHBjaWVfZG93bnN0cmVhbV9wb3J0KGJyaWRnZSkpDQog
ICAgICAgICAgICAgICAgICByZXR1cm4gMTsNCg0KICAgICAgICAgIHJldHVybiAwOw0KICB9DQoN
CmludCBwY2lfc2Nhbl9zbG90KHN0cnVjdCBwY2lfYnVzICpidXMsIGludCBkZXZmbikNCiAgew0K
ICAgICAgICAgIHN0cnVjdCBwY2lfZGV2ICpkZXY7DQogICAgICAgICAgaW50IGZuID0gMCwgbnIg
PSAwOw0KDQp+ICAgICAgICAgaWYgKG9ubHlfb25lX2NoaWxkKGJ1cykgJiYgKGRldmZuID4gMCkp
IHsNCisgICAgICAgICAgICAgICAgIHByX2VycigiWFhYOiAlcyBvbmUgY2hpbGQgZGV2Zm4gPSAl
ZFxuIiwgX19mdW5jX18sIGRldmZuKTsNCiAgICAgICAgICAgICAgICAgIHJldHVybiAwOyAvKiBB
bHJlYWR5IHNjYW5uZWQgdGhlIGVudGlyZSBzbG90ICovDQorICAgICAgICAgfQ0KLi4uDQoNCg0K
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBMdWNhcyBTdGFjaCA8bC5zdGFj
aEBwZW5ndXRyb25peC5kZT4NCj4gU2VudDogMDggQXByaWwgMjAyNSAxMDo1NA0KPiBUbzogUmVu
YXVkIEJhcmJpZXIgPFJlbmF1ZC5CYXJiaWVyQGFtZXRlay5jb20+OyBCYXJlYm94IExpc3QNCj4g
PGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZz4NCj4gU3ViamVjdDogUmU6IFBDSSBtZW1vcnkg
bWFwcGluZw0KPiANCj4gKioqTk9USUNFKioqIFRoaXMgY2FtZSBmcm9tIGFuIGV4dGVybmFsIHNv
dXJjZS4gVXNlIGNhdXRpb24gd2hlbiByZXBseWluZywNCj4gY2xpY2tpbmcgbGlua3MsIG9yIG9w
ZW5pbmcgYXR0YWNobWVudHMuDQo+IA0KPiBIaSBSZW5hdWQsDQo+IA0KPiBBbSBNb250YWcsIGRl
bSAwNy4wNC4yMDI1IHVtIDE0OjU1ICswMDAwIHNjaHJpZWIgUmVuYXVkIEJhcmJpZXI6DQo+ID4g
SGVsbG8sDQo+ID4gQmFyZWJveCB2ZXJzaW9uOiAyMDI0LTA5DQo+ID4NCj4gPiBJIGFtIHBvcnRp
bmcgdGhlIExpbnV4IFBDSUUgZHJpdmVyIGZvciBCcm9hZGNvbSBDb3J0ZXgtQTkgKEFSTXY3KSBj
aGlwLg0KPiA+IFNvIGZhciBJIGFtIGFibGUgdG8gZGV0ZWN0IHRoZSBicmlkZ2UgYW5kIE5WTUUg
ZGV2aWNlIGF0dGFjaCB0byBpdDoNCj4gPg0KPiA+IHBjaTogcGNpX3NjYW5fYnVzIGZvciBidXMg
MA0KPiA+IHBjaTogIGxhc3RfaW8gPSAweDAwMDAwMDAwLCBsYXN0X21lbSA9IDB4MjAwMDAwMDAs
IGxhc3RfbWVtX3ByZWYgPQ0KPiA+IDB4MDAwMDAwMDANCj4gPiBwY2k6IGNsYXNzID0gMDAwMDA2
MDQsIGhkcl90eXBlID0gMDAwMDAwMDENCj4gPiBwY2k6IDAwOjAwIFsxNGU0OmIxNzBdDQo+ID4N
Cj4gPiBwY2k6IHBjaV9zY2FuX2J1cyBmb3IgYnVzIDENCj4gPiBwY2k6ICBsYXN0X2lvID0gMHgw
MDAwMDAwMCwgbGFzdF9tZW0gPSAweDIwMDAwMDAwLCBsYXN0X21lbV9wcmVmID0NCj4gPiAweDAw
MDAwMDAwDQo+ID4gcGNpOiBjbGFzcyA9IDAwMDAwMTA4LCBoZHJfdHlwZSA9IDAwMDAwMDAwDQo+
ID4gcGNpOiAwMTowMCBbMTI2ZjoyMjYzXQ0KPiA+IEVSUk9SOiBwY2k6IGxhc3RfbWVtID0gMHgy
MDAwMDAwMCwgMTYzODQNCj4gPiBwY2k6IHBiYXIwOiBtYXNrPWZmZmZjMDA0IE5QLU1FTSAxNjM4
NCBieXRlcyAuLi4NCj4gPiBwY2k6IGNsYXNzID0gMDAwMDAxMDgsIGhkcl90eXBlID0gMDAwMDAw
MDANCj4gPiBwY2k6IDAxOmY4IFsxMjZmOjIyNjNdDQo+ID4gRVJST1I6IHBjaTogbGFzdF9tZW0g
PSAweDIwMDdjMDAwLCAxNjM4NA0KPiA+IHBjaTogcGJhcjA6IG1hc2s9ZmZmZmMwMDQgTlAtTUVN
IDE2Mzg0IGJ5dGVzDQo+ID4gcGNpOiBwY2lfc2Nhbl9idXMgcmV0dXJuaW5nIHdpdGggbWF4PTAy
DQo+ID4gcGNpOiBicmlkZ2UgTlAgbGltaXQgYXQgMHgyMDEwMDAwMA0KPiA+DQo+IEkgaGlnaGx5
IGRvdWJ0IHRoYXQgeW91ciBOVk1lIGRldmljZSBhY3R1YWxseSBvY2N1cGllcyBhbGwgdGhvc2Ug
QkRGDQo+IGFkZHJlc3Nlcy4NCj4gDQo+IEVpdGhlciB5b3UgaG9zdCBkcml2ZXIgaXNuJ3QgcHJv
cGVybHkgcmVwb3J0aW5nIGJ1cyB0aW1lb3V0cyBvbiB0aGUNCj4gUENJX1ZFTkRPUl9JRCBjb25m
aWcgc3BhY2UgYWNjZXNzLCB0byBtYWtlIGl0IGFwcGVhciBsaWtlIHRoZXJlIGFyZSBtdWx0aXBs
ZQ0KPiBkZXZpY2VzIG9uIHRoZSBidXMgdG8gdGhlIHRvcG9sb2d5IHdhbGssIG9yIG1vcmUgbGlr
ZWx5IGZyb20gdGhlIHN5bXB0b21zDQo+IHlvdSByZXBvcnQsIHlvdXIgaG9zdCBkcml2ZXIgZG9l
c24ndCBwcm9wZXJseSBzZXQgdXAgdGhlIERGIHBhcnQgb2YgdGhlIEJERiBmb3INCj4gdGhlIGNv
bmZpZyBzcGFjZSByZXF1ZXN0cy4gSW4gdGhhdCBjYXNlIHRoZSBmaXJzdCBkZXZpY2Ugb24gdGhl
IGJ1cyBtYXkgY29ycmVjdGx5DQo+IGFuc3dlciB0byBhbGwgdGhlIGNvbmZpZyBzcGFjZSByZXF1
ZXN0cywgd2hpY2ggYWdhaW4gd2lsbCBtYWtlIGl0IGFwcGVhciBsaWtlDQo+IHRoZXJlIGFyZSBt
dWx0aXBsZSBkZXZpY2VzLCBidXQgdGhlIGVuZHBvaW50IHdpbGwgYWN0dWFsbHkgZ2V0IGNvbmZp
Z3VyZWQgd2l0aA0KPiB0aGUgQkFSIHNldHVwIGZyb20gdGhlIGxhc3QgImRldmljZSIgb24gdGhl
IGJ1cy4gSWYgeW91IHRoZW4gdHJ5IHRvIGFjY2VzcyB0aGUNCj4gTU1JTyBzcGFjZSBvZiB0aGUg
Zmlyc3QgZGV2aWNlLCB0aGVyZSBpcyBubyBFUCBjb25maWd1cmVkIHRvIGhhbmRsZSB0aGUNCj4g
cmVxdWVzdCwgY2F1c2luZyBhIGJ1cyBhYm9ydC4NCj4gDQo+IFJlZ2FyZHMsDQo+IEx1Y2FzDQo=


