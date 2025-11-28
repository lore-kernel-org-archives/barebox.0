Delivery-date: Fri, 28 Nov 2025 16:01:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOzy0-005omg-31
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 16:01:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOzy0-0000zQ-7O
	for lore@pengutronix.de; Fri, 28 Nov 2025 16:01:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oSiQQOlxUj3cq0RG5JpFdWLLd3FkpbOipxfAW5QTtG0=; b=KJx2eD9ztT79m57rEoZVW6nMJ+
	N5UdTyVFbNXJ7Lx3t+wjcmI5VR3qKLb7CeVcO/jiP8qeEOPlT4iHynSLgVi1vXM3lnmb1r5Igy/Sz
	BonRfmgZeylk/YVWqX54z1g1qh1NdQWEfvu4u63HrypddWj69jww+59PkkdF2bLBLQI79hqk6OZYh
	MjjLWjd3ZzifxL0NJH3ccKKzmI+wiblW286uvbOFIBXnO4Sc1+o8bpgKjlUMwl6fS3ppgA/H/Y3bi
	VvwfihnvkPcb+8J73Xy9+9V9xRPLkJKAeIEDmN5pFnHXCHax9VahZcc3NfpbER2ybsIuh9/OG0ntW
	P5/W42Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOzxR-00000000Yji-3lUi;
	Fri, 28 Nov 2025 15:00:25 +0000
Received: from mail-francesouthazon11021118.outbound.protection.outlook.com ([40.107.130.118] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOzxP-00000000Yj9-29yv
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 15:00:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r9x+OGNydY+mu/1cLMJz8SG8VRyNzNo4XLT2uBe7DZFTaLQiFIjqOheSm1OzFE1S5a9jOoKaN/HcTjs+/rK0V5OqNH8JmXgbBSpDOaI+l1yl6gM5qYfbCCjicRISYrr31031TjU/cxd2IHQ7AH31Slo6KFzC39pLgdOxl7odaGjUCx4fuWcSyul9J5KWgeRRi8u5OY5JhXTjcCAUC+mxl5bsRtqEOyViBkUFTadJg+AmzDv5hJJ+0pQYIH/I7+MBatkqIMY8J9gZESzRyEEejFmWwA+cZ2GXqJD0huKLwf5wR0y5VHawbQ7mw4xVU7JaKq+QpAY7deAz+SAgpTFKqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oSiQQOlxUj3cq0RG5JpFdWLLd3FkpbOipxfAW5QTtG0=;
 b=UopT5yJ7lOx5vEp5isesQz+7GVPXPMAcvu7g4UllkYQLMSKozEn+3rYJGfeOGETlROuGPVt4IQIII42ApS+t0YFtUZLWfBLcOQFKpgRQDuo408lESptNTrH1v/lvPugP7C+Ye3JCAsMhvjXXwO5Bg7m7M2mCu1W/SrUTM69IZazeDhGHd4kFYNrg+b0L24L/Zp36MQGPMIXtdB1s3ifyNlhbk8ulRYQfVJWBT8mMxkDN6jqibMAsrciT6TIsIF/HinlCzl588Y/ioJzqMwY8BZ5kAtjyhBp6T2gqXr4PvcpWShGo54kYjsWo9Jh7HO0ac10prkUHp4IlfZN1bYvA7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gocontroll.com; dmarc=pass action=none
 header.from=gocontroll.com; dkim=pass header.d=gocontroll.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gocontrollcom.onmicrosoft.com; s=selector1-gocontrollcom-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oSiQQOlxUj3cq0RG5JpFdWLLd3FkpbOipxfAW5QTtG0=;
 b=yUxn6cmua74n/bCCVOw0phvhDmS/gpIqGYYS3is3g9PdbgWFS1KmrwxrD0V+vB9MT4psPJbVhOeY69yLqd5u1vgl+9vcYJOUKGAPL3JgmYYG2AT1hSyQorzjUmEJOTEyJoin7GQa9SmlxHSZtyNIbyPzud1ty9/PL1ipp+XiAQr0HMFqp1vdbHO9reDFzrRTSyIYcjdW/W3MU4LsTeEAqSfhJ4NLCR9k3L+kss1px6mvXrzkyXqjGhq+VOeDAU2hUzTckGywNObb5fZdfsCQMGSyPzFvmVxEixRSMGvlXh7y+5SM0pQi1qfjT79L6i833Pp2aZYVRORd8nWYi+FktA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gocontroll.com;
Received: from AMBPR04MB11741.eurprd04.prod.outlook.com (2603:10a6:20b:6f3::7)
 by DBBPR04MB7722.eurprd04.prod.outlook.com (2603:10a6:10:207::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Fri, 28 Nov
 2025 15:00:16 +0000
Received: from AMBPR04MB11741.eurprd04.prod.outlook.com
 ([fe80::c39b:dab3:ae88:c5ba]) by AMBPR04MB11741.eurprd04.prod.outlook.com
 ([fe80::c39b:dab3:ae88:c5ba%4]) with mapi id 15.20.9366.009; Fri, 28 Nov 2025
 15:00:16 +0000
Message-ID: <cdb7b3e0-9455-4dde-a9dd-579e539a69d2@gocontroll.com>
Date: Fri, 28 Nov 2025 16:00:10 +0100
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251128-imx_usb-v1-0-bb6a5180b38e@gocontroll.com>
 <20251128-imx_usb-v1-1-bb6a5180b38e@gocontroll.com>
 <7e285378-cff8-4387-bb6e-02bb7d868faf@pengutronix.de>
Content-Language: en-US
From: Maud Spierings <maudspierings@gocontroll.com>
In-Reply-To: <7e285378-cff8-4387-bb6e-02bb7d868faf@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS4P192CA0032.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:658::15) To AMBPR04MB11741.eurprd04.prod.outlook.com
 (2603:10a6:20b:6f3::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMBPR04MB11741:EE_|DBBPR04MB7722:EE_
X-MS-Office365-Filtering-Correlation-Id: aa2f1693-2380-4b35-66ca-08de2e8ed737
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|10070799003|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VnV3Z3VMdXBOclBQVmxhdmJFZjZmV3YxR1VqRGlqWHpjZUkyOXowN0g5SWlI?=
 =?utf-8?B?T09TNXRIcEJJYmprM09JM3A4WkNwZkp1MndnR0ZockFVOXl2YWNJWDVYMDRY?=
 =?utf-8?B?T1NSZlVIaWNBQVJWVlFQWHZUZmxXZDhZUEpRNGptSVgzb3NvdVhLYis1cllF?=
 =?utf-8?B?TEdXQ3QzSk8vOXFzM1VHeG5xMmF6cnpndkVqQWRpMExjOXJGekx6ejA0OWUx?=
 =?utf-8?B?Z0QrdjRrMVRZU1ZsYjZ2NzRjUlFDTHRDR0xwNXBQbEZ2YU15ekZUYk02a3lO?=
 =?utf-8?B?eVRWdnZvVDROTVFLaSsrK2RUSXI0OTd2ZDRicXNZamUzUTdwdHV3ZlpSaENT?=
 =?utf-8?B?OGQxajJTNGNsTk05N3JWMWlYQ215eGgxei91dzRFb1JoUkhNZ0tVSnArRTZK?=
 =?utf-8?B?MFB3MHd6ZmlkL0FjWmllQTJ4L0pRY2h0QmIvTzROaklhQU4rTlFNL094OEdR?=
 =?utf-8?B?dUFjekcwbHJsa1JaR1RYU2NzTnhKbTRrdE5rYzRENEd1V2srUXVydUcrcWZQ?=
 =?utf-8?B?Y0p6UmU4aUpKS1hMU0JVd25Ka1gxUTVlUnZvUjIxM2RoZjdKS3hqRXpXVFlv?=
 =?utf-8?B?SUwzL2NwZFUyenR4c094RTIxOEwyenpQR3p6Ky85S3VVc2d3R0UxUDROUGtF?=
 =?utf-8?B?ZFJ5RzVKREJ6ZmthQ0NNdm1YUFhsU0ZJVjlRa1d1U29PMlk1SXNveFBXTjIz?=
 =?utf-8?B?enpYZFhLUEg0SVNkei85VFFJbFkrT05IK0tkTWI4SUg0OWRIYTRRSXF0ZmR4?=
 =?utf-8?B?c3FoUVNUZW5STTVxM0ZoZGcxY2U2Y3VyM0xWOXdXRVNpV2hTVnB1c0J1em4y?=
 =?utf-8?B?UElQWUQ5R0ZvV2FNUWtLeFROV2ROSS8rT0M0aVlIQkJvSnZxekNwVkxiRlBk?=
 =?utf-8?B?YTh3QnlVdHkyL1JmOElsaDBucmh2eFZndlJoZWp3YmhSQWRLdTNMNGZqZEI1?=
 =?utf-8?B?TnJqQy96R24wNEp0Q2FaeGdqcGRnaEZxRlhoeDdnNnJ0MlBwblltaUdDeHNK?=
 =?utf-8?B?VEFNYUo0K1dQeEFzdHc3ZDRTb3ZXTnIzNm5MUXpodk91UmRFWVZVQmM5VHQ3?=
 =?utf-8?B?ZFN3OTVvZzFlaFl1T2ZmdXJNbDJlSzBDRUZneDFCYStIUlFYVkg0OUFEdnpL?=
 =?utf-8?B?Y0gydUFqZXdFRzRYN1d1Y1d0TWRRTGYyTXErWER2VEFncW92bWhwdTRoc2dh?=
 =?utf-8?B?VktnWTVHQ3p4UEt3SkNwSGtxdmtiSGEyck03ZXNITHQvb1RBU3dqNU9UMG5P?=
 =?utf-8?B?ZDN3QnhDR3k5UkRLenJZV3UvVGtaK0ZuSlFYeDJ4K2JVWVJkZFlWY3NuZTdO?=
 =?utf-8?B?VTlacmtnT0hVZTA2YlJRc1ZRL0xkemNqTEpGRktFSlNKNDBMWHBrT1lCZVVk?=
 =?utf-8?B?V204YkVWSXRyNStrdnhVVFo2eFE3QXAxSWpJWWZoR0lmN2lBRDlXTlo2Z1lo?=
 =?utf-8?B?R0c2TDAzMWtqODlPRWVTUE1hbjd1TWN2QU5ZZXZDRTIza2VpdmpjQ3NBQlRl?=
 =?utf-8?B?T1RES01sV1BIc0QxRitha3MvWURmSVFESDlQZWVtMGx5cUFUbjBMTC9KK3JC?=
 =?utf-8?B?dmZoUkZBYWl4c1FLNm5QWWVtME9rTm1ESXl1ODM4dHBwUFBlcTJBZmdmd2hw?=
 =?utf-8?B?NHZGNURoTTBvSEE4ZzVZenlSTXFnaUMxMVg3dmVXTUVESDllK3UweXdwakNo?=
 =?utf-8?B?RS9wNmYybFlURDNKdEF2UkRvV2k4R0NvRUJobk9oUVRXaUk3NGlwN05DRUhE?=
 =?utf-8?B?WEh3enZFNmVJSlNNdXcwanh6QkRMMGVUR0xqWXhETlZiVlFqQkJ3K25kUXRD?=
 =?utf-8?B?TkwzZkgwc05TaGdPMERoRmZLQ0F4Q2h2Um1yQ1V1bWNING4rMDFIOWpoK2JS?=
 =?utf-8?B?NjRqZXVteWxCY0FuT1JGRUp0bGpmd29TeGtITU9EYmpZeGtQNG1oVHhRd1ZQ?=
 =?utf-8?Q?oscu2zXb3Yexlz19cKSUHNr4iLRskctv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AMBPR04MB11741.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(10070799003)(1800799024)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UG5wTldST2x2SUxxalhOd1lzNzk5aFJrM1Y3WE9OWlVFUFNVMzJsQlEvdlFs?=
 =?utf-8?B?VThWd3RJRHNuaStOR3NBODhiYTNraFZxNUpKYTFXdGdTbHlDU2VpUGJEa3BM?=
 =?utf-8?B?RWJiblBpTUVwdDBmRm9xU0kramQya1RUYzhSSFR4NXhBKzN6MmtIVmxuL1hm?=
 =?utf-8?B?b0U3Y05mR0JOTEVpU29aSTVnMnRvdEUwOEdZUDUyTXBybWFZckZWN3o2NHZD?=
 =?utf-8?B?dUZyTTlXVTdnejdkN0hEeGFLOTV0Rk1OK0NsWHAwSXpwbGRPeTFUZFNyVHdU?=
 =?utf-8?B?T1lxQ0d4bmI0SjhqRWZObi9MN2dGQ2EvR1FUR3RDMHI1SXc5cmdqTXhPZUd6?=
 =?utf-8?B?NlFGK0R6TEQrYVJoUVJDUFQ4K1kxdkdxWmM5OGxLQkR6K2FybXdzZlM2ZGNl?=
 =?utf-8?B?ZDdKN21CMitXL3hpRkJabGx4NGdJNW03TytJNHAvYXdlcmRTdFpVbllucEpy?=
 =?utf-8?B?K1dVLzhCb2xDdzZ4bzFFdlR5OGVUTGNwZ1JnVEc2UmNZSmdERDNzZWlaQkRK?=
 =?utf-8?B?Kzk1aW9yQnZaWHc4OWpod2ZweUNSRUI1SS8zenRxQVBTTVl1U204Rk1jeUtt?=
 =?utf-8?B?RStiM09ORFcwRGtTUkd6L2RBNitYN1Z1Rldaa3VaWkkyWnRBZVRaNW5uVmQr?=
 =?utf-8?B?cHFrT2k0NHRPbTZVTkRoQ2loMGpFSk5qcmFKeEFJY0FmRG1LM1ZzejR2WGpE?=
 =?utf-8?B?RWhUQjBzSGhKa0o3WVpGSXd3VWJncktXbkpXRE5BYXFCb2RSUTZwODRwcXVC?=
 =?utf-8?B?UXZNVmxZV3BNbUtLdHZaaHlYMWU2aHVTNTZZSW4rN21ZeEJQU2p2dFVaUkVh?=
 =?utf-8?B?cm5IdlVBTFNWSnc4c3Y5azJFSm9qWXZER05hWG5iMWlydDF0b0FLVWlZcGZw?=
 =?utf-8?B?S3JUQmlRRnJqdkJiMStZYUFBN3ByOG0xelAvWG9uMWNCZktlcGNMWUwwZ1cv?=
 =?utf-8?B?MlNIZ1laMHdJaFNNZHFFb2dNN1plTmlBWGZJSkRNb21EZkhwdFZGdjZ1MzZE?=
 =?utf-8?B?U2FHdkpiZlUrZ2hKWGc2TG9kOXN4anBrRjVOdVQxY0VEU01NZ0RBa3AvZUVG?=
 =?utf-8?B?Z0VjSVRQZ2tNRzBKTWo3ZXliVU5CQnNUZDZTWlZWV0pGN1dmb3B1d3BhS3lW?=
 =?utf-8?B?MFIyWFNxdk1Yc2lDby9sYjE5L1l4VnVZRWhCN0RNYUZaYXo5VUUyNjlHcm5w?=
 =?utf-8?B?NHVvRzlIME9yWW15em1yZkdIZU1IK1B2Z2dkU0lDcWdTYlBzOE90Y2w3R3h4?=
 =?utf-8?B?VGVBeVYwUGt4azBlNVZIOWdVYVIwbzFPRXN1QzBXNkRRbGRoTXhkSFZiUWhI?=
 =?utf-8?B?UmlIM25GeE1RVjhFZWRhbTNCVGwzOUZGclFiRDZ4czZndzlNZU1nYkFKUW9I?=
 =?utf-8?B?Z25SU1BVUHNrZnpjaVlxU2plTWM3Nkc3ZkFRb3VTMERDR3JFZ2VScFRjYUtN?=
 =?utf-8?B?ZmlJbjU5WWhldkJvWWN4U1FLQzJrT3p4UU0xK0k5aXlhZmc1Rnc3Y2Vha3NE?=
 =?utf-8?B?MWRmbFVYMlhSczA5SXZiZ0JFUmhBWGpaWVgzMXQydjh2aVZwQ1IyOEU3dkIr?=
 =?utf-8?B?Q1ZBL1RiTkRBa1hCK2M5blBKUmprRFY5RGZ4bmx0R0J4eTF6UXZWUE40V3RK?=
 =?utf-8?B?dGRYcmRMNDVNVTBLM2hlZURzOEp0cnh5N1k5a3ZLamxraVEvQUJkbDVMbW11?=
 =?utf-8?B?QWFtb0Q4MEhwMjBKRmtIaFR4UDM2dU5GU3JWZEM5OEQ2MUdRV0FacG44VXYz?=
 =?utf-8?B?U1JBSmZXY09pV2F5Z0xNeWx5SzRFQ2UydHBhU1d3eVZ4UUNobHI1SFdGRzJM?=
 =?utf-8?B?bUlSVkY4Y01vb2hvMXJwV0FKU1JJRzQzd3VQY3VJTXlCdzh1amw4cEd6NjVX?=
 =?utf-8?B?ZjFKN1g2OXFQbVpsZnJoaWdtaVArY1M2NVRCejFSRDh6cytlQWEwZXllOFdo?=
 =?utf-8?B?NDFKNlFub2J5RjZ4QTM2MUV4NS94RTRhdGVueS9RR042S08wNnY2Y1dWTy9E?=
 =?utf-8?B?VVdkcE9HUkt2RWdqWHViM0FxVXFGbEw0VTV6QmpKWno2RlZRNUFia1FieThF?=
 =?utf-8?B?ZTBoNDBSTEdVa2hETEpGRzk3b0UwZDN1RkY1NjgrU2ovU29yaytHSWNWaEZh?=
 =?utf-8?B?KytwYzdIQTgydk5iTVBnUWZKU0lvZXRia3h0cGNBMFVXNmNiRHNtSDczTkhn?=
 =?utf-8?B?a2c2WTdoNW9xYldzNFRLN0lDK2oydzRlQmo1VWxSNHlOWHlDUktwNXpKVm5p?=
 =?utf-8?B?dmZXVVc0bmU2b2hXTHJnVDdvbitRPT0=?=
X-OriginatorOrg: gocontroll.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa2f1693-2380-4b35-66ca-08de2e8ed737
X-MS-Exchange-CrossTenant-AuthSource: AMBPR04MB11741.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 15:00:16.5665
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4c8512ff-bac0-4d26-919a-ee6a4cecfc9d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d4rmAtGvzIItF/KIZ16t4T/WbP8sjGLHgA3gzoAboDuGPJ2Q20fa2CdTAfovI13HE6d2Lj5BeMxlT4OUeKbMwfxT2q2IkbXVt883KqjliLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7722
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_070023_592901_5B42CDFC 
X-CRM114-Status: GOOD (  18.20  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] scripts: common: fix pread_full() for windows
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 11/28/25 15:56, Ahmad Fatoum wrote:
> Hi,
> 
> On 11/28/25 3:08 PM, Maud Spierings via B4 Relay wrote:
>> From: Maud Spierings <maudspierings@gocontroll.com>
>>
>> pread() is not available for windows, convert to lseek() + read()
>>
>> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
>>
>> ---
>>
>> I think this modifies the state of fd, I am not sure if pread() did this
>> too. May be necessary to point the file pointer where it was before? On
>> the other hand this reads the whole file so why.
> 
> I would prefer to ship a pread implementation for windows instead that
> takes care to lseek to wherever we need to read from and then lseek back
> to the original offset as not to induce subtle breakage into other host
> tools.
> 

just read the manpage a little better:
pread() reads up to count bytes from file descriptor fd at offset
offset (from the start of the file) into the buffer starting at
buf.  The file offset is not changed.

So yeah it should indeed seek back, I'll get on that.

> 
>> ---
>>   scripts/common.c | 6 +++++-
>>   1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/scripts/common.c b/scripts/common.c
>> index a6eee968b7..544d295b7f 100644
>> --- a/scripts/common.c
>> +++ b/scripts/common.c
>> @@ -202,8 +202,12 @@ int pread_full(int fd, void *buf, size_t size, loff_t offset)
>>   	size_t insize = size;
>>   	int now;
>>   
>> +	now = lseek(fd, offset, SEEK_SET);
>> +	if (now < 0)
>> +		return now;
>> +
>>   	while (size) {
>> -		now = pread(fd, buf, size, offset);
>> +		now = read(fd, buf, size);
>>   		if (now == 0)
>>   			break;
>>   		if (now < 0)
>>
> 



