Delivery-date: Mon, 13 Jan 2025 15:04:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXL3C-000ceI-19
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 15:04:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXL3B-0005KU-IF
	for lore@pengutronix.de; Mon, 13 Jan 2025 15:04:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PeeWDRYxdLD1DyzaFH3e83W/vdx7XTVeIAZnkupS4Vg=; b=I+UZMF/Cy1pzXnMwO2YXjoz6uX
	QsDjt6WQVbAnp+qpjOCbrz0krfGe9GgIiuhUoUyHQdGjFBzOuyx4DBo56EdsekQ5jLA4OjjkIjlPB
	Qnl2HDlOpHBfByRSd5g2aXqlW/dOJAN513RseECMC+xo9aWQ0kQi2yz84gHNT073+WJVV6weNonS/
	QzmwFbXDRxQXadZFt3+ZrMM5gdYSo/99RQgcY2/XqEcbtTPQLgJ2sUWvh2Dbn+1OU9nwy3sEczYDv
	1N6OpO0oQ4XDwcB8dW2R/TKqOrpExV/qddaGh5Hj53OvKTpnaA+Z/XUBGmKXGXjSHgCZcMxJtDral
	xlmhg42Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXL2a-00000005Lbn-02Op;
	Mon, 13 Jan 2025 14:03:40 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXL2W-00000005LbK-2pj2
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 14:03:38 +0000
Received: from pps.filterd (m0163891.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50DCadQ1003535;
	Mon, 13 Jan 2025 09:03:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=Pee
	WDRYxdLD1DyzaFH3e83W/vdx7XTVeIAZnkupS4Vg=; b=PoR5HCsru43+uR0pUgI
	Pw7N+39H4d/dCZdNsmKK+Zf4+75AmRk0RIY7qN+VRXDtZnY7AWyELlWeGfrsYd93
	EiuNsr5aQ6yxMS3/z6AWgptnX3hzwfEEaKcQPXdgUhhIV6tDtwk1etc7qsSTylQO
	5lmVFQFbeAThP+3t/YvCbG/6jYWqTTspzs/mHZ8OeOBUIkCfFzhBewhR9JarpwUR
	QLNC7/ZeqrucewP4MkH8od7US2NZTn0XnOSArLmwX72knyRzRDwKV4VzEHW7Myuq
	ZnGssSOcWtFnFsraMMmFhyVbPYnr0FuBxYsw5FoO7MGC+SNUCBZk3IqEunUjKfwV
	6SQ==
Received: from co1pr03cu002.outbound.protection.outlook.com (mail-westus2azlp17010002.outbound.protection.outlook.com [40.93.10.2])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 44530587u7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 09:03:35 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qTtxjQ6Tpl4sfOzrkTjuXVaTOR02ldJ12TdibavubeWfX/2D4AbIYAYNfs63fo1UpN1z54hJBQE9kTfnSFFI9uEoN5nPMuRQktTx85mQ07EAK6tej0BSv2FJTQg0TbdrMK5RIgG3jO3naiAsiF68fjZsjufHqoUdEMzdXCYj87O/n1x0Vq3hVK5Xe2UxBwclNtqrnah8ogH8BiZBc8kry0PEwImesWoojQMYI8dbc9ytfp03OtAluwbL0cnpNDYSnz2Jj5m+CAcekm5lg3te68aZecZE7eJhWL7jfHjxrSvtLUWaZ8IzWXr1rEe0nRpGhQRBAUAy3zVliUhpCYya1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PeeWDRYxdLD1DyzaFH3e83W/vdx7XTVeIAZnkupS4Vg=;
 b=Pz7qAtgGhit+2gYA+bYPquQWei7p3lDEX+YArwHgkq+GnRlIc6bZSqY8RjY7HSvLntc5nFBQ15gwfmOfQufXugYAmDtU4BlLmdnxq4LxqFUB0/Q/UoaMtE8MEJPrd/+rk5OZAZEN83Mu8D5r+YmPSI6SQa2cfxmSZ4aqYeAv6BSxjXVram73BriNaXLikpK+tSD8lYCZlUi880Hhs1Udxcbc9oxaDa9OExdJZ7YU71A5ounfE4fwZCM8tiYWIhbw7C7kiodt3464DueY2pnFfy03G/T7KWlg/Fs8YzyVnc6vHc+5jAGsdkqVey+fCMtGWHrIComc9QpqZ7abNhtdkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PeeWDRYxdLD1DyzaFH3e83W/vdx7XTVeIAZnkupS4Vg=;
 b=jFi8y3cClR1PXpkSeo+i5xSTQQOGZTxNS8eJ4E9DFKbP9gx+CXBFbn15TDnEVzDlssZfx+8wSdlp+beJiwBse6TBtle+qxfW+yO0PyBwUY+4aeL0Dgx6wTOdNCqFUSx2OOcdAgCi+P+FOdAVUwV4YhslYmTc37NSgUdIOqP9+tw=
Received: from DM5PR07MB3532.namprd07.prod.outlook.com (2603:10b6:4:63::35) by
 LV3PR07MB10118.namprd07.prod.outlook.com (2603:10b6:408:23c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 14:03:33 +0000
Received: from DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec]) by DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec%4]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 14:03:32 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
Thread-Topic: nvme sanitize command
Thread-Index: AdtlpzvLFXYcz+CsTuq+OBCnofdr8wABZzIAAAFjUqA=
Date: Mon, 13 Jan 2025 14:03:32 +0000
Message-ID: <DM5PR07MB353218A5AE678C5F358831C5EC1F2@DM5PR07MB3532.namprd07.prod.outlook.com>
References: <DM5PR07MB3532BD01391995069161C80BEC1F2@DM5PR07MB3532.namprd07.prod.outlook.com>
 <28c492e7-028f-4247-be7f-3edf699578fa@pengutronix.de>
In-Reply-To: <28c492e7-028f-4247-be7f-3edf699578fa@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR07MB3532:EE_|LV3PR07MB10118:EE_
x-ms-office365-filtering-correlation-id: a5033475-02de-462f-9da4-08dd33db10a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VTl4SjR2MGVkeHhuUjBUWUlhdUtJRU5McFFvNE5lZ25CRGVMT2xwY0ZLeDg2?=
 =?utf-8?B?Qi93L3F4YzJLbU5nU3hZNE9zNi9KOWs5eWh6K2ZvQml0R2RHMTBucDMrUER6?=
 =?utf-8?B?cTJzb1ppelJuWHpTV2hqaE5QTXVSZkh0SWIwNk00QjRDVFlwdTNLZ1BaMTAr?=
 =?utf-8?B?Z2lZc3RMMHlMa2tMcGJzNlJXekEwTUhhUHZrb2ZueCt2SEhYM0lQanZwemkv?=
 =?utf-8?B?eEN6Ukpkdi93c00zNUVhSVUydlNGYndxSjVENXhYOWorWDlMY01wQmtQemJO?=
 =?utf-8?B?YS8yNnllQkVPUVBYTWU3Q2Jac2xzWFc5QXpvL09RRzVFRlBiejR2SUZwcVVB?=
 =?utf-8?B?bktqOEt5YzFIcm9RMzB5L0RDVkRsYjlaSFFDbkY3SXNNQlVwbFpPOHQzZVpF?=
 =?utf-8?B?b2ZFeElhbXNWaVorWHlZU3pOckp6NXpadnhBZk55NW9BSEFKM1k3ZkZvVC9Q?=
 =?utf-8?B?TWxVK1BOYTI1N0xvZjJ1eTdYUUtjU3NrNDlSYnhjdFBtWGFIRG93WktpRmZL?=
 =?utf-8?B?SHlPRlgwQ0VnTllzRnhQd1pqa2xyTTFpL0JLeTZyZnhKeXVnTEdwS0l3Q3R5?=
 =?utf-8?B?WHlJb0R4WDlmdGNrWWJPeSt5ZG5SZVV3UnQ4RVhYSVVBNjZRbW52OHBNbDlu?=
 =?utf-8?B?ZE4zRW5PWmpZemxwTFhPVTJEa2FyQU5iaHFUbjNXckpoZ0VCVngvc2swM29x?=
 =?utf-8?B?YVRjUmd5amhocXBGb01iaUpQaGwwdUYyVW1odGlZSFkvSURuKzB5WnhEaDdO?=
 =?utf-8?B?MWRkOWxYZXREc2h3aUdxcmNtWkxLd01qakU3QnNrcnkvMUYyWHZjUEw4eFVL?=
 =?utf-8?B?c0IzTW03cFFTdHFtWWIvRTRCTjQvVUFCVllpdHlpbTFHREJYaTF4SWhvdnBa?=
 =?utf-8?B?ZjFHRVptVmJFeGF5R0Zyb2RHV0xYY3J6SEt6ZVhUbnFCM1Y2dEcvRlpWSzJV?=
 =?utf-8?B?c29JUm01Z21VenIxWWkwOGUyYWpic1JWNmVlcW9vc2dEeDZvT1JnTDBrQnF0?=
 =?utf-8?B?Sk5XWWM4bHVlY2pxcWl3RUY4alJEbFhKcjI2bmswZU9ibTBaTGp5YzNpR1VD?=
 =?utf-8?B?VGtPSkt6dDlUS1JLTGhjSmN4aTFPVnhld09qNWQyUXZQNStTRkI4WDBndlJ4?=
 =?utf-8?B?SE5iSTZtd3llUUQ2QmEwNHhBWUp6ZWh0dmNQZjkzeThhUHlsVXNiSEJpaitl?=
 =?utf-8?B?cldOUys3ZFBtNHJoOXZweUtxT3V5Q3oycUZ5NXFYeXdnVi9DMU5USnFVZ3RV?=
 =?utf-8?B?RkRwRytONXpwTVViWGZCOFY4TzhNR0x6RFdsRDJtQ3BJazRCcHdtVXIyd08w?=
 =?utf-8?B?M3pvZWdQMXk5WExuVWdvSGpGTWFTRmJPYzBRZDFUQWFQVlBqNWZFeHF3Vkdl?=
 =?utf-8?B?aldCOGUwc1VjdTNhbkxiS2ZCOTBVUmNvVUw3Vm9HbnUxbWNYaUJ3WW1YQXU0?=
 =?utf-8?B?czRVbXpzYzV5QmRCRHBvZE4wdVFVOUorY2FBa0ZsQXRtbU54dEdkS3hMOHN5?=
 =?utf-8?B?UWlYNEo2Y3d1cEZXSTNWR21ZVENZR2pSYjBvZlVoREE5SE44NG5RNlhUcUFR?=
 =?utf-8?B?WFVvalBUQjJrUEhoVm41VGgxOTJuY2FRQ2RRVFY3QlBES0RTTUhCamI4WEZo?=
 =?utf-8?B?aTBxcFE0WURBb05MNUpsaE5pVVpWYlQ0UGE1bk0zWjhTcC9Hbnk1dGJ0K0Rk?=
 =?utf-8?B?T205a2txenU5U1hvS0l3c3dWNEQ1QUZjSlB6TjJGOEZGeHgvUFU2ZzRicDlp?=
 =?utf-8?B?enJnRFFNaEJudGE0NHVCeDd3RDZOOE1iVjB2NW5Oc1pmL2w3bllSNjNOb0kv?=
 =?utf-8?B?bmppc041WUcwenBNOFloR01maTdGMlVHVlJWayt3ZGJsYnJUOVFLN1lVbWpq?=
 =?utf-8?B?ZkM0ei93M1RoL2R5aFpIbjdIa0RtRUl1ZnRNb3pCWnBNdXhyc052cFRCTmRT?=
 =?utf-8?Q?ROKGpH/CgJSzut3LK1SwGAMEdGIJ91Ng?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR07MB3532.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T0xoUDlZaE9IdEFmTHNQNytrbFFubzh2cFAreWw5OHJaRWl5dzF2eDlPSkor?=
 =?utf-8?B?OUM5UUo3bWlKRHlnNnlGYWVJQitlWGl3cDhkTkRqRVFtU1dsQmFKUG5BUEVB?=
 =?utf-8?B?cEtBbGpVRWxiOTFxYWJxUDM4dzM4WjI1a0d0K2NUWGJtTzJPaTJPQmd4cENp?=
 =?utf-8?B?ekNvcnFpcnEzRzdSMVNTSmcxUTZzUWVHTmRkWWV0WlNLejJ0NklxWnhnaFFI?=
 =?utf-8?B?VzRodG1rVFdWTGR0RENlWGphWEpjTkNBbUxTWWkxdnhqMFV5T1B5ZEtEck0w?=
 =?utf-8?B?SHdLSjNEOVFXbWJYMXVHR2U0QXg1R3pGQ2dQTi92bCtwdkp5MTJuMGRjOEE0?=
 =?utf-8?B?d09ZdENTeFVGU0NiU3h5VTVIT1NxQnVmblcrYmZnRS82RXJRVkFjNC8vKzhD?=
 =?utf-8?B?MlNqcHkrcE5TdU01blpDckZ1dDNtUTZ5ODNpbDd4bU8yOTluQXNvbUtKOXdY?=
 =?utf-8?B?aWIxbGZiai9IZ2xHNHpsemh6aEdrc2g1SjljenJTbGdjZ2dLYlBWb29BekVq?=
 =?utf-8?B?SGRtU2FXL2d5N1pNS1BXRjBLTzR3UGcraThpL1MyVlpSYUw1NFFmNkY5c2o1?=
 =?utf-8?B?bCtzZlRHelRTZjVNazlOcG9qY2JZNmtUWlE5NUNRbkRHalZ3SzA5aUFFbFBR?=
 =?utf-8?B?bmd5WnVLc2JxdHB5dmthVFJHM0VaNWIzNG5XNzBuQmxQTzRHRzNPTkdBZTV3?=
 =?utf-8?B?bHVNYUVZNXhQZklzTDhhaXFURTE2ZXhkRzFQZVU0aTkrZ21yTGJjbllwVnVM?=
 =?utf-8?B?eFpGYWtaVzMwTEZaNEF0SktFRHBUaHhrRmhyYy9QZTNoTmJXWVY5aGJGL3Z2?=
 =?utf-8?B?UFpxS1JQeFlGbUhRUVcvUUVYdjlpNndBeWg1Z0dkZGt6cUJXMTZFZ1MzZWZ6?=
 =?utf-8?B?M3NNNmpPbEgrUFg1ajYwMm1zQXRMbnN0Qm5PNEo0N1Z2cXgyN2w4cGVYd2ky?=
 =?utf-8?B?U0xTd2JNaHBqTFlrM1BKaE5BM3orMnppOFkxdVhHUkV4SUg0eER0ckp6alF3?=
 =?utf-8?B?eTNkaktlZWhzSjdqQzZtTFZGUld1b1BidDVkM3RXZUlZOCt0eGpJQXNnMmsv?=
 =?utf-8?B?bk0zd0xNTDJWZWkrbVZOUHlhZXpFWFpTTzd3NVJ4dzJRbnQwUE1TaENGbGpI?=
 =?utf-8?B?OGpRQUx4cS85SEtoTElORVlvVjZZOGovTWpJMk96b1VHOHRFUHdpaEVBcHZu?=
 =?utf-8?B?aHZNZWpNTzdpdjRrLzNacDh0R0dXb2twbHkxT0xaTStoWk4rRkd3RDJZaG11?=
 =?utf-8?B?R1NTZ2QrU1hGbUNTNEd0MnkxYTQvd1BIdFRzR2YrTG10TkFvUUoxdVBpUE9j?=
 =?utf-8?B?a0tQWkhRRTRlUDhDL2hVUGROaW4vUE5KTXVFbGZ0R2JxNHN2L084QXZJUVBs?=
 =?utf-8?B?d1FZbmZudXNuWkd1Wis1OURYWjhKYlp6VHQycFFDUStyU3pFQ1BiNnV5WmZT?=
 =?utf-8?B?ajk4cmc5SXFwRW4wK0Y3QXZLNlg0TDZZTzlUVzVjeEkreDNrc1BKUTgrb05s?=
 =?utf-8?B?SEUvUmZ0MXZ5NU1NclJaTGhtM3FqcnB2Y3JBY3BsTHY0YlJLYlVtUW9uOG0z?=
 =?utf-8?B?VVA1Z1F4b0FNSnlvQ3F3bmsxOHBSb1FiUFowUmJmUUlMRzA5VGI4cC9ncDVH?=
 =?utf-8?B?d3RueG1lMCtoeGJ5bTVhTnVYQWx4ZmJSRUZzVUhXekFENUZkZTd6WFkwYVZ3?=
 =?utf-8?B?eVVjenJwQkVKRTdjWThqVHRWQm5TellXRGtyWnRJR0phendzaDNyMzFCV0p6?=
 =?utf-8?B?NDYrMG8zMXordTd0QWFKajdmc2RFSXhvQ3R0d09JQjdRWnlBMVZHRGIrOXha?=
 =?utf-8?B?WHBNc2xzWXdBa3VlQWtDWEcxUUJnNElwNkNXMnRUU2tMc3hnZmkvdGppR3VU?=
 =?utf-8?B?bnJIMnJGOE1EK2t4QnRoWUI4dGEvbXdXOEIySTh5YWx5Rkh4aGk5VFNzMW8z?=
 =?utf-8?B?bnhJVEZrZ0RGNERrbk1KS1ZsQ1k3VVdHVnZibEt6Z3VZaG1FeDlGOXJBa0FK?=
 =?utf-8?B?dlZSbDBLZ1RVeW9iM3RGZDJzS2dIbW1zVnRrZ2ZIKzZsVXJCQnF1S3VsWkhw?=
 =?utf-8?B?d2dlZ0xQclkzcENJYkVuQnZvSmRvZ3V4YnZmSUZ5RU8xTHo0RFZXMUd5RXRw?=
 =?utf-8?Q?e1gmaSvm4F+lVVusu2nIX13t9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR07MB3532.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5033475-02de-462f-9da4-08dd33db10a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2025 14:03:32.6450
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H03etaFgtsXadRfCDKUk7ThC1gh6grX/9J1n6JvFyx99rpaX57ag9dDP1SfUNGZdgVgSgwrVxpPqIYRpNeo87G0UMTHNSTZsawKwJlJ5gmA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR07MB10118
X-Proofpoint-GUID: V6hhpQ63XqHLaVt-v3UQ2ZXKYorY1xiK
X-Authority-Analysis: v=2.4 cv=KM2gDEFo c=1 sm=1 tr=0 ts=67851d37 cx=c_pps a=zlUeCHR5D0pndl+SJpnbFA==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=VdSt8ZQiCzkA:10 a=t7O-Hdu1JCwA:10
 a=m3P6IW4lH-wA:10 a=LpXnpPx8AAAA:8 a=JfrnYn6hAAAA:8 a=norEILlR6oo0_fgwt1EA:9 a=QEXdDO2ut3YA:10 a=Ey38a83BNdVfKQu74yMN:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: V6hhpQ63XqHLaVt-v3UQ2ZXKYorY1xiK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 mlxscore=0 mlxlogscore=999 bulkscore=0 adultscore=0 lowpriorityscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 phishscore=0
 impostorscore=0 classifier=spam authscore=0 adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501130118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_060337_116874_7FF612F6 
X-CRM114-Status: GOOD (  23.80  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: nvme sanitize command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQWhtYWQgRmF0b3VtIDxh
LmZhdG91bUBwZW5ndXRyb25peC5kZT4NCj4gU2VudDogMTMgSmFudWFyeSAyMDI1IDExOjE4DQo+
IFRvOiBSZW5hdWQgQmFyYmllciA8UmVuYXVkLkJhcmJpZXJAYW1ldGVrLmNvbT47IEJhcmVib3gg
TGlzdA0KPiA8YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnPg0KPiBTdWJqZWN0OiBSZTogbnZt
ZSBzYW5pdGl6ZSBjb21tYW5kDQo+IA0KPiAqKipOT1RJQ0UqKiogVGhpcyBjYW1lIGZyb20gYW4g
ZXh0ZXJuYWwgc291cmNlLiBVc2UgY2F1dGlvbiB3aGVuIHJlcGx5aW5nLA0KPiBjbGlja2luZyBs
aW5rcywgb3Igb3BlbmluZyBhdHRhY2htZW50cy4NCj4gDQo+IEhlbGxvIFJlbmF1ZCwNCj4gDQo+
IE9uIDEzLjAxLjI1IDExOjU3LCBSZW5hdWQgQmFyYmllciB3cm90ZToNCj4gPiBJIHdvdWxkIGxp
a2UgdG8gYWRkIGEgbnZtZSBzYW5pdGl6ZSBjb21tYW5kIHRvIHRoZSBiYXJlYm94LiBTb21ldGhp
bmcgbGlrZQ0KPiAibnZtZSBzYW5pdGl6ZSIgd2hlcmUgYXQgZmlyc3QgdGhlIG9ubHkgb3B0aW9u
IGlzIGJsb2NrIGVyYXNlLg0KPiANCj4gVGhhdCB3b3VsZCBpbmRlZWQgYmUgdXNlZnVsIHRvIGhh
dmUuDQo+IA0KPiA+IEkgaGF2ZSBhIGxldmVsIG9mIHVuZGVyc3RhbmRpbmcgb24gaG93IGFkbWlu
IGNvbW1hbmRzIGFyZSBwYXNzZWQgdG8NCj4gPiB0aGUgZGV2aWNlIHRocm91Z2ggdGhlIC9kcml2
ZXJzL252bWUvaG9zdC9bY29yZS5jfHBjaS5jLl0NCj4gPiBMb29raW5nIGF0IHRoZSBwYXJ0ZWQg
Y29tbWFuZCwgSSBhbSBub3Qgc3VyZSBob3cgaXQgZ29lcyBmcm9tIHRoZQ0KPiBjb21tYW5kIGNh
bGwgdG8gdGhlIHBhcnRpdGlvbiBsYXllciBzdXBwb3J0IChFRkkgb3IgRE9TKSB0byB0aGUgZHJp
dmVyLg0KPiA+DQo+ID4gSSBzZWUgdGhhdCBMaW51eCBtYWtlIHVzZSBvZiBhbiBpb2N0bCB0byB0
cmlnZ2VyIHRoZSBzYW5pdGl6ZSBjb21tYW5kLg0KPiANCj4gV2UgZG8gaGF2ZSBpb2N0bHMgb24g
Y2RldiBpbiBiYXJlYm94LCBidXQgd2UgYWxzbyBoYXZlIGFuIGFjdHVhbCBlcmFzZQ0KPiBvcGVy
YXRpb24sIHNvIEkgcHJlZmVyIHdlIHVzZSB0aGF0IGluc3RlYWQuDQoNCkJlbG93IHRoZSBvcHRp
b24gZm9yIHNhbml0aXplIGNvbW1hbmQ6DQojIG52bWUgc2FuaXRpemUgLS1oZWxwDQpVc2FnZTog
bnZtZSBzYW5pdGl6ZSA8ZGV2aWNlPiBbT1BUSU9OU10NCg0KU2VuZCBhIHNhbml0aXplIGNvbW1h
bmQuDQoNCk9wdGlvbnM6DQogIFsgIC0tbm8tZGVhbGxvYywgLWQgXSAgICAgICAgICAgICAgICAg
LS0tIE5vIGRlYWxsb2NhdGUgYWZ0ZXIgc2FuaXRpemUuDQogIFsgIC0tb2lwYnAsIC1pIF0gICAg
ICAgICAgICAgICAgICAgICAgLS0tIE92ZXJ3cml0ZSBpbnZlcnQgcGF0dGVybiBiZXR3ZWVuDQog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBhc3Nlcy4NCiAgWyAg
LS1vd3Bhc3M9PE5VTT4sIC1uIDxOVU0+IF0gICAgICAgICAtLS0gT3ZlcndyaXRlIHBhc3MgY291
bnQuDQogIFsgIC0tYXVzZSwgLXUgXSAgICAgICAgICAgICAgICAgICAgICAgLS0tIEFsbG93IHVu
cmVzdHJpY3RlZCBzYW5pdGl6ZSBleGl0Lg0KICBbICAtLXNhbmFjdD08TlVNPiwgLWEgPE5VTT4g
XSAgICAgICAgIC0tLSBTYW5pdGl6ZSBhY3Rpb24uDQogIFsgIC0tb3ZycGF0PTxOVU0+LCAtcCA8
TlVNPiBdICAgICAgICAgLS0tIE92ZXJ3cml0ZSBwYXR0ZXJuLg0KDQpOb3RlIEkgYW0gdGFsa2lu
ZyBhYm91dCBzYW5pdGl6ZSBvcGVyYXRpb24gdGhhdCBpcyAgdGhlIHdob2xlIGRldmljZSBiZWlu
ZyBlcmFzZWQgaS5lIHRoZXJlIGlzIG5vIHN0YXJ0IGFuZCBlbmQgYmxvY2sgdG8gYmUgc3BlY2lm
aWVkLg0KDQpVc2luZyBlcmFzZSB3b3VsZCBsaW1pdCBzYW5pdGlzYXRpb24gdG8gZXJhc2luZyB0
aGUgd2hvbGUgbWVkaWEgYW5kIG5vIHBvc3NpYmlsaXR5IHRvIHVzZSB0aGUgb3RoZXIgb3B0aW9u
cyBzdWNoIGFzIG92ZXJ3cml0ZSB3aGVyZSBhIHBhdHRlcm4gYW5kIGEgbnVtYmVyIG9mIHBhc3Mg
aXMgc3BlY2lmaWVkLiANClVubGVzcyBhIHdheSBjYW4gYmUgYWRkZWQgdG8gc2V0IGZlYXR1cmVz
IGZvciBzYW5pdGl6ZS4NCkF0IHByZXNlbnQsIGVyYXNlIGlzIGFsbCBJIG5lZWQgc28gSSB3aWxs
IGFkZCB0aGUgZXJhc2UgZW50cnkgcG9pbnQgd2l0aCB0aGUgc2FuaXRpc2F0aW9uIGFjdGlvbiBi
ZWluZyBOVk1FX1NBTklUSVpFX1NBTkFDVF9TVEFSVF9CTE9DS19FUkFTRSBhcyBkZWZhdWx0Lg0K
DQoNCg==


