Delivery-date: Wed, 07 Jan 2026 10:44:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdQ5x-002Cux-04
	for lore@lore.pengutronix.de;
	Wed, 07 Jan 2026 10:44:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdQ5w-0007Pv-7H
	for lore@pengutronix.de; Wed, 07 Jan 2026 10:44:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WGlUv2DkNC9XPYICuEDQ03jo/4mAVq1UQ3eZnSRW2es=; b=vNnls0h0A/p1d4JLeqbA3a4gvQ
	f43i6UEResnVeKz7QXkBVvTfhDFYqCX5Dw7VaVvwbU2/Dt7fgNUcHRzfBDBEGR92eHw69Th+U3PQV
	70ac+ZmgrGDMuz7Orbu05IgpABaANZbX0k48slZfIweqIRECYHEQ/WY2IhyekzORdIiFEOSgjERtv
	RXs/qbMxsvspgvr3XbyY1KcgC0CfzMCxV6F5md1TVzeIcZMU63EJDDv23RWDHn/fgsF4qwgWOkzSF
	CbuTsKko9rXBDY8RNpsP9VhoKyPo7/lqq+M7J+5eZeAqfMw2r89WJV8+T4btEA+zSK7x2EBrmjV83
	hLY906Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdQ5D-0000000EZIb-026v;
	Wed, 07 Jan 2026 09:44:03 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdQ57-0000000EZD1-0GK5
	for barebox@lists.infradead.org;
	Wed, 07 Jan 2026 09:44:00 +0000
Received: from pps.filterd (m0163887.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6078E1ws3991073;
	Wed, 7 Jan 2026 04:43:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=WGl
	Uv2DkNC9XPYICuEDQ03jo/4mAVq1UQ3eZnSRW2es=; b=ZQis6h7HzXh1rpf7KnZ
	b8+YDx/U0/+wxomlWAck5PwcjcotQwaR07tDinObrnAw6jXdxRYLD0EBrTk/FR9+
	JcmFkobZ4scdfUkGaw63jvB8OwpRD9L0pQTW3y+9+JykCsrEq0LvdWTPUgheixJI
	arrw+6yk0avU5HFMyeaTNpKfMutjY2P/XLZ2Cx0qkm6ggITlOJLaB3lOSiXA+97S
	p0s2+0dH3Qz+wYDU9ruhq2OtYaiwLtCUz7dUkMMtPL5BlCDl3IAvqlj7QDcWLkYF
	tEUs8CsajfwcxrpgXKvsQzqT3OK+q3DGDT64N4zMNqW/d8eISLy/QTNBc/AfTIKP
	eow==
Received: from ph8pr06cu001.outbound.protection.outlook.com (mail-westus3azon11012000.outbound.protection.outlook.com [40.107.209.0])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 4bh9n2tehg-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 07 Jan 2026 04:43:55 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KOTS6ZGeWMw79HdbdBIhT3ivmaPe9Mc3km2rg8/kQ17+sM8aqV0VH+Nhbg6j59RRs+elFfMncUKaIddttSPv4SpP9NiYBeOE2/InkoRD0YjFITxK5MgXaWOmlRDL+8EJu+WFR5xVG+l5YVhdg4wtvKpDFegoUvCvh9fF4BrI5RuKwRUxjlOTRIv+QAsshChqtmTGEFfFzOvjwJqLMprlfVaQbyoxRJmb+6kLs9q/51rpFwFf9ddmMBbisP9k4UaWMnp5uC/M0FT+DuvGOHRUbIDy4KhGueC3Iz0r/p6gPK7PpDJ7beAoaPqnqqDta8AyMI+uuIoE/fMlmTq0ogz0OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WGlUv2DkNC9XPYICuEDQ03jo/4mAVq1UQ3eZnSRW2es=;
 b=B5hXk45f3KmI5Iu4V9mwUtVLRzhfzzGvuKF0pR3GGg2Q0Pwct7XtE5Pqhfboqv1GLED5fQyAsHjCZenEuvCm1uztWeva4GdhFj72/+cQ1xTiIoDgc/yJG0Z4MWOdE1NdIISh0nIqDXFTM9C8YCD0kQRUPn4h00p6VX5nb74j6L0WfKouv1/2TF70Utf/HeGp2WXFFeDCtP4TcgMwzhpH3wTuewmeFHj5wr1J1MU97Z5/Bsu8BFLRLxMbCftqcz63Vp01ldUN8ko3IbhMlE/8GlOGZ/yqKFHT8v/jqqxY5Tz8BtVmfyGRvUD05J1ShcMOsjd1N5NM48O1MtrOz5it8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WGlUv2DkNC9XPYICuEDQ03jo/4mAVq1UQ3eZnSRW2es=;
 b=THrnzts19TPnAF/I8pZ6d8NmON755BKSTZGv8TLUzQfKke98eoCixVvG6paEqHkbNbZcd3t/4yzmB9/El+kijndzqR4S/31099GkGLouEJB5PtCp8kCgi8zJjX9IOUoBayc0WD9nRrczP9vYIzVPYOoJ8oP3yTPSudSfTWThyNQ=
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com (2603:10b6:a03:4e0::13)
 by SJ2PR07MB9736.namprd07.prod.outlook.com (2603:10b6:a03:4fc::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 09:43:53 +0000
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2]) by SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2%4]) with mapi id 15.20.9478.004; Wed, 7 Jan 2026
 09:43:52 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
CC: Lucas Stach <lst@pengutronix.de>
Thread-Topic: PCIE on LS1021A
Thread-Index: AdkL8DOb81y0+p2vQua38NWFw8d4qwADQ1uAAAFsyICGmUs+AAHp0PYAB7P/fqA=
Date: Wed, 7 Jan 2026 09:43:52 +0000
Message-ID: <SJ0PR07MB9766972613A435D5377F3EBDEC84A@SJ0PR07MB9766.namprd07.prod.outlook.com>
References: <BL0PR07MB5665EA1D980C39F834845849EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <9bb964dc-3c24-7c70-b007-759c3aa85511@pengutronix.de>
 <874d52d0-f476-53cf-1331-72f80bffacbd@pengutronix.de>
 <BN8PR07MB69932217E808C9DB9435411FECD6A@BN8PR07MB6993.namprd07.prod.outlook.com>
 <9923f2ef-cbce-44a1-86bf-6aaf829d3008@pengutronix.de>
In-Reply-To: <9923f2ef-cbce-44a1-86bf-6aaf829d3008@pengutronix.de>
Accept-Language: en-US, en-GB
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR07MB9766:EE_|SJ2PR07MB9736:EE_
x-ms-office365-filtering-correlation-id: b77b83d5-2f1c-4635-6681-08de4dd144b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?bWw4b3d4WERyV1o1ZHJVRXFMNjNQRFRaaEN5OHc0a0ZjZFhJSTNIL3QzOG9i?=
 =?utf-8?B?SFZkMHBvdHIzbk9NLzRGUHVvUlZoTDRtR1JrVzk0SCt2UFVjcjFLVGdoUm9y?=
 =?utf-8?B?MVVJWGJ1NzA1Z3ZwbWpLQjZJM2tsVHBpZDdQVm01NmF4L2lkVEpiTVN1dC84?=
 =?utf-8?B?cnJMVnNnNHA1YmxrOGNPcllkZngxcUdYb0YyME1JZ0liVjBzalVaVjZuYnlI?=
 =?utf-8?B?ZU95d3FsYk01aTdtS3U2WTc0RVNLNkx2aXcrWGFZcTc2N3FUUVllSUpxVGtF?=
 =?utf-8?B?YVp6cWxNUzI5MTFCeWtqbTNxN2hGb3pyQXN5anNlY3JWYWZFeUNjc0pyakNu?=
 =?utf-8?B?NjBqN2g4QnlwY3U4R0tabFlIMDI1eVFlWGx5UUVjSXFuS0RuMjF1YVQ3c3Ft?=
 =?utf-8?B?cjhrbmJuMzBBb1lXNzloZERXRXlxdXFUMDQwTGlWY1k4K2NqSzE1KzJBNGx3?=
 =?utf-8?B?Z3AwUzl3QnF4ZDMvcnNWdXpoZTV5ckRYUGVXWWFGR3VmY0JZeWhkMlFtajda?=
 =?utf-8?B?cGFhc3ovY3JieVZUeU0waGtjSks5QU9uOWpJaEFQTnRTWTZ0U1BvelEydnY1?=
 =?utf-8?B?S25McUZHVjdURTlyWnpLZXVkclNDZnR3Y2dzT3UxazlZRzRzT3BpZCtDbnFk?=
 =?utf-8?B?ZEhuVTc5WFR1UzNSSkRwR1VBRDJGVGt2bzdLTEErbGJXaVhoRW1kbGdNSUNP?=
 =?utf-8?B?bHhWYW95OTRWUTY1Z25idjc4UU1ra0lwbTlrQVZSSWVBYk9Xc1Q5MDJzREZl?=
 =?utf-8?B?WGp0MFZYdEY2SlhSbXlHSEh5NWprajhiYnhXTGdPc2QrZ3lNMTV6T1BFVS9h?=
 =?utf-8?B?eWo0M3dENVdxbU54bHBNc2QxcWljeFNmajdvSm84UHQwQjlpdVZCYzhOcjFs?=
 =?utf-8?B?QkcxU1lxY1BMaURHZm9DcVZpaEgrSW5ZOUlBb1dTVi9rVkNnczNxRmdlSlNH?=
 =?utf-8?B?QTJ6dXcxaHVlSWp5Tk53dG9hdkt2QXFhTUFUVFFwY2pydk80M3JUcWF0UlJL?=
 =?utf-8?B?TGVXem1wZCtReGYrVDczMjFXMnMvM3JwS1pibzF4T1RFVStTZS9LMkd3aGwr?=
 =?utf-8?B?bS8ydGhlejVpdmhqais4eWlhMUM0dnI4MmdCdjdxZnBCLzdpb2VWTDA5Umlp?=
 =?utf-8?B?Z3F2RUZjU1g4RFlhaXExNW10aDRnRUE1UEZDWkhCVVhtUkhJL1dJdWZXZzBV?=
 =?utf-8?B?SUJ1a01vTlJHTy9jSGdwUEZ4emFBcGVxdHRWYTBjM3YxV3dXcEdweEp2akF6?=
 =?utf-8?B?czV3SVF1WC9zNUxxQ2JjaW1BR1pWK2xCOUJkeGZVWWpTT3hsdlFxbFl5di8y?=
 =?utf-8?B?VndIQ1Y1NHhnREh4UUhGYmM3dWdnTHUvNzc1d1IvUktSTHNYRTEzWFh3ZmpJ?=
 =?utf-8?B?V1BKbU5rdHY2Y3lTcGdmN0MvcE5lZE1ITHhsWWYyT0NOdmZUY2RvUlhZa1Vk?=
 =?utf-8?B?Tysyd2c2czhSdFdTdmJIV0lkbTBpZFNuY0ZQMVhyTk1mRXV6OE9QSFRQRU4v?=
 =?utf-8?B?NGRQdlNNTUlsdnRYT2JKb0dOWEg5T0x0Vk0wYnN0MWI5NVFGUFZxUDQySWZG?=
 =?utf-8?B?bCs2OGZQVkJUL013SEFjSHhLdGh4M2lnQ0hRc29xU3FHaDhKNjZkOCtaWWpD?=
 =?utf-8?B?bGJ4amsyUGlpbDBuem10UmZLTWpWekwrT3VIdjN3N25hRUxpM1d4TGN1TFQ3?=
 =?utf-8?B?NE9ZR2tzSDM4UEpidVY3ME5DWDFjUFFWMDdZNFNWVHh4VG9YTGovSlpnYWtK?=
 =?utf-8?B?QlBhMVJIQTZESDM3OER2VWRCTkFRa0R4UG1BeTdkaURkMWJlakhndkxTT3JZ?=
 =?utf-8?B?TWsrN3Iyb1ZqVHNXSnRUa0RJUnZIbEtadGIwdGdCNHRZemRRdDIzWVFDaU80?=
 =?utf-8?B?MEEyVlpPblVNVmdubzhqU3d4bmdpRWVwUUtPMmRkZjRya080RVQxM0xBVEtv?=
 =?utf-8?B?WlJOQzNBUFM0NEtmcXdTWERJdEVjcWxGOXRiWnpTRWY5OGhRZStQMXUreHZ1?=
 =?utf-8?B?VHFrOVU4dlJaU3hqL1hTT2tOMUs5cTNCOTFlL0pzUGthbmlmTHJNRWczQWZS?=
 =?utf-8?Q?gHjnLQ?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR07MB9766.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NGVwZTZybWt6OU9oZWVsaVVPNldvaE1paTEwemF6eFJteGkxVmxZQ3hpR3Nw?=
 =?utf-8?B?c05nZ3JhRjhVS0YrcE1vWTAzdmVQQ0VIUHlGcVRpc3E5YnYyNGJVM2xoY2Nz?=
 =?utf-8?B?MUlobnBvdmRCT3d5RnhoLzVJcHZTRXA3ZExNSitCNlRIaE0yWlJpeEFVSmRq?=
 =?utf-8?B?NHNWdFRkWjZCRysyZ3M3TFd1RnowdlJQUkFQZ2VFSlA5V210SFlIc0dEeEQw?=
 =?utf-8?B?RDAxa0V0amxMV1BjVzV0OTNiOUJOeXNMQXlVQ1ROdHZYSTd2cXZBb1dWMUtq?=
 =?utf-8?B?NXIrM1kyc2VvdCtlNlFOd2lmc0Q4c3h4b0thOHlnbW05bm1xUHhnUTBZSERy?=
 =?utf-8?B?dGR3bTlSbkpRaitVK2xvUXY0NE1qYXNVOWNPdjhwMFNBYXdta1FjVnp2RHZI?=
 =?utf-8?B?enBZVWNDZ3FrMy9rL3ZRRkdGMkhYY1d0UkRIUGVCekxMeVVvOU1WWmNlamZn?=
 =?utf-8?B?SkxtTDM5K2JVeWQwNDM1YlBsODRJakNFTWhvdGJkUEVhNitCeUtkcGExME5z?=
 =?utf-8?B?Yi9kenJtcjhEQjZFSzhITkZVeU5lQTN4N3BSMmhuaEJMU1BoNkE1VERwUEFp?=
 =?utf-8?B?T3ZtMG1vWGZhcWdXeDR6TjdYaEo2M2xBamY2SzNkNDZ0dW5WVUc1UnZFN2pW?=
 =?utf-8?B?c1VBdDVMUGdpR2grbEJ4UHY5MXdDc3pwbzVUaGVHQ2RXMnNZQVZNR0k5ZUNB?=
 =?utf-8?B?eDdsTWxGc043VEwzYXBlcmlaWjU4enFXZlVSUnBTSk40b1laUC9RQ2dPN1Vt?=
 =?utf-8?B?dEhWYlhjeGVDc3JvblM4YWpQdFRqVTNxbG45VlkrMklwTkJWZWhsNTJDTDBL?=
 =?utf-8?B?T1I1VFFyQkJrZTVnWStBQlpJaDFhMUFrWFNTTEhsTVpsN1R2cEpMWmZGQ3dL?=
 =?utf-8?B?OU5vdjZudEJTN0diaDU5RnRGTmdGc1pDRHpLelhZOWw1TlMvNDZyUDJ4Y3M0?=
 =?utf-8?B?RVlCUTdDcTFDd21SRmh1YUZXZnVJNERudjhpTG93L1lKdmd4Wi9zZkluK2NV?=
 =?utf-8?B?YmplSkVJS2thQ2dMQ2ZmeDlHT1JHTE80a3ZzaFcxM2hHQXB1VFFtL2tkOFlB?=
 =?utf-8?B?dlhUbkhadlFucncxK3o2TklkcmlkRmVlT04zWjJHRk13clRCMU1iYVE0cjE2?=
 =?utf-8?B?bHlSdUhQd1AxbzZXSXdYNWlhWk9WNHpYS1ViQTkyMGVqVENSK040b05UZkE4?=
 =?utf-8?B?ZlB4cnMyY0xrRERxOHdXWm9vSG5ScVdjUVRkUXNlbG0wVW5jaGZzdWZYdHFJ?=
 =?utf-8?B?d1JiRmN6MzZHMUVHU0QzcDlyQ01ySEV3dG9RZis5UW9Ea3lEU2lxQ01JcERz?=
 =?utf-8?B?OE5iajFKbkVBcFRlYXZkenBMck9GazFjTko4dFFmWFA1czdYUVA0NEp0dW5j?=
 =?utf-8?B?VmZWUWNldHBoNndQM0p2TWxNUTdMM1R4UEJIQmtNQVZKV0JsNjU4WXAzM2J5?=
 =?utf-8?B?c2NycU02V1FRdXVHbDl5WlRwaXpWdWtHQTk4Yi9JdTZxSHdmVkVqMXd4T3Iy?=
 =?utf-8?B?WEdJZjluT2V4d01WN2V0T0FuUmhUemdXajFhZFBFZzV6eUhvNWZlYmVGNWN5?=
 =?utf-8?B?M3RraytvbGw0QlFQUEJaMnVvT3VENUJ0YXNnQ25SOCtwSTk2NkFoMDBsS3lW?=
 =?utf-8?B?R1hTcnBMaXZoVzc3MnNxVVFQZm1JeFBBOUdEZHEzdEh3UGgvMXM3SU5VRndN?=
 =?utf-8?B?NVF5M0drbENOVysvRHlQSGt5aDJaSnk3alV2eEhybHNOdXVEVDVtWkZadFJB?=
 =?utf-8?B?Q1ZPM3VDbUtsRndxcnpxSTZNcmVOd0Q4THBoUzRRNi9wc294enk4Q0xFMHk3?=
 =?utf-8?B?c1psMFYralFMaS9HUEErbTFOM0dYUEZTazR6QWpsZ0xxUkw4eUUwaTlqa2Fw?=
 =?utf-8?B?Y0QzMnNJUjJCSEJiZmRDc1BHRFdRamxSM3c5RDBNTzRkNGp0eW5XS05DV3d1?=
 =?utf-8?B?VjJDWVNJM1NHQVFDY2xwRVVVc3Yzb1FNaTVDVHdVOGVTSWdhSFp3UHplYXpH?=
 =?utf-8?B?RnJQK1VaWHQrK1pwUHQ0T2NrdEl5Q2tycCs4MFFReHcvK1UyWHptNHdXMUdv?=
 =?utf-8?B?Q1B0eHVjZVlTS1VCaVRyOUVnRDlWdTNZZVowSE1aUE5aUlhuOWNwYk5TOVpt?=
 =?utf-8?B?RFhOTXZoOGNML2JaUWNHY2JlMDNnM3FKTklETXo3RlVPQ245dldReGZBNzBy?=
 =?utf-8?B?UXVhNmxIeWR2cTRNeFJBMjhiZVRRVVlMNWEwM0xENmdPUnpnNnlSYnNrYktq?=
 =?utf-8?B?VHhUeHMzN1VPSHJYWXpaSCs3Yms5anVkTlQ3OEVLWDVNMlJiV2pDSnc1bXFm?=
 =?utf-8?B?d0owMEdLRThub0hCWU9nMDkxSXVBNmt4dGxyVkZJSXZEQTVEcHdsZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR07MB9766.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b77b83d5-2f1c-4635-6681-08de4dd144b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2026 09:43:52.8658
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2EgV9nSRNQlIGFe6EAPJsqMvZdBW2x/psBiIIpRzb6lrOJzRImoviMkNZY5Gz2wjZaYMZSEpdyHahfov+PUCjAPPbPO9/TFzrVbnGGpUi/w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR07MB9736
X-Proofpoint-GUID: kZWCeoXYxq8FL8bkHquEel0V2JF1u1PK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA3OCBTYWx0ZWRfX/O9aRS+zLCTp
 9U17KdyNiUkNOABH/Uqe7n3gSootS+49toAWQD+C1zoGyK1izGPQil8x++BvRGcZHxOt7G8Hs9m
 L9bt1CCU1OYb6WTA3eiyNAWCWAcRLivoCBLvc6taOIZ7BxvzQb2MQkr7VtoLo/nkbx06pLcA9XO
 hVBIXfIiAqKWGXf98pBAOElxlcVD/BK0V7v112KajhNNorxYWTwvk4WYwNUNRpiv+H7CrJvPDHu
 i7fnlgQCmnSDPl6UuFXLOZ8o9e0CnAFWMR1Zr5rXBlWmZ0JUd6sL8PyA1d3tdJTyoUeocpyhGXI
 FHzOS/nW6mJPm2PkORt6wJx7f7G3EtUErDWuddLXS+IWomnWF7qQ4Gi6uGEyGAuaRmXRdrJeaYp
 3RwVp/PVBm11xGn+3M9dbGcG1K2j0DN9DJnBI3QhCYTdLA0BEl4Eli/uLdGZhJyg+3Xya8+wCtn
 eKMEcnfXJu+Ib6m8UGw==
X-Authority-Analysis: v=2.4 cv=N44k1m9B c=1 sm=1 tr=0 ts=695e2adb cx=c_pps
 a=6APEVz27trGWNYyenu7PEA==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=m3P6IW4lH-wA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Oel5WjN_eSbTDR5Oj_QA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: kZWCeoXYxq8FL8bkHquEel0V2JF1u1PK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 malwarescore=0 phishscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_014357_406356_9A65A854 
X-CRM114-Status: GOOD (  11.38  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: RE: PCIE on LS1021A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

QmFzZWQgb24geW91ciBpbmZvcm1hdGlvbiBhbmQgVS1ib290IGFuZCBJIGhhdmUgc3RhcnRlZCB0
byB3b3JrIG9uIHRoZSBMUEFFIHN1cHBvcnQuIFNvIGZhciBmdWxsIG9mIGRlYnVnZ2luZyBhbmQg
aGFja3MuDQoNCkl0IGlzIGJhc2VkIG9uIHRoZSBtbXVfMzIuYyBmaWxlLiBBcyBJIGhhdmUgZmFp
bGVkIHRvIHVzZSB0aGUgMyBNTVUgdGFibGVzLCAgYXQgcHJlc2VudCBJIGFtIHVzaW5nIG9ubHkg
MiBhcyAgaW4gdS1ib290Lg0KVGhlIDY0LWJpdCBQQ0kgc3BhY2UgaXMgcmVtYXBwZWQgd2l0aDoN
Cm1hcF9pb19zZWN0aW9ucygweDQwMDAwMDAwMDBVTEwgLElPTUVNKDB4MjQwMDAwMDBVTCksIDE5
MiA8PCAyMCk7DQoNClRvIGRldGVjdCB0aGUgTlZNRSBkZXZpY2UsIHRoZSB2aXJ0dWxhbCBhZGRy
ZXNzIDB4MjQwMDAwMDAgaXMgaGFyZC1jb2RlZCBpbnRvIHRoZSBmdW5jdGlvbnMgZHdfcGNpZV9b
d3J8cmRdX290aGVyX2NvbmYgb2YgZHJpdmVycy9wY2kvcGNpZS1kZXNpZ253YXJlLWhvc3QuYyBh
cyBmb2xsb3dzOg0KaWYgKGJ1cy0+cHJpbWFyeSA9PSBwcC0+cm9vdF9idXNfbnIpIHsNCiAgICAg
ICAgICAgICAgICAgIHR5cGUgPSBQQ0lFX0FUVV9UWVBFX0NGRzA7DQogICAgICAgICAgICAgICAg
ICBjcHVfYWRkciA9IHBwLT5jZmcwX2Jhc2U7DQogICAgICAgICAgICAgICAgICBjZmdfc2l6ZSA9
IHBwLT5jZmcwX3NpemU7DQogICAgICAgICAgICAgICAgICBwcC0+dmFfY2ZnMF9iYXNlID0gSU9N
RU0oMHgyNDAwMDAwMCk7IC8qIFhYWCAqLw0KICAgICAgICAgICAgICAgICAgdmFfY2ZnX2Jhc2Ug
PSBwcC0+dmFfY2ZnMF9iYXNlOw0KDQpXaGF0IGlzIHRoZSBtZXRob2QgdG8gcGFzcyB0aGUgYWRk
cmVzcyB0byB0aGUgZHJpdmVyPw0KDQpBbmQgSSBnZXQgdGhlIGZvbGxvd2luZzoNCmxheWVyc2Nh
cGUtcGNpZSAzNDAwMDAwLnBjaWVAMzQwMDAwMC5vZjogaG9zdCBicmlkZ2UgL3NvYy9wY2llQDM0
MDAwMDAgcmFuZ2VzOg0KbGF5ZXJzY2FwZS1wY2llIDM0MDAwMDAucGNpZUAzNDAwMDAwLm9mOiBQ
YXJzaW5nIHJhbmdlcyBwcm9wZXJ0eS4uLg0KbGF5ZXJzY2FwZS1wY2llIDM0MDAwMDAucGNpZUAz
NDAwMDAwLm9mOiAgICAgICBJTyAweDQwMDAwMTAwMDAuLjB4NDAwMDAxZmZmZiAtPiAweDAwMDAw
MDAwMDANCmxheWVyc2NhcGUtcGNpZSAzNDAwMDAwLnBjaWVAMzQwMDAwMC5vZjogICAgICBNRU0g
MHg0MDQwMDAwMDAwLi4weDQwN2ZmZmZmZmYgLT4gMHgwMDQwMDAwMDAwDQoNCkVSUk9SOiBpb19i
dXNfYWRkciA9IDB4MCwgaW9fYmFzZSA9IDB4NDAwMDAxMDAwMA0KRVJST1I6IG1lbV9idXNfYWRk
ciA9IDB4NDA0MDAwMDAwMCAtPiBCYXNlZCBvbiBMaW51eCBvdXRwdXQsIHRoZSBtZW1fYnVzX2Fk
ZHIgc2hvdWxkIGJlIGFzIGFib3ZlIDB4NDAwMC4wMDAwIHRvIGJlIHByb2dyYW1tZWQgaW4gdGhl
IEFUVSB0YXJnZXQgcmVnaXN0ZXIuDQpFUlJPUjogbWVtX2Jhc2UgPSAweDQwNDAwMDAwMDAsIG9m
ZnNldCA9IDB4MA0KDQpFUlJPUjogbGF5ZXJzY2FwZS1wY2llIDM0MDAwMDAucGNpZUAzNDAwMDAw
Lm9mOiBpQVRVIHVucm9sbDogZGlzYWJsZWQNCg0KcGNpOiBwY2lfc2Nhbl9idXMgZm9yIGJ1cyAw
DQpwY2k6ICBsYXN0X2lvID0gMHgwMDAxMDAwMCwgbGFzdF9tZW0gPSAweDQwMDAwMDAwLCBsYXN0
X21lbV9wcmVmID0gMHgwMDAwMDAwMA0KcGNpOiBjbGFzcyA9IDAwMDAwNjA0LCBoZHJfdHlwZSA9
IDAwMDAwMDAxDQpwY2k6IDAwOjAwIFsxOTU3OjBlMGFdDQpwY2k6IHBjaV9zY2FuX2J1cyBmb3Ig
YnVzIDENCnBjaTogIGxhc3RfaW8gPSAweDAwMDEwMDAwLCBsYXN0X21lbSA9IDB4NDAwMDAwMDAs
IGxhc3RfbWVtX3ByZWYgPSAweDAwMDAwMDAwDQoNCnBjaTogY2xhc3MgPSAwMDAwMDEwOCwgaGRy
X3R5cGUgPSAwMDAwMDAwMA0KcGNpOiAwMTowMCBbMTI2ZjoyMjYzXSAtPiBOVk1FIGRldmljZSBm
b3VuZA0KcGNpOiBwYmFyMDogbWFzaz1mZmZmYzAwNCBOUC1NRU0gMTYzODQgYnl0ZXMNCkVSUk9S
OiBwY2k6ICYmJiAgc3ViID0gMHgyMjYzLCAweDEyNmYga2luZCA9IE5QLU1FTSYmJg0KRVJST1I6
IHBjaTogJiYmIHdyaXRlIEJBUiAweDEwID0gMHg0MDAwMDAwMCAmJiYNCi4uLg0KcGNpOiBwY2lf
c2Nhbl9idXMgcmV0dXJuaW5nIHdpdGggbWF4PTAyDQpwY2k6IGJyaWRnZSBOUCBsaW1pdCBhdCAw
eDQwMTAwMDAwDQpwY2k6IGJyaWRnZSBJTyBsaW1pdCBhdCAweDAwMDEwMDAwDQpwY2k6IHBiYXIw
OiBtYXNrPWZmMDAwMDAwIE5QLU1FTSAxNjc3NzIxNiBieXRlcw0KcGNpOiBwYmFyMTogbWFzaz1m
YzAwMDAwMCBOUC1NRU0gNjcxMDg4NjQgYnl0ZXMNCnBjaTogcGNpX3NjYW5fYnVzIHJldHVybmlu
ZyB3aXRoIG1heD0wMg0KRVJST1I6IG52bWUgcGNpLTEyNmY6MjI2My4wOiBlbmFibGluZyBidXMg
bWFzdGVyaW5nDQoNClRoZW4sIHRoZSBzeXN0ZW0gaGFuZ3Mgb24gdGhlIGluc3RydWN0aW9uIDMg
bGluZXMgYmVsb3c6DQpFUlJPUjogbnZtZV9wY2lfZW5hYmxlIDogMHg0MDAwMDAxYyAtPiBGYWls
cyB0byBhY2Nlc3MgdGhlIE5WTUUgQ1NUUyByZWdpc3Rlci4gSXQgZG9lcyBub3QgbWF0dGVyIGlm
IG1lbV9idXNfYWRkciBpcyBzZXQgdG8gMHg0MDAwLjAwMDAgdG8gcHJvZ3JhbSB0aGUgQVRVIHRv
IHRyYW5zbGF0ZSB0aGUgYWRkcmVzcyAweDQwLjQwMDAuMDAwMCB0byAweDQwMDAuMDAwMC4NCmlm
IChyZWFkbChkZXYtPmJhciArIE5WTUVfUkVHX0NTVFMpID09IC0xKQ0KDQoweDQwMDAuMDAwMCBp
cyBhbHNvIHRoZSBxdWFkU1BJIG1lbW9yeSBhcmVhLiBTbyBJIGd1ZXNzIEkgc2hvdWxkIHJlbWFw
IHRoZSBhY2Nlc3MgdG9vLg0KDQpVbmhhcHBpbHksIG15IHdvcmsgaXMgbm93IGF0IGEgc3RvcCBh
cyB0aGVyZSBpcyBhIGhhcmR3YXJlIGZhaWx1cmUgb24gbXkgc3lzdGVtLg0KDQpOb3RlOiB0aGUg
TU1VIG1heSBub3QgYmUgc2V0IHByb3Blcmx5IGFzIHRoZSBvdXQgb2YtYmFuZCBmYWlscyB0byBv
biBUWCB0aW1lb3V0LiBJIGNhbiByZWFjaCB0aGUgcHJvbXB0IGFmdGVyIHRoZSBOVk1FIHByb2Jp
bmcgZmFpbGVkLg0KDQoNCg0KDQo=


