Delivery-date: Tue, 16 Dec 2025 12:04:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVSr4-00C5QM-1D
	for lore@lore.pengutronix.de;
	Tue, 16 Dec 2025 12:04:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVSr2-00016N-Jl
	for lore@pengutronix.de; Tue, 16 Dec 2025 12:04:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0hW+5ffBteQzM6tgl3jylJv4n8z882lIZm6NCKCvbb8=; b=BJsDfVWeMlSgP+Pc0eBHt9BKof
	ldVNl1bzqyT2CSwQIc3DEWAR4wxrqD6xl7FMUFgbVq/Yqaru5neF5357x/kHBD2KibJYQ39nX46sK
	/WRUBd088pzUugjO3l2auCemKbw31RcGCwOgeEHxW8s2ivzWD/1Y7nkXWqOp95fR068IPlKaQHFUb
	W3D5a8lHlqMSPjYrLOG4knvcuoJuJbbT1DpvgwxoarQiANkpu8XZbVtbQpD/2pc5CmukVjsdXG0lZ
	XvAgdTDiXnv+Gsd4HPkwfo1LXN+F+cPLPRIvMEX0vygBnSAETWs213CMlHplzp6GRPXRoYRIf3Yxn
	Qnp9M1/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVSUh-000000053GP-1o1n;
	Tue, 16 Dec 2025 10:41:27 +0000
Received: from mail-westeuropeazon11021081.outbound.protection.outlook.com ([52.101.70.81] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVSUe-000000053FC-2y1R
	for barebox@lists.infradead.org;
	Tue, 16 Dec 2025 10:41:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uxuTGtu5+PKLme2oWx36qFvxkhtfIt7FISEXgE7DNnmdRi8i4UPtmvhuVhhnH6wNfA4Puzr7a72ztuCaxEU0aQ5ANAwrEnH+5SNMXityjPSgAYXomDhqsiSk8qAXuxXKWrVFFqFw7vmQjomuVYbQEzibXbkKsv43MUdN2t0JyFzl5rx1a1KfHUbK3UuKE6t+zhDVMbWsruFzg8nrmrEvbGQE1Jewlf9OdvEVlFB8K5iK97mjz7CO85SXA+/N+ZXkn7CmXTnwRwfUltzd5yVWX1FSoT/LLLiSPWJGoDtJXrvexISJ2HEE7d48DqvMqhEV2Gx1t4jWZY/3hsZGcUraFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0hW+5ffBteQzM6tgl3jylJv4n8z882lIZm6NCKCvbb8=;
 b=POYyP6j04ZqvQd9nArB3OA0+37EcGDNrtaFo/+70d6H82XJBPmiRJ+vZ3yvt1yTe/k1v32UDe3baf7k1ys0r+NVenMeO+30Qd8B2aDZ+05Jhs3VZ9HDbaJ0vcxnLgrxQx0PN07W5zddNOCXg43LvVm7JjbTrlOP7DQpSKK31mnO8v5HGqkzVVjwNL3yuRm1F/C2RfENsnsz2dXXRZhKKvaXSUuTlAQwaDF2QmS4Wn9JSOYdqTm9dhTXJCeCoVaGSe6d5mfYedElZpWBriH932lkGVwq6jP8nOPpBi/l2sKUtf2nmxNGUstymAHKmlGJ8Ft4OEdHgBJK42DhhuIYc/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gocontroll.com; dmarc=pass action=none
 header.from=gocontroll.com; dkim=pass header.d=gocontroll.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gocontrollcom.onmicrosoft.com; s=selector1-gocontrollcom-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0hW+5ffBteQzM6tgl3jylJv4n8z882lIZm6NCKCvbb8=;
 b=3b7PrZGoifUELAZLkdJaSeHh9Juhc1XmjvcXpeIE6I37i38BBVgRjYRuMCRN2NasLJdrESZCYtc5HLfD/ir4bS49v9DgCSxXoOQ2TYcf+OJT63ynGTJumHey96HA0NtRbziDwVBn95mMUfd8CCwSXnCOBCojQuVwZuyOBsFQYJ4rs2ZXyBuOgoXj9TTBiFTwv01LY4oWsnO6Vqyif5Y9CgQ3QJiDSgACjqFpMBvD1bUTCWRk2liEnciuxlQn1HrLHUzZkN989X9qGjpC3sP+WZ5s6O0AUrr4adf1AD6IOX7wiJjNDIiczXv4UKog5xCwseFB1Oj7HoK05oVws5erDA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gocontroll.com;
Received: from VI0PR04MB11748.eurprd04.prod.outlook.com (2603:10a6:800:2eb::6)
 by DU6PR04MB11205.eurprd04.prod.outlook.com (2603:10a6:10:5c1::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Tue, 16 Dec
 2025 10:41:17 +0000
Received: from VI0PR04MB11748.eurprd04.prod.outlook.com
 ([fe80::5a4c:391:3df:9ffd]) by VI0PR04MB11748.eurprd04.prod.outlook.com
 ([fe80::5a4c:391:3df:9ffd%6]) with mapi id 15.20.9412.011; Tue, 16 Dec 2025
 10:41:15 +0000
Message-ID: <35a2d449-c60c-45f6-80b3-5a3bb30f7cbf@gocontroll.com>
Date: Tue, 16 Dec 2025 11:39:42 +0100
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251216-genpd_fix-v1-1-b4ca268d3b31@gocontroll.com>
 <f54c14fa-25ee-448e-b94f-50d4190e12f5@pengutronix.de>
Content-Language: en-US
From: Maud Spierings <maudspierings@gocontroll.com>
In-Reply-To: <f54c14fa-25ee-448e-b94f-50d4190e12f5@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS4P191CA0004.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d5::10) To VI0PR04MB11748.eurprd04.prod.outlook.com
 (2603:10a6:800:2eb::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI0PR04MB11748:EE_|DU6PR04MB11205:EE_
X-MS-Office365-Filtering-Correlation-Id: 29c53c50-3c00-41aa-286d-08de3c8fa375
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QWZSM1pRNlBzMkxDdm5sT2c3ZGlHbXJGTjlwWVJXVHZsVXB1ZVpaZTkvTVBY?=
 =?utf-8?B?TVQxRW5KaWtMZitTNmZSek1jSTZDL3YwRXhQZmV0YkFsNHd3UmhMMmltbXV1?=
 =?utf-8?B?N0tkdit4NVB4a3JiQ1A2SVd1RnNqR3Vta0hhOVFNSTI4emk2cVZVc1dNUjJJ?=
 =?utf-8?B?d0thTVhMUDBoYThUWHdLeXd5ZTNVdGU0a1ozMk9ZRTRtemJpRy9ZQ3F0K0Zo?=
 =?utf-8?B?YWNjSjliRTVjcU5vd2NFN0VVNUJWRGdvdVpSNmk3ZXQwTWVwc2pIRURuS2Ew?=
 =?utf-8?B?bytQYUIrOUdVdjBpNzdVdm1tUmNDOG5FUzJHMllET3lIejdlUmc3MnVlV1Ba?=
 =?utf-8?B?SStqZUlGNjhCT1VQU3V2U1ArZkRKSmtJZ2tTblRiZm94cUxETTZQWUc3bGRB?=
 =?utf-8?B?TDNVcjhTWHdZWDlEUWRBU2pLek1kdE05M0VOUFJDeXNNZUJKTnRHTXhKYW85?=
 =?utf-8?B?d2xiMTlVM2J6Z3Nrb0l2YnIxam9UUjNIRzJzL1lKU1lueWs5bFBQYUxjMnJH?=
 =?utf-8?B?RTFOSU1QNkFmRkxrS0U0L29WRE1DMnFFbVJJRFROcnVIeEtjeXRFUHpJZGV0?=
 =?utf-8?B?c0Zjb0xyKzhLb3cxL0YzZERHY1gwME5COWY5UTZpNzFIbkI0T20rUlJYSS9E?=
 =?utf-8?B?TEhKc2ZNcnZPUnI4bDd3b3dMQ0Fwd0s1d0ZlSU9heXZvMytITUJSOW00dDBX?=
 =?utf-8?B?VjR0S0x4amhtTW5UWEVmTjJJTEg0YTI1Y0U4YlVnTk5Wd0lWaDB3OEprN21r?=
 =?utf-8?B?dGErUmVyanlPdUp1dU1KZEZ4SHhZWjZOTFpYcTlQc2pVbHpLU2tkVDRzRDcz?=
 =?utf-8?B?UzVVVitvamUrUWc5cTlCd0plN0FUQU4xOVJacXpRNmIxK3lEVUxJSGlXbnlF?=
 =?utf-8?B?czBWeU9wNXFpeWRNTUszdzk1eXVTeS9HeGNNNkNiSGRyU0hzc2V5ZWtqendV?=
 =?utf-8?B?ays1bmNUaXFFYlhrTUlWQ056b0wwWG1INFd4OCtmUmxiZmVzZHNQNTFIRCtR?=
 =?utf-8?B?Z1NnMm1TWS9VbG0zbjZSWTFzU3prSHdHeHl0a1E4bThGL2tUbmlNbE81KzVz?=
 =?utf-8?B?TU94MlU1QUo3bjJIUTZNNXQ4bzkxZ1MyYU05cHRPWTd1K04yVDQ5ZGFRTnhE?=
 =?utf-8?B?M3N2L0dvWk8xSGVWTlFlY1JnRkFaRzRrTWlFdzJkeXljUzErcU9JTUNsdFZv?=
 =?utf-8?B?ekVsOXpZaC9ZZzgyb3lrMTZ2YnkzMWZOR1NNN2p1SzI1TjNvbjZ5aU5kUVMw?=
 =?utf-8?B?NzJjVzVyd0g5ZzF2a055R0ZtQ2ZpbXlvS2x4YVRSYVlueit3M1lZRzJaQ205?=
 =?utf-8?B?T0dqbFhsRDY0TU1kME9CenJmYnFpZTR4NHVGWU9yVGhVTGc4dTh4QUxTL3JP?=
 =?utf-8?B?U0sydUNHOFBCbGg1NDNtNGNoUmRzeUVoTEhVanpuR0hwRHVqRDNFK1FoeDZP?=
 =?utf-8?B?SXVaZnFnMnBDaVVLTjQzZ2U1d3JFaGFJMzd0R0V0RGpvbG1lMzBTUFZHSU9I?=
 =?utf-8?B?NDh3R3VMNjdlb1Q3VmZnbEk4a2hrUVhrNFdKL2lxVHpTdFVtcFI2bXNsVkJy?=
 =?utf-8?B?RUJYSThHNStwcGkvcDJRN1V1NElBa0xES0FwOUJzbVc0cGczVzgxdVZnSmpM?=
 =?utf-8?B?ZXNBUlRmN2dSQkREaTQ5SkRJVys2YnFESmNaYXhwNDdCek1ZMllWNS9yRW41?=
 =?utf-8?B?czBPQUxIMzA2MmE5aTloRmJXMm4rZ0tXVkR6V1NaTEpPNXYybno1Z3hTY21O?=
 =?utf-8?B?VkFkeUNHc0dTd2NXd21ZYTU1eGxVQlRUaGlJMFV3WHYvMDBCZkNYVVQra1Rv?=
 =?utf-8?B?cS8xWjlvekZmc3lHYzgrZngrb0tnTjJUbXZyYTFwOWVFYzJTTHNmVGJrWmtH?=
 =?utf-8?B?cU55aFVHekJlK1pFc3d5dk05ZitZY09rbDZocFhOamhndVNSK1R3Mkpxcncw?=
 =?utf-8?Q?BIH307x4kXCwf/1cuiP6cA8X27XWyraq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI0PR04MB11748.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(10070799003)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YkRJT0xMMjdkMVRMZGpXV3ZheWx6WDVFQUxhOFBMbmh2a1hRUVdiSGQ4eUEr?=
 =?utf-8?B?WEswdXBqUUh0RmNkZFF6QTkvYkhsSnA3SjE1dmhDWTl1OWpKUm5zdHNMRmxp?=
 =?utf-8?B?R0VTU1Qrbis1SzFpWWlPYk8rakYvMDF0RnlSUENLSk5DYS9ORE5RZ1k5K0NO?=
 =?utf-8?B?OGljU2FBNU9MRHJzalpvUm9BNS9Wd2lBZld3L1o2NGVKZ0hjbW5acmRTUmg3?=
 =?utf-8?B?QVB6YkhTQlNIZFczNHNOT0wzZTg5V3hZaHdBbllhQTFsQnRHQ01xZmJTS3Rk?=
 =?utf-8?B?VW0xeFdsUGhxODhjbXRpbytLbUtTRjh4ZUxLOHN6Y3A2RnFoaUZlQUJDRVls?=
 =?utf-8?B?ZFR1ckMzeUZicmFlOExWVnlSTi9QN2lvQlg1bmVnVHdVZUwwbmh3b2NMTWNk?=
 =?utf-8?B?Ni9wSVYreFB1QlVrL2hGNjdiZUo1TzY4SmN3azdBa3BYcUhwUy83ZTA5eUlY?=
 =?utf-8?B?QVZ0REVVK1NxMlFYZEs0em5tUk90WWkwSDVUSXo2ZXp5SUZDSUkxM2JMS2tW?=
 =?utf-8?B?VENjbUFkRTFTNG5MbVJnK2xjZElpSWd5RTYvKzl1RW0xQm9FMXJwNHpVNWtt?=
 =?utf-8?B?SW1mSTk1YUg3eWx2c2hpWVljdHFRbVoxb1F6alFOOTZhbkN1Q3piVHJlaElq?=
 =?utf-8?B?Rm0rMVJsSmx5ZUFXMWF4aG9YQS9zYnJvN2lYdm5nSlBBT2UrS2lmcVQyYUNm?=
 =?utf-8?B?Qm1MWWhTYnUvR0tFRGJyL0NYQkdidGcvYUpxNWNFTjE1bnh6ZU9ubld0bkJE?=
 =?utf-8?B?VlFjaklJM1R5NFpGNkdtbW0zZWRCeFgwVUtWSDl1d215YmpEQUpGZmZZT2M4?=
 =?utf-8?B?cTRnREtpUE81MEpTVTRSOUYyV0MyRkVEZ29pYUc1eXFnTU81MVhpQWNTTWty?=
 =?utf-8?B?ZkRRMjh5WHg3NHM0bEdYWlk0bk9oRVBZWGZRcE9jVE1acDlHV0ovc3NxMy8w?=
 =?utf-8?B?VFhMTzlQczkzd1FYZ3JHam9Fc1ZCaDM3UGR6dmYrQlBvaFN6NjdlN2NEUzU2?=
 =?utf-8?B?ZnlvRTVGdWVUVGpON2RleWZreFlFUXFsMklka3hFMjFOSW1uZzVnUTRmRW03?=
 =?utf-8?B?RHNCNmVnMEVZY2ZaVmUybHVqeE5oTVoxZTk2OCtrVkNzV1J6bDBDaERXTGlK?=
 =?utf-8?B?Q3ROUUZmN2kyN21nZ1BCTWxDZEhDYmpKbTRIWnBrSWJQOWhJTXZ5SUlUeHdD?=
 =?utf-8?B?c2x1Njg3ZFV4TENzUHg2TjIrWGpXUyt3aDlDQUZhNFYwUHBtcEt5bGI1QytW?=
 =?utf-8?B?aDJmSHF0V3U5eGNnK2trQ1llMWRQRHFaK2ltUjFhZW9sKzdJUkVYbnlpL3NZ?=
 =?utf-8?B?blp6bnY1VEc2ZXZRT21ubE16OG5GZDZEZ05NelNOR2VyVFFoTzZLM0Q5MVdL?=
 =?utf-8?B?VHJhTTVQejl4bmxMRHNOQ1ZKTEF0VWFHVkdxUmtVUzNlYkVTbHlkUm9oUjhU?=
 =?utf-8?B?NmRDQ01wOTViZng4dWVWcm1sVDI0b3BsRkVoaFpldTh4N2ZweGRBeTVraVAy?=
 =?utf-8?B?cjN1ZXlUUWhid1VRTDJHbUpYN1E5QkhBRWFaeC9PYmJ3OW5CT3g4cEY1WE5w?=
 =?utf-8?B?bjFNL2cwNUxSZ1lmWkZGZkk1RW9nZyswdURteVF0UWJrVlVyUWVVOHZKM3B1?=
 =?utf-8?B?MDdSYUdhSVRpa3YyS1c4bDBDdU10M2E5V3MzWldFVVZtd3hkbldxdU1CVjU1?=
 =?utf-8?B?dHU3UENLNTdINitlSjYwR1RGMXJiaEp3R2t4S3VNT1h0YjVuM1lKSnJ1a1Zt?=
 =?utf-8?B?aTF3cHhQWE9sMmhNQU1tSWQ3RVBtUFhHZGtWUFV1ZTZlZUJGL3BDNUN4VThX?=
 =?utf-8?B?bFZTMjloeVZhY29iUFJZaFdXYUZQMldRaHNxeE5XZlBBbXZVR1BjVklWU3NN?=
 =?utf-8?B?UWdBK011MEVQQytJR2ZjdzdWS1cxSVlISkJEQy9sWlYrVXYydXhhUFlzcFYv?=
 =?utf-8?B?dVFmUmFtODRuTVJ6cElBcjFMU05sbXNXWWwzM1ZyRmlES1MyTjg0NGxDK1FB?=
 =?utf-8?B?ckhpT041bVJ1dElpT0VvSG0reEZtTDZjdk42MmpkdldPaWRnTnd6TlFDMzlM?=
 =?utf-8?B?L1Fra0ZFRGc0bG9QdnB3MFBXWDRLZUxMblJsd0taSjhKbkF6TG1PZ29PYVZZ?=
 =?utf-8?B?dk54ZlZjV3U4ZE0ya0VZMjJSb2VWaWFwUXMyT0tiVkp6aDczbnl4Ym1LUHJn?=
 =?utf-8?B?SU5SVjg5Vm54Z2l4a0pFRm5sVXFTd0tSMStFZ2tJei9UelNtK2hoSDBxbDI2?=
 =?utf-8?B?K05zdi8zMGpCMHVUN0hPSm8wU0J3PT0=?=
X-OriginatorOrg: gocontroll.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29c53c50-3c00-41aa-286d-08de3c8fa375
X-MS-Exchange-CrossTenant-AuthSource: VI0PR04MB11748.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2025 10:41:15.5002
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4c8512ff-bac0-4d26-919a-ee6a4cecfc9d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Tt1gebUZYwiAyPXPQ3eAqqbmQfvbd+079vBIUaWi4Nz3fbKgVBLvxoqjQueovL5fNKX4z5UbDO/frk2WRBIfquDfja6UdCvRyD4hthDITU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU6PR04MB11205
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251216_024124_764347_0235CD42 
X-CRM114-Status: UNSURE (   9.75  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] pmdomain: fix collision in names when registering
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 12/16/25 11:35, Ahmad Fatoum wrote:
> Hello Maud,
> 
> On 12/16/25 11:24 AM, Maud Spierings via B4 Relay wrote:
>> From: Maud Spierings <maudspierings@gocontroll.com>
>>
>> After adding the imx8m-blk-ctrl driver errors started appearing about
>> the genpd device already being registered.
>>
>> incorperate some extra device details in the device name so this
>> possible collision goes away.
>>
>> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
> 
> Thanks for your patch. Did you check what the device is called now?
> 
> Do we need to change virt_dev->id = DEVICE_ID_SINGLE; just after the
> context to get rid of a trailing 0?

`-- genpd:0:32ec0000.blk-ctrl@32ec0000.of0
`-- genpd:1:32ec0000.blk-ctrl@32ec0000.of1
`-- genpd:2:32ec0000.blk-ctrl@32ec0000.of2
`-- genpd:3:32ec0000.blk-ctrl@32ec0000.of3
`-- genpd:4:32ec0000.blk-ctrl@32ec0000.of4
`-- genpd:5:32ec0000.blk-ctrl@32ec0000.of5
`-- genpd:6:32ec0000.blk-ctrl@32ec0000.of6
`-- genpd:7:32ec0000.blk-ctrl@32ec0000.of7
`-- genpd:8:32ec0000.blk-ctrl@32ec0000.of8
`-- genpd:9:32ec0000.blk-ctrl@32ec0000.of9

`-- genpd:0:32f10000.blk-ctrl@32f10000.of0
`-- genpd:1:32f10000.blk-ctrl@32f10000.of1
`-- genpd:2:32f10000.blk-ctrl@32f10000.of2
`-- genpd:3:32f10000.blk-ctrl@32f10000.of3
`-- genpd:4:32f10000.blk-ctrl@32f10000.of4
`-- genpd:5:32f10000.blk-ctrl@32f10000.of5

I guess that means .of#
So I should set that option?

Kind regards,
Maud



