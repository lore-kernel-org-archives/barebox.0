Delivery-date: Wed, 15 May 2024 10:33:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7A4r-00FYCC-2t
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 10:33:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7A4p-0005Pu-Cy
	for lore@pengutronix.de; Wed, 15 May 2024 10:33:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wshG/2YuZmPKBUDZYKy8FZRsfXuv4FUC8WwJ0/sMgsU=; b=3y5jV7IYudqHEkBa7eNlYyNH1a
	+UKueNT0T/PYVpCd4IM0RKCzajwt6bIKCTuB+S0bnN9yHgLD4CIF/BhR10LO6/vZFRMAyqoBV5qAz
	a/O65fgLkMPEzRktxpoHvaHn9R4gq7ttLYG5y74VRaX4l5azi78eb3/XaWNM2dk0Q4B1qCB1laEG8
	GxggyRRpYUgMlWylEGqpOH7/ZR4vPbPXWHglCTWJ75iWbFGL5hTNSx2vEUPi7jo/Fa3BkC5Z5me5+
	tpJ/aukU10AuuOIg9AMzAAgzsNi+AzFrdrkYlMFPnEvpd2g3S5QjAlqzEFYpln/3GO+y3SBKJQmVV
	gqlQJ/ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7A4C-00000000x7V-0DpH;
	Wed, 15 May 2024 08:32:52 +0000
Received: from mail-am7eur03on20701.outbound.protection.outlook.com ([2a01:111:f403:260e::701] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7A47-00000000x6O-3LEi
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 08:32:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NEeQGfOVnANtl/8cd+i2t2WW6OF6Jt6eX0X+H5tUcZ+5Yo713fH6GmaNjFRFukVffI+gCBCZEH3kqidjJnZ50M3vVBN7iGJkRt4v85Gc1q4KB0D76OWaP+fYp9BXi53hK+tJ0bxiln+B2hO/kRCxbuvEW5KCXzKoMWcGtXlhJQatPOFE+B9pHno5HG4I98tolI7PfxgHZy8WlpUXg4cVISOOojVS2H5fv+B/GwYjtIBT8a23gebB9pTjI8sH71ikbC/vigMs8yBjmqu/tVxyM8Nkt87pP2JRxbio32HgKY/0nJctpQh2cKE0kJ5LHn5U0/5fsG/iJHaICE+sPTfPKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wshG/2YuZmPKBUDZYKy8FZRsfXuv4FUC8WwJ0/sMgsU=;
 b=lMKRb+MLPUpiPWDssWynVXZ7QZT79YgF1y4grUofzci0+1lAoaoqS5Paq3u2IAU5C6pYKneKG5dwOoObmuyEmBHiF6Vv4G1ImETQU7ZkMxr0XXGLJJlR/es9J6kHpx55NTG8QTN6dU+XTyiTl5Z6uSGqV5kGdC+6RJ11klZT08oTD2gxd+jf/RNQ22WTXdCXl8hGsqBPnwXz7qnRxQzRVYv+Ht3S6kRhKnlvSKICSbYM7LBzmG/H2AUQ8LA71JUTzWxUuKP1/FNwFUqrdsF4+Xv8fDnde/FcuznZvUb0E3hVxkrU0YW76IX31QrnL1pl+wQqI2bjQzNmZp6aycE5qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wshG/2YuZmPKBUDZYKy8FZRsfXuv4FUC8WwJ0/sMgsU=;
 b=ws74B2zyfvybwu3YVpPHGufK6ffo+4Nf4G9TtgqYOMm9etzQ4Hvqg6qtHInTxYbs2e7l/fmSMwYfQgTKAb/xl/rl8QOGbLyYnsnXtFOmrN+QzqQvj7pkNjkfJDAeplIuvpjquVzN6M9foiJV4/iNK8GPoMFcclQXqBhifRAir/o=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DU5PR08MB10821.eurprd08.prod.outlook.com (2603:10a6:10:527::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27; Wed, 15 May
 2024 08:32:38 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%7]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 08:32:38 +0000
Message-ID: <24dd4224-2eb0-4e04-9d5d-9650901fb3e5@wolfvision.net>
Date: Wed, 15 May 2024 10:32:36 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Barebox List <barebox@lists.infradead.org>
References: <20240515-b4-pf5-fixup-v1-0-a58c8ec94f48@wolfvision.net>
 <20240515-b4-pf5-fixup-v1-3-a58c8ec94f48@wolfvision.net>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20240515-b4-pf5-fixup-v1-3-a58c8ec94f48@wolfvision.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR04CA0049.eurprd04.prod.outlook.com
 (2603:10a6:802:2::20) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DU5PR08MB10821:EE_
X-MS-Office365-Filtering-Correlation-Id: f1a1031a-65b5-46e7-fbcf-08dc74b99410
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YTYwQTN1T1pWMW94aXlscnZRVjRhNU9KYTh5OGxkMzM1RHhDazJlYTI1cmxY?=
 =?utf-8?B?RnMyV2R5YjVSdDBFb21MMFRocm4wMEluUmFCU2FtNFZmM2I1SXhvM29jZFQ2?=
 =?utf-8?B?RHBNUVZwT296T2lPNlduWk5iSXR4ZnF6NGFaaWF2enp6YVpyNnVtQjhxbDkv?=
 =?utf-8?B?NHhnZE01aXdGclVwWnovZmx1ZFF6bWFhS2p4UE5RQmMyK3U0aUNqQmRSam5s?=
 =?utf-8?B?bllqY28wTkdxMnNHSDB2T3ZqdTJXREdNdWJDZ0l1WnZNMWtDcDdONHc2by9h?=
 =?utf-8?B?VXFKcFkycms5R0pIcmtub1FhY1JnZFFkZ1dmTUJrWFlrV1hGeHhMVlZudWFy?=
 =?utf-8?B?ZEFIb1pJd3I3Y3JEb1dPRTV3N3FLVkhCbUw3TkNiMEROTEg1K3MvejZnU0R1?=
 =?utf-8?B?Q1hEcit6WTF0ZVhZTG9WTUNlM1puUjFRTTRrTFNvV0hTYXRDNTlLOFRHcTZj?=
 =?utf-8?B?THI1bmg0ZFNuV25CWFNLMG1wWXBvWW84VmhCdVd4M1FGeWwxYURFWm9PTEtu?=
 =?utf-8?B?THpPNUNxUGRnVGw5Z1RtL01POVl0ZWxndXpKOUZrL1BSK3RUeFpWaExNQ0Qx?=
 =?utf-8?B?WnR5SXp5VVBOU1BQamRpMjJGWUpVUHc4dkE1Y08wYzJQYmN0RU0rM3d6dlpu?=
 =?utf-8?B?dDZXbXlVMmNaYjVHRlhYbUZ0TG9BUDQxSEZiUnNXNmRTVS9EaXViT3dSNUxP?=
 =?utf-8?B?eGpKQjNSTTNKc1pqUDlyaml4SS8xRzdTeDUwN0FibE9uUDdPQitSUitBcXhK?=
 =?utf-8?B?cUpwVFd0YVExd3I3NkVTREUveHlMRVZtdzNUUlk1Y3YyVHJ0NjBPam9xR0RH?=
 =?utf-8?B?cFFjRERTTkluYkNVeUdCTFJLK0E1NGJJRk5BbWN1S1o1REcxdjJ3ZlNHZ1Bt?=
 =?utf-8?B?S3ArckVLN2ZJbHc1MUtTRzZqRlNKZGFqSWFTanF6czQ0dlhBMkI2d2c1L0sy?=
 =?utf-8?B?R0d1SEtHamppMXl6ZmxQY2lJbllzQ1Nsd3Nsb3EvSDdzTmFlLzdTeThXMjJC?=
 =?utf-8?B?UU0wNUFScHZLbDNUL2pRYzhGZiswNE1MR2VXSk82R0dHeGsrQmZjTVAydk9o?=
 =?utf-8?B?RlBpZEFaZEFWSHQ4ci9iN01WR3NycmVXMm9rNndHd3prWjd1aUdWenBuTG1O?=
 =?utf-8?B?S3ozU0tjOTBYR21UUUxQaG5rUUpudGFvZzYyL0dXcmVyQm9ZUHJBQWh1RnJm?=
 =?utf-8?B?eWdoUnBqdnV3ZjRUSU9WaW41Y3hzYk03ZG01NWIxNGl2SW9pbytKdlB0ajZr?=
 =?utf-8?B?WjBYUzNYM1ZxQnFBOGp0WGR0Rno5SVZ1eXBnRmZvcnMrZ3N0VGxKL1YrbDBv?=
 =?utf-8?B?QVUxMzJTSGFqTDVMc0F4UDdMRG5mQWREYUMxSlVjRjNPbWNoK2JvZFBlU3dk?=
 =?utf-8?B?TklDanhzSE1qVVlqbzl5KzJLS05qUHp5VGJvT0gwdTZUM3BOT0NRSVV0R1lX?=
 =?utf-8?B?QzRxNzdKVUd1NGZWNW8ycHExTmhQL0pER0c2VzJIWDlaVU84RjQ4QmdGOHpS?=
 =?utf-8?B?WFdEZU9JTW1TOVdpRFc1OE5VRk5EQUlCZ1N4bTU4TVpzQzA2UGNqdE5GaVFN?=
 =?utf-8?B?bTN0Ykw0ZzJCMVIrUHR2cCtPUE5iUFh2SFFNL3piaWVZSjFyb0szeURVNk1M?=
 =?utf-8?B?cFA2OVZDcmtLZjkrclkxaTNlK2NyRDRUVE9PRGJ2VkE0MG5aRGJWWWF6NGJn?=
 =?utf-8?B?bzQzblEvd0FCWEdadjhBeThLQ3c2aE54dFdvOGxKeDhneFZzYzdiaEhnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWVjNHF0QzN0VHh3S3dOOVVCNjNLRE5aZm54SDNjTEw2ZmZHUjVkUVhPeHFx?=
 =?utf-8?B?aVJLTmlKYzZsOG95VzMrUDgrUWdmbDZjdEVEWkY4NHZSKzZwdmhqWGQyeURI?=
 =?utf-8?B?OHF4R0xnNC9xRndQM01UN25kOTlzRmthWkpZYTljZGQvZFBLdy9YMmE1d3RF?=
 =?utf-8?B?cGxRT0U0cThJOVhYU0NhaTY4NUNkVHJNMkhOLzQxSU9UZmlJSGFTNkV2ZER5?=
 =?utf-8?B?Q2JLSWQxVk9hVnRKMDA4aERiUEZYdUhkZm1xV3FRa1lZR2pQVytWWFpJYjg5?=
 =?utf-8?B?b3gwcHNldkFpNlhxZW1RMU1CdTdYMUdMSWJPallBNUdGbWhycVQ1YXpuaUNI?=
 =?utf-8?B?cHRGem4zdnc5blNBS1VzQmtGM25uem1oVzl2NG5QZDdVaUMrSWdYWmdNV3ly?=
 =?utf-8?B?WCs4NnRsYjdyM0tDNy90dFF2RytYclRSdS83Z3owT3h5ekFXVFVBdFZlV0JF?=
 =?utf-8?B?b2V0VmlYMlY2V0RhMWJYemIyRElVTHdXUFNEdkxVcy9ZSEt4cTNpRjRIZk5y?=
 =?utf-8?B?Zk9qRG8vV1dQSWlLWGNEdnZRakQ4YnNMaU5MK1YwV2J1UXNJdXB2cHZOSm9J?=
 =?utf-8?B?NXNHMWhjOG8vdFV6b1lySU9ON2tSbFdlMW9IK282QS81TlY2ejhMUTJ1eFlZ?=
 =?utf-8?B?blEwWUVOTnNtT0VEMWlmWkYxcXJ3cnFWMTNyVm8zWjFZOFpCZDFTVUhMNEsw?=
 =?utf-8?B?dlcvbDVUc0ZHUGtKdFJhd1VMZ1pRaWFQZXJYWm0zVHcxd1E4MEZaZUUwZ2to?=
 =?utf-8?B?NUZVcERWa0ZLalNPZE9QWWFpaXlXUDhKOW53YzMxU25BQ2ZZVUU4T3QxM3Ex?=
 =?utf-8?B?enhxZnVJbERxcUtQZ1Boa3VqSUJpSjZwR1FoMis2UUNHZFM2M1dKTnZGQ0d4?=
 =?utf-8?B?WW94aStXdVYvem1UT2hETHJHQ2VHWm9NZmpWNXNiL3gvbnhtS2FMWm43aVJS?=
 =?utf-8?B?RkpweUVqM3FNSDBRYlJmc05aT2tSc2R0VHhPdGV0TnNtYi83eUduSTB6MVlJ?=
 =?utf-8?B?RUpsdlh0VVNsSVF3MjZ3Z0RBZVFnZmxvZDNJdW91ajVKTHFlY1Q0NURMZWY1?=
 =?utf-8?B?dUhHTFlHMkFzbmVjRlBPdjNNNFUxU0R5Z3RTaSsvRnI0dFVIMmJpU0VHN0pU?=
 =?utf-8?B?WXplV3ZRV282dnM5OHFJSlFzN29JWXhlTDRKY1pQOXpUcFhGSk9kR0lFQTA0?=
 =?utf-8?B?cW9scHI1a0tBVk9IZTdQelM3MXZvc1NUZ0srK2plbTdkaWk5d21oa0lWR0Mv?=
 =?utf-8?B?UUMwN3pRdzA4T1lRMmp1UDhxT1BTaU9GNk1YTEt6K21nd0RZWXJKTk9rUW5i?=
 =?utf-8?B?Wkd0dGYvMUN1Z0hUbkdVNTZUUzZ2YmpyNW9MdEZJQitQK3M5SENHWXVINzQz?=
 =?utf-8?B?RmI1MDlUMTJtS2tpR2FzQUw1K3ZjKzJhTjBhTVR0clNOZHdKVllFYnNXUUJy?=
 =?utf-8?B?TFVibi9rTGRMSVVWeTFtTURUdkljdmJ5VXlXdWROZ2tZL2hsS3JwTHlIU2ds?=
 =?utf-8?B?QkRCd3FxdElJcWdETStrZENPSlN2UkROTFR4MjVybitjNkxMZnpzd1B5dENG?=
 =?utf-8?B?cjV0QXJVajlBM0wrSGREemQ0cU1TZitSWVVaNGd1dUlhZUdJZEFBTkRnTnk3?=
 =?utf-8?B?NkZIZ2VZWVRtNnFpUjl0S29KQm9Edi9Oc0Q1eXpLL1VCZUgvQ0lvb1dZWTNX?=
 =?utf-8?B?VlloTEtLTng4WU9DeldXWkZpdk1UQkN6WHljWlc4Kyt5eVh2a1ZjWkpUWTFO?=
 =?utf-8?B?aE1VRHYycS9iQ2tsVVMwT05NckdPRmJFb3ZQaWtwZ0ZKMHJLUFlCaWtsK0N0?=
 =?utf-8?B?dEViUUs5ei94eWRvVzcwaGR0WlUxcDdPbFpYSkY2YU9DZlFtYTdnYmFtM3I1?=
 =?utf-8?B?STRtS3NlT0NyT0tsTmpCZ2xqbENvc0hLMHFMdGZUcmV6NkRIOCsvdkhTYUpG?=
 =?utf-8?B?Y3dUV0ROVGU2RjFwaXF3WC9TOE5Vc2NzYVVFOXdtYVZkUE9DUkdNR0tGRUw4?=
 =?utf-8?B?U3ZkdTcrT3p0b2pyMWRvUW51TlBFV0ZuV0lzYU9Ld2FOOGRhbnV2OFU2WTFp?=
 =?utf-8?B?VHp3bm8rWnRHQjJSTnhZYnhxZHBSelN5VXBNcUNMSnhhRjFaM3pJenhNVDhk?=
 =?utf-8?B?a0ZqaGtjaUVEcUtiTnllN290MzB5V245QXVtNEgwNkx1NCs1TkZUejlrRnFR?=
 =?utf-8?B?TGc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: f1a1031a-65b5-46e7-fbcf-08dc74b99410
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 08:32:38.2742
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ni4AHURytT4UFZmj0qi91KJNK3/X07/QIvigCwDa4ABHn9gIkHrF+eBwzpK92/CKHqis88P+Q5Aue5ke/Iv+J8vfVMsPLG1pO98TSMW6YPE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU5PR08MB10821
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_013247_890288_848EDBE8 
X-CRM114-Status: GOOD (  19.03  )
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
Subject: Re: [PATCH master 3/3] common: boards: wolfvision: fix handling of
 overlays parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi all,

On 5/15/24 10:00, Michael Riesch wrote:
> If the char **overlays parameter to wolfvision_rk3568_detect_hw is NULL,
> the overlay file names are not collected.
> 
> If overlays points to a NULL pointer, it is initialized properly with
> an empty string. This is convenient as the call to
>     globalvar_set("of.overlay.filepattern", my_resulting_string);
> that usually follows actually resets the global filepattern variable
> from its default "*" to "". Thereby, a paradoxical situation in which no
> extensions are detected but all available overlays are applied (due to "*")
> is avoided.
> 
> Nevertheless, it is still possible to pass an existing string to this
> method and let the method append overlay file names.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  common/boards/wolfvision/common.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/common/boards/wolfvision/common.c b/common/boards/wolfvision/common.c
> index f483918cec..6cb76250dd 100644
> --- a/common/boards/wolfvision/common.c
> +++ b/common/boards/wolfvision/common.c
> @@ -20,7 +20,7 @@ int wolfvision_apply_overlay(const struct wv_overlay *overlay, char **files)
>  {
>  	int ret;
>  
> -	if (overlay->filename) {
> +	if (overlay->filename && files) {
>  		if (*files) {
>  			char *old = *files;
>  			*files = basprintf("%s %s", old, overlay->filename);
> @@ -115,6 +115,9 @@ int wolfvision_rk3568_detect_hw(const struct wv_rk3568_extension *extensions,
>  	if (ret)
>  		return ret;
>  
> +	if (overlays && !*overlays)
> +		*overlays = basprintf("");

Hm, apparently this gives a compiler warning "warning: zero-length
gnu_printf format string [-Wformat-zero-length]".

... = basprintf("%s", ""); ???

Best regards,
Michael

> +
>  	for (i = 0; i < num_extensions; i++) {
>  		const struct wv_rk3568_extension *extension = &extensions[i];
>  		const struct wv_overlay *overlay;
> 


