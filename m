Delivery-date: Fri, 10 Jan 2025 17:32:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWHvq-000QrU-1A
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 17:32:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWHvq-0007uj-E1
	for lore@pengutronix.de; Fri, 10 Jan 2025 17:32:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kFD0hxJ+xiiLAQOZMmVUgSqegzSG+We82naLWIH+Sac=; b=zbl2UEqU8AXVrSbZA/MA8K23W9
	8CHMVG+5ryLTaKoF+1ThU9gHb2TUW1TmIGwnAguBS6JXAWdT485W0jmJflXVP7qQ1V1e1lRyKUBfu
	W1Kqjxt690xFt4iPdR4LkPSe4Y6bYUNR+OBfGnJmzfktBPm2z5kgWKDK9Oys+xNRRsYaQJJjeqc4j
	wbUjC5U7ERSPjsf/g7Y0W8Y/ktb3fvi5Pf5eo3UvJQzKs0EZCPgtAvu90LNLgpDYKyIOTdMKMsfiw
	St1pYotPUl7iHZz29cs3P/WJAEzxaG3zSilqrdR/Wtk+FgyEq6lTcoB+3IIQfxTkY9zmBEZCHdbzx
	vwHTNAIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWHvE-0000000GGoE-1uL3;
	Fri, 10 Jan 2025 16:31:44 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWHtk-0000000GG9B-1sKb
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 16:30:15 +0000
Received: from pps.filterd (m0163884.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50AGNmpV030559;
	Fri, 10 Jan 2025 11:30:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=kFD
	0hxJ+xiiLAQOZMmVUgSqegzSG+We82naLWIH+Sac=; b=QvPoJRGoJgmH+T9nkLg
	Pe2ybHdney46o6at+4WQaPynZmiPPhkjEhL63+fuEYpeUqJzA2WEs/JttL2d5gwH
	lg9FJpjA1BHjD67ubeuDPrUA5oZCIDjUVHop4dBZIdKseJSK24k6biE7TeTaurxc
	NU3dUzSGfhHe0qq/El+asNo4YkJPD+WklNzcBaJI3oZwr7uuP9NN8kAPciyIxy6T
	GKUCJtX+1JPF9P4wlrQ1ukPwMhVzR4ybCxDdv+Xv8g0IEzPSMAD4cAJgP9ScIJEh
	t/EJNxo0Y4lw5k2urH1tfnzzrV9GB/f2eCTDHIcZcKKD2aqg+bb73IhDMUHG2ZEp
	Zvw==
Received: from co1pr03cu002.outbound.protection.outlook.com (mail-westus2azlp17010002.outbound.protection.outlook.com [40.93.10.2])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 4433nf0ykk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Jan 2025 11:30:10 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TGFjoPiqgGcfM5N/e8YJRZ1sTCnbefEumZdDs243ES16QYuqKCi2svrS0rxPBnIMqXKFTnRvFEnnCKFQ6jt9vgu3VoysK8Fv2QTPC/guTFuFQ50SV05PhEUCwsqCnKsQ5tRe6kd+BkxPo7FKOb52gjBl6EzmS933dgfUu78XleHjf+jUqImMSIzRjbuKeKNduPkcZY73Ac409PfW3x81blSJMEtkRgSuqFSN8M5DePluc1R0FFYs5Kp4gmnWMzr9BDBgiVqQJJsmKxCpvddTRD0NxasLJ+tb+ATCvyohZ7i24Ujbi/rGmfgj+rREzM5FbXopb6GV+tpNcmCT8G9xRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kFD0hxJ+xiiLAQOZMmVUgSqegzSG+We82naLWIH+Sac=;
 b=jaChAO7TYgztLeaftNrOKClANge3mp82C0jSJ4Cce9mpn9751m3EHFTvsAwFDa4NTvFxe2TGyQedID/K5kfl7IYI23lYe594XuSqK8zzQ+r84E/QU9TvUBzWvaeoBcoOVzeEr10YrXrKP5vtGQ6L/7fpbHt0WzTXEkoIsQJpVHj6x7wsLR7xe6kc2ZlzzpcX7JbXkoVQZBhNXNygD92WcVOFaeGxdD9UFd1lPGCfC7FzggSlVPOTV88BOH8BjtHnNAN0j09ky0aesR2KuTKinF5FHC+AncFRc71Q/Jq3R78VudO+Mzt2wxdnSstWcksAqinKfifRarB2ZVxH7fT0hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kFD0hxJ+xiiLAQOZMmVUgSqegzSG+We82naLWIH+Sac=;
 b=Z1bZXEHX4tJ5gskj8I3Azta5vEUmJllLYrzbE8f60mY6tZqnOKwDuzepxNfXwpolk15P8MMTtl8cZN8ygKQsobq6/mKLzU2Hnxu90QBCWaeEFi/gXza8mA9EIMDPQJuSFijg72Ts3hoakOTku3rPmCJ3WQ/+LdZWss9rUU0pFDI=
Received: from DM5PR07MB3532.namprd07.prod.outlook.com (2603:10b6:4:63::35) by
 LV3PR07MB11287.namprd07.prod.outlook.com (2603:10b6:408:28e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Fri, 10 Jan
 2025 16:29:55 +0000
Received: from DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec]) by DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec%4]) with mapi id 15.20.8335.010; Fri, 10 Jan 2025
 16:29:55 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
Thread-Topic: parted crash on NVME storage on LS1046A-RDB
Thread-Index: Adtidh82wT6z2NuYQ7C7JxRMnax/ewAElTcAADsqUBAAAKL9gAABQ+Og
Date: Fri, 10 Jan 2025 16:29:55 +0000
Message-ID: <DM5PR07MB3532C9BC5170BFB116D9E150EC1C2@DM5PR07MB3532.namprd07.prod.outlook.com>
References: <DM5PR07MB35326945A0F013DF45CE9C77EC132@DM5PR07MB3532.namprd07.prod.outlook.com>
 <2aa13c0d-1820-4f9a-a52e-95917f19f632@pengutronix.de>
 <DM5PR07MB3532C9D58C2D8848C7F08136EC1C2@DM5PR07MB3532.namprd07.prod.outlook.com>
 <f8c0ecb3-6c8e-4d09-b258-8f898ec744f1@pengutronix.de>
In-Reply-To: <f8c0ecb3-6c8e-4d09-b258-8f898ec744f1@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR07MB3532:EE_|LV3PR07MB11287:EE_
x-ms-office365-filtering-correlation-id: 4f0ff60b-f9c2-46b6-d2e3-08dd3194042b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cGFwc1Uzd0I0ZU1xLzFBY2tpdmdsZm5zWUhCZmYweXVkQWFyZExJK2lLY2U5?=
 =?utf-8?B?ZlBBTFpGaG9YMGdoUzh6SFRpMzZDb3lkeU81ZEJkalUrTE1iMnI1YXJwMzll?=
 =?utf-8?B?ays3eXZ3ZEdDTHlKUmhGQU5XT0ZmTkdna3VSc1kybnVPUlZqWUNidWhlb2kv?=
 =?utf-8?B?QWp6ZlBXRkZIVzRpSzZoa0pqNlpvUE5vUUtTcVFWNnBjYWU2R3E2ak1TZHo0?=
 =?utf-8?B?c1owSWxaZHFOTEcrZUhiQ3RlWnZrYzlLbHp1bzJNb1VaTUFEaEtOOEE2RFNJ?=
 =?utf-8?B?cktxbWozclYvT2p1WVRCR29acFltakMyQmZ1dVRBemY0cGRGTFFIeFVYSlRy?=
 =?utf-8?B?cEE0RzVnUnVrUElrdFhTUlpYWVNISWZJdWlOaFhTYVNMb29FSGVOZ1dBNXVO?=
 =?utf-8?B?czJsd21zSEs1cnpPcG82enppYVNNcTFrU3FvUmdMUTJFUlU0OEUxYWJObm10?=
 =?utf-8?B?NTQ3WEw0dmZvOWlzcmM5RnRhd3h1emJSOVB5VXgvUFk2TWw3MVkzSlJ6cVBX?=
 =?utf-8?B?QkIyYnhtZ0hQTDArR3ZvbG13NUMyMUc4NzJqMXJUUWF2Mjcya0V1VXY2STkv?=
 =?utf-8?B?RHJEQmpmT0pBWTF5VlRZcGgxTlFtODMxaWhocVpUaGhMWDhlRVEyUVdVajFu?=
 =?utf-8?B?RlUwNGFweDJYUWpCQ3RvNVl4Q2U2Y2FtQVpkekFlbzcydldaTTIyTUQvT3pL?=
 =?utf-8?B?dk9ZeG9QTkV4V1l5ancxd0ppK1lrSjhIWTYwSGR4MXBnOXpMbjVXczFRTlhE?=
 =?utf-8?B?aW1xdVF2TTFQZjlROXZWMmU0RFI4WlNlMkRYUmNKczNsWlAvRlBxcWpyT1Zk?=
 =?utf-8?B?SFdlUUNiRHV0WGNlWEdTNFRPVzV6TEQ3Wi9kRTRlN3l2M2U5N3dxSXFibjhB?=
 =?utf-8?B?L011RVpnODZ4QnJjcFJ4eStNSkZTdFFxaVhWbm40YmdkL0ZlR2NHY0Jtd0pz?=
 =?utf-8?B?d1lBc3VZcVB1RDlPUlF5eFFQU1U3NVhCUWxUaUNocUxFR2RWYUtqTkRjLzZr?=
 =?utf-8?B?aVdkdUNNYXpHakE5TW91Qm84RnU2S2dsNUltSmhTRWNWYVdDczZHQjhXejh2?=
 =?utf-8?B?VDg4b29KNmI3SFhiOXptM280Q1M3aTBXc0JvdGdEZS9UUDVJM05tdVAzMU1F?=
 =?utf-8?B?Wk56bDQ2NmMxZ3hxM0xHQ3FvMGdGbWRkMkJOTFhNczg2ZW8xQ0VSak85S2Z2?=
 =?utf-8?B?bUVMNHNSanZ3a3RIdnJYSG5wZlVvY1M3OFdXMWJ4cHZtbmMrY1ZaVWdtMjQr?=
 =?utf-8?B?b0pEdFVvYXd6ZEJIUXM4Wmw2cVNZQUIzRURsT01tc3hvVmlkL0NvUUpLN2xC?=
 =?utf-8?B?VTFjeEl3RHdDUTlHWFd1R0FtdloySEV2K3FSbmE0NHFiNFlTUU9iSmtQUlBE?=
 =?utf-8?B?K3ZYdytPMkNiTkRaRFBlc3JjcFpaUjlVaFB5L24wcXNsT1kyRVo3YlpZYUpU?=
 =?utf-8?B?dFNCUnNrMUcwa3pUWmdVQmxFUnp1UkNVZ1Nhc2NFbWh2OHhvbjVWUzB4S1RC?=
 =?utf-8?B?SGdlRmdhSkV6Q3ZOQkdMYkFYUlFVWUNYQUdMRGNjK3RCQTVRUzg1RU5mQ2xp?=
 =?utf-8?B?enJHZ0RQWTdpVTJ3VWQzdkZodDJOTkhEU0h1RzkwQmxNNTlmQlZld0hwbm9N?=
 =?utf-8?B?QlMyd2h5YWdWUkY0WWpTYTkrbDlSK1JXdmVLY0J1b1U4RjB0SFNObUNZeG5y?=
 =?utf-8?B?VjRCcVdFV04vSngzVURic1lxb2tXNCtNL0c3azByMG9rUjZrekhCZ0JMYVBY?=
 =?utf-8?B?Q0gxR0tGQ0xpUTBqNlJqM3JNV1ZGWUhWSXI0VHVlZ1VWRFR5dVQ5VHlQY01O?=
 =?utf-8?B?ejRQRXdLQXhyTmR0WnVBNmVUeWM2VXJ5UFJuVGdSNHJlT1BzUE1EeE9GYllF?=
 =?utf-8?B?cnF1VE45aEFUb2Q5UzhzMWRqOXRLb2YrNEU0SHYzTU9aa2FadlVXQ2FwTkQr?=
 =?utf-8?Q?6DNc63LEg7+WaYWEcqJk21s4CDsWAtlt?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR07MB3532.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SEtVMi90V1V2aElHVm9pcTN4T2krTnBSWXVVc1pHWU9RZlRXYXBNbnRWVHFE?=
 =?utf-8?B?UHZVeWpLUTZSOHBxUVRZN1BRYmlrZWlNTzUzYlE4cEdzcFdYUUNGT0tVeGtP?=
 =?utf-8?B?MEFNTjBBLzhVL1J5TXdsRG92Visxczk1OVJ6c2hTVVU0TFRvTGgwUjFURnk4?=
 =?utf-8?B?eWllcm1PUWRLdjl0cWxaaE9RcVhmbjN4eVg5QU1FUWcwMGZHWm9xN295SjU1?=
 =?utf-8?B?SW5EQ2dpMTdoclp5dm9HNUpwM2U2NWNPOGlhK1oxd1NOUStQUUJPVnRUWTBV?=
 =?utf-8?B?Z2M4aUVTTFNPVHRCT0I1bUpCa1pqaXdqY0NZUVRrUytBMW9IckZ0QnRTaWN0?=
 =?utf-8?B?M3d0VWZYSDk0WkJzVHlSMXNYLzFsUDFpRkNRZktNMVdxcVZKYzByeGNNL0l3?=
 =?utf-8?B?Y284VHhJTmhOTlJVL0Q4NE12Tm1YOG9CU2R3aUJnYkY0RzFOZVVmbVNwbFpR?=
 =?utf-8?B?N2pWY05vb1ZJTTZNN0REUW1yRUxDaG1uS0JsN0pPQmp1ckQvbDNtTHkzMUIw?=
 =?utf-8?B?czUyOW1haHBjSlZWL1l1cnFLNWdqZ3pQRnRiSGphZ2srVnA2aUNXaWZkdXVh?=
 =?utf-8?B?NXA0TlQxeENxVVVURXhLZml0QWFYTTF0NTZiU2k2RklhY0pvVDc4bTdoSGJW?=
 =?utf-8?B?eVNzWERwTmZ6aWNBd1NKVUltZEhuMXR1YytaUWpCZmEwYVFINXIyRlkrK2dk?=
 =?utf-8?B?UFArN0Fyci9rRWh5dGtBUGlVMFdYaE9FQUxlbkRLcVpWWHJKRkpvVDRsR0NW?=
 =?utf-8?B?ck8zQVhVUGg5Z3F5a2JRalN4bVpIdXpzVUZzOGRQRGV6cWdpZVBnSXU0bFVx?=
 =?utf-8?B?Y2RXbnZvZURubFNmZDc2Y29BeElxMmFyYlFLYVh5cCtaVUNGM2xhcFJUS3h5?=
 =?utf-8?B?cXljWFIrMnBkcm5qaC8zZWc5dk1CTWFVTzRaUFBiWXUvTGJ1Z1MzQUx1WnJ0?=
 =?utf-8?B?WDhHQkJhNHFkeU9kWjRha1FZWkYraGxxeDZmSmZ1SVNVRHJvYjlGbnhqMndy?=
 =?utf-8?B?UzQxSFdva0U1L3lJVU80TG5iQUc2MytDTzVoU05vdnQxeExwYW9SZ3ZBOFQx?=
 =?utf-8?B?aXVORnF6QTR4OXg5c2JRNm45SHdKT0dRMjVlQlpvRUNLQTlMWk13OGVqaml3?=
 =?utf-8?B?OGdzUkdTd0hMcFJ1ZFpaNnlFOVNSWEVhc3FZTFo3YUlocnVraVo2MnplWFRp?=
 =?utf-8?B?UWVxWC9hL3hPREtVVE5oZmxIaGoweFpkb3NoQlFDZGJ2Ry9qbEFJNFlFU2Y2?=
 =?utf-8?B?NEZSdGhlZTlZZVYra3lRZEczQStRVWtLU0xvV25GemUrRzZaNVpQZDhOeVIx?=
 =?utf-8?B?Qi9CdG8wWDU3MUVhMHNxamxKZXFLczhSY0U3NVN1aGUrOGR0cXFSZjJua0tX?=
 =?utf-8?B?THBFaTNDcVRBcS9hbUljaGJlaFRzUVNmeDk1bHlQaWZUVTlJQzJwaXpuVmdT?=
 =?utf-8?B?T0dEUnM5UTVpZytUenFtSlVhTitOVU9ZYWRlZi9ZcEtibFJxNTRYai9aSjRm?=
 =?utf-8?B?SjNoNGRSQWZ3ZjJmRE9aWHMxSWtWNzdja0Q3c2pMZE13anNaQUYrVGt5Ly8v?=
 =?utf-8?B?STB0M3lra1lsbmtnRlhuNTg0VlV5cytXS3lXUGFMZ2U0cFIrWFJkVVE2R1Ez?=
 =?utf-8?B?SXFtWWh0Z0llWmR1SW5kRlFRNmNxQXFxN3NaYzN4OVNGSStCRFBReWdXMExR?=
 =?utf-8?B?V29oeWg4VGROSmJRL1REcXNrNjRKTkM4SkxMS1NNa05HcHlFcmREMzFKWTFq?=
 =?utf-8?B?NVNYSFFJMVZRL2UwZXZUVEl4WVpEcXNTTWh3Yy92K2I4Mk56VlpjMUJqZFAw?=
 =?utf-8?B?cjZ5eHdUZjVlQzUwbWdERW93ZGRyUUY1aUZDMmRqWGgwRjcwb0RUZkFMY0hF?=
 =?utf-8?B?QjlFeVkxR0FBZW0rN2RzRHgvamxldWJBR0JZNVFqVm1QYjJ5VVVsazJnczZx?=
 =?utf-8?B?aGZ4R1ZZakNvblRVQlRmcGVpdDB5MTBLSTArdEgvYXRnY3FDb0pHbHZ5SWF1?=
 =?utf-8?B?Vml4TDdZU0ZiWXBPZDQ4ZkQxSVA0YWhJNng0cHVhb29pZEhUUlpFN3B0NW4v?=
 =?utf-8?B?eTQvRFJ6ajdpeUdQRFQzSU02S1hPVlBSNjJ6blpEWHhveUU4Q2FsbWJJTlRK?=
 =?utf-8?Q?m7vXoSjRi+5y6Th2Kt5aGxCoY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR07MB3532.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f0ff60b-f9c2-46b6-d2e3-08dd3194042b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2025 16:29:55.0942
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FYdybVJ7kQbm1F8IUSqnjNfUwpk0Lhkhjhw5q92k4ddhUctQl/1jpKAiLxfCne9RHU9qWHNVomckB3eKeF274z/LOSMUr6GwkC8KRXrpQos=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR07MB11287
X-Authority-Analysis: v=2.4 cv=Ruo/LDmK c=1 sm=1 tr=0 ts=67814b12 cx=c_pps a=zlUeCHR5D0pndl+SJpnbFA==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=VdSt8ZQiCzkA:10 a=t7O-Hdu1JCwA:10
 a=m3P6IW4lH-wA:10 a=0oXdg0q58pHDK3E_xsIA:9 a=QEXdDO2ut3YA:10 a=QYH75iMubAgA:10
X-Proofpoint-GUID: nIN36PQnZY6jsD47k1TKWOMd0Mf_jwld
X-Proofpoint-ORIG-GUID: nIN36PQnZY6jsD47k1TKWOMd0Mf_jwld
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=674
 spamscore=0 phishscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501100130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_083012_832529_BFCDB852 
X-CRM114-Status: UNSURE (   8.23  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: parted crash on NVME storage on LS1046A-RDB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Pj4gSXMgdGhpcyB3aXRoIHRoZSB0d28gcGF0Y2hlcyBJIENjJ2QgeW91IG9uPw0KPlNvcnJ5LCBJ
IGp1c3Qgbm90aWNlZCB0aGUgcGF0Y2guIFdpbGwgdHJ5IGFnYWluDQoNCg0K


