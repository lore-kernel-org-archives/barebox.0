Delivery-date: Wed, 24 Jun 2026 17:53:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wcPuh-009PKn-2h
	for lore@lore.pengutronix.de;
	Wed, 24 Jun 2026 17:53:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wcPug-0002Il-CS
	for lore@pengutronix.de; Wed, 24 Jun 2026 17:53:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3jQKcF2VNewYOms2+N1ET9MLtBuXeNqCoIqeMHqdqpQ=; b=wGlixcTZsK5hbr
	8aIn+1y4RdpggH1A9hw56KzM5K2cynyJVpqt5EkAnyL+FIbhtoMmf1In4nWymwE0YTzQiDl1MDqhV
	1NM4aqhapPCoHTHuQ9+KPOZsKWDU527YRpdf6p8rCBrujMfxsq7pLLoM/kerOscmq6zh86C91iu4B
	8i9fD+aVuh3iaVuG3XH+J8oFRkM3DXXSeKm7AXmiZ4vBiT+y0fkWgz1SCKnUPBpnd0F76fcZVSNnH
	Dr1h0yVDG8ge9BOuf2TbSAX4RFeIT6Eobq18QHoSdUnSE0v/m541YH7AZ1alSjEY0LqSD5818Vnp1
	1WiAfEXkltZEyUbCrzcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcPtP-00000008393-1SNj;
	Wed, 24 Jun 2026 15:51:59 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcPtL-0000000838B-3fxI
	for barebox@lists.infradead.org;
	Wed, 24 Jun 2026 15:51:58 +0000
Received: from pps.filterd (m0163886.ppops.net [127.0.0.1])
	by mx0a-001ec801.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65OEjNN01057622
	for <barebox@lists.infradead.org>; Wed, 24 Jun 2026 11:51:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=pphost; bh=3jQKcF2VNewYOms2+N1ET9MLt
	BuXeNqCoIqeMHqdqpQ=; b=TimtzeAN9ZpcveICwTYtdLdsXoz0ZWvJwOugEaHLl
	6gvNxbvLt8yUUz6xGPG1uyq/VEUTYS8b2ACBWX8WT/Hyncpcg3u7DIw1BUEpRQ0A
	RaR9wpUztXRgSHDtLrxQiZazgGvpDRI3F7nUdy01HStgVGXyVGQAYKGI/8AF3fcg
	ieH53+nBXTgwjVOq3hZJStggRDo2ljnJx8+FbCZSuyqBrhX8q94LWQyOCq/zJOvd
	VZAtcIXYV9f8LXB/utPgiRMQgLm2lY1aOz0TlV23BHIAZck9oruYdlRnV2/wqP1Y
	hqCC0mW3nlt5iif2Un8jycgIQ6YLpzKwbt3KQHx1Y8nNw==
Received: from ph0pr06cu001.outbound.protection.outlook.com (mail-westus3azon11021141.outbound.protection.outlook.com [40.107.208.141])
	by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 4eyrde811p-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Wed, 24 Jun 2026 11:51:53 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=igBH4u0GdHGC6N7804HYomBsjMptZ2HquzTIX+qSqbHdOIEU5/20OGh5bysRQ5Df4A7vRPh/mt+KGokeDCvD+lv6AY+oNEfmwL/oe06mcLue3tV41M7X5MVSo9H+KqWWcsYx2x8I+4m9pe0hEbnMALRPZP/dA16L8xwilGnEuTshHF1CG7lBvjMqsIaMNXui9WSoqjZbT7weLOda+p4xcvTfCcDBijLhNChLQ4bYzeXYXqi2WrOqKrMCz4Xl2y9PgUwK1TUL/FI8E+nOmEneCy5itTSmXWg5V7Sm3Hbx16ujlqVMXhZuelHv92W7rDnobPR7maUXl9uMKdudhu6X6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3jQKcF2VNewYOms2+N1ET9MLtBuXeNqCoIqeMHqdqpQ=;
 b=XBnrt/M5FhgsObaUmlgllNruLPm3voBVFwep10EGkOOPV1W7x1u/JkKs8njinsRWI2dpHWMm0ENG1zcKvSkZfT0T28/IIOuFAKABdd3yzPuaDbiBJEJ41ba6ACayFrg4ldm/h2rViY6vii3lL8FyAQCguVZ+X2GGcks9lZsmJNPqcQcV2+/LTXes0vD8Ej1Dc/XS1GuxGfyMhyZWsRJrGbnuBInOqkNaeLTyZARHhimLJhRxVAOS+nof9muz2qboR01I2B2uoi4HjBuKAI4FnK2FyTyCT2lTO8dQ2OvP/Ia0GdsaG9Pu6HhvF0iUMn0mGRyDnE1tduf+L6U81Cp+ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3jQKcF2VNewYOms2+N1ET9MLtBuXeNqCoIqeMHqdqpQ=;
 b=LI4cCJPko1WOYKS2Qu5XAaBoUG/zjL2MCS0EmoNfxhirg0MTn+kV+Ml0/MBI+80UunufmH9aJkw/W4eOSKNL7QFKq4jQnfLzwi5vDCfY92QABEEWBtptn3yZ3UcGNXbqoPli1X/KI29E0EtrJ28PilJvd774dWHdZ+TBJ7r4gNw=
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com (2603:10b6:a03:4e0::13)
 by SJ0PR07MB7632.namprd07.prod.outlook.com (2603:10b6:a03:27a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.14; Wed, 24 Jun
 2026 15:51:49 +0000
Received: from SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2]) by SJ0PR07MB9766.namprd07.prod.outlook.com
 ([fe80::e718:f89:a807:e5a2%5]) with mapi id 15.21.0159.013; Wed, 24 Jun 2026
 15:51:49 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: Initialization order
Thread-Index: Ad0D7ex0o3CazjLqTAKqwWqlxR5Qlg==
Date: Wed, 24 Jun 2026 15:51:49 +0000
Message-ID: <SJ0PR07MB976607010E638B0F6CDE5B66ECED2@SJ0PR07MB9766.namprd07.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR07MB9766:EE_|SJ0PR07MB7632:EE_
x-ms-office365-filtering-correlation-id: 55dbacab-d371-452d-78fb-08ded20880e1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|23010399003|1800799024|376014|38070700021|18002099003|6133799003|56012099006|11063799006;
x-microsoft-antispam-message-info: gAswghlKVZ2WC0yGF0l1vEFuemZVaMFI8ThRdyRUiclvhVrNmhH0MKJaBV8XkVjhfUP/IfkyuY4Dy4/TeBgE06vw/uihv7sXRSvHIWR/tuqak4J6niAJmh/s09GDndG8vCiWIIiZ4kdyX7CPF2p0nma2HIl3iMq5o3ZZOtsyCIrg2x8AW53o84bmCvbmUD4+gtE5FuWKXvb9M7kagF07TMnZE673Gr6H4qeQV77kFKAKF0mqkn+kRvQx2mnboMUWjItOYCauR5bBj8csGmR8kAQNrrbi46fqgZhHXEEfGGJTIzwtkUJAt+PCzaisiTWJAdCdWUfqw0R6PQf9YsipiH/m9Y2+x+muEwr6Secm4KxZqWkj9W8urGM0+iSmsMA0DSNbMFqDMvQoyFzWzf+wrHD17YeXrHbJvriX/EJSvNExClPLpAEAjRU+Rlpn7xBBd234aVWCm/qwbn/MxiL9aNBDjXEVUth5Qos9fumxfeWV2bnty5yJZWNerPTIIfZC4f5RiOa04FtqtQrRkTh+f86rtqf9pbo9K4PFnPKM5uHGtd91/mYCHejrz7XG/t/+Z/fTjbWfN8qT/TKUEacdrp5iYS5XoR9aoIa1aF8e21ubbkPGXsE/Htx8BhkPlHcEeEjEugKVTWKzqsjJ4z07fPOrjntI1zQDoF/vKZk0K/G9GLksV128ASQ2/THFG5k8TaCY7LRnBi9Tt0px7/pwkAcYutsWz2seg6kZkN5pNiY=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR07MB9766.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(38070700021)(18002099003)(6133799003)(56012099006)(11063799006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KjnSsZ7JH/Qdo0SQ8WgEXYeWTzBlIZj8PtWKJaD0u2MBzJeH5KwNkuYKS7h9?=
 =?us-ascii?Q?o1h72IFNit1ck30c+BlHNDDejqrqNvleuCMEC0WDK80qSK+w9sWpahaoVHXf?=
 =?us-ascii?Q?Cq4uL9gGwb70j4BF8wbYHH1ummPQz8dXb2EW3HQYgut8R5tFUOZsLbgCkiML?=
 =?us-ascii?Q?wfnxB13kVMHfRobBfBrBnxLAZmlE6pc/1N7lKMML10acjmLFYpbizgvdQCuW?=
 =?us-ascii?Q?3hjL9WBhTwSq3RA63J9NNjFams0uXD/7Dfo50WTrtcQ0WBQtW/qMWf9HFAr8?=
 =?us-ascii?Q?DnGsKyCHYJurJaelZ2RDrcdJvc2lZA0idbLBbvRxDJF4mP4Q0VX5r66DBpUF?=
 =?us-ascii?Q?/T8bbjDMYhH3VSjHLHFaAA8SVG83cvpLMBou/JAOy6oCwwY0FOON+WT1SWG6?=
 =?us-ascii?Q?flxI/X6sL24C07VOW/zf6ZzyZC1dERypMBvGP748+xt7o0cuIn8HpdcJ3xnp?=
 =?us-ascii?Q?+ZoGLMB+UMa4r1xjlcVHWjn+pJjuqyjj2vzsz/pqOgq/XNInKVax2KvqMgk7?=
 =?us-ascii?Q?XKdOrGPE9BAEW5i83cab4fKr0pLPD5eONeQsU0ybPT1PwQUOOZtmy0GKlCBh?=
 =?us-ascii?Q?73UQKCVh7l9bCkHW7NRzcKKKCMGUYlC8ouIj0N0Jq+BrzHuXaijGZ74ZwA1e?=
 =?us-ascii?Q?1X+WyKy/dA24pDk7+HBckOo4Sgv9fnF5J2myBbphLw7aFtZ2tZUMyhBQKVqT?=
 =?us-ascii?Q?EO8TZZB6M6KGh2cw6LvWJd++xe00q6DMeCe/kSSG4DUg9cHUdtLyg9/ijBga?=
 =?us-ascii?Q?BzFmOBeTq3tXOmcNnZrlJK8ik6102jVbdGhdorldtleJA8hd50vQUSSJVHu3?=
 =?us-ascii?Q?dQ8VyLV9E44779hSTmpTgcgqVX7ny1l9aCL/R+3Ifg3BZ3OzTdECxqO5cO4l?=
 =?us-ascii?Q?nU1LYpVDPlRxB3y69AIYstbrJ6UgmlP/PE/SDNrFoMX0co6V1E9fSuMsvNTd?=
 =?us-ascii?Q?OakmzWVfEQrOBuR6kcjoL9fQldrKNHJAYiiKnzFrEhW/nGQN0qogxYV98Yrq?=
 =?us-ascii?Q?AertBSdQk/nHPmqAmr+B4c/FPMvaHpqv7AqM96N5foPsRrwp3VZsVw0s1MuG?=
 =?us-ascii?Q?KUNbbnANY+G8eTm+VTNt2xwg1WQr4eKk+lgpZBJygzMNvBQ2qOkR6kr07qsp?=
 =?us-ascii?Q?THJRZ5XC4v0BJcKddZcY1gr0CvNRkaqSt0bKlcDHrV+4SU4g/hGDt9PHJMH9?=
 =?us-ascii?Q?HpMia+2ACwUjbW3hk8DH84IObjhhDAVjjsgL02dyPkwouT9Mt9dcz7SKOqBI?=
 =?us-ascii?Q?vv0V6el9gtIfqw0ctgRP9obTpc3NeboGDBFqvl7EhQ03O46I1jXe+BsNIpBU?=
 =?us-ascii?Q?+POdE+mjpDeJfJowk9sQ7ijulthgZjySGRrqmpdM2Urvs+DbufAwUjCQPEw6?=
 =?us-ascii?Q?qNKnelY3dkvsRX9QgZmHPieC6ddGuHs4vYd6iRH7fN4DW6saU6SXSLkRnoqk?=
 =?us-ascii?Q?DnEEzlnDZinZilfIuSGzmDfPhvimrw2ExK7dUZ6WkE72oHp73Dz4PCLJQY1r?=
 =?us-ascii?Q?gUQb9vJmSAT8QS/Fgag0aVjlIOKuz6E3c1AV3XRixu5s9DXBaSS/xrPAjjVe?=
 =?us-ascii?Q?+NCsWjHxHnj6XIO9z98ESC3/jB358EJygfEjiEonCF6m5wh/6OWvWe+UXBZd?=
 =?us-ascii?Q?g0xtVXzJ9LZ7K/u1gegmxY+Y/Zq8akI6HiX8zpje8zXgy0W4Gsx8UVvEnair?=
 =?us-ascii?Q?qBiCm/VQT70NRLtjfAAbin2Pd2uOqzVWoLjmwQ41zjE+9KxJ6ZzijfjE2Bco?=
 =?us-ascii?Q?s/giU61YQg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WXGflwUe7ed24IcI/JPnLVe7C2qJTF2duICopa4J6//Nb/NZW6gIgxGzoGSdJ0/Nhg80G501Gr7Q09uZ2/pqYIGFjoUOuXmUSyWp/uAwUcxzyF2F7x148FWHofZd1w4WDKCFlQ0sJ1vRW+HHD97dB3Hec8lkn3NA7ifbNiIJV8Z6OkaDTzjbrMZphHoZMlsT8bziwwvGR6G5EbYo1iU32nWz7UpCmJV0j0tLsBLlMUEPKfwwwHRxZIF8tM5sa1EabuQNVekzMjLXlR86V7ZxO6jhTt6n8RsRQWe9I5nPRtTJGRLo2SqogQgTyBFpQKjMIm/BADMum4jGvaSpHuf5vA==
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR07MB9766.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55dbacab-d371-452d-78fb-08ded20880e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2026 15:51:49.6446
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4So2CcKZ8pd5mnnMU/5JXRoqVQG0NKjh+hXAz54QkYUoHxrft7s7UDqcH9nnjUcZpOpD32aikFQzlaYTsCGkUA0D1to219BAZWhPLnm1L5Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR07MB7632
X-Proofpoint-ORIG-GUID: i__FoRNEBuFmvFheJoAcOQOvsQLqTigB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI0MDEzMyBTYWx0ZWRfX4kHRcENlWHoW
 RYqj/8wUZ7D07DhB8KIkeSEPm1V+skK+q1NsvoIhAEtJf9/hzj3ry1URTclsFC2WOr80rFm7vjk
 Gw7jp3REmSJrFMU6YRdghKhD49hjlepGatnXJEU1HVcD3rXyncdjByhD9ztuGSI+DbEgnwtt26y
 IJm8csNVpWI+6euQwVtqeOhA6W+v3SAQsAB0m9J8gGOFZHS5m8GrMIK6gf73+swHEeCJUVivwJu
 BsJbDBefdVqQmukxtc4JbyXUYefK1vhXUSQZ1M/KihOUmcaYXQm+dfcprXEtgpE7/NUi71+VPHm
 +0xoA8T7MmAwvu2HBA7RSspntUoElcz2IivCMKAWFHKJdpWJezuf6tWI2q8BRPgXJt4gOaSY22C
 +iTNne22Ep9gjOull70xADeIGbXj6Q==
X-Proofpoint-GUID: i__FoRNEBuFmvFheJoAcOQOvsQLqTigB
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI0MDEzMyBTYWx0ZWRfX/Jq7C+TKPAQA
 NP4ypWWzYOdp2oOwr2S15+OYJQvw07Lc+XeUvuq1g6HWl+nZFiea25+0ikNLGGiMaWGpag2da9M
 9jCkYc2YvEoGLNJte5xVgId1RFiOcCk=
X-Authority-Analysis: v=2.4 cv=bZRbluPB c=1 sm=1 tr=0 ts=6a3bfd19 cx=c_pps
 a=azlkv/KBQR0ub+Yip4pvTg==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=m3P6IW4lH-wA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=nxKGlp_yvOrowMGCFGNG:22 a=rlAm-rynIqtlprnVPWRb:22 a=8ybbjBt5iqgOJtfqhL4A:9
 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-24_03,2026-06-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0
 suspectscore=0 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606240133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_085156_296414_3CC90B59 
X-CRM114-Status: UNSURE (   8.35  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Initialization order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,
I have a LS1021A connected to a device via SPI bus and PCIe bus. To enable =
the PCIe bus on this device , I need to write registers via the SPI bus.
I created a small SPI driver using the regmap layer to access the chip and =
I am able to  display or write registers via md and mw.

I have tried (core)device_initcall opening the device using open_and_lseek =
but it is either called after ls_pcie_probe or too early and failed

What would be the best approach to do this initialization before ls_pcie_pr=
obe is called?


Cheers,
Renaud



