Delivery-date: Tue, 22 Jul 2025 18:22:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueFl0-002cDm-2T
	for lore@lore.pengutronix.de;
	Tue, 22 Jul 2025 18:22:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueFkz-0001rs-UW
	for lore@pengutronix.de; Tue, 22 Jul 2025 18:22:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6vqWZgxSAXQJPmXIt5Vitdb91srmmcTG87ygUriygLg=; b=NsRJd1lebICMOR+1QJzYON6q4O
	nvSuXrWtFYlq7BJ5FbIo1CBNYccTyNXmo9xhv1t4ZBa1IDRO2X0Jn7HJr8vQj5oyLWzVK8dJAXnJc
	JF15+lBJhCJ6kb0UjM6z8Nd602kGAd6T4mUV245SkO1t3s/8zyesW8ZDRJwunjXAxAHEv2Ebmg/Iv
	LFO9m8kJYqmPl0LRLSiNH5Wxmbr0KTxw0xD8DD9E5ZxPZU2yyhm4tSAVsymhOCteVlukL8kUIAEoH
	dD/3ndbCFzxdy+AY5KHgcorm4hYEdURAPh/Xm1u3aFhXXE2R8/IfMcuO6GcRnqayEPghQ60F/mV1K
	OOsMMf9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueFkO-000000030SG-3xln;
	Tue, 22 Jul 2025 16:21:44 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueFBv-00000002ugh-1Xsv
	for barebox@lists.infradead.org;
	Tue, 22 Jul 2025 15:46:11 +0000
Received: from pps.filterd (m0163889.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56MDketr018239;
	Tue, 22 Jul 2025 11:46:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pphost; bh=6vq
	WZgxSAXQJPmXIt5Vitdb91srmmcTG87ygUriygLg=; b=x63jxkFsJXWA/52GU4W
	+P3HKi7/ZXAY8BtKYGkPAkOo2sOpWG9lYA1uZgUBuALuD+LlFgULsi/sycIsnF9V
	DXPLXgV3uJK99MG32riVMAmbWSr/LbiedAixijORqZhrKsUf6hBUcrgQGyXqTFBO
	kN9CyjPcY5i7hH6348Jv129VfyCnWIbx03Dnc3TsC0aI4QVKWzvPFelOlbLAULu0
	DsuYswz7VbtaS32WWuO1hUM78Vc6HJvaAjVPrSN9AjsSVROrz0d6ykdLAPFuMNXY
	7Jl322DJMmqPnphXdkgYG3iccLsa6TMUF+SNUerwWeFHYNNW3jfWuom8h4xErWcO
	1lA==
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10on2076.outbound.protection.outlook.com [40.107.94.76])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 48048yhmvy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 22 Jul 2025 11:46:05 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AVbcPvNjVAnVbVqzmeYRDQyqiW24/NIITV5+XQ/lPZTBjKNgSvPKpvc+rnpHOnByfR7J0yCJdkXpxUN14OtIq/t9wj1faie30lKbU73FBaaEt5W99gT32efS08K2xWVqmqGgHNRx0Ye91Es/RQ7wlZ0NhmnVDEknFKlOcg9SECYZxfSdJvnPxumcVXmBkTvnSQ4QYW08uOHBWGdDDMpbZQ6OlGeOyNie/63vfmaiNZEsereBvDk2g3doOvualFQeO34G6KAYIQHkl81gMhaBiD9HbWBGPs9TMNLNaye5svKu9QYe6BYA/ir39hUTII6G8ybd8ZkojBw6WAh3pjNxgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6vqWZgxSAXQJPmXIt5Vitdb91srmmcTG87ygUriygLg=;
 b=PP+UUWf4WLDgPxwp4UkcOcCARbAFzq3/P1XzH6QOZwMbTh5b749YSKzd4WLrlzr+XSvta3HJysI+x+6jitit9eBAi3Ye2KSKubGi3+2pKrs50gCL9aiEqHqWTmf30YZG7u6dgEP1fQZT9OntVMFV+PAc4AEec9dy/Yp6MTylvkkSWYL/oAsnxs3+RZyM766/jDeA8dpUX5M0UySrgLi4NR9I4Lf8KUymAgMfpdBhlCsFx8MEi4+thbXiWVA0ShDqDxK4nAdhvbTo+wq8IL7w2uJfmnNtOinuz1m25weGWAMF5g5SM99J5AT3Qn/wNu7S/3qLykojUohVGb9EgMH9tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6vqWZgxSAXQJPmXIt5Vitdb91srmmcTG87ygUriygLg=;
 b=YMNDO7IMMojVAdkZNnTdYxiE7fR5dCLZymAg8rHc0STesZEz27sP2Dy/2LyOtMnP++e0Q7r1PaSNdxofRIrAtPO53N3Y59uicEuHa+jdeeoOBKQebs8On3/AoTN4CZtYCqID3mErCnIqyE6MXWxyr8XlH5sNlEDIm1l9FyP9+UM=
Received: from DM5PR07MB3532.namprd07.prod.outlook.com (2603:10b6:4:63::35) by
 LV3PR07MB10906.namprd07.prod.outlook.com (2603:10b6:408:28a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.28; Tue, 22 Jul
 2025 15:46:01 +0000
Received: from DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec]) by DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec%4]) with mapi id 15.20.8943.029; Tue, 22 Jul 2025
 15:46:01 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Barebox List
	<barebox@lists.infradead.org>
Thread-Topic: handoff data
Thread-Index: AQHb+vSO5teVuYF5kUOeBeJUxRLy+bQ+DyKAgAAikXA=
Date: Tue, 22 Jul 2025 15:46:00 +0000
Message-ID: <DM5PR07MB353236A680007CD791A00D95EC5CA@DM5PR07MB3532.namprd07.prod.outlook.com>
References: <DM5PR07MB35323F18EB9CB31A85BCEEF0EC5CA@DM5PR07MB3532.namprd07.prod.outlook.com>
 <15ecd1db-7a4f-4ba4-9ddd-27e4391ceee9@pengutronix.de>
In-Reply-To: <15ecd1db-7a4f-4ba4-9ddd-27e4391ceee9@pengutronix.de>
Accept-Language: en-US, en-GB
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR07MB3532:EE_|LV3PR07MB10906:EE_
x-ms-office365-filtering-correlation-id: 46a16ae9-4801-4f22-0da0-08ddc936dbd8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZlB2TVliTnNlajNSRlRGeTBkSzBPcTB5c2pWem1QTlpBOThma0dSZFNhSVgz?=
 =?utf-8?B?SnBCVDhoNThXR3AzZlZ0TXptWktIcnV6WUZQSEtjMXlpb3NpOWpiQUZoV21Y?=
 =?utf-8?B?U1dwSUVLUjNoS09jUkJkb1N3cTRiQ2pzU0dITnB6a2pnRVVGVHZjMVZnelRv?=
 =?utf-8?B?S3Y0aFlra05kdENUb3lNY1A2V3ZCL1JYQklPSEluYlpja3VmV3ZrbTNHdExn?=
 =?utf-8?B?c0M2MTFSbndJSExyRkkxNjhUdE1CcjFWWlIyVXQxMityUnV2UndnLzUxV284?=
 =?utf-8?B?Sk9pNFJSc3d3bG9yVWNOQ2JGcTdQVVN5RzlWeWNudXZxMEcrRnBtaGRPWG9G?=
 =?utf-8?B?TVdydDkzMDFnK2ZqT0F5d0RhL0FycXFGM1h6VVNud29uZSthMzh2SkgrVzNa?=
 =?utf-8?B?Sng4ZExSc2xkZSsxYWVtWGJPc202eUpGRlZ1UVRSMmNxN1lxU2x0T201VUNY?=
 =?utf-8?B?ajFoTjZVWlZVODF2T0pFRE84dGNxVEdRMXFvVFloNXF2YlZOa2M1ZTcva1pZ?=
 =?utf-8?B?UjRFTmtYSGJVeGx6QnpjQk5SQWRlUE1OWmVPZFloS2ZBYnVPNHlyNmdCY0ha?=
 =?utf-8?B?TmRCNXN3NWFHNWpVcVZIcmZrZTM1RElVVjhESGh2V0hiRUtJRU5PTHdSakZX?=
 =?utf-8?B?NzMxZmR3NkxKajZzeUdrM1hBQ3FCTWtzUG15RGJaUHo1bmZSaHhlSTJHbzlH?=
 =?utf-8?B?dmRUTXltd3JGNWZhVDhkLy9MMjY1b3orbi9jYVYvT0N3Snpod1pJVlFPK3FO?=
 =?utf-8?B?ZXpwTU40SVVIZnlVVGlLbktZYUpURFl5cFFEdVI2TEFwUk42N2xHOWhHTG1w?=
 =?utf-8?B?dm5ZQ25laEl5SytyWVZtSlNIM0dMYS9XS2lCaFRxQ090OG9jdXFiaHFvWHhZ?=
 =?utf-8?B?enQ2V0hEbUUzS2dBVjN5ckY4a3A4V01Lem83QStzL00zZVJJdEhJTVpxVlJY?=
 =?utf-8?B?Z2pEaGdXTHhwNS9DK3N2OGExM3N2YkhjWTRsRFkrdUhCZ0piakRmcy9aclJq?=
 =?utf-8?B?RzNqWnAyMW84Q240YS9NbmVCc2I1bEc2ZzEweE9aV2xxR0YxWFB4aG1LWk9s?=
 =?utf-8?B?aWdVSVhSMloxYWdZWG5YQlpGa1ZaWk5mRTNOdnVaaFE1Rm1KeWdTQXNnYTZZ?=
 =?utf-8?B?QU0vRHZqVXUrK0xZcDJLemlhODBIWmRCK1VxVmE1MEtmNHVQZmxRM3hRV04z?=
 =?utf-8?B?UnVjTFE3RktUZTlmNFFQV2V6TDNqakE0cXpyaWVGN3J4TFZzNU5qTEhDR1Qr?=
 =?utf-8?B?b0NaTWRObWtNaGErc0NQR2RBaFBqTnd4Z0dUdXE1Q1N5MTBYQnd4Ky9MVFJI?=
 =?utf-8?B?c2pBQWRyRG1jR0VRRmxaamhxV2ZqdE5HZ29pdGhMdU95dFhuVi9KVjdtejNV?=
 =?utf-8?B?L1laR2RudFNkMHBEeFRQdHBiYkVCRHRvZlFlRndPRG5nd1Zwb0NxN21zbWVM?=
 =?utf-8?B?RHhhODZqNVlPR3l4QnI4SXdLN2p2aVRFbDFhL1NBSWhkQVJWQXFCeHZQaUh0?=
 =?utf-8?B?NFBiTGhUanpMRFRtU1VUVVhHa0dkSFJTcDlRT2d1ZVJCUi9qblduZkV4TGpR?=
 =?utf-8?B?WDExMnRzd1VrS2pBbUwvaVZ4Nlp3dGxvMWNEVDhVSCtabzV3Z0FzRGt5ODJq?=
 =?utf-8?B?UmpoMzR0WkxNYzhuVmhMekZ5cTh0Qkt2U1RxQ2RieW5qS1hrNVdSUjM1YmM2?=
 =?utf-8?B?cU5wS3FvbElFUE12MjVTdnFia2ovblh6Njc0eEdhVTNMYlhtVkJ5cVA5OCtF?=
 =?utf-8?B?aVh2T1BmZEcvTUo4Sk5teFJqeDhFVkdwdXVLVzI2dkJxVHJWQ2dqcC9PM2hU?=
 =?utf-8?B?djRQWERLU0llc2FGU3FIeUtrUFdhNThSZzkwM3JlMGxqQmpQeUVuQ0ZWY2Ew?=
 =?utf-8?B?TjRpVzhJNkh2OTVFWkd6VmJxK0FzdG9MbUg0UW5ESE50Vzg2TGVhMy96dnN2?=
 =?utf-8?Q?HkT9ies9mHw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR07MB3532.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?THZpUVhSSHpkclFOMTU0NGFzSTY4ZE9XbHFrSnpRU2I2N0tTL0hodFd2REFP?=
 =?utf-8?B?ejMxV29Gc21NMFNXRGV2MW1lNFd4UWwzQkMyOGRvTlNZcVJGU1RwbU1GR3ZO?=
 =?utf-8?B?SUhoZjU0dGJrVUVIS0ZSM1l5Vlc5ejhRY2M5WUUvaVdYbGgzd1BzVEJ6b2Zm?=
 =?utf-8?B?UmVmM2RuZFlCL1R4M0hoQ1ZieW16QUgzSEtEWmFvTExQSTlaT2txQzdPcFFu?=
 =?utf-8?B?L25RK2lUTW9PWVJvLytqY1F6eGZMd1ZBTEZwTVRxZEtKRVhrcmV5UWE5UlRS?=
 =?utf-8?B?SzZmYVlNeG9OV2ovTG0zMG5rQjRhRVFZVjZBU3dWQ0l5MTl2RGJKcjhQdEhR?=
 =?utf-8?B?b3FnSm5iNldBMzhpMGVJNzNXSGxldUNDTkNRM0JDTXZyWS9QSWdWTDVDSmRF?=
 =?utf-8?B?bWkyS1FqZkVxeVZMMHphSjlXL2tuMDFtUFZldm90bjMxVVh1T3h1TGF3aHc4?=
 =?utf-8?B?RGpkNVJxcStrVmpKN1kyWnNlVllXU3QwVFZxTTFLYTN1SW92TGp1Nlppd2dM?=
 =?utf-8?B?R1FibFY2bEtZUzlXYXJzTVFrS3NjRUxIbFNROEV3KzB6S0dIUEdqQUFydDh0?=
 =?utf-8?B?MjNGWE4zZms5dG1qSVJWcndsZGI1MGJIa3BYMlJBTUc4Z3VxM2RPd3g3OHRZ?=
 =?utf-8?B?Sld6cytWd0JOTkRrTGcyVE0xdzlhd1ptMUNlRG9JZGxtZGIvVUc3YXRtMHJE?=
 =?utf-8?B?QnlKeUNxZlJOQWgrM0JGdW12R1FQaS9adTZQTEZyQmhZR3FPL0hhR1FEMmdG?=
 =?utf-8?B?azBvUjhtRWhBNGpqcUdFa05nVWU0Ni8rSStnWmZ6d04xUEk1QkhxQm85Q0lC?=
 =?utf-8?B?R1Q3UFJ1NGh5M0huWExmUi80SzJCdjZRckhWNTZDT3QzaFlOcDV6V2MxS0dt?=
 =?utf-8?B?a2V5alNCM2QvMU4yWWF0UXowRSs2bHlrWUJvZEdPYTgvaGVNTlpsTzFzWE1P?=
 =?utf-8?B?TkZaeWdUSG5xOE52VC9tM1p4RG1zalJvMVViNFhjRlQ3RkN0ZDN5RTV3Z1Ev?=
 =?utf-8?B?d1RaNlE3QVRxK25Yay9sWlp0SDF1TE52Z095YUh0alVsT3Z0QSs1YkF4ZlJZ?=
 =?utf-8?B?VVA2VG52VW82RHp3QnJzekhVZDZPM2hhNkdtTkltWVcvOFJDYkdiK3FEVUVH?=
 =?utf-8?B?VkJEL05OS2lOUHlIZlB0RkptUjRQK09YZWNCc2E4MThXc3dwR2xUL0JVcTFw?=
 =?utf-8?B?RktLclNJRlliK2tMSmpTTlE0NHdCZXJVR3g2T3l5eHZBd1pUOGFvVGtadmRz?=
 =?utf-8?B?blhRUDlTT1RSMzBOS0pCQUM2NXZRb2RqbzBwZUFQbXNoZVZHUXVOQ0tCUGE5?=
 =?utf-8?B?N1RMRkQ3U0FwMGhONXcrYW9rUWhFK1V5M0wybTJLMWJHZ3dEUEF0YlI4VFl1?=
 =?utf-8?B?YTJoRWZNOEgrNjk4WGQ3OTJIblRWOUlRTGFUbTZpbmRFKzk2T29tNmhqRGFY?=
 =?utf-8?B?NGVLN2dtbkQ0UjB6Qkd1RkNraUZaT3ZtTG5COGtJWkoyM1BQRDRqWllWcTg0?=
 =?utf-8?B?U1VvcUtmemdBVWw2VWpwNDJEQXdXT3JUcjliVWxabjN2Rlh4SGV6MEdhK1NT?=
 =?utf-8?B?ek1mU21Renp4MWRQTVZURzJkVTY2ajJZUmdhK2lXemluM2tpR2UrMDE1VlVS?=
 =?utf-8?B?S0ltd1c2b1Rwd05nWUl1Z21ac2w4NjAzcVVUZEVJdVhJb2VMTU02N0pIYXg5?=
 =?utf-8?B?UEZEek94OWdqZklyVDhkZEp0aWg1bHIzQjJFZzNhYUxTQjlWSUU3M3BncWd6?=
 =?utf-8?B?cTZ6ck1tc1h2Z0xZWjdObzNVMWM5RGF5ckZMckVkTnZsdGYxVWwxNWZCMGNI?=
 =?utf-8?B?NEdZR0hzdDJ0SnRhaGhwTU9zUXhaak1pb3BsalU4ZTZEUFpBLzA3UTNoVEQ2?=
 =?utf-8?B?Z0laWW83eWhXem15dUs3NFluenlvWkNYTG1rK0ZyUSs2VWJoOXlqZWZ6OFJn?=
 =?utf-8?B?U2tjTHdMRTE3cUN3QjNzT0Q1NXN0bWhOb1ZkL0VIWFlPa1Y5Q3hFMjhsWGFG?=
 =?utf-8?B?MFNXMndsK0lqSHdwczYrYnJRZi9Va21pcjFOUnczVng4VGswQ3RxMWxydkVq?=
 =?utf-8?B?RmRBK3Y5eFp3eWM1WmxxbkVFcURMNkpSRWxSU2p5SHFBeWZud1cweHQ2VXc3?=
 =?utf-8?Q?w2tuJ5Ald51toCKLRtef8tcA5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR07MB3532.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46a16ae9-4801-4f22-0da0-08ddc936dbd8
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2025 15:46:00.9747
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: piq2E9eLq1g7Z0c2URZFCNPCCOZ1t3vlMSccAQ4CnUh5BXHUvpWiLIFP0kIOI9WKOOWvWhippFCz80IGFtGuw7m6T0Um+BB28N7FCRNIUck=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR07MB10906
X-Proofpoint-GUID: kc7eH3Au606RCSOnXY-fHjuXqL3Negdr
X-Authority-Analysis: v=2.4 cv=TonmhCXh c=1 sm=1 tr=0 ts=687fb23d cx=c_pps
 a=rEQQsR7Ugn5ZZwU8aSbkAQ==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=m3P6IW4lH-wA:10
 a=uherdBYGAAAA:8 a=bGNZPXyTAAAA:8 a=ZESpnbVrehMDPofC6ssA:9 a=QEXdDO2ut3YA:10
 a=yL4RfsBhuEsimFDS2qtJ:22
X-Proofpoint-ORIG-GUID: kc7eH3Au606RCSOnXY-fHjuXqL3Negdr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDEzMiBTYWx0ZWRfX3AipZMzjY8kn
 Opf0/zqhGHH6J0sVTo269kpQ/yb6DQJMxxju7y5j5JYXcn51tSKshttuLb7Z5R1KyTfpBkKWl6y
 ACEywRFgFhUpPHv5P7/jbJT88oQ9d0O1BTNS5ManEPtXeFaX6LCsKOkGN6Uq4nijulgypl6cDvF
 WgscXE2gql1yEcmIG1viwGDwZ1kaZ6jvdNeSIgrwlyq8RDQBj/L0q0N877O+/DDbytB/QcqxTLC
 Odj7yP2mPIbRt7hWuqK+Hvyhfrt2/BWV3ESFNTSeE6kZy46mZp1wDYacZKohOGQRchDEPlA6CKP
 na9RW95Devoo9Psc3682QMT+ZPcwpYi7V6DLlTaESPXrdIJqhs6ixuOPjgmWCbCC+zM6SL9dUOr
 UguqouI9vCu+eXnOgA/BsiyIP4fOOZjJECvwJDmHgjq/BGKxBJQad0SKY2a/jbvtAVa78OPE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_02,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=999 malwarescore=0 bulkscore=0 impostorscore=0
 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_084607_752690_85771AC6 
X-CRM114-Status: GOOD (  21.42  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: handoff data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

DQo+IA0KPiBIZWxsbyBSZW5hdWQsDQo+IA0KPiBPbiA3LzIyLzI1IDEzOjA4LCBSZW5hdWQgQmFy
YmllciB3cm90ZToNCj4gPiBPbiBvdXIgTFMxMDQ2QSBiYXNlZCBib2FyZCAodjIwMjIuMDMpIHdl
IHVzZWQgdG8gcGFzcyB0aGUgcmVzdWx0cyBvZg0KPiBtZW1vcnkgdGVzdHMgaW4gdGhlIFBCTCAg
dGhyb3VnaCB0aGUgT0NSQU0gdG8gdGhlIGJhcmVib3ggbG9hZC4NCj4gPiBJIHNlZSB0aGVyZSBp
cyBoYW5kb2ZmIGRhdGEgc3VwcG9ydC4NCj4gPg0KPiA+IEluIG15IGJvYXJkIGxvd2xldmVsLmMg
Y29kZSwgSSBoYXZlIGFkZGVkIHRoZSBjYWxsOg0KPiA+DQo+ID4gaGFuZG9mZl9hZGRfYXJtX21h
Y2hpbmUoMHgxMjM0NTY3OCk7DQo+IA0KPiBZb3Ugc2hvdWxkIGRlZmluZSBhIG5ldyBoYW5kb2Zm
IHR5cGUgZm9yIHlvdXIgY3VzdG9tIGluZm8sIGUuZy46DQo+IA0KPiAjZGVmaW5lIEhBTkRPRkZf
REFUQV9NRU1URVNUICAgSEFORE9GRl9EQVRBX0JPQVJEKDApDQo+IA0KPiBpbnN0ZWFkIG9mIG92
ZXJsb2FkaW5nIHRoZSAobGVnYWN5KSBBUk0gbWFjaGluZSBpZCBmb3Igc29tZXRoaW5nIGVsc2Uu
DQo+IA0KPiA+IEFuZCB0aGVuIHRyeSB0byByZWFkIGl0IGJhY2sgZnJvbSBkZXZpY2VfaW5pdGNh
bGw6DQo+ID4NCj4gPiAgbWFjaGluZSA9IGhhbmRvZmZfZGF0YV9nZXRfZW50cnkoSEFORE9GRl9E
QVRBX0FSTV9NQUNISU5FLA0KPiAmaHNpemUpOw0KPiA+IHByaW50ZigibWFjaGluZSA9ICVsZCwg
JXBcbiIsIGhzaXplLCBtYWNoaW5lKTsNCj4gPg0KPiA+IEhvd2V2ZXIsIGJvdGggdGhlIG1hY2hp
bmUgcG9pbnRlciBhbmQgc2l6ZSBhcmUgc2V0IHRvIDAuDQo+ID4NCj4gPiBBbSBJIG1pc3Npbmcg
c29tZXRoaW5nIGluIHRoZSBwcm9jZXNzPw0KPiANCj4gSGFuZG9mZiBkYXRhIGlzIHVzZWQgZm9y
IERUIGFzIHdlbGwsIHNvIGlmIHlvdSBnZXQgdG8gYSBmdW5jdGlvbmFsIGJhcmVib3gsDQo+IGhh
bmRvZmYgaXMgd29ya2luZy4uLg0KPiANCj4gQXMgYSBzYW5pdHkgY2hlY2ssIHdoYXQgaGFwcGVu
cyBpZiB5b3UgbW92ZSB5b3VyIGhhbmRvZmZfYWRkX2FybV9tYWNoaW5lDQo+IGJlaGluZCBoYW5k
b2ZmX2RhdGFfYWRkX2R0KCkgaW4gYmFyZWJveF9wYmxfc3RhcnQ/DQpEb2luZyBzbyBJIGNhbiBu
b3cgZ2V0IHRoZSBtYWNoaW5lIHZhbHVlIGJhY2sgMHgxMjM0NTY3OA0KbWFjaGluZSA9IDQsIDAw
MDAwMDAwZmJmMDMxYTAsIDB4MTIzNDU2NzgNCg0KPiANCj4gSWYgdGhhdCB3b3JrcywgYnV0IHlv
dXIgaGFuZG9mZl9hZGRfYXJtX21hY2hpbmUgaW4gbG93bGV2ZWwuYyBkb2Vzbid0LCBjYW4NCj4g
eW91IHNoYXJlIHlvdXIgY29kZT8NCg0KU28gaW4gbXkgbG93bGV2ZWwgY29kZToNCnN0YXRpYyBu
b2lubGluZSBfX25vcmV0dXJuIHZvaWQgb3djX3N3ZXg1MHNfcl9lbnRyeSh1bnNpZ25lZCBsb25n
IG1lbXNpemUpDQp7DQogICAgICAgICAgVWludDMyX3QgYmF1ZHJhdGU7DQouLi4NCiAgICAgICAg
ICAvKiBEYXRhIGdvZXMgdG8gT0NSQU0uIEluIHRoaXMgZXhhbXBsZSB3ZSBwYXNzIHRoZSBiYXVk
cmF0ZSovDQogICAgICAgICAgcHV0cygiQUREIEJPQVJEIERBVEFcbiIpOw0KICAgICAgICAgIGhh
bmRvZmZfZGF0YV9hZGQoSEFORE9GRl9CQVVEUkFURSwgJmJhdWRyYXRlLCBzaXplb2YodWludDMy
X3QpKTsNCg0KICAgICAgICAgIC8qIE9ubHkgdXNlIDJHICovDQogICAgICAgICAgaWYgKElTX0VO
QUJMRUQoQ09ORklHX01BQ0hfT1dDU1dFNTUwUykpDQogICAgICAgICAgICAgICAgICBtZW1zaXpl
ID0gbWVtc2l6ZSA+PiAxOw0KICAgICAgICAgIGxzMTA0NmFfeGxvYWRfc3RhcnRfaW1hZ2UoJmRy
YW1faW5mbyk7DQoNCiAgICAgICAgICBwcl9lcnIoIkJvb3RpbmcgZmFpbGVkXG4iKTsNCg0KICAg
ICAgICAgIHdoaWxlICgxKTsNCiAgfQ0KDQogIHZvaWQgb3djX3N3ZXg1MHNfZW50cnkodW5zaWdu
ZWQgbG9uZyByMCwgdW5zaWduZWQgbG9uZyByMSwgdW5zaWduZWQgbG9uZyByMik7DQoNCiAgX19u
b3JldHVybiB2b2lkIG93Y19zd2V4NTBzX2VudHJ5KHVuc2lnbmVkIGxvbmcgcjAsIHVuc2lnbmVk
IGxvbmcgcjEsIHVuc2lnbmVkIGxvbmcgcjIpDQogIHsNCiAgICAgICAgICByZWxvY2F0ZV90b19j
dXJyZW50X2FkcigpOw0KICAgICAgICAgIHNldHVwX2MoKTsNCg0KICAgICAgICAgIG93Y19zd2V4
NTBzX3JfZW50cnkocjApOw0KICB9DQoNCkkgZ2V0IHRoZSBmb2xsb3dpbmcgZGVidWcgb3V0cHV0
Og0KQUREIEJPQVJEIERBVEENCmhhbmRvZmZfZGF0YV9hZGRfZW50cnkgaGQgPSAweDAwMDAwMDAw
MTAwMTQzZTggID09PiBNeSBkYXRhIGFkZGVkIGZyb20gbG93bGV2ZWwuYyB0byB0aGUgT0NSQU0N
Cg0KVGhlbiwgZnJvbSBiYXJlYm94X3BibF9zdGFydDoNCn4gICAgICAgICBpZiAoYm9hcmRkYXRh
KSB7DQorICAgICAgICAgICAgICAgICBwdXRzKCJBREQgRFRcbiIpOw0KICAgICAgICAgICAgICAg
ICAgaGFuZG9mZl9kYXRhX2FkZF9kdChib2FyZGRhdGEpOw0KKyAgICAgICAgICAgICAgICAgcHV0
cygiQUREIE1BQ0hJTkVcbiIpOw0KKyAgICAgICAgICAgICAgICAgaGFuZG9mZl9hZGRfYXJtX21h
Y2hpbmUoMHgxMjM0NTY3OCk7DQorICAgICAgICAgfQ0KDQpBREQgRFQNCmhhbmRvZmZfZGF0YV9h
ZGRfZW50cnkgaGQgPSAweDAwMDAwMDAwODAwMTQzZTggPT09PT4gRFQgYWRkZWQgdG8gRERSICBt
ZW1vcnkNCkFERCBNQUNISU5FDQpoYW5kb2ZmX2RhdGFfYWRkX2VudHJ5IGhkID0gMHgwMDAwMDAw
MDgwMDE0M2U4ID09PT0+IE1hY2hpbmUgIGFkZGVkIHRvIEREUiBtZW1vcnkNCnVuY29tcHJlc3Mu
YzogdW5jb21wcmVzc2luZyBiYXJlYm94IGJpbmFyeSBhdCAweDAwMDAwMDAwODAwMTUzNzAgKHNp
emUgMHgwMDA4NTNmYykgdG8gMHhmYmQwMDAwMCAodW5jb21wcmVzc2VkIHNpemU6IDB4MDAwZmM1
YzgpDQogaGFuZG9mZl9kYXRhX21vdmUgaGQgPSAweDAwMDAwMDAwODAwMTQzZTgsIGRlc3QgPSAw
eDAwMDAwMDAwZmJlZmM1YzggPT09PT0+IEhhbmRvZmYgZGF0YSBtb3ZlZCB0byBuZXcgbG9jYXRp
b24NCiBoYW5kb2ZmX2RhdGFfZ2V0X2VudHJ5IGhkID0gMHgwMDAwMDAwMGZiZWZjNWM4LCBjb29r
aWUgPSAweDI4MDYxOTcxDQoNCkJvYXJkOiBvd2Mtc3dlNTUwcw0KUkVOQVVEOiBoYW5kb2ZmX2Rh
dGFfZ2V0X2VudHJ5IGhkID0gMHgwMDAwMDAwMGZiZWZjNWM4LCBjb29raWUgPSAweDI4MDYxOTcx
DQouLi4NCmhhbmRvZmYgMHgyODA2MTk3MSBhdCAweDAwMDAwMDAwZmJlZmM2MDAgKHNpemUgMjc1
NjApDQpoYW5kb2ZmIDB4MjgwNjE5NzQgYXQgMHgwMDAwMDAwMGZiZjAzMWQwIChzaXplIDQpDQoN
CkZyb20gZGV2aWNlX2luaXRjYWxsOg0KIGhhbmRvZmZfZGF0YV9nZXRfZW50cnkgaGQgPSAweDAw
MDAwMDAwZmJlZmM1YzgsIGNvb2tpZSA9IDB4OTUxNzI2ZmINCiBiYXVkcmF0ZSA9IDAsIDAwMDAw
MDAwMDAwMDAwMDAgPT09PT0+IAkJCU9idmlvdXNseSwgbm8gY29waWVkIGZyb20gT0NSQU0NCiBo
YW5kb2ZmX2RhdGFfZ2V0X2VudHJ5IGhkID0gMHgwMDAwMDAwMGZiZWZjNWM4LCBjb29raWUgPSAw
eDI4MDYxOTc0DQogbWFjaGluZSA9IDQsIDAwMDAwMDAwZmJmMDMxZDAsIDB4MTIzNDU2NzggPT0+
IE1BQ0hJTkUgZGF0YSBpcyBjb3JyZWN0DQoNClNvLCB0aGVyZSBpcyBhIG5lZWQgdG8gY29weSB0
aGUgZGF0YSBmcm9tIE9DUkFNIHRvIHdoZW4gdGhlIG1lbW9yeSBpcyBhdmFpbGFibGUuDQoNCj4g
DQo+IENoZWVycywNCj4gQWhtYWQNCj4gDQo+ID4NCj4gPiBDaGVlcnMsDQo+ID4gUmVuYXVkDQo+
ID4NCj4gPg0KPiANCj4gLS0NCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgIHwg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwNCj4gU3RldWVyd2FsZGVyIFN0ci4gMjEgICAg
ICAgICAgICAgIHwNCj4gaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHA6Ly93d3cucGVu
Z3V0cm9uaXguZGUvX187ISFIS09TVTBnIUhSDQo+IFVIdkFLSHU4QnVqeFZ3XzAyN05yTnlXUjFn
Q3p1T0FxUnhIaXRDTGNLSzdfM0dBbEZZQzFUM1liY2cwNw0KPiBXVmo5cl9Qc3ZHcm45dXRlY0lY
Nnh3NXlpYXhDNCQgICB8DQo+IDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICB8IFBo
b25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8DQo+IEFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhS
QSAyNjg2ICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8DQoNCg==


