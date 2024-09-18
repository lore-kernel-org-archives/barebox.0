Delivery-date: Wed, 18 Sep 2024 16:48:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sqvyZ-005k7g-2e
	for lore@lore.pengutronix.de;
	Wed, 18 Sep 2024 16:48:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sqvyY-0004Sg-80
	for lore@pengutronix.de; Wed, 18 Sep 2024 16:48:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	Message-Id:Content-Transfer-Encoding:Content-Type:Subject:Date:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EC0QVQWg31VkZx1+7tTtxuLDWa1BSmT8v/RMjxkn+tg=; b=1BdRMZuEhqKGfpq8zRONs29RCB
	4e7RG6zfcsmC6Z033tfRXbuqYah7+fwqmaVEmeLp9Lj4tAKwO3l2HuN5fOQmLIUEgzH638Q9WjZZA
	9mcYGpv2N76tPfA89Fc5fll5vzpEnHqGZGB3eSuZBh8Tav68Hv09Nfy4u436KDQPtQmIl6txvHxCN
	75rzXuoS35PZDc3rSYYJMb6YEebczbKV/pcfDJAzDNyWsS/0DvEaVx4fLoMH8ObkdaB51/EtaLig8
	0b7Gd4koF7RuEFfrqG90YqYbK3E2P80u0RSwbGb58evNxYIoXMyIrHipoYkQ64QlYuytCe0TpnnkD
	vBfJpixQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqvxw-00000008TUI-2G02;
	Wed, 18 Sep 2024 14:47:36 +0000
Received: from mail-dbaeur03on2070b.outbound.protection.outlook.com ([2a01:111:f403:260d::70b] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqvxb-00000008TPo-0v6q
	for barebox@lists.infradead.org;
	Wed, 18 Sep 2024 14:47:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rTkV5DmkBy+yQME75Wv/OvnUXls3CgREfW6P+p+VZIcUbRdUR2KSVHWT7hIS+f7pLyqQALCQncV9iKXBxxHlZIwKrDvKF6/yLKI6ZRzK+68WB6XhDVJ2gq3VhToRouN4YDBWLmu7WpNS8Pij6ACMxyqhQdMrsNRMnq8s/5m5XUj9Ky0101hdckPtkXf6S0S6lzd0Rchw3/Y2Vcp66XFOmar6BqldAcx4aisIsBQ7tIy3M+Yonen90SPsJruVgyBkzPKRQ3VABcX+T6Z5TEi4yOY8uPuV2ilDXHUzzGm02XRxP85lv03YpS7GClUrn2Vy+Sw85W/Q+vvkKIi6uMx1xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EC0QVQWg31VkZx1+7tTtxuLDWa1BSmT8v/RMjxkn+tg=;
 b=ND7b310IDyp/p3tF/bEPygaSOlF//xP+YYSO3AYfzhjhBioFqp+N/xyWXQ0tlkqsMFwr3Zwr4UHMrMgX8SwxYQ2A0wwAAMFM1MtSI8G3fTn/dy+zIoRExqRcJviuw2nyL3xJ9bl+ag4UttmT6HI4EcxtwOnHtPkNlPBMLhKTigdEs6NdqTMrpWfa+isr5CXdlPokQ4JuAM8R8CL6zKm0SAwRX8qjNpClv4sOeLO0ALxw6hsh+SBCFe+SazTdYh09qPZ51+Pq9jCIGpPJy+790n/F6kkYgzGfV83eJUMB6QrUU6q8H0HQr3LgrtduQ3xg1oKfQdPcUcMkbel/bYgWPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EC0QVQWg31VkZx1+7tTtxuLDWa1BSmT8v/RMjxkn+tg=;
 b=YRatOktvz0mbt/s3SF9MirqOXwIRchI7GRaH6Qz1MRKrNDZvTqLySx8EVkPdrVFBd/Rwsl54PsCBkHr5XHjcHt6GE7Rpl9X7/acqA86IiJ0TGZs+yWTNMB8QQRAmWWRTSSUQbbYbrQNLaQkuI4rGT2C0mjifpuS8k8E87BMcQSw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DBAPR08MB5815.eurprd08.prod.outlook.com (2603:10a6:10:1ab::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.14; Wed, 18 Sep
 2024 14:47:07 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%4]) with mapi id 15.20.7982.012; Wed, 18 Sep 2024
 14:47:07 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed, 18 Sep 2024 16:47:02 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240918-feature-orange-pi-5-plus-v1-1-58d47cb2ade8@wolfvision.net>
X-B4-Tracking: v=1; b=H4sIAOXn6mYC/x2MSQqAMAwAvyI5G3CrWr8iHlyiBkRLakWQ/t3S4
 zDMfGBJmCx0yQdCD1u+zgB5msC8j+dGyEtgKLKiynTe4krj7YTwkmgNo0JzOIu6UapeJt2WWkH
 IjdDKb1z3g/c/neP/0GoAAAA=
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1726670827; l=8165;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=BeiEOojzfM5bbUvPEwm/igD8eoMUz5PqC0b6Vdd+1OQ=;
 b=Zo+zCbo4IfZlNKI0937PN+sHJOtyn4l0hdhQPobPEYN+xJE0cLpexy2f19D5f4Oqr4S5EGky+
 2vzQEGY2X23B3OOwkPIzlPiUZrIUalbRFEVodqN0BggupuDOirhv5Fb
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR06CA0227.eurprd06.prod.outlook.com
 (2603:10a6:802:2c::48) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DBAPR08MB5815:EE_
X-MS-Office365-Filtering-Correlation-Id: eec8e256-6f92-4820-e216-08dcd7f0c4dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UHJxWkZacHRPUlErTFFTb04xWE9ZS0VzS3c1TGdXY0dKQ1o3eEtENzhzbW9G?=
 =?utf-8?B?MkwvenVMSHNkV3B5U2xndERjSmgxeE82UmtsSXJpaVBJdzNtczlsOWVrMDhM?=
 =?utf-8?B?bHBUUTVSaXF6R0hKSEpqZ3JFUUN6L0tOT0oreWYrL2xwc1Z3Z1R2U0QvN01B?=
 =?utf-8?B?a0dGUVdOWTNLdWF0TkRoS0x6VTRWNFc4bGZZcnFIVm0xdFBzZWdtN0VDTVVi?=
 =?utf-8?B?UkpjanFlMDlmQnVvUXNpd01nZ2tkRS9GWDN4TmszNExWV0FUZERIdUxFQkY4?=
 =?utf-8?B?S2N2MTB4SU5pS0pXamhPVERzYzZURUMrY0RWamtMdHVHK05zeFdXUFN6TG15?=
 =?utf-8?B?OXhwVVg4dkwzSkhKU3ZNK1ZJTHBrUGh5QVZBRFVoR0VabEROa3c0KzAzajEw?=
 =?utf-8?B?SkptUDVwcUlGMEJ2L3dMVWpDNUsxZ0JKOUhET0J4SzBMR092cW1JODRiM1FW?=
 =?utf-8?B?cll4c3EyZDV4bVNXYXBvRWpKUExFQVNyOGRCR0VjL0JPc0ppZy8xZWFJUzlM?=
 =?utf-8?B?c3N2TC92cVFKSDU3QkRHNFVka0FTakd0T1Bac0xFWWxaeFhQYjQwditIa3lQ?=
 =?utf-8?B?NkhWZVpucVdNU29ncll5eTI1eVluNXNjOEJEdk1MaGlEM2Y3Uk1uVFc0dUlp?=
 =?utf-8?B?cGZGYVU5M1MwYnIyTkZjc2x6VFBkaGlGU3VpR1RKZTdpU29MQ3p2WlRya0gx?=
 =?utf-8?B?K3U2NUF6NmZ6MzRRQVZHN08zNE5TZ1lBWEZVL0VBNkxPL0oxNmtsaW9INDQ5?=
 =?utf-8?B?c3ZHQlhkV2NsQlZDbzVsQzZCbXpNd1hoSDNCdnF3RHlvbXdNTk91T3JVUXpy?=
 =?utf-8?B?bzRrdXUrSjh1c1Z3a0srTmdadEx0M2JJQ2FMaE16S1ArdlpWWTBJNVdMZm1y?=
 =?utf-8?B?YTRGRDNvNHRoWWxzdDZSVC9MVUtNZDgyQWdDR2pzcWtFRWQxWCtVcklIQW05?=
 =?utf-8?B?MzZMWEN6ZUU0TFNzcm8vMzdkblp6cXVTYXdVUGlrOWV0YVBCZ0ZjS2tXVVlT?=
 =?utf-8?B?bFFnV1JKa0hQOU9RemF2MU9VYnVkem8zajZBYzJSTmw5QnV3U20vUEpMUndJ?=
 =?utf-8?B?Z0VYL1RlSlQ1ekpyQlo4akxJRGNrRUFVT2xYbnNyS0pNWTlxRUU2cHFFSnJU?=
 =?utf-8?B?ZmVRd1FBRGlJV0FGQ2RYcGtCL3VVUGFSZVdJMk5HK0kvVTFtL1k4TnJ5TVFW?=
 =?utf-8?B?amVxMVVTNGVWYjA1Q01OM3VTV1ZFZDlNbmkyd2FwQzZVWnBoSEw1ZGkzcWQ3?=
 =?utf-8?B?ZEJpemFRb3BKQkRkRHNVbTEwSEFkZ3dtK3Zob3FWVzVQU3dYK0ZDNG9pb1Ew?=
 =?utf-8?B?RXdXbGxyZW9xbjlpYldUVEtyRkFXTFBQRm53UHZVcTFzY3E1OHM1U2VFckln?=
 =?utf-8?B?NFIwUGNTTFFvQWY3Z1IzUlNvUit6aXh3dVlaMVBhU290OGt3S3dMQkdQMjVH?=
 =?utf-8?B?enlOWndDS2hONG56cUVETG5FeTRSbDJlWTQvZEM3TFE1SUw1elc1SFJnUk1u?=
 =?utf-8?B?V2ZXSDRrQmpJR200eFFyMWJkZy93Z29WakRybGFFV2xZZW1LOGFkOTlXdHpj?=
 =?utf-8?B?MGs3UlJXcXl0ZENaK2dqbXJnZzhXVmFsdHBwdVp1Wk1BZEIzWmt1SzQreVZH?=
 =?utf-8?B?V05STnFrdU4yK0NjYXQwREpZZGhHTHR3dzRCOU9jUm9LNkVacWY1YVZjRkQz?=
 =?utf-8?B?bC90bXcvUlNra3JSNnZpYzV0NTRXMmMyOHJXK0Y2d0k4Rk5HVGZjRVV3SGRO?=
 =?utf-8?B?VkgwcFM2ckY0NS96STBBYlFiTGJRcitkN1BsS2UzLzc4bE5YY2o5ZlN1ckNr?=
 =?utf-8?B?MXdaM2d6ZjNkV2M0RGdOSEhCM2cyRXZrMk9pRTlQbUpZQzJ1MEQrQ3JNTndq?=
 =?utf-8?B?SWtLU3k3SWVjS05TYmRLZHFtQ3hCdzE3L05KSDFSa1I3aUE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(52116014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aTlmRGJPNzVQNG1jZThsdFVDaElnRVZRWVFad2RDNVlVT0doZU5iRGtPQzFN?=
 =?utf-8?B?SWZsMEF2WmR6MkNyd2pKeEZTNnppby9SR0diVm54RlNFNVNqQmI2OGwxOGE0?=
 =?utf-8?B?OVF4bkZVSkp0VXRrcDFRR0h2eGFhSVNSL0RRSWtrMFRhSnhLV1ZNSUx4MVk2?=
 =?utf-8?B?blpZZGgwd0NhZTk2Q3U2eW14WlF2bU9ncnBOSEhyRXBHSkNnM2dIcXZDTTR6?=
 =?utf-8?B?VzNRQm9McWRrZ0REYlQzUEIrOWtoTW9RSDluVmNxUnFETzNoZE14alVQNTRU?=
 =?utf-8?B?bHVROHRvYzJGY0VrZHpMZXR5Z1QzbTdCYnN6elQzMGx0R2RyM3dGMzU2YUVu?=
 =?utf-8?B?OUFzTllRKzUxeFM0aTY5ZXh1cm1wMXdNUWdlSmJxQnk4WDJZOURRaDN6V3po?=
 =?utf-8?B?OUVrZzJ4QldxS1lXVEQwNzRMV2NpY3VZVEpqWmZHNUZSRWhGMFNWcnhiQk5w?=
 =?utf-8?B?UUZmMEdsdW5YZmVLVkN3SkhQd1lJTWVpZXB0NU5wQ1E4VkJiSlRaakVyRkFq?=
 =?utf-8?B?bTJkMldYRG5SVVFZclVBcDhzMC9kSXo3OHdlMmRXdy9DODhhWFVPWk5CZGs2?=
 =?utf-8?B?OGk2aENxUWtVWUFJbDArd1N5bzVMa2UwclVlTGZHN29pMjJJamc2Y1Z1QllJ?=
 =?utf-8?B?djI1bWVUb0JtQ2Y5ZFZ4Y2NzVlkwNUFZZmFubG1VbWUreUJ2azBIUkY2N1Vu?=
 =?utf-8?B?czErMlJhUDhFUXhtblNRTkptS014emI2eXlkWkFLTTloNzdFV0NJYlNtdkhI?=
 =?utf-8?B?KzBCUTI5ZFVKemZPMlVwSE8vQWJkT1lTWVFReHZienhLWXJ2TVcyNFl5Mk5p?=
 =?utf-8?B?cW13Z2JlSEVYa09WbUlrLzVxMituQjdXYkJTRWFaSWdteUI0ZWk0QTFCWXNU?=
 =?utf-8?B?bnV6STV5ZXpQTFhtN3djcDhtZVlaL1FKVHVyaitzakJBUUYxYnZyWGJUT0Fu?=
 =?utf-8?B?MC9CdnhOVWdmZ3doYk0wZVZsUUppaHl3eENDRG5tSXVHRWRIcVFXYVFFM2k5?=
 =?utf-8?B?Z1ZEMkV5WTFtREVMdVF4NitJSDYzT3E3U0NnSjYxRFJHcnpMTUR1a3RvTUFX?=
 =?utf-8?B?TS9EOEgxNHh1T3BORGtFTHlBOGM0K3J6cjhuWVc1T3Q5TFpXbnM2WVlVMEU1?=
 =?utf-8?B?VmIrZWJTVG1pTnV3K3BoYkJKMURGRGZXdXIySUFEcGxQc29OL3Ercmhub0RC?=
 =?utf-8?B?ak5mME01MG9XYjFScjZZSWgySG1SZnJad3AxeitySWZkcG5Qek56WUl2UjB3?=
 =?utf-8?B?bnl4RUhnZnIrcTduNVhudEFodTQ3WlhZZFRkVzhVRE5pWnNFTUFQcGszR3l4?=
 =?utf-8?B?TnZzVzNLUEhsTFk1ODIyY080dkZ6VnVsMk9uUWRJdFlpajduWHJ0YUNtOGlh?=
 =?utf-8?B?a2Q2Y2JyaEMxcWNOZFc4YXVNSDZHTU9TK2J6djVUcS84QUliVVNUT21NYjRQ?=
 =?utf-8?B?dWtMTEYzdFRoVVIwcjZ6RStDL3U0RFdISVhTYk9oR29MVElTYUVYaVJsd0th?=
 =?utf-8?B?eXlubnRHSG0zUXhYTWtZVEtmRHg1YStJcXZzL05xK3ZFQm05V3lydlowL0Yr?=
 =?utf-8?B?VkpzUWF3T0NmTWFCUS9ZVGxzVmkwUFpZRDVLbDF0NUtkYVB5cXJXaWIzS09T?=
 =?utf-8?B?bGtNWFh1QjBiVXZhTUMwNkNzTG9rbElJcEhUSXhEcWhkOXA3T1JjNElHNFdQ?=
 =?utf-8?B?TXhRNEVuWW1UQUNyZWNCdC90MHpReHY5bnFSM0lSRHVmaTl0cGFFNDNiWW9u?=
 =?utf-8?B?OG8vT1A3eHpVRW1KcjBwQVUwMVBaUkx5dlFVWlJYWEcyancyQVIyRzl3TUZU?=
 =?utf-8?B?RXZRNjNvb1NSY1ZFeVFCaGZEWWVneXd5dE5vVEh5RDJwaHpmSjc0TGs1dVl2?=
 =?utf-8?B?bWhrMnlaeUVwVXloQ2s4V2wxTCtIMFlGTjRIcmR0RzAyYXExWU1za0MyWGJo?=
 =?utf-8?B?VTVha3VVRGRnMjRSamJRbG9zWW9lamM5N3RWRHBRenlBbzRvVVorblBkTW5X?=
 =?utf-8?B?SVZ5d1hvOVFFYlFOMmlRLzhGYlpHMjkzZ1ROdml0YWlJTEFIb1Z2eDBIS1Ux?=
 =?utf-8?B?VjVVTUx1amlqWnRZV3Vzb3IwTHFwNjJ6SGZkQ0NFMHhBUHdYYVJiV3hMUG1s?=
 =?utf-8?B?S3ZteWtLcFRqRFdRbmV1TnRMWWdFUVVHZmM0aE0vNDJRS2grdGsxUU9PbFZT?=
 =?utf-8?B?YlE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: eec8e256-6f92-4820-e216-08dcd7f0c4dc
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2024 14:47:07.5973
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CptbPo3FO3vOo3HBGG0T4UtTZM6zfHDYylTstVM55rvy2UTEpwWrXRsl02tT1/GDEaBwL7DAVxhms0O07Ae9f8tHnppcAoeTtJqQGf0mjvs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR08MB5815
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240918_074715_477934_03394F9B 
X-CRM114-Status: GOOD (  16.27  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] arm: rockchip: add support for the xulong orangepi 5 plus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add basic support for the Xulong OrangePi 5 Plus (featuring the
Rockchip RK3588 SoC). It should be noted that barebox boots and
one Ethernet port is functional, but apart from that several
features do not work yet (PMIC, SPI flash, USB, other PCIe
peripherals such as the second Ethernet port, ...).

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/boards/Makefile                           |  1 +
 arch/arm/boards/xunlong-orangepi-5-plus/.gitignore |  1 +
 arch/arm/boards/xunlong-orangepi-5-plus/Makefile   |  3 +
 arch/arm/boards/xunlong-orangepi-5-plus/board.c    | 39 +++++++++++
 arch/arm/boards/xunlong-orangepi-5-plus/lowlevel.c | 25 +++++++
 arch/arm/dts/Makefile                              |  1 +
 arch/arm/dts/rk3588-orangepi-5-plus.dts            | 77 ++++++++++++++++++++++
 arch/arm/mach-rockchip/Kconfig                     |  6 ++
 images/Makefile.rockchip                           |  1 +
 9 files changed, 154 insertions(+)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index e0dc27cb3d..67d91616f6 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -179,3 +179,4 @@ obj-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP)	+= variscite-dt8mcustomboard
 obj-$(CONFIG_MACH_RADXA_CM3)			+= radxa-cm3/
 obj-$(CONFIG_MACH_TQMA93XX)			+= tqma93xx/
 obj-$(CONFIG_MACH_WOLFVISION_PF5)		+= wolfvision-pf5/
+obj-$(CONFIG_MACH_XUNLONG_ORANGEPI_5_PLUS)	+= xunlong-orangepi-5-plus/
diff --git a/arch/arm/boards/xunlong-orangepi-5-plus/.gitignore b/arch/arm/boards/xunlong-orangepi-5-plus/.gitignore
new file mode 100644
index 0000000000..f458f794b5
--- /dev/null
+++ b/arch/arm/boards/xunlong-orangepi-5-plus/.gitignore
@@ -0,0 +1 @@
+sdram-init.bin
diff --git a/arch/arm/boards/xunlong-orangepi-5-plus/Makefile b/arch/arm/boards/xunlong-orangepi-5-plus/Makefile
new file mode 100644
index 0000000000..b37b6c870b
--- /dev/null
+++ b/arch/arm/boards/xunlong-orangepi-5-plus/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/xunlong-orangepi-5-plus/board.c b/arch/arm/boards/xunlong-orangepi-5-plus/board.c
new file mode 100644
index 0000000000..e211af8ecc
--- /dev/null
+++ b/arch/arm/boards/xunlong-orangepi-5-plus/board.c
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <bootsource.h>
+#include <common.h>
+#include <deep-probe.h>
+#include <init.h>
+#include <mach/rockchip/bbu.h>
+
+static int orangepi_5_plus_probe(struct device *dev)
+{
+	enum bootsource bootsource = bootsource_get();
+	int instance = bootsource_get_instance();
+
+	if (bootsource == BOOTSOURCE_MMC && instance == 1)
+		of_device_enable_path("/chosen/environment-sd");
+	else
+		of_device_enable_path("/chosen/environment-emmc");
+
+	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT,
+				  "/dev/mmc0");
+	rockchip_bbu_mmc_register("sd", 0, "/dev/mmc1");
+
+	return 0;
+}
+
+static const struct of_device_id orangepi_5_plus_of_match[] = {
+	{
+		.compatible = "xunlong,orangepi-5-plus",
+	},
+	{ /* sentinel */ },
+};
+
+static struct driver orangepi_5_plus_board_driver = {
+	.name = "board-orangepi-5-plus",
+	.probe = orangepi_5_plus_probe,
+	.of_compatible = orangepi_5_plus_of_match,
+};
+coredevice_platform_driver(orangepi_5_plus_board_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE(orangepi_5_plus_of_match);
diff --git a/arch/arm/boards/xunlong-orangepi-5-plus/lowlevel.c b/arch/arm/boards/xunlong-orangepi-5-plus/lowlevel.c
new file mode 100644
index 0000000000..2fa921eee0
--- /dev/null
+++ b/arch/arm/boards/xunlong-orangepi-5-plus/lowlevel.c
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/rockchip/hardware.h>
+#include <mach/rockchip/atf.h>
+#include <debug_ll.h>
+#include <mach/rockchip/rockchip.h>
+
+extern char __dtb_rk3588_orangepi_5_plus_start[];
+
+ENTRY_FUNCTION(start_orangepi_5_plus, r0, r1, r2)
+{
+	putc_ll('>');
+
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3588_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	rk3588_barebox_entry(__dtb_rk3588_orangepi_5_plus_start);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 68585e1e4b..6c9c23a834 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -186,6 +186,7 @@ lwl-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
 lwl-$(CONFIG_MACH_WEBASTO_CCBV2) += imx6ul-webasto-ccbv2.dtb.o
 lwl-$(CONFIG_MACH_WEBASTO_CCBV2) += imx6ul-webasto-marvel.dtb.o
 lwl-$(CONFIG_MACH_WOLFVISION_PF5) += rk3568-wolfvision-pf5.dtb.o
+lwl-$(CONFIG_MACH_XUNLONG_ORANGEPI_5_PLUS) += rk3588-orangepi-5-plus.dtb.o
 lwl-$(CONFIG_MACH_ZII_RDU1) +=	\
 	imx51-zii-rdu1.dtb.o		\
 	imx51-zii-scu2-mezz.dtb.o	\
diff --git a/arch/arm/dts/rk3588-orangepi-5-plus.dts b/arch/arm/dts/rk3588-orangepi-5-plus.dts
new file mode 100644
index 0000000000..8c765a853c
--- /dev/null
+++ b/arch/arm/dts/rk3588-orangepi-5-plus.dts
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <arm64/rockchip/rk3588-orangepi-5-plus.dts>
+#include "rk3588.dtsi"
+
+/ {
+	chosen: chosen {
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &environment_emmc;
+			status = "disabled";
+		};
+
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &environment_sd;
+			status = "disabled";
+		};
+	};
+};
+
+&sdhci {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		environment_emmc: partition@408000 {
+			label = "barebox-environment";
+			reg = <0x0 0x408000 0x0 0x8000>;
+		};
+	};
+};
+
+&sdmmc {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		environment_sd: partition@408000 {
+			label = "barebox-environment";
+			reg = <0x0 0x408000 0x0 0x8000>;
+		};
+	};
+};
+
+&pcie3x4 {
+	/* Does not work in barebox (missing phy driver) */
+	status = "disabled";
+};
+
+&pcie30phy {
+	status = "disabled";
+};
+
+&pcie2x1l0 {
+	/* Does not work in barebox */
+	status = "disabled";
+};
+
+&pcie2x1l1 {
+	/* Does not work in barebox */
+	status = "disabled";
+};
+
+&usb_host0_ehci {
+	/* Does not work in barebox (missing phy driver) */
+	status = "disabled";
+};
+
+&usb_host1_ehci {
+	/* Does not work in barebox (missing phy driver) */
+	status = "disabled";
+};
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index ebf937dd78..ddaab7c284 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -116,6 +116,12 @@ config MACH_WOLFVISION_PF5
 	help
 	  Say Y here if you are using a WolfVision PF5 mainboard
 
+config MACH_XUNLONG_ORANGEPI_5_PLUS
+       select ARCH_RK3588
+       bool "Xunlong Orange Pi 5 Plus"
+       help
+         Say Y here if you are using a Xunlong Orange Pi 5 Plus
+
 endif
 
 comment "select board features:"
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index e344e893a0..6619beae73 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -37,3 +37,4 @@ $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK3, start_rock3a, radxa-rock3/
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK5, start_rock5b, radxa-rock5/sdram-init.bin, rock5b)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_CM3, start_radxa_cm3_io, radxa-cm3/sdram-init.bin, radxa-cm3-io)
 $(call build_rockchip_image, CONFIG_MACH_WOLFVISION_PF5, start_rk3568_wolfvision_pf5, wolfvision-pf5/sdram-init.bin, rk3568-wolfvision-pf5)
+$(call build_rockchip_image, CONFIG_MACH_XUNLONG_ORANGEPI_5_PLUS, start_orangepi_5_plus, xunlong-orangepi-5-plus/sdram-init.bin, orangepi_5_plus)

---
base-commit: efe529757debe7209398cbb495c69c640954d0d5
change-id: 20240918-feature-orange-pi-5-plus-97556db98395

Best regards,
-- 
Michael Riesch <michael.riesch@wolfvision.net>



