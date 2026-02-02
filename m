Delivery-date: Mon, 02 Feb 2026 10:58:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vmqhX-0080Vp-1X
	for lore@lore.pengutronix.de;
	Mon, 02 Feb 2026 10:58:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vmqhV-0000UB-Vp
	for lore@pengutronix.de; Mon, 02 Feb 2026 10:58:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hEv0hKFIEwMmS6+orT6UUzIGIgRYshZ+3ghRvwND7aA=; b=ND+pbn/bE9ahRfHHHteKZ/jG9F
	sV+wvh7dxgYveGLUw7MFQbZsJTQeyiX/vnScI5Rl23zsnayjwhs+MGstNmJt2ErHxXPjd54cOMu7v
	0UMKFoS/+sIJSTB1DurKp+T3uJdlwPb/2X4gR/osqwW7noexaqfZYv5YXaOWOaFqnaKlSTb8Yi1qv
	Fy5hfzdcGpPjokOgfuSG8J3X6EizP6uqWmHxkZneLMXaeU5gPtO6M42RIkIeLpo9dBkP/VXHZm1sL
	1DC11j/NxAgH+PY37KXqA+MlTsQhRkctr+6Z1Ulhy5qsHZAfbVRa1uCtKNX4jX6IsJTcjIGtCB+Ya
	AFeWuHEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmqgn-00000004kkT-26KD;
	Mon, 02 Feb 2026 09:57:49 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmqgk-00000004kjU-0f0a
	for barebox@lists.infradead.org;
	Mon, 02 Feb 2026 09:57:48 +0000
Received: from pps.filterd (m0163887.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6129erSs054892;
	Mon, 2 Feb 2026 04:57:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=hEv
	0hKFIEwMmS6+orT6UUzIGIgRYshZ+3ghRvwND7aA=; b=ybvoe0hEfpuK1V+UcYt
	F2q4CX7BDwSUudOatUpcYttZzglVcm9l7lk3QyAYMhJkwTnm2LHp2TH101ZF+1jg
	aQ3oUN4X7ws+nKoPXgvsKav2zKEJ84d8gpVZvCsu9GCfsaPs+d9tTUqGD/uNCQmz
	zKx2XMZgzx/JaGmCogrIQbuUs52DP8mVGcCyob4H28ZytjaePyXlr4VuL+KaZyDt
	nDA/LHiv8fB111p5iql8MPQYDPFjiKWeOkgckZh1EM9NNwWnQuvpvHaSbFeWAYl1
	f83V0adJPjUq3YVxD2OvQJDLo24QEIlgEX2NPD37B7OiWe1IasVjjZBnwpujAanl
	z7Q==
Received: from ch4pr04cu002.outbound.protection.outlook.com (mail-northcentralusazon11013040.outbound.protection.outlook.com [40.107.201.40])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 4c1ce7dmtp-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 02 Feb 2026 04:57:44 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EPZLlIaQ2xsBHrQsZ0W4NcJaHmJyN88YKPzHe1jyB1+ZGIOVBYhViIn0ih4MSuW2IF/LyfAYIFfb4y0/AYMu3kosBNIfh1TItz53in9pGbckPeRnXKX8Kph0s/OxdimFsAnV7GM1wEOKOKXdqn1fGfwc+CXkyKBQTSDCtkxBMMahoRDcHzvMxStxB9H52kX7LfEVlYbUQQ5ousjYQvM7Zvc6j32y4ABSg4UlaUwtpd0iquJbuDEMrsfHnEALwHspxlWOS8uLNPhquILRg6qk3gb+SJnPPlFe4plmpy54lo09loJyPsXszqH5JF0BNGZsrlYYLe21Kl0++pfxEPcU3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hEv0hKFIEwMmS6+orT6UUzIGIgRYshZ+3ghRvwND7aA=;
 b=jyT4YfjYtxkxtP4AOVqkYZmAA8nRygmG8M0VPnKHrkSuY+4/V5hm89/FYJU68ivRlWyHLutx9wdjx0f8RhaznAg5B0m0ZFQMVzP7v/PhlXPoCOCO0Qh0DhWw1JMfMkXO8knuzsS3TC1WDON+g/4FXLI3Kql77WanzHoNun+0Lg9oTXuI0kfpvbGnnqPt4XSo+dT4WT2JMT8U+61l438Ev28TfKCUZSvHaCjpAJ8Ji7A8v7vyLipCwOKWJ4VbX7ovNTUVZ2N2aCHQ3V8jofbiyPcpFMQDSHJRVfNmh6wHc3Gr7EMMajYnVWdg9ouhYLEASTL/OLy/RZw6lTWc6hotMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hEv0hKFIEwMmS6+orT6UUzIGIgRYshZ+3ghRvwND7aA=;
 b=TPpGZ5AfoYZbTYu41n69o8JjqOvxtGvfv1unKQLbCZPV9v7TiWHmlBpZ80LjRG9TO9oomi1zDH/QqTgc2G/KuBS/QxIrqtDJBR3xUtGmRdEmLhn7yXSinGS63FHlgD/r+kGj3daIwya/stjnFA6TykXsMGkMbMnNhl4lydtjISQ=
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com (2603:10b6:a03:4e0::13)
 by CH7PR07MB11156.namprd07.prod.outlook.com (2603:10b6:610:24b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.15; Mon, 2 Feb
 2026 09:57:40 +0000
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2]) by SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2%2]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 09:57:39 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
CC: Lucas Stach <lst@pengutronix.de>
Thread-Topic: PCIE on LS1021A
Thread-Index: AdkL8DOb81y0+p2vQua38NWFw8d4qwADQ1uAAAFsyICGmUs+AAHp0PYAB7P/fqABZf9OwAFWpr8AAZh9tNAA7V2mgA==
Date: Mon, 2 Feb 2026 09:57:39 +0000
Message-ID: <SJ0PR07MB976654EF8CBBB111A2F4D393EC9AA@SJ0PR07MB9766.namprd07.prod.outlook.com>
References: <BL0PR07MB5665EA1D980C39F834845849EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <9bb964dc-3c24-7c70-b007-759c3aa85511@pengutronix.de>
 <874d52d0-f476-53cf-1331-72f80bffacbd@pengutronix.de>
 <BN8PR07MB69932217E808C9DB9435411FECD6A@BN8PR07MB6993.namprd07.prod.outlook.com>
 <9923f2ef-cbce-44a1-86bf-6aaf829d3008@pengutronix.de>
 <SJ0PR07MB9766972613A435D5377F3EBDEC84A@SJ0PR07MB9766.namprd07.prod.outlook.com>
 <SJ0PR07MB9766897F421E8809B42266ABEC8EA@SJ0PR07MB9766.namprd07.prod.outlook.com>
 <b4339f2e-e306-4f84-a43b-751ef7b4ed55@pengutronix.de>
 <SJ0PR07MB97664BF8CA2EBFAEC8C81C63EC91A@SJ0PR07MB9766.namprd07.prod.outlook.com>
In-Reply-To: <SJ0PR07MB97664BF8CA2EBFAEC8C81C63EC91A@SJ0PR07MB9766.namprd07.prod.outlook.com>
Accept-Language: en-US, en-GB
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR07MB9766:EE_|CH7PR07MB11156:EE_
x-ms-office365-filtering-correlation-id: b3f21a11-d8cd-46fb-eaee-08de62418061
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?NXhzSUh5TEN3cjM0NE9qYkEzQXlBeDNyMzlVNXhmTWFyME13djQ0dWRtN2N6?=
 =?utf-8?B?Y0FPeEtZeUc3ZVQwRDkrYm9JbWIxZ0NGUWtPcEZZRG96ZUhzMVFZVE1FM2Vy?=
 =?utf-8?B?VExlbldXdzBtWWU2R1lDQW1KY20wWEtXd091UGkxdFUrSHBDTytEdkE0UGNx?=
 =?utf-8?B?cnU0V1BLTEVOSDMvRU8wOWJJVG5SMnkyKzB3d093ZUZSanE2Y3Ava2Y0eEc3?=
 =?utf-8?B?cExYcllvYnpHdERsN1RPWjdYY3FHaHhwMXQyeGZlUFFvcTlmR1hPZnEwMith?=
 =?utf-8?B?ZllWVVdiUmsyK0NhSmE0a0d6b0pWQlJubFd2UzdIZVZ1a1lvVHpzem56aUR6?=
 =?utf-8?B?NFFFMHQ4QVJwL29rbEt3TXd0Yy9vQXFWeEozRGRhNVJaTzdVN29wQ3pFc2x5?=
 =?utf-8?B?YXFYZVU1SGx1RmxVTmd2MHA0Uk5SL3pOSENJcmZPa3J2UmVPdWt5UWczOUtY?=
 =?utf-8?B?c3pzT2Zkc2RyKzBpT2IyRkViTms4UUU0SlpKYnp3L2Y0WVdIQWdoYitKWGs1?=
 =?utf-8?B?eVFJU0FzOVREQlhzUzNHZVRvMGR6T3hkZC9pOEp6RmZzbnlkcGd4OWxzb0ov?=
 =?utf-8?B?bUdwZUUwU29WWm9RNW11dmovaWE1bXprWjEzOVZmTVpGc1grWUxXRFU5cWZT?=
 =?utf-8?B?QzhYWlhMQnBQZ3I5QmdIOER4UnVSYkc3YjBNTCtkc2pRNGdiQ2IxWDBjK2kz?=
 =?utf-8?B?L3BUd2EreTBHWGRHaFRnVzJoL0Rlay9BM2pncVVGOFM4ZW80di9kZ2wyaDl1?=
 =?utf-8?B?Yk9GN1Z5Vi9qbERUbjNRYXpYSU5EMVlxSnA3TnY2aWY3eHNtR1F6UTl1SEVV?=
 =?utf-8?B?aGtmR3BvbDI5RDN4UVBvZ3MycWRYTklwck5Ud21DWVFXaTdaaldzOVVuQUJM?=
 =?utf-8?B?TFdLZ05QalpjQTVlZWVra01WWVJZRi9BekVJMFJwczgxVnQwdytNV0ZSRTl6?=
 =?utf-8?B?ajNTSkQxVkQ0bENYeE43MjYrTUx1N28vZVB5ZHkvTks3bWIvS3lyTmtlVjRk?=
 =?utf-8?B?MXY3aGswOEQreUtxUklibUk2TW9UZTloNVR3RlpxbWhnTnd1UHRRT3VHMmI3?=
 =?utf-8?B?bW9YTWZvS1lQR0dGOGEwMTRBV2ltUzZBOGl6RDRkcHpyS09xTWhtZFRrUHFr?=
 =?utf-8?B?ZDlNVEc3azNTWTFGZTkvSjRWb2J4U1UxdlprZld1bXhNVHFudzFmbkhDQjBq?=
 =?utf-8?B?N2VLRzV1QThEVHMwZXYyK2xMb1I0dUllYWE4VHA1Q25NWjV0K0xMc2d4Qjla?=
 =?utf-8?B?d3pLNHBNNXNjRy9ZNVNTWUNKQXFvRnlPV1hJb2pXQkV4QlRKK1BVc3VnZG9E?=
 =?utf-8?B?dUVudldtQmNZZjU1RTJYU1dJMHYwQWh2SGVwbGpjS1oySXFLYzRyaE5pdWdj?=
 =?utf-8?B?WmhsQnZ0OHRORk5GZ2VQYzY2U0dqcXRFS2lhS0g3c3RweEJQcCsxb0x1NGNw?=
 =?utf-8?B?VTFHWk1kYkhCUkNzNXo1TlMxZndHdUFXS2txbWg4ZzlTL3hDMWFDcFhtOHBW?=
 =?utf-8?B?bEwxaXRHYk42WEgvVWcvZDBKeTNzUS9WQjZnWHcvT1pPQ1dobDFyMjlxODhy?=
 =?utf-8?B?Syt3S0VsTVREVHhpRFZSL0RlWlJSa2o4REQrQXcweTRxNjFSUUFEKzIzeEhl?=
 =?utf-8?B?ZUN4RkRPeGNtbkpYVGwxK3lKZUV6ZlNvdDFFNWVQUjUrYVdpd2dUK2N3NEpY?=
 =?utf-8?B?cmNtTG9SOHpnai9HMFpSZWRHc1RTcG1FNk5YNjhCMTJwYkplUUVYRk5wLzJa?=
 =?utf-8?B?RDdZdk5RTUo1RjJBNUU5eklHeU9Cd2ZFUmx0dks4MzFkVTZ6MWFzbDFwZUh4?=
 =?utf-8?B?bE9oeW1LUmV5SFdRSHBJSEgzT3pOWXQ4RXdRYVpFejRwaHVGajZxODgwUVZu?=
 =?utf-8?B?VGhhN3h2Y1k4aGo0NENFekpocHNlVUJjZUZqa0ZpY05xb3owNjMzOWdCcm4y?=
 =?utf-8?B?MFFnZEhQZFV1bDJxU3BpZ2wwVThsVEJzMDdoWEZSdXIzVE5VUUJoM2cybE5n?=
 =?utf-8?B?ZHp3VDNSN3d3NlNETHM1Smw4akZvUW4zcVlhVUdGRFRadW5lRGZYUkVhSi91?=
 =?utf-8?B?bEJwbVhPTzQrekhtRnVpU1ZmVjRwalRCQmVOTkdJcU11bUcvQ3RaNEM1SFJv?=
 =?utf-8?Q?VTZs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR07MB9766.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MzR6UHVMNEJOMTFUSzE1MlNVclgvVWEwbVEraHZ0eTBKZkQwNVBOeWxtU1k4?=
 =?utf-8?B?b1NpYnFxc2dHQzJQWnByS2JaYVhic285S2NUU2tQWWtaM2tTNFozK2pQUmh2?=
 =?utf-8?B?Rm9uZDl3S2YxNUhzcWdScFhCZ2dKTEIxV0ppWlM0aFRzeXRJelIwYm1RNVR0?=
 =?utf-8?B?MFV1UjAxSU1BNGhhUWwwMEFsb0w2Q0RlNktwNzRvaGNVYzcweGxuR2xiZ2pD?=
 =?utf-8?B?V3FrNGZiUVB2ZnAwdVFtdUIwRS9RYkFFU3VWT09wVWxrSmd0a1lEQ0V2SFZt?=
 =?utf-8?B?enNVTW9DVDArSjkrYWx1TVB6VGpVdkcza1NudDFBcXhTdWM2WUR1VGlVYXZ5?=
 =?utf-8?B?blpNLzEvVzRrQ2lGNFFRaUsydjc5bGNGem8rbDFWeXJFSjNjRUZwR1Z1QnAw?=
 =?utf-8?B?TGNNT2JIYVh0NTN1bURuMDJyVjE4WS96TlNGVFMwUTJOYkt3aXF6MWIxVDV6?=
 =?utf-8?B?aFVlYlF5YjZHOGVhUlVScyt4dENna3IyZHFLUjcxNmNPOWk4YUVoRnVkOG5n?=
 =?utf-8?B?a3pLVm5HbTF6bWx4WHpuM1FkaGFXNkljcWlwMUswalVGL01nOGRNcXZPMDJ3?=
 =?utf-8?B?TnZCdHdJOUFVSDM1VTkzdm5SajE3UDJBZDdnYUExTkxVWUpTWjc5bzAwa3lR?=
 =?utf-8?B?SzB2N0NQbmpvMWJJckhua2VDS2t1b2JKa09VREZ5Z0RZTHRwbm9ySExMSk5m?=
 =?utf-8?B?RXJCVkpoNTFGeGkrQjlKTWwvKzhLTWQ0N2x0V0U1SXhDQ2tPNDNBQjZGMnZw?=
 =?utf-8?B?OUFhcFV1UUdqandUUkZDdFNQOHVjWEZYNEpzdXFFYVdtWHlCT1JCaTJUb3BL?=
 =?utf-8?B?ZjQ0OXo4ekI3UTUxL0FTcTBjanhCdlJvbDROUlgvV2N1SFdDVEZlTTU1QUhE?=
 =?utf-8?B?cXd3a2cvcGJNNStXWDlyUjlmTno5NHY0TFZPTCthd1JxdkovUGRjSjlnQW5L?=
 =?utf-8?B?cHhZb0RXYXZ4aTF0eDF0Z0RZeGRyVlgrckxnZnI0MVhLb01wdVRMVE1PeUYv?=
 =?utf-8?B?aUNjZ05TR0VRbjBCaGMxalRrbGxLcHU5VnVReDFwVEtkVTNnbE5NemxzVEJU?=
 =?utf-8?B?alA3ZXpySlBUcW5LQXE0L2ZyY0hUZmQ1YU1hTGtFVzRlaHZ0bitzTHgvaXM3?=
 =?utf-8?B?UEhqMStqcENGbkVxREZVU09ReFkrUWloYkppK0FXcE1BTTFucXY1TGozeUVQ?=
 =?utf-8?B?Q3NXNjMvcmZhSEhlempuTXZmcHZaTEZXQXVrcW8vMmZzc1p2S2s0S01QbXI0?=
 =?utf-8?B?aVBHdjZyejExTjVVQVFKRWo2bEp2bEpPVnpITjIxQTBnUlVMb0ZDVEpzV3hi?=
 =?utf-8?B?cTlka293WHlBeEhGbVdEckViR0xKUUY2N3EvdkwwQU1YZmowcHVWN2ZUS3A5?=
 =?utf-8?B?VDgwT0NHdUR2ZU53Skk5aWgvc1pCWDZDNlg5U0dtM01HUkxiRjlQcnB4akFJ?=
 =?utf-8?B?cFVBaWRpb2xUWG1sUXJWbzNHYXAwUXVmazl2ZWIzRUszSmJORDJJam5hSndD?=
 =?utf-8?B?dVMyUzhpRGNZWFZzb05kQlpJR2FqZVB1a3BTZjRGZlFSOTBzR1c2aVA3NHFt?=
 =?utf-8?B?anZKT1RXRW1Fa0xvUG9oRDhJNFFGUm1wZUNtUWwvaUdhVStIL2thUzdQRkRV?=
 =?utf-8?B?UWI0SUYyZzVISEk0Z0ZUV1lTVWNHYUhnMnVXczZMSlE0RGhiNkprcXYvOFRn?=
 =?utf-8?B?OVJtR1BGM3RZZkNlVCtOYS9nN3YvWnZjQjFLS2xsRVNUNjJzQTljcldrTUcw?=
 =?utf-8?B?N2hXdnVIWWJXQTVLSjQxV2ZndE5RN3BuYzJQUGpQQmZtR3EvQWRqc0RIbEFM?=
 =?utf-8?B?cGpkZUI5Q00xZWw0V1R5SDlMMGNDa0FwVnI4VDdaeTNqS2EzL1JxckpmYnVo?=
 =?utf-8?B?cHpqci94ckdrS2lwSUVvb1ZKakJQa3kzOFNCUlZPN090cUdQUU9GUWRhZTE2?=
 =?utf-8?B?eUUxYkViZ2dQenJpb1p4U05DUTFzc0FHTk1udWNaTzRtRmZodUFnTjgvU2sr?=
 =?utf-8?B?bWhXM1V5MG1zalZEQWZsRjZzMXUzOVQ0ZWE1clNzNnZZek5NQkNPczgzY0hO?=
 =?utf-8?B?NUdKLytNNjJrd1pVSVc4dDFyeUQzbGdOZTBBSEI2cURSaGI3ZTdsSDc0RnNU?=
 =?utf-8?B?L2l5OU1ET0ZKUDhrV2pYRmFkSHZOdHc0VVl3eGQ4OU5SVGVCWHZqSDJvSUVw?=
 =?utf-8?B?bG0xeGdaRTkxWjliQkRBa0c0V1I2SytlZDdrSmdYdHlWekdZMHpRMHFzK3JZ?=
 =?utf-8?B?UmxSTk94cDUzSHFHV0ZIdHZyc25TaVBwOXRwd2M0WjlMVnErRStmVjczUktv?=
 =?utf-8?B?UHVIYkdLYXRaYXRSVklnK3hGMHBOMnp1Z1B2U0JZWElySklBY1RDQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR07MB9766.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3f21a11-d8cd-46fb-eaee-08de62418061
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 09:57:39.9406
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vkGK+J/iubZSuk+mSnm5RGOq24N0I+Lf1kINyGwaOnmSX3GJaWJBjyeczgQXmzJ+5KlDaQL5KkKevlKuwYek3Iu1lhWjUH6mBuZU/m+PI/c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH7PR07MB11156
X-Proofpoint-GUID: kpoWvamIgoe-VE7LzckUCaqn6xC55HAx
X-Authority-Analysis: v=2.4 cv=FNYWBuos c=1 sm=1 tr=0 ts=69807518 cx=c_pps
 a=dJs83p8YoJtII+u9Eez95A==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=m3P6IW4lH-wA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=uherdBYGAAAA:8 a=bGNZPXyTAAAA:8 a=JfrnYn6hAAAA:8 a=LpXnpPx8AAAA:8
 a=fb3g7az42sUKW8v_z40A:9 a=QEXdDO2ut3YA:10 a=yL4RfsBhuEsimFDS2qtJ:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: kpoWvamIgoe-VE7LzckUCaqn6xC55HAx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4NCBTYWx0ZWRfX18EczDgZZB7T
 tCDI95sL3q7Hr4bc9vDDjZwjVuPgOaBhVkIHP2b65pdccXRNxr9q1kzfd9U2yeXXwdR404Jzm/W
 6Ycp2LIJWoQyyzBArP78u8M03KHLJh5RpZeB/N3M59xtZK3k7apQZPvAGxaLFBnB5M6G+put4KQ
 JBl1jMi2yIzg+QkThukz6ptwpmwE03JbVgMYZUYdqVi3kuhA8bxhsWlrZzHpqiKEDvCQjUTbIG0
 Uc0LPkpu17Zqw1M2LoatxlG+EDPh+yCMp+/ntDmvpkVwWeW75/QUDRsFokpwX1TKK6HNboSiS1i
 FY45lEKn+ld9O5WXYfgMZ6A6SbpObQMcvqs7uuRsC4IUDoXnMP6SW5FlDIcytGw5SniGIYYvWaB
 9vfzW9EHEAd3LmJruo0sGeMlJUFydBaZ/a8gIdHErxX84JU3vIkzqnS31vZC5+WAR1fAHywJzEd
 +pie1lHOJU2mHv4O/kw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0 phishscore=0
 clxscore=1015 bulkscore=0 suspectscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_015746_564465_F4E3CB1A 
X-CRM114-Status: GOOD (  19.41  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: RE: PCIE on LS1021A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

RnJvbSB0aGUgaGVhZCBvZiBuZXh0LCBJIGdvdCB0aGUgTU1VIHdpdGggTFBBRSBzdXBwb3J0IHRv
IHdvcmsuDQpJIGNhbiBwcmVwYXJlIGEgcGF0Y2ggZm9yIHRoZSBNTVUgTFBBRSBzdXBwb3J0IGFu
ZCBsYXRlciBhIHBhdGNoIGZvciB0aGUgTFMxMDIxQSBQQ0lFIHN1cHBvcnQuDQpJIGhhdmUgbm90
IHRlc3RlZCB0aGUgY29kZSBvbiBRRU1VIHlldC4gDQoNCkRvIHlvdSByZXF1aXJlIHRoZSBjb2Rl
IHRvIGJlIHRlc3RlZCBpbiBRRU1VIGJlZm9yZSBJIHNlbmQgaXQ/DQoNCj4gLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogYmFyZWJveCA8YmFyZWJveC1ib3VuY2VzQGxpc3RzLmlu
ZnJhZGVhZC5vcmc+IE9uIEJlaGFsZiBPZiBSZW5hdWQNCj4gQmFyYmllcg0KPiBTZW50OiAyOCBK
YW51YXJ5IDIwMjYgMTY6NDANCj4gVG86IEFobWFkIEZhdG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9u
aXguZGU+OyBCYXJlYm94IExpc3QNCj4gPGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZz4NCj4g
Q2M6IEx1Y2FzIFN0YWNoIDxsc3RAcGVuZ3V0cm9uaXguZGU+DQo+IFN1YmplY3Q6IFJFOiBQQ0lF
IG9uIExTMTAyMUENCj4gDQo+ICoqKk5PVElDRSoqKiBUaGlzIGNhbWUgZnJvbSBhbiBleHRlcm5h
bCBzb3VyY2UuIFVzZSBjYXV0aW9uIHdoZW4NCj4gcmVwbHlpbmcsIGNsaWNraW5nIGxpbmtzLCBv
ciBvcGVuaW5nIGF0dGFjaG1lbnRzLg0KPiANCj4gSnVzdCB0byBsZXQgeW91IGtub3cgSSB3YXMg
ZGV2ZWxvcGluZyBmcm9tIGJhcmVib3ggMjAyNC4wOSBhcyB0aGlzIHdhcyBhDQo+IHJlcXVpcmVt
ZW50IGZvciBvdXIgcHJvZHVjdC4NCj4gSSBzdGFydGVkIHRvIG1vdmUgdGhlIExQQUUgc3VwcG9y
dCBhbmQgZm9sbG93IHRoZSBuZXh0IGJyYW5jaC4NCj4gQmFyZWJveCBpcyBib290aW5nIGJ1dCBj
dXJyZW50bHkgZmFpbGluZyB0byBwcm9iZSB0aGUgUENJZSBOVk1FIGRldmljZS4NCj4gDQo+IEEg
Yml0IG1vcmUgZGVidWdnaW5nIGFuZCBob3BlZnVsbHksIEkgY2FuIGdldCBzb21ldGhpbmcgc29v
bi4NCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBBaG1hZCBG
YXRvdW0gPGEuZmF0b3VtQHBlbmd1dHJvbml4LmRlPg0KPiA+IFNlbnQ6IDIwIEphbnVhcnkgMjAy
NiAxMzo0MQ0KPiA+IFRvOiBSZW5hdWQgQmFyYmllciA8UmVuYXVkLkJhcmJpZXJAYW1ldGVrLmNv
bT47IEJhcmVib3ggTGlzdA0KPiA+IDxiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmc+DQo+ID4g
Q2M6IEx1Y2FzIFN0YWNoIDxsc3RAcGVuZ3V0cm9uaXguZGU+DQo+ID4gU3ViamVjdDogUmU6IFBD
SUUgb24gTFMxMDIxQQ0KPiA+DQo+ID4gKioqTk9USUNFKioqIFRoaXMgY2FtZSBmcm9tIGFuIGV4
dGVybmFsIHNvdXJjZS4gVXNlIGNhdXRpb24gd2hlbg0KPiA+IHJlcGx5aW5nLCBjbGlja2luZyBs
aW5rcywgb3Igb3BlbmluZyBhdHRhY2htZW50cy4NCj4gPg0KPiA+IEhlbGxvIFJlbmF1ZCwNCj4g
Pg0KPiA+IE9uIDEvMTMvMjYgNzoyNiBQTSwgUmVuYXVkIEJhcmJpZXIgd3JvdGU6DQo+ID4gPiBD
aGFuZ2luZyB0aGUgTlZNRSB0byB0aGUgIFBDSWUyIGJ1cyBhbmQgZml4aW5nIGEgZmV3IHRoaW5n
cyBpbiB0aGUNCj4gPiA+IE1NVQ0KPiA+IHN1cHBvcnQsIEkgYW0gbm93IGFibGUgdG8gZGV0ZWN0
IHRoZSBOVk1FOg0KPiA+ID4NCj4gPiA+IG52bWUgcGNpLTEyNmY6MjI2My4wOiBzZXJpYWw6IEEw
MTI0MTAxODA2MjkwMDAwMDAgbnZtZQ0KPiA+ID4gcGNpLTEyNmY6MjI2My4wOiBtb2RlbDogU002
ODFHRUYgQUdTIG52bWUgcGNpLTEyNmY6MjI2My4wOiBmaXJtd2FyZToNCj4gPiA+IFRGWDdHQg0K
PiA+ID4NCj4gPiA+IGJhcmVib3g6LyBscyAvZGV2L252bWUwbjENCj4gPiA+IGJhcmVib3g6LyBs
cyAvZGV2L252bWUwbjEqDQo+ID4gPiAvZGV2L252bWUwbjEgICAgICAgICAgICAgICAgICAgICAg
ICAvZGV2L252bWUwbjEuMA0KPiA+ID4gL2Rldi9udm1lMG4xLjEgICAgICAgICAgICAgICAgICAg
ICAgL2Rldi9udm1lMG4xLjINCj4gPiA+IC9kZXYvbnZtZTBuMS4zICAgICAgICAgICAgICAgICAg
ICAgIC9kZXYvbnZtZTBuMS40DQo+ID4gPiAuLi4NCj4gPiA+DQo+ID4gPiBUaGFua3MgdG8gdGhl
IGZvbGxvd2luZyByZW1hcHBpbmc6DQo+ID4gPiAvKiBQQ0llMSBDb25maWcgYW5kIG1lbW9yeSBh
cmVhIHJlbWFwcGluZyAqLw0KPiA+ID4gbWFwX2lvX3NlY3Rpb25zKDB4NDAwMDAwMDAwMFVMTCwg
SU9NRU0oMHgyNDAwMDAwMCksIDE5MiA8PCAyMCk7DQo+IC8qDQo+ID4gPiBQQ0lFMSBjb25mIHNw
YWNlICovIC8vbWFwX2lvX3NlY3Rpb25zKDB4NDA0MDAwMDAwMFVMTCwNCj4gPiA+IElPTUVNKDB4
NDAwMDAwMDApLCAxMjggPDwgMjApOyAvKiBQQ0lFMSBtZW0gc3BhY2UgKi8NCj4gPiA+DQo+ID4g
PiAgLyogUENJZTIgQ29uZmlnIGFuZCBtZW1vcnkgYXJlYSByZW1hcHBpbmcgKi8NCj4gPiA+IG1h
cF9pb19zZWN0aW9ucygweDQ4MDAwMDAwMDBVTEwsIElPTUVNKDB4MzQwMDAwMDApLCAxOTIgPDwg
MjApOw0KPiAvKg0KPiA+ID4gUENJZTIgY29uZmlnIHNwYWNlICovIG1hcF9pb19zZWN0aW9ucygw
eDQ4NDAwMDAwMDBVTEwsDQo+ID4gPiBJT01FTSgweDUwMDAwMDAwKSwgMTI4IDw8IDIwKTsgLyog
UENJRTIgbWVtIHNwYWNlICovDQo+ID4gPg0KPiA+ID4gRm9yIHNvbWUgcmVhc29uLCBJIGhhZCB0
byBjb21tZW50IG91dCB0aGUgcmVtYXBwaW5nIG9mIHRoZSBQQ0llMSBNRU0NCj4gPiBzcGFjZSBh
cyB0aGUgc3lzdGVtIGhhbmdzIGp1c3QgYWZ0ZXIgZGV0ZWN0aW5nIHRoZSBOVk1FIGRldmljZS4N
Cj4gPiA+IFRoZSBQQ0llMSBkZXZpY2Ugbm9kZSBpcyBub3QgZXZlbiBlbmFibGVkLg0KPiA+ID4g
SWYgeW91IGhhdmUgYSBjbHVlLCBsZXQgbWUga25vdy4NCj4gPg0KPiA+IEkgZG9uJ3QgaGF2ZSBh
biBpZGVhIG9mZiB0aGUgdG9wIG9mIG15IGhlYWQgc29ycnkuDQo+ID4gSWYgeW91IGhhdmUgc29t
ZXRoaW5nIHJvdWdobHkgd29ya2luZywgaXQgd291bGQgYmUgZ29vZCBpZiB5b3UgY291bGQNCj4g
PiBjaGVjayBpdCB3b3JrcyB3aXRoIHFlbXUtc3lzdGVtLWFybSAtTSB2aXJ0LGhpZ2htZW09b24g
YW5kIHNlbmQgYW4NCj4gPiBpbml0aWFsIHBhdGNoIHNlcmllcz8NCj4gPg0KPiA+IENoZWVycywN
Cj4gPiBBaG1hZA0KPiA+DQo+ID4gPg0KPiA+ID4gQ2hlZXJzLA0KPiA+ID4gUmVuYXVkDQo+ID4g
Pg0KPiA+ID4NCj4gPiA+DQo+ID4gPg0KPiA+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+ID4gPj4gRnJvbTogYmFyZWJveCA8YmFyZWJveC1ib3VuY2VzQGxpc3RzLmluZnJhZGVhZC5v
cmc+IE9uIEJlaGFsZiBPZg0KPiA+ID4+IFJlbmF1ZCBCYXJiaWVyDQo+ID4gPj4gU2VudDogMDcg
SmFudWFyeSAyMDI2IDA5OjQ0DQo+ID4gPj4gVG86IEFobWFkIEZhdG91bSA8YS5mYXRvdW1AcGVu
Z3V0cm9uaXguZGU+OyBCYXJlYm94IExpc3QNCj4gPiA+PiA8YmFyZWJveEBsaXN0cy5pbmZyYWRl
YWQub3JnPg0KPiA+ID4+IENjOiBMdWNhcyBTdGFjaCA8bHN0QHBlbmd1dHJvbml4LmRlPg0KPiA+
ID4+IFN1YmplY3Q6IFJFOiBQQ0lFIG9uIExTMTAyMUENCj4gPiA+Pg0KPiA+ID4+ICoqKk5PVElD
RSoqKiBUaGlzIGNhbWUgZnJvbSBhbiBleHRlcm5hbCBzb3VyY2UuIFVzZSBjYXV0aW9uIHdoZW4N
Cj4gPiA+PiByZXBseWluZywgY2xpY2tpbmcgbGlua3MsIG9yIG9wZW5pbmcgYXR0YWNobWVudHMu
DQo+ID4gPj4NCj4gPiA+PiBCYXNlZCBvbiB5b3VyIGluZm9ybWF0aW9uIGFuZCBVLWJvb3QgYW5k
IEkgaGF2ZSBzdGFydGVkIHRvIHdvcmsgb24NCj4gPiA+PiB0aGUgTFBBRSBzdXBwb3J0LiBTbyBm
YXIgZnVsbCBvZiBkZWJ1Z2dpbmcgYW5kIGhhY2tzLg0KPiA+ID4+DQo+ID4gPj4gSXQgaXMgYmFz
ZWQgb24gdGhlIG1tdV8zMi5jIGZpbGUuIEFzIEkgaGF2ZSBmYWlsZWQgdG8gdXNlIHRoZSAzIE1N
VQ0KPiA+ID4+IHRhYmxlcywgYXQgcHJlc2VudCBJIGFtIHVzaW5nIG9ubHkgMiBhcyAgaW4gdS1i
b290Lg0KPiA+ID4+IFRoZSA2NC1iaXQgUENJIHNwYWNlIGlzIHJlbWFwcGVkIHdpdGg6DQo+ID4g
Pj4gbWFwX2lvX3NlY3Rpb25zKDB4NDAwMDAwMDAwMFVMTCAsSU9NRU0oMHgyNDAwMDAwMFVMKSwg
MTkyIDw8DQo+IDIwKTsNCj4gPiA+Pg0KPiA+ID4+IFRvIGRldGVjdCB0aGUgTlZNRSBkZXZpY2Us
IHRoZSB2aXJ0dWxhbCBhZGRyZXNzIDB4MjQwMDAwMDAgaXMNCj4gPiA+PiBoYXJkLWNvZGVkIGlu
dG8gdGhlIGZ1bmN0aW9ucyBkd19wY2llX1t3cnxyZF1fb3RoZXJfY29uZiBvZg0KPiA+ID4+IGRy
aXZlcnMvcGNpL3BjaWUtIGRlc2lnbndhcmUtaG9zdC5jIGFzIGZvbGxvd3M6DQo+ID4gPj4gaWYg
KGJ1cy0+cHJpbWFyeSA9PSBwcC0+cm9vdF9idXNfbnIpIHsNCj4gPiA+PiAgICAgICAgICAgICAg
ICAgICB0eXBlID0gUENJRV9BVFVfVFlQRV9DRkcwOw0KPiA+ID4+ICAgICAgICAgICAgICAgICAg
IGNwdV9hZGRyID0gcHAtPmNmZzBfYmFzZTsNCj4gPiA+PiAgICAgICAgICAgICAgICAgICBjZmdf
c2l6ZSA9IHBwLT5jZmcwX3NpemU7DQo+ID4gPj4gICAgICAgICAgICAgICAgICAgcHAtPnZhX2Nm
ZzBfYmFzZSA9IElPTUVNKDB4MjQwMDAwMDApOyAvKiBYWFggKi8NCj4gPiA+PiAgICAgICAgICAg
ICAgICAgICB2YV9jZmdfYmFzZSA9IHBwLT52YV9jZmcwX2Jhc2U7DQo+ID4gPj4NCj4gPiA+PiBX
aGF0IGlzIHRoZSBtZXRob2QgdG8gcGFzcyB0aGUgYWRkcmVzcyB0byB0aGUgZHJpdmVyPw0KPiA+
ID4+DQo+ID4gPj4gQW5kIEkgZ2V0IHRoZSBmb2xsb3dpbmc6DQo+ID4gPj4gbGF5ZXJzY2FwZS1w
Y2llIDM0MDAwMDAucGNpZUAzNDAwMDAwLm9mOiBob3N0IGJyaWRnZQ0KPiA+ID4+IC9zb2MvcGNp
ZUAzNDAwMDAwDQo+ID4gPj4gcmFuZ2VzOg0KPiA+ID4+IGxheWVyc2NhcGUtcGNpZSAzNDAwMDAw
LnBjaWVAMzQwMDAwMC5vZjogUGFyc2luZyByYW5nZXMgcHJvcGVydHkuLi4NCj4gPiA+PiBsYXll
cnNjYXBlLXBjaWUgMzQwMDAwMC5wY2llQDM0MDAwMDAub2Y6ICAgICAgIElPDQo+ID4gPj4gMHg0
MDAwMDEwMDAwLi4weDQwMDAwMWZmZmYgLT4gMHgwMDAwMDAwMDAwDQo+ID4gPj4gbGF5ZXJzY2Fw
ZS1wY2llIDM0MDAwMDAucGNpZUAzNDAwMDAwLm9mOiAgICAgIE1FTQ0KPiA+ID4+IDB4NDA0MDAw
MDAwMC4uMHg0MDdmZmZmZmZmIC0+IDB4MDA0MDAwMDAwMA0KPiA+ID4+DQo+ID4gPj4gRVJST1I6
IGlvX2J1c19hZGRyID0gMHgwLCBpb19iYXNlID0gMHg0MDAwMDEwMDAwDQo+ID4gPj4gRVJST1I6
IG1lbV9idXNfYWRkciA9IDB4NDA0MDAwMDAwMCAtPiBCYXNlZCBvbiBMaW51eCBvdXRwdXQsIHRo
ZQ0KPiA+ID4+IG1lbV9idXNfYWRkciBzaG91bGQgYmUgYXMgYWJvdmUgMHg0MDAwLjAwMDAgdG8g
YmUgcHJvZ3JhbW1lZCBpbg0KPiA+IHRoZQ0KPiA+ID4+IEFUVSB0YXJnZXQgcmVnaXN0ZXIuDQo+
ID4gPj4gRVJST1I6IG1lbV9iYXNlID0gMHg0MDQwMDAwMDAwLCBvZmZzZXQgPSAweDANCj4gPiA+
Pg0KPiA+ID4+IEVSUk9SOiBsYXllcnNjYXBlLXBjaWUgMzQwMDAwMC5wY2llQDM0MDAwMDAub2Y6
IGlBVFUgdW5yb2xsOg0KPiA+ID4+IGRpc2FibGVkDQo+ID4gPj4NCj4gPiA+PiBwY2k6IHBjaV9z
Y2FuX2J1cyBmb3IgYnVzIDANCj4gPiA+PiBwY2k6ICBsYXN0X2lvID0gMHgwMDAxMDAwMCwgbGFz
dF9tZW0gPSAweDQwMDAwMDAwLCBsYXN0X21lbV9wcmVmID0NCj4gPiA+PiAweDAwMDAwMDAwDQo+
ID4gPj4gcGNpOiBjbGFzcyA9IDAwMDAwNjA0LCBoZHJfdHlwZSA9IDAwMDAwMDAxDQo+ID4gPj4g
cGNpOiAwMDowMCBbMTk1NzowZTBhXQ0KPiA+ID4+IHBjaTogcGNpX3NjYW5fYnVzIGZvciBidXMg
MQ0KPiA+ID4+IHBjaTogIGxhc3RfaW8gPSAweDAwMDEwMDAwLCBsYXN0X21lbSA9IDB4NDAwMDAw
MDAsIGxhc3RfbWVtX3ByZWYgPQ0KPiA+ID4+IDB4MDAwMDAwMDANCj4gPiA+Pg0KPiA+ID4+IHBj
aTogY2xhc3MgPSAwMDAwMDEwOCwgaGRyX3R5cGUgPSAwMDAwMDAwMA0KPiA+ID4+IHBjaTogMDE6
MDAgWzEyNmY6MjI2M10gLT4gTlZNRSBkZXZpY2UgZm91bmQNCj4gPiA+PiBwY2k6IHBiYXIwOiBt
YXNrPWZmZmZjMDA0IE5QLU1FTSAxNjM4NCBieXRlcw0KPiA+ID4+IEVSUk9SOiBwY2k6ICYmJiAg
c3ViID0gMHgyMjYzLCAweDEyNmYga2luZCA9IE5QLU1FTSYmJg0KPiA+ID4+IEVSUk9SOiBwY2k6
ICYmJiB3cml0ZSBCQVIgMHgxMCA9IDB4NDAwMDAwMDAgJiYmIC4uLg0KPiA+ID4+IHBjaTogcGNp
X3NjYW5fYnVzIHJldHVybmluZyB3aXRoIG1heD0wMg0KPiA+ID4+IHBjaTogYnJpZGdlIE5QIGxp
bWl0IGF0IDB4NDAxMDAwMDANCj4gPiA+PiBwY2k6IGJyaWRnZSBJTyBsaW1pdCBhdCAweDAwMDEw
MDAwDQo+ID4gPj4gcGNpOiBwYmFyMDogbWFzaz1mZjAwMDAwMCBOUC1NRU0gMTY3NzcyMTYgYnl0
ZXMNCj4gPiA+PiBwY2k6IHBiYXIxOiBtYXNrPWZjMDAwMDAwIE5QLU1FTSA2NzEwODg2NCBieXRl
cw0KPiA+ID4+IHBjaTogcGNpX3NjYW5fYnVzIHJldHVybmluZyB3aXRoIG1heD0wMg0KPiA+ID4+
IEVSUk9SOiBudm1lIHBjaS0xMjZmOjIyNjMuMDogZW5hYmxpbmcgYnVzIG1hc3RlcmluZw0KPiA+
ID4+DQo+ID4gPj4gVGhlbiwgdGhlIHN5c3RlbSBoYW5ncyBvbiB0aGUgaW5zdHJ1Y3Rpb24gMyBs
aW5lcyBiZWxvdzoNCj4gPiA+PiBFUlJPUjogbnZtZV9wY2lfZW5hYmxlIDogMHg0MDAwMDAxYyAt
PiBGYWlscyB0byBhY2Nlc3MgdGhlIE5WTUUNCj4gPiA+PiBDU1RTIHJlZ2lzdGVyLiBJdCBkb2Vz
IG5vdCBtYXR0ZXIgaWYgbWVtX2J1c19hZGRyIGlzIHNldCB0bw0KPiA+ID4+IDB4NDAwMC4wMDAw
IHRvIHByb2dyYW0gdGhlIEFUVSB0byB0cmFuc2xhdGUgdGhlIGFkZHJlc3MNCj4gPiA+PiAweDQw
LjQwMDAuMDAwMCB0bw0KPiA+IDB4NDAwMC4wMDAwLg0KPiA+ID4+IGlmIChyZWFkbChkZXYtPmJh
ciArIE5WTUVfUkVHX0NTVFMpID09IC0xKQ0KPiA+ID4+DQo+ID4gPj4gMHg0MDAwLjAwMDAgaXMg
YWxzbyB0aGUgcXVhZFNQSSBtZW1vcnkgYXJlYS4gU28gSSBndWVzcyBJIHNob3VsZA0KPiA+ID4+
IHJlbWFwIHRoZSBhY2Nlc3MgdG9vLg0KPiA+ID4+DQo+ID4gPj4gVW5oYXBwaWx5LCBteSB3b3Jr
IGlzIG5vdyBhdCBhIHN0b3AgYXMgdGhlcmUgaXMgYSBoYXJkd2FyZSBmYWlsdXJlDQo+ID4gPj4g
b24gbXkgc3lzdGVtLg0KPiA+ID4+DQo+ID4gPj4gTm90ZTogdGhlIE1NVSBtYXkgbm90IGJlIHNl
dCBwcm9wZXJseSBhcyB0aGUgb3V0IG9mLWJhbmQgZmFpbHMgdG8NCj4gPiA+PiBvbiBUWCB0aW1l
b3V0LiBJIGNhbiByZWFjaCB0aGUgcHJvbXB0IGFmdGVyIHRoZSBOVk1FIHByb2JpbmcgZmFpbGVk
Lg0KPiA+ID4+DQo+ID4gPj4NCj4gPiA+Pg0KPiA+ID4NCj4gPg0KPiA+IC0tDQo+ID4gUGVuZ3V0
cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwNCj4gPiBTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgfA0KPiA+DQo+IGh0dHBz
Oi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlL19fOyEhSEtP
U1UwZyFEbFoNCj4gPg0KPiBiMm95NkZkdmdPdTNKdXR1Qk1yMHpmNGliNnhfdmxGeWZCVTNGZ2Nw
Z3VkNGl1ekE3Rkxld3VSNmRCUVVMWVZlDQo+ID4geGdEdm9RcUFsZ3RneVkxZkFkczlUb3ZnJCAg
IHwNCj4gPiAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgfCBQaG9uZTogKzQ5LTUx
MjEtMjA2OTE3LTAgICAgfA0KPiA+IEFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICB8
IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8DQoNCg==


