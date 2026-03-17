Delivery-date: Tue, 17 Mar 2026 11:59:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2S92-001mNB-1t
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 11:59:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2S91-0007G8-Ne
	for lore@pengutronix.de; Tue, 17 Mar 2026 11:59:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/UdWqarLUu3RCq9gsjdIoYoE9/qLZ2t5OtBRuQEiBrE=; b=hIQGKOjG6KtS3I
	qqY9ptq/8g6hV7c7DVA50ERYm9lBvAn9c4eN30Ny0OBwn8jE6XA0t4jC/kqJ0+dr3ZR+nhk3OAQ3Q
	xizZu2hPgt0UxhLLYXxrnjKtwQ8fk0Tx56ScZti/ngjubmkl4pdJnOYixMz4XGFNuhoVjplzj0Xgy
	qjv0lY2wrP86ROWy9iJPBURK6c04fMhc+mzvAIY8H30fnJgAdrUFhwpkp1s0XgKvlYmx6BbipwzY7
	BrObjsxgsOXzPIXmwr9I6Tlr9w/sMTqqhIfUFDGt3HkPg1eYngG2zXBLgw5+XnHH6kHxZcajhsgSh
	uE9VHIc0rcE5K1zMUrjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2S8R-000000064hk-2Ahw;
	Tue, 17 Mar 2026 10:58:51 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2S8N-000000064hB-38m1
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 10:58:49 +0000
Received: from pps.filterd (m0163887.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H9U6A22620995
	for <barebox@lists.infradead.org>; Tue, 17 Mar 2026 06:58:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=pphost; bh=/UdWqarLUu3RCq9gsjdIoYoE9
	/qLZ2t5OtBRuQEiBrE=; b=zKoBgYCLboalwHwHOftJP3boh81JvBLLIxBfcsUf0
	KqES3Tzxj4dHBRe5Z9PTezJiK80niT6e0FYwUDIzFRonF8Do9rwOxL1ENXMlEY9o
	7XPaWHYwoCYzdME6YXjf6npkR99MNW8hpRb7J4xdjNoI37/NgC1glYw0RBO97Ynd
	+g5MAreI93gL1fj+nsg23jsxA3c5cEv1uIErzpcSHh0IMq5aHtZc6E83buTSwJr+
	206dqwq2RwB2O/4CZ3CLn+b/MB7Oil0PSDehK1Dtn5dU0Ca5ENgd1PoSsKX1izZi
	uPb4autZVL5ctizM5ERHWSaIBl3MqctWFeqofSInr1A9A==
Received: from bn1pr04cu002.outbound.protection.outlook.com (mail-eastus2azon11010028.outbound.protection.outlook.com [52.101.56.28])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 4cw1g3k2gm-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Tue, 17 Mar 2026 06:58:46 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZO14lqqQ+RAFUUTzB68OfbFAKd5wCxz8mUId6HE1jOLnlvzyMY4OqDUwkmrhDWQAzQtAQ3dG7csr7D8uc3GtxBucprTvMStFKdti5NahfMh7NUkEc6cGw0kcLqnuXOyEG9RXDRAXDrhlp1iM6wnPiwlxdlwRurpQUUTft031IwVbsGrpkMtuSTLb3kRYmDhWIm/wzk0f61nn7J1eN2tnQIeMTU1IuK6tSpb3DuP0jEHpDXZvSWu2Qno/PyZTxkkTIFodhjECnlfVRhXki9jiWGpK+3vlBpsdUjqIw90BeXKOGijkv9dyb26BbjLtN5SH6CQXW5x7mMIvEmZJOiocyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/UdWqarLUu3RCq9gsjdIoYoE9/qLZ2t5OtBRuQEiBrE=;
 b=Sl8UKEYtExdyt4GYyJohD87D/909vTo/qUM4AVZD7ZhSQTeXXxoR/qnI7aEEk7sIZb6CKR+XiswQmJklTQD3cPZij5T1HpB0evDnxRXaxuo2DfUCxxSmcX2qvBWQkNoSFI2Snktz6rZRj/kIb9xq7JhJV9vtQbQG15G5e4yxtIyDxXXsseE/9Zaej5hBN63+HXvtqHre3QAIZf/QN4t0sNlvCC3O95mbCJthUeUPAJExglxVhJ2lXvtHrX3XucB3CN5x0zaiXDiVk3BakpyXOeIY29GYWobkvytrjeLMwLxdjgTTueqeH42NrvZdjWsFc5zjLGPFtoOQ01w9c2mlGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/UdWqarLUu3RCq9gsjdIoYoE9/qLZ2t5OtBRuQEiBrE=;
 b=0wSo0ynx/2sc/jzX0Fj1lwbSBEiNX/RbqG0E/AwHkJ4g1jzmBDlp2GbUtrGpFF3JiNjh4e21H1vPASk+LxSYhWZt+DxVLW8GEiLWGONB0BHnzsIz/P2OteUYOe0Llwsia85Outrsd6l8Rx0zfMiWuWalrJlMMeM71l4JQhFyzbc=
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com (2603:10b6:a03:4e0::13)
 by SA3PR07MB11672.namprd07.prod.outlook.com (2603:10b6:806:466::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Tue, 17 Mar
 2026 10:58:44 +0000
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2]) by SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2%2]) with mapi id 15.20.9700.018; Tue, 17 Mar 2026
 10:58:39 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: file system crash
Thread-Index: Ady18tnnNOaQSfwuRSuNRY9AfPCsjQ==
Date: Tue, 17 Mar 2026 10:58:39 +0000
Message-ID: <SJ0PR07MB976639CACF9AB10A471A2B96EC41A@SJ0PR07MB9766.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR07MB9766:EE_|SA3PR07MB11672:EE_
x-ms-office365-filtering-correlation-id: 17ce2770-d8ba-4d3d-f4ee-08de84142567
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|56012099003|17002099007|18002099003|38070700021;
x-microsoft-antispam-message-info: SFNxBfKGTOfqne6YIRYBBcxCV38ujbesLDm6e4ossuNkD+tD7Y7cNEOuQIXwSRQumx6WcaWMsWLGMs1Dn3GckjgC/Z3zWJCZe7+gPKu4ALIAPwq/VCDBzSMVO2IKXTLiTuXvNk7jxTdPViFtCF6PP1pmCrqieND1GUFNwUdtpq4QvqxSN2AJ8n/sDKk+dH3akw1OG5RuM2wLmueQihA5dp8ESohsbg/YULx6qckMo/brMzf1kD/XZBge404YwP62wUVx6ux4BtXdWP2R2ouz4FkAfMSr7gFz5iCOfVATkz1Mz9zM0xiht7cQR/UQHy6vAZt06oBD2ZB0lufidHQ1xQgb/yuexIBvUjGHWXLYFaZbv3hdMLUvc1jsVN/m8SUV49fLAKNtfs6n5A+cqRYSmUItjEn4XiWe2tJFhE347HlYE/9X7XyRab1Lgkf9xDEpRhFWHitXu2K4E0bXcMRjvYCemBw2cL2e/DJSxOU7L1WxUWoRFfYV5Mjd25Ktbaf8DLmQYPdT9HXZ37XvGVa2x78qmHYzQpQ9rtjFEXsjrdAPwyS42RlKMyuItoY+8xQ3669c3om5fKkX+url5qAP4x5oDUWGxbBgPY3wYrGhyOTD1EVZyqo3g/XHb6QjazBBg7qB07muUCavbWuAJ5cj6DR7ZxCZ7g7AJv6dEhbAFylFX+pwYmuGUnq2M7BjBv8paxUcJxxZeJBF3EV5kIJcxsN1AFvENQYzpq753S6WaQvlk94szUBDmcoEZyGGcOWzPMpowVoUi3uM//eHFPxQ/04jNn0wE3HViNAl/oqDlqw=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR07MB9766.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(17002099007)(18002099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N0NPR3RVWGx3UFFNSGttSkJwUXU2RXh5QjVsRFg5cklRNi9FUDllZDd5ZUdr?=
 =?utf-8?B?L2lHZUp5Sk1HRlBTRGwrZGUxT3FaZWVWRG92RHpRazlJTnphNG03MGVzYXND?=
 =?utf-8?B?US9yRjNEeGY4SENDVE8yM2dNVkVDY2htRTZla0U0QjNPM3ZLeFpJL2FXUjdG?=
 =?utf-8?B?cy9vTlJrQkxNUUQxL1AwUm9kano5UzY5SHRyd1YrSDJMNVNiWkc4RXNvTUtH?=
 =?utf-8?B?ODRRUWFOU0NqSmw3dElDWUZLSXRPUGFub2JJNi9tU0tTOEg0Y2Y2bi95QzIx?=
 =?utf-8?B?b2t0SFdZMEo1ajZvbVJFYk9yZjNNU25IWG1jTlRpZkl5RjhHSzZPRzNueCtV?=
 =?utf-8?B?cmx1MlpQczNWaGh1Ui9VR0pGNmU5VWg5S09PcjZ0dmo2enhIS1JrdVRWZ1Ay?=
 =?utf-8?B?aG1LU2lFVDR1TjkyOWVZbzhPQkd0czZRNFUwZGhkelZMTGpiMXc4M0xPMjZ2?=
 =?utf-8?B?d1ZiOTZrSCtPcGZYbmtCQ1lWcXNYYXM2emlybHUzNjhCMUlFRWJQL1ZtOUkz?=
 =?utf-8?B?dXd3SmJLdis0Unl1eHdQdldVa25DUzBMR1ZhNUdxcThIVjkxeFhzRUpRZTVl?=
 =?utf-8?B?eCtNd0pIbENuOVhpU1k5dWlFbkE2WHZBSlRVcm1LSzdPM05tSGErQ3JITHY3?=
 =?utf-8?B?WFcyWU5UOWRsOFBwNXJKSGRiZlR1Tyt3Y0lNT1NJYjBtN25MU1BaNklOYk1M?=
 =?utf-8?B?eUlDL2ZmSTlPYjNGOEh5QjVRcFJOdzVwYzhYSURUZGM1MUMvelYxcnVDZ3NH?=
 =?utf-8?B?UjNTYS8veXAyU1c2QU1oS2VVT0F3SjdMRldwdXJDem1sQWVGckFJQ3EwVlVq?=
 =?utf-8?B?d2Q4bGFVS0VxemFUNDdJWmFiY0dscVN6ZkR0aHVqWkxKTnRhL0FQUTFuY2ZB?=
 =?utf-8?B?dEU1TmpzMHpwNDdtY2J6Sk83VHRZNFh0SCs5Y3h1T2VhSmdBbU1sU1piQVdz?=
 =?utf-8?B?UTlkdHBPU3FBSFlkOXBvaVNiVVZHU2FYbGhVZWxaanJxUUp5bUZ0VngvaDB6?=
 =?utf-8?B?aHY2SWxOeGs4eDdlM3V6OTdGQUZsbzUxWlZ4L1A3VUFnbkhGandQY1BsZklN?=
 =?utf-8?B?MlNpMExBMi9yVWlkVTAxMUpaNE5GM0ZENUFtNWV5clQ4dldpYjI2bkhNVTAr?=
 =?utf-8?B?ajF1MU5oSm03dGZ2dk5SMmFhNElzeVRhYS9UOHFsNlJraVBQNkJmc3pFUWZl?=
 =?utf-8?B?b1RTSnNWUDdYUnI3ZC9TSFJwZll6SHRJRTdFNlBaSnhnSk42ZUZocXNhK0Rx?=
 =?utf-8?B?Y2VGYjNyNnhZWml5dytidFFCU0VLb05sbk1KRUxsYTd1V0I3SmlRNGVjRFV6?=
 =?utf-8?B?eFNIY1NEZ2UvbEo1TGZQZEJtTS9hK3hQUFllREdkdVZEOHZqQWF6TlhobkNG?=
 =?utf-8?B?b0NFVklRUmxLWERuWEk3UmV6c1EvM001N1c5aHpHeDlQTERuS0pJREFOWmpq?=
 =?utf-8?B?aHFXTkRwZ3MxZ2xRbjNjUnNxV2VYYkNZWExBb21naHByUE9aRmNFdW9wRnVn?=
 =?utf-8?B?aklKd0YvVklMSU1tZzI0N0d1eVpTUWI3aVdvbHJxeVBxVFJpaW5iUXlGUFdN?=
 =?utf-8?B?SVB5WVl1OUp4bmVCbnRqMW9QclBtcmdSTVYvZXBncDA2ZjZKM1dldVpUbnZO?=
 =?utf-8?B?ZHBjUEZYTUNrUVZUdTBZdVFpVXgzL1VGRG55bkpZSG9uNjNCRWIrU0JCK0pJ?=
 =?utf-8?B?OFVOS0JxUndkVWFRemRWczNMSzVybFlGaTVMTVVmZTdNMFNMUThFRGtjc05w?=
 =?utf-8?B?UGQ0em5TMnBSbEhhVUZqdXNGbnd3b29yVTZ3MFgzd2VRMkE3WlF3V2hBN3dn?=
 =?utf-8?B?VGQxcjVzOXdKVVJ3WWo1M2NaRHJMZnJiV08yVUpqRDNsTWRwZ1ZUU0RJanlE?=
 =?utf-8?B?SHN6UjBDZEtVbWhLQlBQVHIrYjY0Skt3dENSQmJDaFZvVzQxc24rV2RsaEZa?=
 =?utf-8?B?TEMvYWcxeUwrL1hEamtnakxSK3Nrb3crVTZJekhuMkZPMXcxczZzWVdXWXFL?=
 =?utf-8?B?NSt4Q0hUSVp0My9lUnRybmRmQXE5OWNkbHEzM2RpK2x1WXF2OGp6UEg3c0s4?=
 =?utf-8?B?VlUyWkRXYTZiQXRva0lhWmxZRGlzN050Rm1maUt2NUJzZVNtQ3JEMHFsNklz?=
 =?utf-8?B?b3M2c3JEUmRiSVZTREVTVytFUVB2dFBYdmRQaHRUek5mVmNkWVp0WkR6YTNY?=
 =?utf-8?B?ejBFRUdWS1pvSlRvdWRYWUtoSDE0S3o5QWU1OHI0MHc3ZThVWmw0Z0NIVUdx?=
 =?utf-8?B?SnBXYlM0MWRwZ04rU3hYTXV4Y3FZZndacE0wd0VIVkl2KzBPaHFlK2tqckha?=
 =?utf-8?B?bXBSVWpreS9tVGc0V2d3STQrNHlwVVlwZUJVS3V5R2p4TURUUm9pUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: MEoOEtw+/0v/zwesdKQKqvF5Lka3/guQX1bWb7ekVlp1PQXbsbKRrcT+EVh6R0G3b0tz1+fOsemeLru7DThYqBfHHMLKQT8RmpINBIvStXRYfDCcnbo8csvpFYlAm/WhG67RukouvIwWAd5pBrMKNK/k7bXiM+7yhYy35VFdgwSjnSsnbpl2xIR+LT3JjaDJH+VoWnPVjkL8kfkc20jxgqqiYRVY3mpA6dPMjqfPeDZuiGE05FfP3mkddyHbInlWPsk9mzBMw90U3+2R8Gg5aHfVgT5gPOLag5w6xa5mkdxLkOmgYbYSMZfluihd/BF5kJ/0bn4v+ptnE9B8FKx8QQ==
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR07MB9766.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17ce2770-d8ba-4d3d-f4ee-08de84142567
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2026 10:58:39.4397
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XELG1XC18C3gr7Rg3vftm7H7D6tGnRqdWu++GXFFZ7qBjPXnRZp+8BerxVVzNBP43Djc59bsoL2Y+2VLMjfCY5Bq1H+s1tSG8oW8knogyCo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR07MB11672
X-Proofpoint-GUID: zC7dv8ROMkwX0zjQEwbZs1gZSShOJeN-
X-Authority-Analysis: v=2.4 cv=es7SD4pX c=1 sm=1 tr=0 ts=69b933e6 cx=c_pps
 a=M48x8qJemVpu2SzQJjJwbA==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=m3P6IW4lH-wA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=nxKGlp_yvOrowMGCFGNG:22 a=ApK84OIOwXeene9rJMBu:22 a=4UY0vV5DdyLLE9poAI8A:9
 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: zC7dv8ROMkwX0zjQEwbZs1gZSShOJeN-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA5NyBTYWx0ZWRfX+GByjojrkoAC
 4iR+BLYXSXrylFanAwKhWh1dXWrode9ylNlB5B6rOUWW/XKon54HOEdfaojIS//RmWgRy8MXRi6
 wuy5DCkky8r27e9k4jQo0V1Q3Ib03JS7g9bpmvqeQtXJnD8V6AsFBHypLX2ZtX+Pc2t/3NxaKuX
 ph8jQBdbFa1kMGniXLJJHVMO9TOMwE/EsxhaEr6ECoR466j2j6gG+pcIaxIQkB3OjHUpDPduRu7
 EvvSGQZTISFzDXUkMQsB9TAKFLTbGP8ObF7z3ct2BWlMt2pI9TsKcqZemJBiKkbnpxqwltlGPjK
 BnUdqAURwtnKEj08Q5sn8xD0KKie+MF09mQnZI2bHK1okM2CvLb+sFiUHhGW0D4lZSDQ+Rhmt93
 2MbE5WM8hqzkPDr2P/MK+fO6k7NjYypEpoiOJ3VdjbbOUYGDKAtW95rQL/lU3xyRjcwe//o+wTQ
 lSu4Bf6QRHAqE23wi3g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 phishscore=0 bulkscore=0 adultscore=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_035848_176816_E8C437B7 
X-CRM114-Status: UNSURE (   8.42  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: file system crash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SSBoYXZlIGEgQlNQIChub3QgdXBzdHJlYW1lZCkgdXNpbmcgYSBBUk12OSB0aGF0IEkgcmViYXNl
ZCBmcm9tdjIwMjUuMDYgdG8gMjAyNi4wMS4gVGhpcyBib2FyZCBoYXMgYSBTUEkgTk9SIHdpdGgg
YSBVQkkgdm9sdW1lLg0KVGhlIHN5c3RlbSBzdGFydHMgcGVyZmVjdGx5Lg0KDQpXaGVuIGRvaW5n
IGFuIHVtb3VudCBvciBscyAtbCBvciByZXNldCBiYXJlYm94IGNyYXNoZXMuIERlYnVnZ2luZyB0
aGUgY29kZSwgIHRoZSBjZGV2bmFtZSBwb2ludGVyIGluIGRlc3Ryb3lfaW5vZGUgaXMgc29tZXRp
bWVzIChzZXQgdG8gMHhmZmZmZmZmZikgb3IgdGhlIHN0cmluZyBjb3JydXB0ZWQuIEFsc28gYmVs
b3cgdGhlIGZpbGVuYW1lIGlzIGNvcnJ1cHRlZC4NCk9XQk9PVD4gLyBscyAtbCAvbW50L3ByaW1h
cnkNCkVSUk9SOiBSRU5BVUQ6IGNkZXZfYnlfbmFtZTogbmFtZSA9IGNzMCBmaWxlbmFtZSA9IC7T
v2sNCkVSUk9SOiBSRU5BVUQ6IGNkZXZfYnlfbmFtZTogbmFtZSA9IG0yNXAwIGZpbGVuYW1lID0g
LtO/aw0KRVJST1I6IFJFTkFVRDogY2Rldl9ieV9uYW1lOiBuYW1lID0gbTI1cDAuYmFyZWJveCBm
aWxlbmFtZSA9IC7Tv2sNCkVSUk9SOiBSRU5BVUQ6IGNkZXZfYnlfbmFtZTogbmFtZSA9IG0yNXAw
LnNlY29uZGFyeS1iYXJlYm94IGZpbGVuYW1lID0gLtO/aw0KRVJST1I6IFJFTkFVRDogY2Rldl9i
eV9uYW1lOiBuYW1lID0gbTI1cDAuYmFyZWJveC1lbnZpcm9ubWVudCBmaWxlbmFtZSA9IC7Tv2sN
CuKApg0KT25lIGNhbiBzZWUgdGhlIGZpbGVuYW1lIGFib3ZlIGlzIGNvcnJ1cHRlZA0KDQpEdXJp
bmcgcmVzZXQ6DQpFUlJPUjogUkVOQVVEOiBkZXZmc19vcGVuOiBjZGV2bmFtZSA9IG0yNXAwLmJv
b3QtdmFycw0KRVJST1I6IFJFTkFVRDogY2Rldl9ieV9uYW1lOiBuYW1lID0gY3MwIGZpbGVuYW1l
ID0gbTI1cDAuYm9vdC12YXJzDQpFUlJPUjogUkVOQVVEOiBjZGV2X2J5X25hbWU6IG5hbWUgPSBt
MjVwMCBmaWxlbmFtZSA9IG0yNXAwLmJvb3QtdmFycw0KRVJST1I6IFJFTkFVRDogY2Rldl9ieV9u
YW1lOiBuYW1lID0gbTI1cDAuYmFyZWJveCBmaWxlbmFtZSA9IG0yNXAwLmJvb3QtdmFycw0KRVJS
T1I6IFJFTkFVRDogY2Rldl9ieV9uYW1lOiBuYW1lID0gbTI1cDAuc2Vjb25kYXJ5LWJhcmVib3gg
ZmlsZW5hbWUgPSBtMjVwMC5ib290LXZhcnMNCkVSUk9SOiBSRU5BVUQ6IGNkZXZfYnlfbmFtZTog
bmFtZSA9IG0yNXAwLmJhcmVib3gtZW52aXJvbm1lbnQgZmlsZW5hbWUgPSBtMjVwMC5ib290LXZh
cnMNCkVSUk9SOiBSRU5BVUQ6IGNkZXZfYnlfbmFtZTogbmFtZSA9IG0yNXAwLmVudi1zZWNvbmRh
cnkgZmlsZW5hbWUgPSBtMjVwMC5ib290LXZhcnMNCkVSUk9SOiBSRU5BVUQ6IGNkZXZfYnlfbmFt
ZTogbmFtZSA9IG0yNXAwLmJvb3QtdmFycyBmaWxlbmFtZSA9IG0yNXAwLmJvb3QtdmFycw0KRVJS
T1I6IFJFTkFVRDogY2Rldl9ieV9uYW1lOiBmb3VuZCBjZGV2IG0yNXAwLmJvb3QtdmFycw0KRVJS
T1I6IGZzX3JlbW92ZTogRU5URVINCkVSUk9SOiB1Ymlmc19yZW1vdmU6IEVOVEVSDQpFUlJPUjog
dWJpZnNfcmVtb3ZlOiBFTkQNCkVSUk9SOiBkZXN0cm95X2lub2RlOiBpbm9kZSA9IGJmZjM2Mzgw
DQpFUlJPUjogZGVzdHJveV9pbm9kZTogY2Rldm5hbWVAID0gYmZmMzY0N2MNCkVSUk9SOiBSRU5B
VUQ6IGRlc3Ryb3lfaW5vZGUgY2Rldm5hbWU6IHRjYCwgbGVuID0gNSA/Pz8NCiFibG9ja19pc19s
YXN0KGJsb2NrKWNvbW1vbi90bHNmLmMgMjUzDQpbPGRmZDgzODdjPl0gKHVud2luZF9iYWNrdHJh
Y2UrMHgwLzB4ZTQpIGZyb20gWzxkZmQwYTBkYz5dIChibG9ja19uZXh0KzB4MzgvMHg0OCkNCls8
ZGZkMGEwZGM+XSAoYmxvY2tfbmV4dCsweDM4LzB4NDgpIGZyb20gWzxkZmQwYTBmOD5dIChibG9j
a19saW5rX25leHQrMHhjLzB4MTQpDQpbPGRmZDBhMGY4Pl0gKGJsb2NrX2xpbmtfbmV4dCsweGMv
MHgxNCkgZnJvbSBbPGRmZDBhNzZjPl0gKHRsc2ZfZnJlZSsweDQ4LzB4MTA4KQ0KWzxkZmQwYTc2
Yz5dICh0bHNmX2ZyZWUrMHg0OC8weDEwOCkgZnJvbSBbPGRmZDY1YTc0Pl0gKGRlc3Ryb3lfaW5v
ZGUrMHg4NC8weDE4OCkNCls8ZGZkNjVhNzQ+XSAoZGVzdHJveV9pbm9kZSsweDg0LzB4MTg4KSBm
cm9tIFs8ZGZkNjcxY2M+XSAoZGVudHJ5X2tpbGwrMHgxOC8weDU0KQ0KWzxkZmQ2NzFjYz5dIChk
ZW50cnlfa2lsbCsweDE4LzB4NTQpIGZyb20gWzxkZmQ2N2UyND5dIChmc19yZW1vdmUrMHgxNDQv
MHgxYjApDQpbPGRmZDY3ZTI0Pl0gKGZzX3JlbW92ZSsweDE0NC8weDFiMCkgZnJvbSBbPGRmZDEy
MjMwPl0gKGRldmljZXNfc2h1dGRvd24rMHg1NC8weDY4KQ0KWzxkZmQxMjIzMD5dIChkZXZpY2Vz
X3NodXRkb3duKzB4NTQvMHg2OCkgZnJvbSBbPGRmZDAyMjFjPl0gKHNodXRkb3duX2JhcmVib3gr
MHg0NC8weDU4KQ0KWzxkZmQwMjIxYz5dIChzaHV0ZG93bl9iYXJlYm94KzB4NDQvMHg1OCkgZnJv
bSBbPGRmZDQ4MjQ0Pl0gKGNtZF9yZXNldCsweDExNC8weDE1NCkNCls8ZGZkNDgyNDQ+XSAoY21k
X3Jlc2V0KzB4MTE0LzB4MTU0KSBmcm9tIFs8ZGZkMDYxNjA+XSAoZXhlY3V0ZV9jb21tYW5kKzB4
NGMvMHg5MCkNCls8ZGZkMDYxNjA+XSAoZXhlY3V0ZV9jb21tYW5kKzB4NGMvMHg5MCkgZnJvbSBb
PGRmZDBkYzk4Pl0gKHJ1bl9saXN0X3JlYWwuaXNyYS4wKzB4ODEwLzB4OGMwKQ0KWzxkZmQwZGM5
OD5dIChydW5fbGlzdF9yZWFsLmlzcmEuMCsweDgxMC8weDhjMCkgZnJvbSBbPGRmZDBkMTNjPl0g
KHBhcnNlX3N0cmVhbV9vdXRlcisweDEzMC8weDFmNCkNCls8ZGZkMGQxM2M+XSAocGFyc2Vfc3Ry
ZWFtX291dGVyKzB4MTMwLzB4MWY0KSBmcm9tIFs8ZGZkMGRmMDQ+XSAocnVuX3NoZWxsKzB4NzQv
MHhiNCkNCls8ZGZkMGRmMDQ+XSAocnVuX3NoZWxsKzB4NzQvMHhiNCkgZnJvbSBbPGRmZDAxZTgw
Pl0gKHN0YXJ0X2JhcmVib3grMHg1OC8weDljKQ0KWzxkZmQwMWU4MD5dIChzdGFydF9iYXJlYm94
KzB4NTgvMHg5YykgZnJvbSBbPGRmZDdmMWI4Pl0gKGJhcmVib3hfbm9uX3BibF9zdGFydCsweGM0
LzB4ZGMpDQpbPGRmZDdmMWI4Pl0gKGJhcmVib3hfbm9uX3BibF9zdGFydCsweGM0LzB4ZGMpIGZy
b20gWzxkZmQwMDAwND5dIChfX2JhcmVfaW5pdF9zdGFydCsweDAvMHgxMCkNCg0KQWdhaW4sIGl0
IHNlZW1zIHRoZXJlIGlzIG1lbW9yeSBjb3JydXB0aW9uIG9mIGNkZXZuYW1lDQoNCkhhcyBhbnli
b2R5IHNlZW4gdGhpcz8NCg0KTm90ZSB0aGlzIGlzIG5vdCBoYXBwZW5pbmcgd2l0aCBiYXJlYm94
IHYyMDI1LjEyLjAgYW5kIEkgZGlkIG5vdGljZSB0aGVyZSB3YXMgbG90cyBvZiByZXdvcmsgb24g
dGhlIGZzIGRpcmVjdG9yeSBmcm9tIHYyMDI2LjAxDQoNCg0KDQo=


