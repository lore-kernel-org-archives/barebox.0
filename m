Delivery-date: Wed, 28 Jan 2026 17:41:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vl8bH-006JVs-0U
	for lore@lore.pengutronix.de;
	Wed, 28 Jan 2026 17:41:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vl8bF-0003iZ-MG
	for lore@pengutronix.de; Wed, 28 Jan 2026 17:41:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qcxCAB8IVopI75Tl1PXIzPMuKgV3qfhO1wIgz/PTyrM=; b=3a3qiAeit4n1zp5FYx3sat8MyW
	b3ElcDdETFQH9+Nq5EVGhF4dXpNkW2ZPbMf3XfXBDM4JOJymvfdWKoDlqMIW/x04pzzgL2reNjQQt
	T4/yHeJXHXAbPm5c66B84v1bVdHdOAZNxQ2IAqJyondo4700LYg4oxpnUlM10V7mXVr1NRzYRTaip
	4lLBQraw81/TLsdp8xR60BRC7GseJ9BAo2iGltk6uHeXdjkZWV9uSzJ0FvS1LYUdQ+QO5cqQJVNJr
	CYpLxkkNpdCkxmDd/S1hH/fq6jaRv5x20o7Q4mqm97UjmMIU5VkgxU35YbSn1d7ue/GYkd9JRWHTs
	5dJzMicw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl8aD-0000000GPXq-30vH;
	Wed, 28 Jan 2026 16:39:57 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl8aA-0000000GPXI-3QgD
	for barebox@lists.infradead.org;
	Wed, 28 Jan 2026 16:39:57 +0000
Received: from pps.filterd (m0163890.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SGSsca2221858;
	Wed, 28 Jan 2026 11:39:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=qcx
	CAB8IVopI75Tl1PXIzPMuKgV3qfhO1wIgz/PTyrM=; b=Hdn5r4yC+R4XQgatPoI
	xmrtdKR9kGz/RAd8zP/9GbUGrCVwZbtQSnDTKgPNpX9RjVerfc6OtYmXU2ymb2aT
	n8wQGAFpKeyOf8j4QaL7pwZvtyNjnKsj1zQjpOgzVErESaz4rGGVMA4GVU/lFXJK
	876WkVSpq+1Y7XHI74vtMBakqUwQOGjEqI91qIMX66kIDNfTD994np0RunK8RMm6
	9e/2GF0rB9nicjNI5ynWiyUTDUKZVCC52Qk+FukUKFSdMzDH45AJLULEcBJ465UN
	DLWRmGvQkkJDe1jN0p5d93iW6ppo7DJawTSxKkk603cRak5VqHdRDQttDk9v4vm4
	uvA==
Received: from ph0pr06cu001.outbound.protection.outlook.com (mail-westus3azon11011041.outbound.protection.outlook.com [40.107.208.41])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 4bydcpssfh-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 28 Jan 2026 11:39:52 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KRiX9JMtlKoG296FGsuIEeBt6c2/wq+crcU75qf7DF3CpynscEO999T/K6Rv1ez/3/WeL4MC7Z9QnIl+P54WOz7Wz/8ZC1PVG/RVL6WeGcTE2/byCICFZW0e+NVkcyWLIVguSwIP5rupvY/iWPgdrWrCMtXDHjlVRdNPNb81gDWIHmJKSXvRvJBSW+8lgUgOfyj1HiSP7CSTXyYhDKNpcRDEkEBuVLt77XLIdGmA+OIrUTlYkxoqZSNpN5hV0jmkn/DrJtl4dJr5O9ucqELRGzL57AjdPs08Uvl7xpaZECzkIJTO/OcqljWoHkRIHZPvd4ScQvf3EcYNultozfRcww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qcxCAB8IVopI75Tl1PXIzPMuKgV3qfhO1wIgz/PTyrM=;
 b=wSulyQAggMxgXB67gcSnaUW93wz61CR1KjaDvqkcUwAJ71vtfwod//oYoNq0uqZc/98YOxh6qCSEy9YvC+WC3N0BjR+DmyL44+0+Ylx0/gVEnhJH/6NCrcVgcMU3Fl+3BvjjvVuwO25Tlhu+tF5CyvkYroCS9fCRNgML0iUWq8jZDTS4S1iWi0xulfS5qcJOXVi44Hwu7oFfXrTBTZcVSZK+m0vOZSCkAK3bwMSopefPkXPO8bQW3Ynx8bhx3V4+RPCXrJ5nH1LtMevf2cWOOiRXzpQs99VxovXeKa6sPailG6Iu3CB9puGsYOViOQpDj20TeUCeJEwSJrjmp3C6hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qcxCAB8IVopI75Tl1PXIzPMuKgV3qfhO1wIgz/PTyrM=;
 b=wf7ln6K7yD9PxcMb1XFAb5YSCDuyOxGjHAJ0cxmP8X9ZSOtPJAPq1ArkfBEFs/+C5IEuYfBwdEIFv9oAD9L8XOB++1MoeVMPfbFn0HgZubzaSyjav+bIt0i+oz1Fs0aD589X+ATN7LsceUxF8/Dpj3xhUtXfVf6EqqkB2cnE7is=
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com (2603:10b6:a03:4e0::13)
 by MN2PR07MB7327.namprd07.prod.outlook.com (2603:10b6:208:1d7::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 16:39:50 +0000
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2]) by SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2%4]) with mapi id 15.20.9542.015; Wed, 28 Jan 2026
 16:39:50 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
CC: Lucas Stach <lst@pengutronix.de>
Thread-Topic: PCIE on LS1021A
Thread-Index: AdkL8DOb81y0+p2vQua38NWFw8d4qwADQ1uAAAFsyICGmUs+AAHp0PYAB7P/fqABZf9OwAFWpr8AAZh9tNA=
Date: Wed, 28 Jan 2026 16:39:49 +0000
Message-ID: <SJ0PR07MB97664BF8CA2EBFAEC8C81C63EC91A@SJ0PR07MB9766.namprd07.prod.outlook.com>
References: <BL0PR07MB5665EA1D980C39F834845849EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <9bb964dc-3c24-7c70-b007-759c3aa85511@pengutronix.de>
 <874d52d0-f476-53cf-1331-72f80bffacbd@pengutronix.de>
 <BN8PR07MB69932217E808C9DB9435411FECD6A@BN8PR07MB6993.namprd07.prod.outlook.com>
 <9923f2ef-cbce-44a1-86bf-6aaf829d3008@pengutronix.de>
 <SJ0PR07MB9766972613A435D5377F3EBDEC84A@SJ0PR07MB9766.namprd07.prod.outlook.com>
 <SJ0PR07MB9766897F421E8809B42266ABEC8EA@SJ0PR07MB9766.namprd07.prod.outlook.com>
 <b4339f2e-e306-4f84-a43b-751ef7b4ed55@pengutronix.de>
In-Reply-To: <b4339f2e-e306-4f84-a43b-751ef7b4ed55@pengutronix.de>
Accept-Language: en-US, en-GB
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR07MB9766:EE_|MN2PR07MB7327:EE_
x-ms-office365-filtering-correlation-id: 4b0ad6e2-8ee2-4df4-4d63-08de5e8bdaf2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?c2VlcDdSQzJpZEtmYXorOHpSRXBySEozMXpTbXFPaEZGNzhqbnpWMkEzdG0r?=
 =?utf-8?B?OStuSGtlUXBGa0VFVGx6M0hUYXpCRlNsb09QR3NxSTNYc3A4VjF5eEtHU3ZZ?=
 =?utf-8?B?NUl3UVV0TmdPdlMvSDRKMUpPYmJTNnJNdktFa1dScmFOWXM1alhrT2RoN0Fa?=
 =?utf-8?B?OUVZUGZUc29Jc2NtNHRZcUVDRkdXUlRuUEZhRVkrdTNlRWk4eUNEeDNmU2JZ?=
 =?utf-8?B?UzNZbmd1R09CT1U1NzJUMTlIeGI0WFQ1YVZsWmJnQ01Idng4VndiRVBuaWt1?=
 =?utf-8?B?dHZGTW9aSTZST1ZLRWFiY0JIRFJTNFo1dkhTYjdrNmZVelloNnlQL2NKUDFB?=
 =?utf-8?B?TVlzYWpzV2ZYbHMveEJZSDNhVFo1cWxVb1JScEd2amd5UXIxRFV1OFk5NE5w?=
 =?utf-8?B?ZzdzRUE4dnBTZk9iMmVpUEJTcnlwaTdZcmVGb3RyM3JiY0RsbGNWeTZqS1ZQ?=
 =?utf-8?B?R0RpYjlLdzFqeDlhSWJDSDArNjV1ZmFWOVpBUVZEbGo5eG0zdGhGbGNBdy83?=
 =?utf-8?B?VnBSY2hnQWJwVGIxUXZPaU1PRzZ2S3g2dE80TmtOWjQ0OUZrd3d1UWVqdThU?=
 =?utf-8?B?YXVwNzFSdzgvSUJHbjhTUWZlRGNGbVA0NmdaWGVnRHZ5emJIWTVjajZBbVNF?=
 =?utf-8?B?RUFHMHVQbG1SeERwS2hTK1VjZTJhb1NiejlQVUVDdGQyMjNwMnJGVVhWSVM3?=
 =?utf-8?B?K3FtNVkvblBWTU1jdGlHMlUyQ2QvVk50ZFdlWFlydCtVRWpHZ0F4MXkwZFRJ?=
 =?utf-8?B?NXJIY0UrTWtVVXEwdTR6QkFRWVhKR0hSVzZYRDBVKzU3YVVSNXB6MWZHWmtw?=
 =?utf-8?B?bHlFcTBHTVEvNjM5Z09WbWhHNFk0ZEpKS2lsZUtLc0t3NXVLMkxUVXBpWHFW?=
 =?utf-8?B?TU82SkEvQURWelFZa3BHaEZLalN6MUdIRW9sKzRIdFdVdkE3T3ZMUG05ZWR5?=
 =?utf-8?B?MDN2TFViM3NsemhwQkl5V3g5aTBxNkVtWlFEblpCdG95UUpDMmE1bkExZkt6?=
 =?utf-8?B?TWJlTDFiUm5YL0ZPOFBicys1Q1MvbkNydXUxMStWMlF2OS8xSC9OSXorVG1j?=
 =?utf-8?B?anlPQ0g3SHpWTnJqL29iZS9HNHEvbjFDSzM3ZkJibjd4YU5MdXprMmc1UFBD?=
 =?utf-8?B?TUd2WFNWR2Q4ZThGOUtySGVWNXJnMTdHMmo3TXIybGp3MEIwSm9MQ2lUa3NB?=
 =?utf-8?B?eWhodjBDNXBvdUVuNlRIUHNWM3hMVkpmbm5aV2dMSGRsc21JUi9oakdYVDJG?=
 =?utf-8?B?b2EvQjA1OHlhUzZFdVYwVTFYQ1VmdzlLS0ljak9xVUpSdXFpdXpDZnZBTkR5?=
 =?utf-8?B?L3VvTVBvQm54ZFN6R3RPRmhYc3psVTlXR3YwZndNZzFHRi82U2EyYTc5alY3?=
 =?utf-8?B?Wmc3M2syMXh1TTJOSm1aN2c3QThzUllrVkZ5UjlRRDVxT1dZN0Zaem41SXM0?=
 =?utf-8?B?ZTFsWC8yQnVjYk5mL2JPaUFucEZaMEJ4YTdjY0NCS25CYWw1LzUxU1QyZTh2?=
 =?utf-8?B?Q2NlbVBxMkpWd0pvSW50UjJ6Nzd2YmtJR2MvN0NmaDlnTkdsczd3Tk5QcTBY?=
 =?utf-8?B?VnMyZlhxamo3elJKbUQ0TUc0dDRYVUtlMlNQN3htSmszeDNQYlFBemZUWG50?=
 =?utf-8?B?WnUzYUx0Mlc5OEdhSG53aHlSdG9TNlkycVZFdksrVXBKeklCYnVmamtHYWE0?=
 =?utf-8?B?V0ZUTVlYbXkrSDhiZUFGQnRNNEVJa3dUQnFRMUNoL05ybjdxQ2FIZk54bTBQ?=
 =?utf-8?B?TTA1VkVLdklwbHd5OEY4T2ZxbXZCNDArRGxsNXArSGJHZFlWemRsaXZuamVp?=
 =?utf-8?B?enRrV05obnY0Q2RnUHJJNkM2ZjdsQlhucWx3ZmZHSDhYc0dlUXBpT2txTHo2?=
 =?utf-8?B?aW5TdksyQXR1Z3dRWGJzUmgzZ2lUL09WVGNBQ1lJTmhuZnZHZ3dJNnVzM3FJ?=
 =?utf-8?B?ZTdQaVgxdFdrcVBtSHVQQVMyN1pPZGRyWnZYQlN4T1VEZEYwSDZLREo4cTJt?=
 =?utf-8?B?R3ZIazF2clFCMkMwUmc0bGg0YkhPdC9acmc2Z3kza255WlczZGNGSWxwTHVN?=
 =?utf-8?B?d3g4OGxkUTB4RHpqOWVNakVxL3BEQTEwZkFUaFd5SW1WVm95aDdSZDU1MlJF?=
 =?utf-8?Q?w1XE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR07MB9766.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R0VYNzQ3YmhJb1FXcEp0QnJ6emRYNTk4UUc1RG1hdDBwc3VKSFdEWkRFemVK?=
 =?utf-8?B?eEdQeitlVDJaNFl1MG95SFpxdDFZM2RKUVRremNnUVZDZ0locmRiOGdod1B2?=
 =?utf-8?B?N3ZQdjI0QkpSalFXekJiRXZFRmtDUXQ5YUUrNk5sWHVUYVNKRDhBT1l3TXla?=
 =?utf-8?B?ZDh6UzRSRjRzL1Ird3MwcVZUbnVValUxM1lQSk5QTWZNUE1lS2xaRkhjMlZR?=
 =?utf-8?B?Z0ZOaVhpMkRHNCtUWC9VQVJjanh5ajBiSHo3R056bW9FUVBObUxXM3ptVys2?=
 =?utf-8?B?TDFPTFdJcUQwUEk4RDNyQmNtNXkzQTYrNEhHdnV4YVRKTngvbTNWSHVNcjJy?=
 =?utf-8?B?V01sQWorUW10TXNBbitqK0tKUTRsZ0FudVpFY0tlQVFzM1BnVTJiN3BKY21v?=
 =?utf-8?B?cDNjNXNTeGgwM1JKWU55NmJhajVXc21uc1M4VUlTZHlQWUkzbHpKNmZ5REhl?=
 =?utf-8?B?NURRMTVUaG5VVmp2eW0xdVFSM01jbEhSbnEya1BDdWY1TGF6L2V0czRTMm5Z?=
 =?utf-8?B?R3p1TFNmdzFSL2VUS1dwWWRYMzdyNFpZNWVyNHVUY0tnN1NWV3NFL2xSRnkx?=
 =?utf-8?B?czVrOUU4aTBrOFFxVTVoYU9yNVN1WUhJT2pBRThGTXh2T3ZkRXhuM3RVSUd5?=
 =?utf-8?B?QmhkQVJ1K2ZPUDlPaDR0aUtUNktsc3VxWXRPZytQQzIxMjJNR3dwZkZZR09m?=
 =?utf-8?B?bzZZWXFCRmNxMWE5TEdzS1RWcFRGU0ppSTQzRG1mazEydmI1RGk1eUZJTVVk?=
 =?utf-8?B?YTlyV3FJdS9zT2tvVS9uNFJyM2hnVFZLY1ExVEJZNWY0YXc2S2xEUVVpalBC?=
 =?utf-8?B?bEJLMGxCakJ3R0ZPSFRnc2JoNmRtSVJQcEVPNjlEa2VSZ1M1dGZnOFJJcGhD?=
 =?utf-8?B?WDFvMGh3Y3FEczBXenlEMVIrS3JER2Z0dy8xclhPb3ZUTG9CbGR3eEZSbUpN?=
 =?utf-8?B?alQwTEFjRC95NWEwRWNkRXhOWWIwU29QWS93TDZMcmE5b1RieFlKVzlIN3ov?=
 =?utf-8?B?dVVud3VKQ2VNeGNTdU43cWtnQko1NmdybnhUc1NnNFJjc2Q4Wlp0aGthdFVx?=
 =?utf-8?B?T3pGTzVFMmJWbTJ6KzlHOU43bEdWYU1taXA4dXFFNm4wandSWDZhY2h5UzIz?=
 =?utf-8?B?TVlKRFFKdmFsa01DOTJKZ3YzRzJ4U0RHMUVFZ1Y3SnVtRUpaVWtoNWUwUGtm?=
 =?utf-8?B?Um1oZFVhcUEvZm1UU2FHUERKOEowT25CY2I1cWwzcTBiYWFoaEpJbXpnWmNz?=
 =?utf-8?B?QU4wUnQ5RlhDbHZDTUl3cFkzSy9MdDNoVlROZHFvZTRBSExDMUtROWRoS2FD?=
 =?utf-8?B?MklRc2xWVGJWdmJIVkQ4czd1Sjh5akxsR1hFMEdTRzlFT1I1RFZXb0dDSjFC?=
 =?utf-8?B?dDRadWRlaW55UFVaSUNyYm5KNG1iN2F4cVpQUVFvMXE1VzFrVDNUalhrWmI0?=
 =?utf-8?B?ZUNLSG9GQWV3ZHJhaC8zc1g3cTdoYlZwQU5Bb0UxNytXejdEckdhNnF3dGRa?=
 =?utf-8?B?UHVMR3EreCtWM0gvRXdmZkE4aFlQY1RQa3JwR2lQeE9mTmNMT1J5aFlSY2tG?=
 =?utf-8?B?M1orVU5CYlJxdXM0elBDUTdUTDFKcW8vSk5YZ3lwM3BqZEtxWW9FMnVuVnFm?=
 =?utf-8?B?Tk10ejR5QXJ0bEdBUjFqc0N3UU5xb2tESnVOem5VN0hwakZWVTFTa2JVbElU?=
 =?utf-8?B?c1F4U1NYNklMM3NPVEhDeUhuMUx5MXdCVWN1TDk0dVUxb1VwY0JyUzhVWFYv?=
 =?utf-8?B?N0EyMUEwSDJua2FEUXdLNVg2QnVFcjR4MFUwLy9DMnFaY2k4MTB3VHhqYWlV?=
 =?utf-8?B?WVhTbkFITWZmN3ZBUkdPaXNNWnZiVi9KaUFvRDl6T0ovMWo0TzdRNUJZeTRD?=
 =?utf-8?B?a29LcVZDRm5neVRkdEE1MSsyVHZJRm53SkRIRXhXZCt6RG5VZ3E5ZWxsMFNK?=
 =?utf-8?B?NkhGZGRFOWJTT2g4eGRFNFVCQmpTM1NaL1A2Ylk5RTZsaCtzZEU3dlJyall2?=
 =?utf-8?B?QWhEWDZ2SE9YVEh4M1NVS3BBQU9pSTAvRy9YMjNsY0RLZ0luaWtjTkRtSWdK?=
 =?utf-8?B?cm9BRkg5SGZUQWZ3d2R0djNCSU5WSWhwTXZzWU9YK2s2YThETm1qQmlqOHlK?=
 =?utf-8?B?cC9mbDJwUmhmZVN5a3A3TmJDdzhGTmdDVWVTd0s2bmxNMnRwcUFGeFhTOWZh?=
 =?utf-8?B?bUdBK1FYSmRmelcrdGJadWRVRXNhVHZkV3A5bUg0V2lnbjNPb2ZRT2w5U1VS?=
 =?utf-8?B?clNRWGJCSmNaQXZ4Z1AwVUNJSHFURis4THJBQ01qeXFPbC8yYXFZM0E1TzQz?=
 =?utf-8?B?ZHlQTlJxeW9ObVZHSkdIVG9qbzFaQ3BXR3E2cmV6bG5kUkM5ZXFkQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR07MB9766.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b0ad6e2-8ee2-4df4-4d63-08de5e8bdaf2
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 16:39:49.8768
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4fhHcbb89VRHAPKRw1Y6DhaC2ELdI6/Sva5dVneC9FMPLwdd0+n+hHvfJlLJbQF1BmorTMNy3h2ttVKfNSygQrFrkd0zGlMvnGIKjSJ0H7s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR07MB7327
X-Authority-Analysis: v=2.4 cv=BYjVE7t2 c=1 sm=1 tr=0 ts=697a3bd8 cx=c_pps
 a=+KlkUUL6BOGgxGViHu3/Fg==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=m3P6IW4lH-wA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=uherdBYGAAAA:8 a=bGNZPXyTAAAA:8 a=LpXnpPx8AAAA:8 a=JfrnYn6hAAAA:8
 a=1SpVocUdbvOXf83Y_40A:9 a=QEXdDO2ut3YA:10 a=yL4RfsBhuEsimFDS2qtJ:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-GUID: zsKFUsfr7GAN-W1MHBeW4-qIQXSC_9d2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDEzNyBTYWx0ZWRfX2EKEuy2DWjRm
 755eiC4e7NsOiSkfJdOZFUbSYkNYvIQjiWuLSZlKv7Bl9mxUyqd0HSNKCBoa9nlDmtXMViGpYln
 lsBZbezK8b7Vdkd9k7prGkNgTmD4GZHmj6Tt+De4PVRRf0ldOhfIP/xPnO2opEfG6wVYENZaevp
 QkXE4BJ5BwDHs1HVsVOQ0b6uw02zBrK5WARs6qqGEiVnlrMM3sHZTPqg6OO7XvOffjzou1Noxi8
 fZ08D7nDDH6QCGgzcWaC//N1lQYRUDi+yZclzjSHDl5sMwrNZxxEC0mrm84ZinNo9Tgb2otbLVe
 ai6wCmXSRhnaxU8WLKJ89cR7Qn8GROFMRwCu+4OEfZ3X+CzTTt96A3xrpTUNTeDDNZi3iSECVQ8
 nGrTLn1S0/qI+PhsGw3NPuX7fYdrpe6ZS3Uow61Via5IlAbhk98z02zwhU5+S6Nex2YI4ZpyoQT
 ejC3CWoCPKtaH0N+h5Q==
X-Proofpoint-ORIG-GUID: zsKFUsfr7GAN-W1MHBeW4-qIQXSC_9d2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_03,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 suspectscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260128_083955_277131_9106447D 
X-CRM114-Status: GOOD (  16.61  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: RE: PCIE on LS1021A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SnVzdCB0byBsZXQgeW91IGtub3cgSSB3YXMgZGV2ZWxvcGluZyBmcm9tIGJhcmVib3ggMjAyNC4w
OSBhcyB0aGlzIHdhcyBhIHJlcXVpcmVtZW50IGZvciBvdXIgcHJvZHVjdC4NCkkgc3RhcnRlZCB0
byBtb3ZlIHRoZSBMUEFFIHN1cHBvcnQgYW5kIGZvbGxvdyB0aGUgbmV4dCBicmFuY2guDQpCYXJl
Ym94IGlzIGJvb3RpbmcgYnV0IGN1cnJlbnRseSBmYWlsaW5nIHRvIHByb2JlIHRoZSBQQ0llIE5W
TUUgZGV2aWNlLg0KDQpBIGJpdCBtb3JlIGRlYnVnZ2luZyBhbmQgaG9wZWZ1bGx5LCBJIGNhbiBn
ZXQgc29tZXRoaW5nIHNvb24uDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJv
bTogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25peC5kZT4NCj4gU2VudDogMjAgSmFu
dWFyeSAyMDI2IDEzOjQxDQo+IFRvOiBSZW5hdWQgQmFyYmllciA8UmVuYXVkLkJhcmJpZXJAYW1l
dGVrLmNvbT47IEJhcmVib3ggTGlzdA0KPiA8YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnPg0K
PiBDYzogTHVjYXMgU3RhY2ggPGxzdEBwZW5ndXRyb25peC5kZT4NCj4gU3ViamVjdDogUmU6IFBD
SUUgb24gTFMxMDIxQQ0KPiANCj4gKioqTk9USUNFKioqIFRoaXMgY2FtZSBmcm9tIGFuIGV4dGVy
bmFsIHNvdXJjZS4gVXNlIGNhdXRpb24gd2hlbg0KPiByZXBseWluZywgY2xpY2tpbmcgbGlua3Ms
IG9yIG9wZW5pbmcgYXR0YWNobWVudHMuDQo+IA0KPiBIZWxsbyBSZW5hdWQsDQo+IA0KPiBPbiAx
LzEzLzI2IDc6MjYgUE0sIFJlbmF1ZCBCYXJiaWVyIHdyb3RlOg0KPiA+IENoYW5naW5nIHRoZSBO
Vk1FIHRvIHRoZSAgUENJZTIgYnVzIGFuZCBmaXhpbmcgYSBmZXcgdGhpbmdzIGluIHRoZSBNTVUN
Cj4gc3VwcG9ydCwgSSBhbSBub3cgYWJsZSB0byBkZXRlY3QgdGhlIE5WTUU6DQo+ID4NCj4gPiBu
dm1lIHBjaS0xMjZmOjIyNjMuMDogc2VyaWFsOiBBMDEyNDEwMTgwNjI5MDAwMDAwIG52bWUNCj4g
PiBwY2ktMTI2ZjoyMjYzLjA6IG1vZGVsOiBTTTY4MUdFRiBBR1MgbnZtZSBwY2ktMTI2ZjoyMjYz
LjA6IGZpcm13YXJlOg0KPiA+IFRGWDdHQg0KPiA+DQo+ID4gYmFyZWJveDovIGxzIC9kZXYvbnZt
ZTBuMQ0KPiA+IGJhcmVib3g6LyBscyAvZGV2L252bWUwbjEqDQo+ID4gL2Rldi9udm1lMG4xICAg
ICAgICAgICAgICAgICAgICAgICAgL2Rldi9udm1lMG4xLjANCj4gPiAvZGV2L252bWUwbjEuMSAg
ICAgICAgICAgICAgICAgICAgICAvZGV2L252bWUwbjEuMg0KPiA+IC9kZXYvbnZtZTBuMS4zICAg
ICAgICAgICAgICAgICAgICAgIC9kZXYvbnZtZTBuMS40DQo+ID4gLi4uDQo+ID4NCj4gPiBUaGFu
a3MgdG8gdGhlIGZvbGxvd2luZyByZW1hcHBpbmc6DQo+ID4gLyogUENJZTEgQ29uZmlnIGFuZCBt
ZW1vcnkgYXJlYSByZW1hcHBpbmcgKi8NCj4gPiBtYXBfaW9fc2VjdGlvbnMoMHg0MDAwMDAwMDAw
VUxMLCBJT01FTSgweDI0MDAwMDAwKSwgMTkyIDw8IDIwKTsgLyoNCj4gPiBQQ0lFMSBjb25mIHNw
YWNlICovIC8vbWFwX2lvX3NlY3Rpb25zKDB4NDA0MDAwMDAwMFVMTCwNCj4gPiBJT01FTSgweDQw
MDAwMDAwKSwgMTI4IDw8IDIwKTsgLyogUENJRTEgbWVtIHNwYWNlICovDQo+ID4NCj4gPiAgLyog
UENJZTIgQ29uZmlnIGFuZCBtZW1vcnkgYXJlYSByZW1hcHBpbmcgKi8NCj4gPiBtYXBfaW9fc2Vj
dGlvbnMoMHg0ODAwMDAwMDAwVUxMLCBJT01FTSgweDM0MDAwMDAwKSwgMTkyIDw8IDIwKTsgLyoN
Cj4gPiBQQ0llMiBjb25maWcgc3BhY2UgKi8gbWFwX2lvX3NlY3Rpb25zKDB4NDg0MDAwMDAwMFVM
TCwNCj4gPiBJT01FTSgweDUwMDAwMDAwKSwgMTI4IDw8IDIwKTsgLyogUENJRTIgbWVtIHNwYWNl
ICovDQo+ID4NCj4gPiBGb3Igc29tZSByZWFzb24sIEkgaGFkIHRvIGNvbW1lbnQgb3V0IHRoZSBy
ZW1hcHBpbmcgb2YgdGhlIFBDSWUxIE1FTQ0KPiBzcGFjZSBhcyB0aGUgc3lzdGVtIGhhbmdzIGp1
c3QgYWZ0ZXIgZGV0ZWN0aW5nIHRoZSBOVk1FIGRldmljZS4NCj4gPiBUaGUgUENJZTEgZGV2aWNl
IG5vZGUgaXMgbm90IGV2ZW4gZW5hYmxlZC4NCj4gPiBJZiB5b3UgaGF2ZSBhIGNsdWUsIGxldCBt
ZSBrbm93Lg0KPiANCj4gSSBkb24ndCBoYXZlIGFuIGlkZWEgb2ZmIHRoZSB0b3Agb2YgbXkgaGVh
ZCBzb3JyeS4NCj4gSWYgeW91IGhhdmUgc29tZXRoaW5nIHJvdWdobHkgd29ya2luZywgaXQgd291
bGQgYmUgZ29vZCBpZiB5b3UgY291bGQgY2hlY2sgaXQNCj4gd29ya3Mgd2l0aCBxZW11LXN5c3Rl
bS1hcm0gLU0gdmlydCxoaWdobWVtPW9uIGFuZCBzZW5kIGFuIGluaXRpYWwgcGF0Y2gNCj4gc2Vy
aWVzPw0KPiANCj4gQ2hlZXJzLA0KPiBBaG1hZA0KPiANCj4gPg0KPiA+IENoZWVycywNCj4gPiBS
ZW5hdWQNCj4gPg0KPiA+DQo+ID4NCj4gPg0KPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KPiA+PiBGcm9tOiBiYXJlYm94IDxiYXJlYm94LWJvdW5jZXNAbGlzdHMuaW5mcmFkZWFkLm9y
Zz4gT24gQmVoYWxmIE9mDQo+ID4+IFJlbmF1ZCBCYXJiaWVyDQo+ID4+IFNlbnQ6IDA3IEphbnVh
cnkgMjAyNiAwOTo0NA0KPiA+PiBUbzogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25p
eC5kZT47IEJhcmVib3ggTGlzdA0KPiA+PiA8YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnPg0K
PiA+PiBDYzogTHVjYXMgU3RhY2ggPGxzdEBwZW5ndXRyb25peC5kZT4NCj4gPj4gU3ViamVjdDog
UkU6IFBDSUUgb24gTFMxMDIxQQ0KPiA+Pg0KPiA+PiAqKipOT1RJQ0UqKiogVGhpcyBjYW1lIGZy
b20gYW4gZXh0ZXJuYWwgc291cmNlLiBVc2UgY2F1dGlvbiB3aGVuDQo+ID4+IHJlcGx5aW5nLCBj
bGlja2luZyBsaW5rcywgb3Igb3BlbmluZyBhdHRhY2htZW50cy4NCj4gPj4NCj4gPj4gQmFzZWQg
b24geW91ciBpbmZvcm1hdGlvbiBhbmQgVS1ib290IGFuZCBJIGhhdmUgc3RhcnRlZCB0byB3b3Jr
IG9uDQo+ID4+IHRoZSBMUEFFIHN1cHBvcnQuIFNvIGZhciBmdWxsIG9mIGRlYnVnZ2luZyBhbmQg
aGFja3MuDQo+ID4+DQo+ID4+IEl0IGlzIGJhc2VkIG9uIHRoZSBtbXVfMzIuYyBmaWxlLiBBcyBJ
IGhhdmUgZmFpbGVkIHRvIHVzZSB0aGUgMyBNTVUNCj4gPj4gdGFibGVzLCBhdCBwcmVzZW50IEkg
YW0gdXNpbmcgb25seSAyIGFzICBpbiB1LWJvb3QuDQo+ID4+IFRoZSA2NC1iaXQgUENJIHNwYWNl
IGlzIHJlbWFwcGVkIHdpdGg6DQo+ID4+IG1hcF9pb19zZWN0aW9ucygweDQwMDAwMDAwMDBVTEwg
LElPTUVNKDB4MjQwMDAwMDBVTCksIDE5MiA8PCAyMCk7DQo+ID4+DQo+ID4+IFRvIGRldGVjdCB0
aGUgTlZNRSBkZXZpY2UsIHRoZSB2aXJ0dWxhbCBhZGRyZXNzIDB4MjQwMDAwMDAgaXMNCj4gPj4g
aGFyZC1jb2RlZCBpbnRvIHRoZSBmdW5jdGlvbnMgZHdfcGNpZV9bd3J8cmRdX290aGVyX2NvbmYg
b2YNCj4gPj4gZHJpdmVycy9wY2kvcGNpZS0gZGVzaWdud2FyZS1ob3N0LmMgYXMgZm9sbG93czoN
Cj4gPj4gaWYgKGJ1cy0+cHJpbWFyeSA9PSBwcC0+cm9vdF9idXNfbnIpIHsNCj4gPj4gICAgICAg
ICAgICAgICAgICAgdHlwZSA9IFBDSUVfQVRVX1RZUEVfQ0ZHMDsNCj4gPj4gICAgICAgICAgICAg
ICAgICAgY3B1X2FkZHIgPSBwcC0+Y2ZnMF9iYXNlOw0KPiA+PiAgICAgICAgICAgICAgICAgICBj
Zmdfc2l6ZSA9IHBwLT5jZmcwX3NpemU7DQo+ID4+ICAgICAgICAgICAgICAgICAgIHBwLT52YV9j
ZmcwX2Jhc2UgPSBJT01FTSgweDI0MDAwMDAwKTsgLyogWFhYICovDQo+ID4+ICAgICAgICAgICAg
ICAgICAgIHZhX2NmZ19iYXNlID0gcHAtPnZhX2NmZzBfYmFzZTsNCj4gPj4NCj4gPj4gV2hhdCBp
cyB0aGUgbWV0aG9kIHRvIHBhc3MgdGhlIGFkZHJlc3MgdG8gdGhlIGRyaXZlcj8NCj4gPj4NCj4g
Pj4gQW5kIEkgZ2V0IHRoZSBmb2xsb3dpbmc6DQo+ID4+IGxheWVyc2NhcGUtcGNpZSAzNDAwMDAw
LnBjaWVAMzQwMDAwMC5vZjogaG9zdCBicmlkZ2UNCj4gPj4gL3NvYy9wY2llQDM0MDAwMDANCj4g
Pj4gcmFuZ2VzOg0KPiA+PiBsYXllcnNjYXBlLXBjaWUgMzQwMDAwMC5wY2llQDM0MDAwMDAub2Y6
IFBhcnNpbmcgcmFuZ2VzIHByb3BlcnR5Li4uDQo+ID4+IGxheWVyc2NhcGUtcGNpZSAzNDAwMDAw
LnBjaWVAMzQwMDAwMC5vZjogICAgICAgSU8NCj4gPj4gMHg0MDAwMDEwMDAwLi4weDQwMDAwMWZm
ZmYgLT4gMHgwMDAwMDAwMDAwDQo+ID4+IGxheWVyc2NhcGUtcGNpZSAzNDAwMDAwLnBjaWVAMzQw
MDAwMC5vZjogICAgICBNRU0NCj4gPj4gMHg0MDQwMDAwMDAwLi4weDQwN2ZmZmZmZmYgLT4gMHgw
MDQwMDAwMDAwDQo+ID4+DQo+ID4+IEVSUk9SOiBpb19idXNfYWRkciA9IDB4MCwgaW9fYmFzZSA9
IDB4NDAwMDAxMDAwMA0KPiA+PiBFUlJPUjogbWVtX2J1c19hZGRyID0gMHg0MDQwMDAwMDAwIC0+
IEJhc2VkIG9uIExpbnV4IG91dHB1dCwgdGhlDQo+ID4+IG1lbV9idXNfYWRkciBzaG91bGQgYmUg
YXMgYWJvdmUgMHg0MDAwLjAwMDAgdG8gYmUgcHJvZ3JhbW1lZCBpbg0KPiB0aGUNCj4gPj4gQVRV
IHRhcmdldCByZWdpc3Rlci4NCj4gPj4gRVJST1I6IG1lbV9iYXNlID0gMHg0MDQwMDAwMDAwLCBv
ZmZzZXQgPSAweDANCj4gPj4NCj4gPj4gRVJST1I6IGxheWVyc2NhcGUtcGNpZSAzNDAwMDAwLnBj
aWVAMzQwMDAwMC5vZjogaUFUVSB1bnJvbGw6IGRpc2FibGVkDQo+ID4+DQo+ID4+IHBjaTogcGNp
X3NjYW5fYnVzIGZvciBidXMgMA0KPiA+PiBwY2k6ICBsYXN0X2lvID0gMHgwMDAxMDAwMCwgbGFz
dF9tZW0gPSAweDQwMDAwMDAwLCBsYXN0X21lbV9wcmVmID0NCj4gPj4gMHgwMDAwMDAwMA0KPiA+
PiBwY2k6IGNsYXNzID0gMDAwMDA2MDQsIGhkcl90eXBlID0gMDAwMDAwMDENCj4gPj4gcGNpOiAw
MDowMCBbMTk1NzowZTBhXQ0KPiA+PiBwY2k6IHBjaV9zY2FuX2J1cyBmb3IgYnVzIDENCj4gPj4g
cGNpOiAgbGFzdF9pbyA9IDB4MDAwMTAwMDAsIGxhc3RfbWVtID0gMHg0MDAwMDAwMCwgbGFzdF9t
ZW1fcHJlZiA9DQo+ID4+IDB4MDAwMDAwMDANCj4gPj4NCj4gPj4gcGNpOiBjbGFzcyA9IDAwMDAw
MTA4LCBoZHJfdHlwZSA9IDAwMDAwMDAwDQo+ID4+IHBjaTogMDE6MDAgWzEyNmY6MjI2M10gLT4g
TlZNRSBkZXZpY2UgZm91bmQNCj4gPj4gcGNpOiBwYmFyMDogbWFzaz1mZmZmYzAwNCBOUC1NRU0g
MTYzODQgYnl0ZXMNCj4gPj4gRVJST1I6IHBjaTogJiYmICBzdWIgPSAweDIyNjMsIDB4MTI2ZiBr
aW5kID0gTlAtTUVNJiYmDQo+ID4+IEVSUk9SOiBwY2k6ICYmJiB3cml0ZSBCQVIgMHgxMCA9IDB4
NDAwMDAwMDAgJiYmIC4uLg0KPiA+PiBwY2k6IHBjaV9zY2FuX2J1cyByZXR1cm5pbmcgd2l0aCBt
YXg9MDINCj4gPj4gcGNpOiBicmlkZ2UgTlAgbGltaXQgYXQgMHg0MDEwMDAwMA0KPiA+PiBwY2k6
IGJyaWRnZSBJTyBsaW1pdCBhdCAweDAwMDEwMDAwDQo+ID4+IHBjaTogcGJhcjA6IG1hc2s9ZmYw
MDAwMDAgTlAtTUVNIDE2Nzc3MjE2IGJ5dGVzDQo+ID4+IHBjaTogcGJhcjE6IG1hc2s9ZmMwMDAw
MDAgTlAtTUVNIDY3MTA4ODY0IGJ5dGVzDQo+ID4+IHBjaTogcGNpX3NjYW5fYnVzIHJldHVybmlu
ZyB3aXRoIG1heD0wMg0KPiA+PiBFUlJPUjogbnZtZSBwY2ktMTI2ZjoyMjYzLjA6IGVuYWJsaW5n
IGJ1cyBtYXN0ZXJpbmcNCj4gPj4NCj4gPj4gVGhlbiwgdGhlIHN5c3RlbSBoYW5ncyBvbiB0aGUg
aW5zdHJ1Y3Rpb24gMyBsaW5lcyBiZWxvdzoNCj4gPj4gRVJST1I6IG52bWVfcGNpX2VuYWJsZSA6
IDB4NDAwMDAwMWMgLT4gRmFpbHMgdG8gYWNjZXNzIHRoZSBOVk1FIENTVFMNCj4gPj4gcmVnaXN0
ZXIuIEl0IGRvZXMgbm90IG1hdHRlciBpZiBtZW1fYnVzX2FkZHIgaXMgc2V0IHRvIDB4NDAwMC4w
MDAwIHRvDQo+ID4+IHByb2dyYW0gdGhlIEFUVSB0byB0cmFuc2xhdGUgdGhlIGFkZHJlc3MgMHg0
MC40MDAwLjAwMDAgdG8NCj4gMHg0MDAwLjAwMDAuDQo+ID4+IGlmIChyZWFkbChkZXYtPmJhciAr
IE5WTUVfUkVHX0NTVFMpID09IC0xKQ0KPiA+Pg0KPiA+PiAweDQwMDAuMDAwMCBpcyBhbHNvIHRo
ZSBxdWFkU1BJIG1lbW9yeSBhcmVhLiBTbyBJIGd1ZXNzIEkgc2hvdWxkDQo+ID4+IHJlbWFwIHRo
ZSBhY2Nlc3MgdG9vLg0KPiA+Pg0KPiA+PiBVbmhhcHBpbHksIG15IHdvcmsgaXMgbm93IGF0IGEg
c3RvcCBhcyB0aGVyZSBpcyBhIGhhcmR3YXJlIGZhaWx1cmUgb24NCj4gPj4gbXkgc3lzdGVtLg0K
PiA+Pg0KPiA+PiBOb3RlOiB0aGUgTU1VIG1heSBub3QgYmUgc2V0IHByb3Blcmx5IGFzIHRoZSBv
dXQgb2YtYmFuZCBmYWlscyB0byBvbg0KPiA+PiBUWCB0aW1lb3V0LiBJIGNhbiByZWFjaCB0aGUg
cHJvbXB0IGFmdGVyIHRoZSBOVk1FIHByb2JpbmcgZmFpbGVkLg0KPiA+Pg0KPiA+Pg0KPiA+Pg0K
PiA+DQo+IA0KPiAtLQ0KPiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgfCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfA0KPiBTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAg
ICAgICAgfA0KPiBodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cDovL3d3dy5wZW5ndXRy
b25peC5kZS9fXzshIUhLT1NVMGchRGxaDQo+IGIyb3k2RmR2Z091M0p1dHVCTXIwemY0aWI2eF92
bEZ5ZkJVM0ZnY3BndWQ0aXV6QTdGTGV3dVI2ZEJRVUxZVmUNCj4geGdEdm9RcUFsZ3RneVkxZkFk
czlUb3ZnJCAgIHwNCj4gMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAgIHwgUGhvbmU6
ICs0OS01MTIxLTIwNjkxNy0wICAgIHwNCj4gQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2
ODYgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwNCg0K


