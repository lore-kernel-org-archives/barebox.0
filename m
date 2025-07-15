Delivery-date: Tue, 15 Jul 2025 21:15:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubl7t-000Edk-2O
	for lore@lore.pengutronix.de;
	Tue, 15 Jul 2025 21:15:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubl7s-0001q6-VY
	for lore@pengutronix.de; Tue, 15 Jul 2025 21:15:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WaR6oCK+anDGSmahOrZaZxHoL1rGL+BJYPgSKmdoCzI=; b=zanGIP7LEZpgSc
	in6MTf7O/8QfGPD6UmX89VUwZDbZhmwvBFLKRj46cDmswfpEWddwWISEFUMqxBoMBx1YfmIhEvDmv
	Gd3VIXBb7WuaeQDps55SXcbfA6nC1M7K9cGkqZ0xz0LghN4quao49rCVfL7o4nE9zKiOWIjJHz+os
	8CeR2DOunUznsLxpOBlMQw0NL6gbUMybxbqqe5zZCtYYTquPWbgtz3jC/GmQBwNkrtaBDAVafrJGg
	UWlQelqTqTJRlPDeS8l/zwNfAra5dT6mUFJfCXvZf3faiPKk5oy/peLt5VrX4FOoWIu1gTLMHS+zA
	Di7LvDQMreVwvVFeQvEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubl6m-00000005xoR-3Tlh;
	Tue, 15 Jul 2025 19:14:32 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubhE8-00000005WcA-2q6X
	for barebox@lists.infradead.org;
	Tue, 15 Jul 2025 15:05:58 +0000
Received: from pps.filterd (m0163888.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56FCJ11c026712
	for <barebox@lists.infradead.org>; Tue, 15 Jul 2025 11:05:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=pphost; bh=WaR6oCK+anDGSmahOrZaZxHoL
	1rGL+BJYPgSKmdoCzI=; b=tdBW0pHR1c7MNlVtq8IzJfHW9HJdenbRU5OGgBaqr
	6sGgE3iDOLCKfh2a4QZ6Ev7R83I1aqIMvHz/LkdKKweMEwy+/zhOcEICPolSHosT
	i0AZ/PwjtUPPpECzz1rV+W98bTGZftaJc937FTiVMDk3fqaq7WiXITw/vq97YUN/
	jmdvyg3UvGj6MM8Je7KSgC9bpJSNnMK789wvYRiN7T6U8cf1/QzgnERWIcdW8rnY
	0dYpmTgqpcMJd1uZZp9qAQIAMGuNrsDuXRJkrtSdbS5oT8sWCMhD3orNg/E+rfT+
	yWgz/sIv4y6rsHJheiYj7GpVbjVL+75LEuHzFclT/A42Q==
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam02on2056.outbound.protection.outlook.com [40.107.212.56])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 47wpvkgnex-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <barebox@lists.infradead.org>; Tue, 15 Jul 2025 11:04:59 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cyngmvRVNei8IDeGPR+dKFhuKJjtH4QKwhJnzRMcEd94iUd91uFu6X23+Dfb1r5r03ukNCjkn4EQFzIDA+thVDhK+NtR59SckEckqAc0clzQOrmkww+1yP7IR/PNJX4QcaFsbLfXAchU49a9bdp6vazgf4cq4icDLU/HY/Ku9s/I0kns3e8MelCB6fu9oyd6lIkild3gKxR9LNNrYW2QBY3weaD8PWeM/oVi0DKENgubyBqiAurfth5qZyYiHcziRBDHHUytL4s8S6okS9pTejzuxUjN0goEHcl8v9UaulVra6SndyOlKXwImgaB2cXGkddrtoav3C4QZ3h2RpE6/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WaR6oCK+anDGSmahOrZaZxHoL1rGL+BJYPgSKmdoCzI=;
 b=YHfW+BOqHacy4oISHbgBNNUc3nWdN5x+Wh7KIEOTeQK/3o4oAV/5ND8VFcA1yO0tnc7CafrYFgBVjFbSY8ScByzCi7JKZEpujbjNB/L4ZM/V7i3Q7sT5Y2/QkOe7k6Heg4s3qDAd224xc1OX/1Rn066C5gn/if3hD+OwaoUPfgL9z/Qo9dFj5D8yJGxIl5YHfmyN44q46paj47gN85RghJMiZwUhtsJV21d8jdX5bd0DFCZ6DGxPWtFN4XbAHUWxgCkpCEojoS8wDR6CmX8RQvKOgJS1Yp4GP5I0HZlZeEVHeQDRHKTdIPY5JXM4nTXY0FrsS1SW8D6VTvq+4MvDag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WaR6oCK+anDGSmahOrZaZxHoL1rGL+BJYPgSKmdoCzI=;
 b=Ezw4jvt4u8JjiqPpdxuJwZx8Y9niqSLt7v9YtrOB2dPBhOqAXWm6Q1W30sbn1qmmzzrD0ux3vSBTB9LPm92/ssIZZSpBhY1sftRC4yRRBqlWDR5IaFjT4vXKMhlO8ODgtTJ1blvGF9zmg7chWm6V6Sx6iia8EkJ8/TVVzAS712E=
Received: from DM5PR07MB3532.namprd07.prod.outlook.com (2603:10b6:4:63::35) by
 SJ0PR07MB8472.namprd07.prod.outlook.com (2603:10b6:a03:359::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.25; Tue, 15 Jul
 2025 15:04:57 +0000
Received: from DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec]) by DM5PR07MB3532.namprd07.prod.outlook.com
 ([fe80::1286:1a08:13bd:53ec%4]) with mapi id 15.20.8922.028; Tue, 15 Jul 2025
 15:04:56 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: ls1046a: fsl-fman failure
Thread-Index: AQHb9ZbkCWnr0P7yAEWD/IZ2ugzlfg==
Date: Tue, 15 Jul 2025 15:04:56 +0000
Message-ID: <DM5PR07MB3532E2B48E52ED710507A7B6EC57A@DM5PR07MB3532.namprd07.prod.outlook.com>
Accept-Language: en-US, en-GB
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR07MB3532:EE_|SJ0PR07MB8472:EE_
x-ms-office365-filtering-correlation-id: 9b55b5da-6dbb-4ddf-ce70-08ddc3b0f62e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?q/g3Zb7u+oJ44vu7vjpfliGErmsZEpEgGhJ50OV0WYiuKlAGfwCB9rxEXr?=
 =?iso-8859-1?Q?ycMLWuuY093YJ8eIReMzu3E8+Dy9APJ+pkQRDN049Q1NrqKDGnced0Jy43?=
 =?iso-8859-1?Q?M5/mSY46iydn/TRmV2vW62IzY8a9+VQLL1ucApPN1xcNiCSM/MOqAiI8IK?=
 =?iso-8859-1?Q?bdgfapiojHBC3TsEBjcLvIReYFp48OuzUuVO5k4xHBjqcN1/BfqgMWF5nx?=
 =?iso-8859-1?Q?GGKXpa8+fckISJYMvMfe6NSzlwaWOKV+E5g5MO9NT0NE+jZ7Pt+mGsUbuP?=
 =?iso-8859-1?Q?t3+EThnZapwpk7zCR1nMD5dB8yJj/slLqaoldD4mzSGNTjJl7n8B+kk2Gb?=
 =?iso-8859-1?Q?CWMgcJKWLIjgXlSSLiDPYpVY5VVIFIxBIic6pXAR/xOteXHqVD771rt9YV?=
 =?iso-8859-1?Q?/nA3yx5c3N17w8IXcRm7zLHoWBkXAwse+PYjPEv86EJ6KJHMuyM6LPopgi?=
 =?iso-8859-1?Q?NYr6IaIS2aU7DQvpOg+aOal36ev511V0a9lEe/Aqjb5A/rKDfPxVjIHdk9?=
 =?iso-8859-1?Q?nCrO7W/5A5RrFjVuYXNEr/6vsgXKxu9wgBFg6hIQo6zjr8ejnPIq5AheFG?=
 =?iso-8859-1?Q?3sSEaPwo2fdSiaY7xdQO3us53S68vJUDGeCv5zjMKGsBOxDjt6qvD5/e3Y?=
 =?iso-8859-1?Q?HCZGqbcWuw5DMdsPQdUEUQhsuVe6NmO/Wqco2v1Xk903xGFp7o6CP21hNJ?=
 =?iso-8859-1?Q?dqPeiwUNtR25Q5MWbAO2roTgE2CKCC7YR218+Dpc3aeX0pJDr3/MPoMfpN?=
 =?iso-8859-1?Q?DVC8lV0rSRItdgZxGNuTWRdD5hcAQzyuxsMJ4U/Li9IgTSwub2xjkV3CRG?=
 =?iso-8859-1?Q?eOJQHiqcYoSJR0lKfPPv/G5YOiFBbOAq7R7po0s5lNlIEJ6qcnrTB7Qy7N?=
 =?iso-8859-1?Q?QOSqmWkNLXWnFqTY+YNcSzp1BlAcc+Qu7pCVrzhlppZC2u935UF5Wl3yjs?=
 =?iso-8859-1?Q?VsbJXnmDBqJnvIkRoxS5sL9gZtZv3qCIBBdhSBh8PY6//N6jwJncbA7cju?=
 =?iso-8859-1?Q?aPstLLy8Hly6VUGas8fXF9yLSik73EA7Oy+uTdxlb0vRNJYDFRTQAssIo/?=
 =?iso-8859-1?Q?eVC3IAPbtA2NVuNRqscL7bbSUhecHtvnvOkgj/n51PSSp9/CxP7P5sCAIw?=
 =?iso-8859-1?Q?6it9I7lGDuRJwfW6IJSeg1+FDO/v7gm3mCP914jphWENm91usFCIGLcZxJ?=
 =?iso-8859-1?Q?EmnppFx/ERw8bKsAG5daoNFwQecg93CdXePK02WfooaudF08mf9D/kubXA?=
 =?iso-8859-1?Q?BjUkm784Wx7Myu6DOSuCehL41D9DBVxyM+ZLkNNbgWoU7bXlUmQljyuN0p?=
 =?iso-8859-1?Q?1Rek2BGytIRfsgPiaO7NSeOGfbjagkc/Eprs+JmnQoSva/45HQbgy1Ns8m?=
 =?iso-8859-1?Q?wf1RG+eNQZZcRxN16/UPdJn+t+KpBVovpPGzU3beg/wvxTs7ja7BuVWIGL?=
 =?iso-8859-1?Q?Ns8XJYwFfC00x+nsocJqrLrT8PypIYRIQLVOsAs2hEswsLg4UuLyIexI7X?=
 =?iso-8859-1?Q?6+lVVDSge3hYv9I5ytN+MxIO6qwO7ZHyp1iwm41M/9Fw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR07MB3532.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?72KXdrrw6Zp12r8HIv7gIPb0xrjoojKpcG+EgAxem/D0gt2nHr0NWXlSSd?=
 =?iso-8859-1?Q?pfrJGIb32TyZ4BPPgoMsj+BnV+KPilXQgGcFXG35B4On8Jewe/W9OFbyEF?=
 =?iso-8859-1?Q?/zs/2IYfsSDimVWMA/b4KKLUV6DZl7zlGW8raNRALouJsWARR8B0CCdb7e?=
 =?iso-8859-1?Q?CRD1wHxnsJPtOIG39TBdg0TwyHdf4CDk0DUlhOyFk8dOe7XWUgpWcZbI91?=
 =?iso-8859-1?Q?CunWGQ4TJBvMCBwWUPz8xugMuM4/KqGoIsgf/O0gXRd272/tibSDAxzLS/?=
 =?iso-8859-1?Q?p/UJY2t1NuVKdkzuL8Kxnzy3p4HfVx+ITZJdBP+lvBSzrPup8XpKonplsy?=
 =?iso-8859-1?Q?EG3aw9bJLWqGJLW6CT49g8O9Q/k32EmC1KoaK+xoc2lTVKCN7ihCxriiSj?=
 =?iso-8859-1?Q?sq3QlE1gXd45ixCBXcs26p2nBgFWmINoP+L+KHhsAnIPs6XrFcz1XYGAd7?=
 =?iso-8859-1?Q?Y6l6C5/f0sRBUeafAqJ4+/pX7DpBBhRRQr+yaYDLRmDjOvz8lPGTN0V6Hd?=
 =?iso-8859-1?Q?bZ6KRLBe/xGX28Bx4x9UEKWgW/YIT90XDhJRncpLhnzQ/Xd0q3H1LUdETE?=
 =?iso-8859-1?Q?vyUls/Fe8BNtNNdIgw59RiBxn0WNAQNRmDP2UkpD8El/bWo+O1XA2kHz3i?=
 =?iso-8859-1?Q?HWq2Up7p8i3UAEyn7ozT2GCufD/t6xgKT6C/7ghG9JxJAA5n8OU+FFaa2u?=
 =?iso-8859-1?Q?hoqITL9NWKa7si2qzGrUV1sz7Mt4SOL18tHgGYW8eQbwzi+onXtJ+xJSHF?=
 =?iso-8859-1?Q?xYmwEYANDgpnaoOQiKGriCbgXCdhFAG9+h01O6GhNltMA09ij6vaIkb8Xs?=
 =?iso-8859-1?Q?TnKaBqewXN03z6XsteVnhQH8rXD93hkIuQlR4r1mjr7uhVKmVQ1RBvnCFD?=
 =?iso-8859-1?Q?sR0Gv9WBTCVQEW9Z2/k6/f4QeLgBRmxVZiSTQmgC8rbaoHcHjHwdq3TNpQ?=
 =?iso-8859-1?Q?/C3L8QSmuwOleK7Uyb4XtGxh5sQbAaZr5PnvDX0XnnzmrqToko3rKGFjAv?=
 =?iso-8859-1?Q?EoSAWHyChyrH/ddAkZ/HGE6jOIYHQsoWI+T4ZynlsfGBu5KkPxjZGcuxWn?=
 =?iso-8859-1?Q?ExL9csQAVfLmo3AQilPgfP/njhN5LD7u4hP4ur6FTr1zfRI/3Bg6v2Oan3?=
 =?iso-8859-1?Q?o4i+zKXrxskO/2gJQ7hZF8LOx8u4CyTuSOZV9m59CodusdRVOier6/8sA7?=
 =?iso-8859-1?Q?VoWyzZEOJHdqVkIwIXg6P2QP0qzjsjrH61ObsX9ZfUKiDCabwWzwAiDYVu?=
 =?iso-8859-1?Q?9Dr19LvhwT6tbSSs8m6As7CtpwvVxKoSrOkfx14KcNb8lxmV48vgl+fIAQ?=
 =?iso-8859-1?Q?Dk8RxWALspDb4fS6xWns5yuE3Nv1LP6EueI0yO/ShYFI8IS6Lou/s0p4AQ?=
 =?iso-8859-1?Q?RidiFXjbCxG4jPgoQyZysF0T2D8Kxxp6umvJIml8+qg+lBXZZO/gnHXyFk?=
 =?iso-8859-1?Q?qPgiJA5urZfIbRzeJVAx2+KHHyrhYrmSmsboyhWiyy8uwhH/irOqdCTHFG?=
 =?iso-8859-1?Q?7pGhZBl9/+ZZVEzMZF06WjYJP6xZZA2LyNXP4c5kZ85v+CkAQEaBYIqsWk?=
 =?iso-8859-1?Q?Z5271jabfYxqKwJt1/wPVwOJ/SF4oGX7wEJp8DeAraNEtZV3W0JoPlUjmO?=
 =?iso-8859-1?Q?GGuZ0aZCfunifoCsxcyvcSkEbfM+oQoiN+?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR07MB3532.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b55b5da-6dbb-4ddf-ce70-08ddc3b0f62e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2025 15:04:56.7836
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KfIpfwZsfLselveAMpWCBk/3HCezPNkfVlxN6VwJoiiao88MMlpqMmsfALQcQ0eF+94V6DWidmoEkZ+JskyMlvoojiplWRkFUka+9KoY/AY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR07MB8472
X-Authority-Analysis: v=2.4 cv=b8Sy4sGx c=1 sm=1 tr=0 ts=68766e1b cx=c_pps
 a=Q4TTDT1Pcrf9qCABWPC5yQ==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10 a=Wb1JkmetP80A:10 a=m3P6IW4lH-wA:10
 a=eO_WlvTiFf43JZzhyGcA:9 a=wPNLvfGTeEIA:10
X-Proofpoint-GUID: 7axA80fy7ViJy8YmT_r7GfCxe1Oa7bMz
X-Proofpoint-ORIG-GUID: 7axA80fy7ViJy8YmT_r7GfCxe1Oa7bMz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDEzOCBTYWx0ZWRfX2TXTa9k/7Mw1
 QQYwo8nJ8e+dmfED1Va/6COWcPpbQrVW+8BAzNCTKDAbfw8xYcMUY0d2PjKC/OQKTKYuS4uC8v9
 yhpVdmz3XfHm4OvBOt9s4f30xhCTvVtIHJglhb/qqtecLldlqrJJeOEvb+AwGy4OORe75nExMo0
 vDbKdu6duaYGvzi5S9tqdZmstQlEGQ5SpktKhgYpRZnwW3e7d4tGxaR9kryVBwdKU7sYGd2jJ2t
 RgEYnyhqQf8hpKgDPwt/IZjcRhKfhV47zUASKGNyjmFY5Kddy1uH/Xt5PxJG77YkSjmyI0yYEuf
 3xTp62TBHtTtnB0nHsJQ8UavN/Tj3ZuY8QRaFCFGakwFixe8uZygIrM98N/A9SwzTrvAC+BypTo
 hzLOMeGIXXRsft02fj1Swapm1n53ITgs0Lz1ZOS1wrpEB+UhTw+i1JLglr5f0znyf5BQHnLN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-15_04,2025-07-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=896 suspectscore=0 priorityscore=1501
 adultscore=0 clxscore=1011 malwarescore=0 bulkscore=0 mlxscore=0 spamscore=0
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_080553_156378_AF7DD898 
X-CRM114-Status: UNSURE (   9.70  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: ls1046a: fsl-fman failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I have recently moved to barebox v2025.06 and the ethernet driver is failin=
g probing.=0A=
In the COMMIT below, dev_get_drvdata is replaced by the following function =
device_get_match_data:=0A=
=0A=
const void *device_get_match_data(struct device *dev)=0A=
  {=0A=
~         if (dev->of_id_entry) {=0A=
+                pr_err("%s A0 return 0x%p\n", __func__, dev->of_id_entry->=
data);=0A=
                  return dev->of_id_entry->data;=0A=
+         }=0A=
=0A=
~         if (dev->id_entry) {=0A=
+                pr_err("%s A1 return 0x%p\n", __func__, dev->of_id_entry->=
data);=0A=
                  return (void *)dev->id_entry->driver_data;=0A=
+         }=0A=
=0A=
+        pr_err("%s return 0x%p\n", __func__, NULL);=0A=
          return NULL;=0A=
  }=0A=
=0A=
For my specific device, I get the following debug message:=0A=
ERROR: fsl-fman-port 1a8b000.port@8b000.of: probe=0A=
ERROR: device_get_match_data A0 return 0x0000000000000000 (here dev->of_id_=
entry is not NULL  and dev->of_id_entry->data is returned)=0A=
=0A=
and from fsl_fman_port_probe:=0A=
ERROR: fsl-fman-port 1a8b000.port@8b000.of: type =3D 0. This is a valid typ=
e: FMAN_PORT_TYPE_RX =3D 0=0A=
ERROR: fsl-fman-port 1a8b000.port@8b000.of:  out =0A=
=0A=
COMMIT:=0A=
index f205de1929..84e7f20330 100644=0A=
--- a/drivers/net/fsl-fman.c=0A=
+++ b/drivers/net/fsl-fman.c=0A=
@@ -1085,15 +1085,14 @@ static int fsl_fman_mdio_probe(struct device *dev)=
=0A=
 static int fsl_fman_port_probe(struct device *dev)=0A=
 {=0A=
        struct resource *iores;=0A=
-       int ret;=0A=
        struct fsl_fman_port *port;=0A=
        unsigned long type;=0A=
=0A=
        dev_dbg(dev, "probe\n");=0A=
=0A=
-       ret =3D dev_get_drvdata(dev, (const void **)&type);=0A=
         dev_err(dev, "type =3D %d\n", type); <=3D=3D=3D=3D type is 0 or 1 =
(FMAN_PORT_TYPE_RX  or FMAN_PORT_TYPE_TX )=0A=
-       if (ret)=0A=
-               return ret;=0A=
+       type =3D (uintptr_t)device_get_match_data(dev);=0A=
+       if (!type)  <=3D=3D=3D=3D HERE it bails out because type =3D=3D 0=
=0A=
                 dev_err(dev, "out\n"); **=0A=
+               return -ENODEV;=0A=
=0A=
=A0=0A=
=A0=


