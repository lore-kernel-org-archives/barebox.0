Delivery-date: Fri, 10 Jan 2025 17:15:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWHfV-000Qew-1R
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 17:15:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWHfV-0006qL-AI
	for lore@pengutronix.de; Fri, 10 Jan 2025 17:15:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gGk7RRvk17XKyntoEcPT+pOyzuYFgXlzukFhdvqRERg=; b=rjK74lT0jjiVCf/Su2leXI2l5C
	GhzAeM8BtiQZNZKCk5/Sk6aNRzlVQrfiXtWWasF42bPc+rZAne3Y4CYFW2Tf56CRPhAqg76YoVFvK
	B40GBkzBRAQw2I9DVflqHhdXGJzgUj59inPYPfOrK8fUf/Kzkxe1f07KbX1Gv5e2WvQ+gaxpu4Var
	m3EBpzt6nqE+4rnhe8ygW5UdfrVCrlMf4bIKfaa0/9EH61Meyz55yYRXbp8FGfNPFUN9Q7GthFLnQ
	P54MWYe6Xe436DMQm9yMdoKgbXXoojM1NWj9/4nlEEO4jzvpo9ar0Eh+aUjtNpERk/aGKXdC+NZtx
	i3CWys1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWHeu-0000000GB9q-38G1;
	Fri, 10 Jan 2025 16:14:52 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWHFQ-0000000G5RF-2y8Q
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 15:48:35 +0000
Received: from pps.filterd (m0163889.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50AFaKMp015728;
	Fri, 10 Jan 2025 10:48:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=gGk
	7RRvk17XKyntoEcPT+pOyzuYFgXlzukFhdvqRERg=; b=OjAXYVX2kCfemKded/M
	J/Zz7aEWAc79FOHbtswJcjFufhQ5hJzhRYnCc9OhTvl5DMcON9t7B/e4tTOYq0wh
	ABcpjWDO7ErT/pixhuEmjJNGA4BVQYY2xWViHxDDx6HLyyuSP4vdg2qlUQqyEQLU
	R2UFMC//sQWw8X8NcqyM3xq02bq8zo4nWYvsuljXoJiQ73s0WrCknD+ghtTgyX8k
	tktr2mDj+OkzO3c5mt0SefQywh3C9arKBl1fUvuLpRnNy+Xj/nvhs8gF7HsNUX6V
	qqp52ZRwK82neBUolY7sUeLnwhhTBa+F73Fhd9RwtepulCsmyXGOBaVv6UO/xVDI
	hfw==
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2171.outbound.protection.outlook.com [104.47.57.171])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 4433d70nqg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Jan 2025 10:48:30 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=asnuhrET3Nk9jNDP/XXjgrTDjErspeOIZCmhM9shx3QhC3nJTh4l2LHjPA4Yav1IhA19eTyDtvb24BgTWpwKb5sFPW80RQDjHiWC1OZF5vzIJK/HanMaeN5QT6rTgGEb7X0MzjQDnRze95VQBVNsEpAIallZ8p8AGBxjxwqIt355m9/DuTfHVPD4MOXpLl1cIVK1LHv0iW82xMHjTrx8FrVi857p1LASLq3UfKfchzomMDRHsjExZU4ji3dLe2kbJRPyTLD9ArfPuk9QxIIlbr6wjHTEAPv6BdT4JzvRsL1hosHGUXznkv1GF1RL6eu/bHl17gFlQv4i/9KneTN4cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gGk7RRvk17XKyntoEcPT+pOyzuYFgXlzukFhdvqRERg=;
 b=nlrWRg0FrMry9yMQSSA37YW0ld7IKJqIA1u5wlHcwgrE6ViUUmJVRyykfA4SXPBiqsrAjs5m/jO7Hq7lLKjQd93GQScNN994SdIXYcBSiFdFmxeTe+lWZTGcq1OE4900LaPrP2MEegiUqg8L7/zgTE7okk9Mn9ka5t9jbmxSgGI6IoywW5Y3gHUxP7t7Ivt7mc+TmLxh+YmhflRmiNoRx21DEB6mJyN5v+fvLCoBKvRYn9tF0H6VcXXAYdKMWgifc5EUBlCSFx7MQ69nNV9//ml2AXBpS/rv0L4t4EHtIwAmEgVJXWkEjiqX4Zso9EYfVX06pq4FyRlfciL0Z2MeiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gGk7RRvk17XKyntoEcPT+pOyzuYFgXlzukFhdvqRERg=;
 b=aLf4GN/MoglarJ2NXx7cdoUNvEG1dyuH3OneObRjWzEDCyICvCAr2/xhkqRYTYOGQjy9rlYtTO3YvsjfHsV/yBr37WkJmNDf7UUY6D+2DpD4147y759IZmkbLGLP++46QfR4Z1MGo5VYCBMLaVsW19l4ypUnJIYXho6mqVGmM+g=
Received: from DM5PR07MB3532.namprd07.prod.outlook.com (2603:10b6:4:63::35) by
 BLAPR07MB7764.namprd07.prod.outlook.com (2603:10b6:208:284::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.13; Fri, 10 Jan
 2025 15:48:28 +0000
Received: from DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec]) by DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec%4]) with mapi id 15.20.8335.010; Fri, 10 Jan 2025
 15:48:28 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
Thread-Topic: parted crash on NVME storage on LS1046A-RDB
Thread-Index: Adtidh82wT6z2NuYQ7C7JxRMnax/ewAElTcAADsqUBA=
Date: Fri, 10 Jan 2025 15:48:28 +0000
Message-ID: <DM5PR07MB3532C9D58C2D8848C7F08136EC1C2@DM5PR07MB3532.namprd07.prod.outlook.com>
References: <DM5PR07MB35326945A0F013DF45CE9C77EC132@DM5PR07MB3532.namprd07.prod.outlook.com>
 <2aa13c0d-1820-4f9a-a52e-95917f19f632@pengutronix.de>
In-Reply-To: <2aa13c0d-1820-4f9a-a52e-95917f19f632@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR07MB3532:EE_|BLAPR07MB7764:EE_
x-ms-office365-filtering-correlation-id: acb39ca0-7165-46ba-116a-08dd318e3a0c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RGJmd3BwVUEzSDI1TEdZbWs2aGVZRktVYVJzUWhPU1VtNm9DY1NoMDd5NmpR?=
 =?utf-8?B?YWJiUENIQjZPakhWZFhtVTEwbWdwTTlSY3dybDRzcVBGdHJoVjNNaFpQcC9n?=
 =?utf-8?B?OGoyVm4xT0kxZDIvb2hCYXZueGRQa0pwMmdua3hMbkhIQ3FPdDBZZS8zWS9O?=
 =?utf-8?B?blBvenJsTmFOUFRaeERybUVoQnJSUzhRVVFmMWovckwyT2RhWERFbUt6bnoy?=
 =?utf-8?B?bmt0TllzeDN0WmNpTWtqb2NFTCtHUHZKSUQrK25RSTQ1cmNEK1MyMHlUZng3?=
 =?utf-8?B?VktFWDlpTmltbUI5Tng1Q1ZsN1ZWcWNDZzZ2Wjkyb2cwRGZpN2Q4T2lkMEN1?=
 =?utf-8?B?Y1VPQjN5M0hpUHIwYzRRRUtIY0tHSHVPZk5RNW5udU5tUmdkMkdRWG1jdFZq?=
 =?utf-8?B?V2tJT3h5WXNkOHNvUEwzWGxIZTUyZDlESUovVWVocndHa1RFTzNHbjVxRGNq?=
 =?utf-8?B?MThsTlFyL2IzaG81M05oaW94cTB3enZIZmN4aHMvS01QS1NKY2pIMlpiZUkw?=
 =?utf-8?B?cU4zQUwyUWJ5bXhoaXdhT3M2dW1lTE9jYlZjT1ljdTNrZlQ5NytaUERqMWly?=
 =?utf-8?B?VWlBZW9wY0prODlKOWQ2R3RjeCs0MkQ3S0FvRXZNWDdITzJNUWVDZjFwWmx5?=
 =?utf-8?B?ZEpLeHV0bkFHUWZkbkhySGxVZ3RnREg0cVE5VU9STko0aGpCUWlqbkVwUUs2?=
 =?utf-8?B?ajhrNjJvZ0NkWFNzbDhDVGw0L2tqaXlhOFM0L20yMjFwZm9XZys0SGUxVnp2?=
 =?utf-8?B?MERYaitmeTF0RDhCSmcvanlKS3lyNmQ1d1c5Z1lsM2R2UWxFcVcvRHk3a0pL?=
 =?utf-8?B?WmMrM1ZnZnRXdG52eVlCcXlQZk5KNjhhcHM0LytJUFBPTWExZ0IxcnNSbWJY?=
 =?utf-8?B?a0VNY1Rmc3FJVXNyTlV6ZkhtT0Evdy9ldkY0Rjh5TnRiV2dpRGtmWVRCa2hR?=
 =?utf-8?B?ME9WVjJlU1JNNjQ3WVBrNC9uL2N4UHVpeVN4TG5XVUtLUU94dVR5NktmVkpj?=
 =?utf-8?B?Nmp2QVd6dGpVRXRzSmdLaXprb21JNjZOakJwQzJ2TStPQVI0WUtLSE1nNEtI?=
 =?utf-8?B?WEJVZDYreDgxZHNmWFN5WldJbUR4SGRpUUtiTmcrOE9jNkMzeUlycThFd0du?=
 =?utf-8?B?UVIvdUxpZHQ3VWZ3UjZqN0RwcDBxaDA3UmlCZnIvZ1F1YW51U3UzT0J4MUth?=
 =?utf-8?B?aDJ0RU0xWGZVMWc2RStxeDZNUWttOGM0b25ZYVRrRUNrZEFwZXhkbDJ0WWUy?=
 =?utf-8?B?NDJZOXZVS1dheGNZQy9NTVFCTGR3Ly9hSU9paGJzaTNmcFAxbFY0dm85T0Zo?=
 =?utf-8?B?Y0ZYZlpOSEZwcm1aR2VIaURHL3dyL21Hb09ZQjM2NmlpWFZxNDl3algyTnVq?=
 =?utf-8?B?dkc3dVZXWE8yUEtsa0dtbnFoK05adjFUTTJKa1dTQ2hsYzJicGJjS1RpcEJB?=
 =?utf-8?B?enBxVllyUWV5dFhLNXNtWEZJeUdDdkRpS0RkaGVsUmdMVVVpbkh4WEdPb2R5?=
 =?utf-8?B?Wjh1Y0ZyTktMUndxVWw2WTRWUjc5VkxGZFNhMFozQmYrTzJ3Q3pPMXFQY2Z3?=
 =?utf-8?B?YmNaMzlBTko2U0EzS1h1cTBKN0Vla0lGSXRxcWFWNm8xTG96VWdqNTA3a1lp?=
 =?utf-8?B?am5UYWxJc25vRnNmTldQbXEweVZZaVRCUDFHbW1XeStMeEhMaVZMZ3c0T05Y?=
 =?utf-8?B?RCtpMEVBVm8xckFZd2x1TEIwYjFrNUFYYit4TUh0dGxaTk5ydFUyMk03S0Fw?=
 =?utf-8?B?MTBsaE1RUWdzWFJ5UVozZGZTa0VmdFY4ZFBwbWVESDZVZEErRi9aUXRVY0lR?=
 =?utf-8?B?MkYrZXMrb1Q5SlIrc214d21FQTc2MTB6U1ROcGhOZ1JpcTFVQXVMY1V6eVJC?=
 =?utf-8?B?dEQrVW5mNEhXUVhRc2FQa2xwUWlhVTgzQ0wwdmYrbTVxSGNWL3NhQ2JEQ3J4?=
 =?utf-8?Q?wxskFN3ENEmahH/Pm+v4UAi7HhO6MlOp?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR07MB3532.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NHBmVUxRMlgySEIxcXoyVUhUZEZHR1Y5NDd3SW5ORzhqQVhBVG5McU5Xc2lW?=
 =?utf-8?B?STFsNkxiMnlZSlR5TytWeUhrTUlHL1RMS1VGZlRNc0lMcU9LZ1QveDlzZE9M?=
 =?utf-8?B?enR4SEh6WUxrNE8zZWlyUUJzN1krV3dnbDNTRnhLbkFITUtJQTRuQ0owQ2Rv?=
 =?utf-8?B?OVI5V3BvanVIeFFLc1pNTnFlSnJ6bDA3WHdQaitzSXRaRGxXODBmVEZkM0Nw?=
 =?utf-8?B?cWVqN1BUN3Y4N1N5S1V1Ujg3RU9LWUNURHAvOVgxNWIrZitmRlJhS2pURVpj?=
 =?utf-8?B?VmI4TlpSK20zdktTRjRRNCs2dFd5SWRvdFMvcXhiYmxxK2pTSi9qczN6b3Nn?=
 =?utf-8?B?UkRyVU4vSmszS0l3eG90Sk1Fay8yR3ZhOERCU08vd1lrTE16bEhra09Bdmxi?=
 =?utf-8?B?YklDWUwxRE5tVHFEb2x0OURaN05uUisvTFVUNi8wM3lLN0Yrd2ljQmFOVVBL?=
 =?utf-8?B?K20vSkxRa2xDcEhseVdmbm9WSFFtZUZJRDZJZDRNUXpnS1U2RWhlMjFGajFV?=
 =?utf-8?B?aUxqWGVGNXRXaGNEVDdKUlpDMGN4ZVpFT0J4c2x4ZXhoZjAvbzYzYXR0Mzdi?=
 =?utf-8?B?SlU0NHpoUWhEVnBRTitDeFluTDRCYkloZDRYZ0c4dUk0L0FIK1JySXBPRFpu?=
 =?utf-8?B?K2dIOXdvSXorWW01aUNaQkNGMHBhTjlsQ2dKQWdVRklUdFJlaVRqV2JWbGpG?=
 =?utf-8?B?OGZiRHRQOU5JNHpJaW9UVVhPTkFjdm1teUlURXUwelVxUGRMRHNyd3NaSzlD?=
 =?utf-8?B?WVI2S1BSay9BYnR3VFVDUGpNNTdpcHlqeVBVUEdrNnZOMmplejNsTnpzWDdr?=
 =?utf-8?B?aFB2VGx0TDRRRkErbk5WNkdmUXhWaWliajRjMGpzUCtheFZiVGlVd1RMWEdH?=
 =?utf-8?B?NHBWSGV6TDFzNHpoNWYxY0NzVTljdUpmOW1tZGpmUlloOUhSQm1lNVJvZUsz?=
 =?utf-8?B?NmR6SnlsMW9zNVJCQzVPV2Z1QWdDaU1zMWRpTWsvNGhLZkJma3I4Vi91YVl5?=
 =?utf-8?B?RFNLTzY1NThrZi9KRHZNOFkvdVpmWFQ1SVRTQ0hRMU5SM1dmdjRKWm80SFdQ?=
 =?utf-8?B?TW0yRkpTeUdqNFJYRE9GUFc2dDIxWnc2VDdpcDdERjh4RkJkYXBSSFBJTWtR?=
 =?utf-8?B?MXdaOFYrcWR0c2M5ejZxR3h1ZlFSdUtLVVBnd1QycFhhb0RVazMvZDVFUzMr?=
 =?utf-8?B?enRPL0NiQlBlZ2dHbEFCOTkyeG5FSmlKd3pUcnpLT0xMbm8zeDhzWE5lWGlR?=
 =?utf-8?B?Y0RkZUpSYmFWQW03aWxZSTJXVGF4dE5GTDI3bVNBb3dTSTFxQVp6K3Z2OU80?=
 =?utf-8?B?VzdNSkYxTDZZTzhTWTFxNHdJcGtXZTI5SzB1Sko5cVRCMkJyYnUybEVsMHVK?=
 =?utf-8?B?ZThUTTFjWVIrV1RJWnl2N3hrRWd1MTNiVkRLOFdNS3VmTERqTDNiMkl3bjV1?=
 =?utf-8?B?L21RUlMrU3M3VFZ6NkF3d1I0d1FDbTJZWWY1eWhYd0VQQmw4RTZqVDV1LzJ6?=
 =?utf-8?B?dmtqZ0lMQ2RyT3doRndnb09TZmJ6eHJqNnhCaTJLMDIzR2JuNy9XZXVOOUYv?=
 =?utf-8?B?eWUxY1FHRXpGNDRvdU5NR3RSQS96OS96S251YVdtdytZLzk4MkNHVzh3d0Zn?=
 =?utf-8?B?amUwbUxUZFBseHR1Zlo1eHFzWEVtalpPSUF6cGwwa2NwUmJaY0RPUnZsbnFu?=
 =?utf-8?B?cXpFcWxJYmtacHFKdWRRNlBHeitETzZrLzZpYkV5R3VBdFEyR3FCWUVmNGIv?=
 =?utf-8?B?VUo4SmRXbCt1UUJUYmh2NjlLREUxZitCamVLa1VzZjR1UGVpRkpuL3J6RDg1?=
 =?utf-8?B?SnhJRjZrdGhuM2kyZWNZTDBFWk9UTlV4N1Yzbzhmc0N3cUcxODdFRzdGekRF?=
 =?utf-8?B?cTFBSmZxVnZRK21Ua1oyMUVzZzhGRVQrNWEwL2ZPdW9wVEY1eit6NkQyRlla?=
 =?utf-8?B?S0d3RHlNcE5PakVwN2dXaEdwTTI0ckdzK0NFeTNDNkFlYlRWMHVqejczdDND?=
 =?utf-8?B?ZFdRbm1OZW44ZGhKR2I0NkdNcHVHNG0yWFBpQ3lNN3B0R2hkNHQxZDZDWmx4?=
 =?utf-8?B?Z2phamkxTUJkTTlTa0swZUhDS2pMOVovK3ZIN0ZLRjBWZFRJSVpLaDZmVDRr?=
 =?utf-8?Q?BhVHAw1SYwmbIm5TvHZMCmqQo?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR07MB3532.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: acb39ca0-7165-46ba-116a-08dd318e3a0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2025 15:48:28.5328
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eQPS1QYZ5IOUbbO6/bltgZuengh1epwUQW+zQNSdEop4IPU6ykXRIq9Vbifd1Oq70XNXFxcqssyPTMAQNyAcl1AedIJo44EVnnDkV8V0ANk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR07MB7764
X-Authority-Analysis: v=2.4 cv=e678Sbp/ c=1 sm=1 tr=0 ts=6781414e cx=c_pps a=gIIqiywzzXYl0XjYY6oQCA==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=VdSt8ZQiCzkA:10 a=t7O-Hdu1JCwA:10
 a=m3P6IW4lH-wA:10 a=mVBpPWsdxI0AXS2poB0A:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: zapFliYNFrzLeDAGJWyAn2S2h0ALOPyM
X-Proofpoint-GUID: zapFliYNFrzLeDAGJWyAn2S2h0ALOPyM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 impostorscore=0
 adultscore=0 suspectscore=0 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 malwarescore=0 priorityscore=1501 mlxlogscore=970
 lowpriorityscore=0 classifier=spam authscore=0 adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501100124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_074833_149783_E9F28C43 
X-CRM114-Status: GOOD (  13.71  )
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
Subject: RE: parted crash on NVME storage on LS1046A-RDB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

DQoNCj4gDQo+ICoqKk5PVElDRSoqKiBUaGlzIGNhbWUgZnJvbSBhbiBleHRlcm5hbCBzb3VyY2Uu
IFVzZSBjYXV0aW9uIHdoZW4NCj4gcmVwbHlpbmcsIGNsaWNraW5nIGxpbmtzLCBvciBvcGVuaW5n
IGF0dGFjaG1lbnRzLg0KPiANCj4gT24gMDkuMDEuMjUgMTA6MzIsIFJlbmF1ZCBCYXJiaWVyIHdy
b3RlOg0KPiA+IFdlIGFyZSBpbnZlc3RpZ2F0aW5nIHRoZSB1c2Ugb2YgTlZNRSBzdG9yYWdlIHVz
aW5nIGEgTlhQIExTMTA0NkEgQ1BVLg0KPiA+IEkgaGF2ZSBhIFJEQiBldmFsIGJvYXJkIG9uIHdo
aWNoIEkgaW5zdGFsbGVkIE5WTUUgc3RvcmFnZSB3aG9zZSBleHQ0DQo+IHBhcnRpdGlvbiB3YXMg
Y3JlYXRlZCBmcm9tIExpbnV4Lg0KPiA+IFRoZSBjb21taXQgZnJvbSB3aGljaCB0aGUgYm9vdCBs
b2FkZXIgaXMgYnVpbHQgaXM6DQo+ID4gMjAyNC4xMi4wLTAwMjE0LWdlM2RlODY3NzE2ZTktZGly
dHkgZnJvbSBUdWUgRGVjIDE3IDIwMjQNCj4gPg0KPiA+IFRoZSBkZXZpY2UgaXMgcHJvYmVkOg0K
PiA+ICBgLS0gcGNpLTE5NTc6ODFjMC4xDQo+ID4gICAgICBgLS0gcGNpLTEyNmY6MjI2My4wDQo+
ID4gICAgICAgICAgYC0tIDB4MDAwMDAwMDAtMHg2ZmM4NmQ1ZmZmICggNDQ3LjEgR2lCKTogL2Rl
di9udm1lMG4xDQo+ID4gICAgICAgICAgYC0tIDB4MDAxMDAwMDAtMHg0MDEwMDFmZiAoICAgICAx
IEdpQik6IC9kZXYvbnZtZTBuMS4wLCBudm1lMG4xLkxpbnV4DQo+IGZpbGVzeXN0ZW0NCj4gPg0K
PiA+IG52bWUgcGNpLTEyNmY6MjI2My4wOiBzZXJpYWw6IEEwMTI0MTAxODA2MjkwMDAwMDAgbnZt
ZQ0KPiA+IHBjaS0xMjZmOjIyNjMuMDogbW9kZWw6IFNNNjgxR0VGIEFHUyBudm1lIHBjaS0xMjZm
OjIyNjMuMDogZmlybXdhcmU6DQo+ID4gVEZYN0dCDQoNCkFmdGVyIHVzaW5nIHRoZSBudm1lIHNh
bml0aXplIGNvbW1hbmQgZnJvbSBMaW51eCwgSSB0cmllZCB0byByZWNyZWF0ZSB0aGUgcGFydGl0
aW9uIGZyb20gYmFyZWJveC4NCkEgY3Jhc2ggaGFwcGVuZWQuDQpJIGRpZCBub3RpY2UgYSBjYWxs
IHRvIGVmaV9wYXJ0aXRpb25fZnJlZSBiZWxvdyB3aGlsZSB3aGVuIHRoZSBwYXJ0aXRpb24gdGFi
bGUgd2FzIGNyZWF0ZWQgTGludXggaXQgd2FzIGRvc19wYXJ0aXRpb25fZnJlZS4NCg0KYmFyZWJv
eEBMUzEwNDZBIFJEQiBCb2FyZDovIHBhcnRlZCAvZGV2L252bWUwbjEgbWtsYWJlbCBncHQNCkNy
ZWF0ZWQgbmV3IGRpc2sgbGFiZWwgd2l0aCBHVUlEIDAwZGMwNDY1LWFhMWYtYWQ0ZC05YWRhLWU1
YWMxYjFlNWYxMw0KTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlOiBEQUJUIChjdXJyZW50IEVMKSBl
eGNlcHRpb24gKEVTUiAweDk2MDAwMDBiKSBhdCAweDAwMDAwMDAwMDAwMDAwMDgNCmVscjogMDAw
MDAwMDBmYmQ2YTQ1MCBsciA6IDAwMDAwMDAwZmJkMGY2OGMNCngwIDogMDAwMDAwMDAwMDAwMDAw
MCB4MSA6IDAwMDAwMDAwMDAwMDAwMDANCngyIDogMDAwMDAwMDAwMDAwMDAwMCB4MyA6IDAwMDAw
MDAwYmRlZDJlMTgNCng0IDogMDAwMDAwMDBiZGVkMmRkMCB4NSA6IDAwMDAwMDAwYmRlZjUwNjAN
Cng2IDogMDAwMDAwMDAzN2U0MzY4MCB4NyA6IDAwMDAwMDAwMDAwMDAwMmUNCng4IDogMDAwMDAw
MDBiZGVkMmRkMCB4OSA6IDAwMDAwMDAwMDAwMDAyMDANCngxMDogMDAwMDAwMDAwMDAwMTAwMCB4
MTE6IDAwMDAwMDAwMDAwMDEwMDANCngxMjogMDAwMDAwMDBmYmZmNzY4MSB4MTM6IDAwMDAwMDAw
ZmJmZjdhNzkNCngxNDogMDAwMDAwMDBmZmZmZmZmZiB4MTU6IDAwMDAwMDAwZmZmZmZmZmYNCngx
NjogMDAwMDAwMDAwMDAwMDAwMCB4MTc6IDAwMDAwMDAwZmJmZjc0YTgNCngxODogMDAwMDAwMDBm
YmZmN2E0MCB4MTk6IDAwMDAwMDAwMDAwMDAwMDANCngyMDogMDAwMDAwMDBiZGZjNjFiOCB4MjE6
IDAwMDAwMDAwYmRlZDJlMzgNCngyMjogMDAwMDAwMDBiZGVkMmRkMCB4MjM6IDAwMDAwMDAwZmJk
ZTkwYzANCngyNDogMDAwMDAwMDBmYmUxZjAwMCB4MjU6IDAwMDAwMDAwZmJkYjU0YTgNCngyNjog
MDAwMDAwMDBmYmUxZjAwMCB4Mjc6IDAwMDAwMDAwYmRmYzNkZTgNCngyODogMDAwMDAwMDBmYmRl
OTBmMCB4Mjk6IDAwMDAwMDAwZmJmZjdhZTANCg0KQ2FsbCB0cmFjZToNCls8ZmJkNmE0NTA+XSAo
ZGV2X3JlbW92ZV9wYXJhbSsweDE4LzB4NWMpIGZyb20gWzxmYmQwZjY4Yz5dIChlZmlfcGFydGl0
aW9uX2ZyZWUrMHgzMC8weDY4KQ0KWzxmYmQwZjY4Yz5dIChlZmlfcGFydGl0aW9uX2ZyZWUrMHgz
MC8weDY4KSBmcm9tIFs8ZmJkMGRmMzg+XSAocGFydGl0aW9uX3RhYmxlX2ZyZWUrMHgxNC8weDFj
KQ0KWzxmYmQwZGYzOD5dIChwYXJ0aXRpb25fdGFibGVfZnJlZSsweDE0LzB4MWMpIGZyb20gWzxm
YmQ2NmIxND5dIChkb19wYXJ0ZWQrMHgxNDgvMHgxNTQpDQpbPGZiZDY2YjE0Pl0gKGRvX3BhcnRl
ZCsweDE0OC8weDE1NCkgZnJvbSBbPGZiZDA3YmQ4Pl0gKGV4ZWN1dGVfY29tbWFuZCsweDQ0LzB4
OGMpDQpbPGZiZDA3YmQ4Pl0gKGV4ZWN1dGVfY29tbWFuZCsweDQ0LzB4OGMpIGZyb20gWzxmYmQw
NDIxYz5dIChleGVjdXRlX2JpbmZtdCsweDY4LzB4YTApDQpbPGZiZDA0MjFjPl0gKGV4ZWN1dGVf
YmluZm10KzB4NjgvMHhhMCkgZnJvbSBbPGZiZDEyNGY4Pl0gKHJ1bl9saXN0X3JlYWwrMHg4Y2Mv
MHg5NzgpDQpbPGZiZDEyNGY4Pl0gKHJ1bl9saXN0X3JlYWwrMHg4Y2MvMHg5NzgpIGZyb20gWzxm
YmQxMWE4MD5dIChwYXJzZV9zdHJlYW1fb3V0ZXIrMHgxNDQvMHgxZjApDQpbPGZiZDExYTgwPl0g
KHBhcnNlX3N0cmVhbV9vdXRlcisweDE0NC8weDFmMCkgZnJvbSBbPGZiZDEyOGQ4Pl0gKHJ1bl9z
aGVsbCsweDY0LzB4YWMpDQpbPGZiZDEyOGQ4Pl0gKHJ1bl9zaGVsbCsweDY0LzB4YWMpIGZyb20g
WzxmYmQwMWJkOD5dIChydW5faW5pdCsweDE0OC8weDI2NCkNCls8ZmJkMDFiZDg+XSAocnVuX2lu
aXQrMHgxNDgvMHgyNjQpIGZyb20gWzxmYmQwMWEzOD5dIChzdGFydF9iYXJlYm94KzB4NTAvMHg4
YykNCls8ZmJkMDFhMzg+XSAoc3RhcnRfYmFyZWJveCsweDUwLzB4OGMpIGZyb20gWzxmYmQ5Mzc0
OD5dIChwc2NpX2RyaXZlcl9yZWdpc3RlcisweDAvMHgxYykNCls8ZmJkOTM3NDg+XSAocHNjaV9k
cml2ZXJfcmVnaXN0ZXIrMHgwLzB4MWMpIGZyb20gWzxmYmQwMDAwYz5dIChfX2JhcmVfaW5pdF9z
dGFydCsweDAvMHgxNCkNCls8ZmJkMDAwMGM+XSAoX19iYXJlX2luaXRfc3RhcnQrMHgwLzB4MTQp
IGZyb20gWzw4MDAyODgwMD5dICgweDgwMDI4ODAwKQ0KWzw4MDAyODgwMD5dICgweDgwMDI4ODAw
KSBmcm9tIFs8ODAwMjgwYzQ+XSAoMHg4MDAyODBjNCkNCg==


