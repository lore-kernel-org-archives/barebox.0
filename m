Delivery-date: Fri, 18 Mar 2022 10:16:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nV8iJ-00FYkj-9X
	for lore@lore.pengutronix.de; Fri, 18 Mar 2022 10:16:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nV8iJ-0008G7-Of
	for lore@pengutronix.de; Fri, 18 Mar 2022 10:16:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N+Y2NYyRcAgPDv+C9HlIbztyX9QDj0BUhcxC58cynQM=; b=2ww61q6Ecz2/K7
	dHUHm1Yi1XVH8XzzQJNzURyd5fWst481H4dVCpR1vey0Z7kABVQucen8mqQI/0uBVe2H/qKETnjbd
	OKDo2ditr1yrNIY734JPpZrwc6JlqxSRZURW4aE9jW3qkgcGiVcX1z2A0UvuAtDUAc1z6m+uibonJ
	Wz7CS0fEJNga02+2Vsyv5ryCZIqNZs8xFUrc7sn3FGjz+wF2gWOuczHtU2BiKBIyhmISGm6upNRsN
	AyESe4giqyVvvjT4X4EzwCxLz74aGdczbEiHXB2ftQEBgBq2NHwehTFswHccUw2H355DVHCUW672r
	aox8iC+FOUJGwY+ZmaOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nV8gX-000wXH-SW; Fri, 18 Mar 2022 09:14:14 +0000
Received: from mx0a-001ec801.pphosted.com ([148.163.144.146])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nV8gT-000wWP-3q
 for barebox@lists.infradead.org; Fri, 18 Mar 2022 09:14:10 +0000
Received: from pps.filterd (m0163887.ppops.net [127.0.0.1])
 by mx0a-001ec801.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 22I30jp0003036
 for <barebox@lists.infradead.org>; Fri, 18 Mar 2022 05:14:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 h=from : to : subject :
 date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pphost; bh=rNzJ0sGKjbC1aP6x8G3o/XtPYqdVy0yIEE3lyvlUkSs=;
 b=i65WORHa1hexRW4s2zvSviNe49fUWs8Dm3O61O/bZA97RBm9/m5LspSzSI965T6IaC3P
 4KPwUhMPwJmMfthfJFcqV8BUQ92JJ8650xOa6pYkZGLQKIAc7hLea5zGdjiL7fj7h48G
 EggyseFOjvL7LAdbKOFWVMDCRtFNzTcNHFI2v3w8Vw9+N7OoLqxHonwxb57z6NAzSo10
 ykFe7sTw1mlG44SJwgbl23tEphoFl1+gCryIdhzEwZ5+Ela3XDJV+ZPnDmIx6GMf8EVR
 6m2GJ/UABbJfFmQrk9FKIp0RPK0GrAh05Pm0Hb3qr64OcVXduo420I8QaQrOnFjLQ+5c jg== 
Received: from mx0a-001ec802.pphosted.com (mx0a-001ec802.pphosted.com
 [205.220.168.136])
 by mx0a-001ec801.pphosted.com (PPS) with ESMTPS id 3et6cd8jk0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <barebox@lists.infradead.org>; Fri, 18 Mar 2022 05:14:05 -0400
Received: from pps.filterd (m0280091.ppops.net [127.0.0.1])
 by mx0a-001ec802.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 22I9E4S4026681
 for <barebox@lists.infradead.org>; Fri, 18 Mar 2022 09:14:04 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2104.outbound.protection.outlook.com [104.47.58.104])
 by mx0a-001ec802.pphosted.com (PPS) with ESMTPS id 3erhhj9p2n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <barebox@lists.infradead.org>; Fri, 18 Mar 2022 09:14:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oDOcqudMI8mBKzv0iY9pUpKxDENkn4nlAzkdMzQOgQ4GF2zb9PbxjMmhQ/HKVLZQh1pm3v5QKejGC55IRSO16F98GySTV9YSAO/PtcZyCXCcjBxRTCbfgQVnYJRo1e5pYZ+ckYWO4mGUNF5e5JzdLhfGsSpUThsObNjAcEdP1LLG2KP8ZQ6GWOT+DoDS9W+rbGVHJAXxIMG2W1DECq4pJtvuNXsXJmiQHnF9vw2/7uF8cs5GzzEzuSrC73GgRSx3T5z/UE4HQNOlIvYgE1HlZNe95pVv+mR4ssyLcaoYiKnJP4H7E7ZTywJJh+/HPA9uZ6q58+bVWYFRr0d5bok4Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rNzJ0sGKjbC1aP6x8G3o/XtPYqdVy0yIEE3lyvlUkSs=;
 b=QD0th+JzOTN+SnSXZhRDN/2eD3AVV4uQ2n50HJJdYD6t8DQVgYVp1BySxaOEjjgS4M3aD7AHyH6e60yf0BcZnT1Ylvpf0U/mleimtTLlc/9q2nD3os8bos8F66yvurfYmd7J2WeIQ3uBpMzZUwJuADkOTD/t7jqrD5VTHXTfjqMTOdB5sC8Jr331ZAEu+n+BdTm0UZS5G0gUWpt5mlrVMnCElLYqokbZX4nx32jWHuEU6+Sd4AdlCOSyzfwIJ36Ncza/BXiptQ37aA4kwMDmKg28DMWwaou76r0S+XUhjgcvUZpEiwbHXprXUQ2aByzDNZpVZhzwxpMjfPO7jVZNUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rNzJ0sGKjbC1aP6x8G3o/XtPYqdVy0yIEE3lyvlUkSs=;
 b=lF5X6Mf4CD9EFCKE+XVVhCkqdw9ssOWgf1hYm0/BcGP7REygRy6eM9LVIBTrZUhkIXIxGgjtyIZ52SEBIpv+jOQkk9qJOOWEEGCFFYirUdfW5olAzgNNg3+uo4CSYp93zmdP2yXPN5LXP6W3XlhJ8eeJDH4MTT6H+ab0sSEzeKvOkwZMiR8pK/ApMVP2tJ6OIwNLNmfrl8FJlBCFvB5gvMQGNC0xwFZRmIoTNhIMy3wBqg7SDrifpQWogDcLA6YMP21lb5YOcmpTP9rOamzXWsocHxvg6hvJ03Ql1e12v9B+fWNBXLRGzuo/9af3FECXTxPIxkaxnX7Yh3Zcu+XqEw==
Received: from MN2PR16MB3135.namprd16.prod.outlook.com (2603:10b6:208:153::31)
 by DM6PR16MB3928.namprd16.prod.outlook.com (2603:10b6:5:2b1::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.18; Fri, 18 Mar
 2022 09:14:01 +0000
Received: from MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::6cf0:4e1d:fb85:bbbf]) by MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::6cf0:4e1d:fb85:bbbf%6]) with mapi id 15.20.5081.015; Fri, 18 Mar 2022
 09:14:01 +0000
From: "Barbier, Renaud" <Renaud.Barbier@ametek.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: sha2 digest on ppc
Thread-Index: Adg6pI63VnaEtmdVQZaNVtBU6r9Gmg==
Date: Fri, 18 Mar 2022 09:14:01 +0000
Message-ID: <MN2PR16MB313566652F19867ADB77727F91139@MN2PR16MB3135.namprd16.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a9cf953b-2404-41be-e430-08da08bfa475
x-ms-traffictypediagnostic: DM6PR16MB3928:EE_
x-microsoft-antispam-prvs: <DM6PR16MB3928F19D976BD7E28EDBFD8991139@DM6PR16MB3928.namprd16.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1rDXSVuByPjFqvgDWXoglYkoChQ8CW0xq5CDdlyCpdELFJ9fZ69Zj7mEBZ/SbQgS01eZ/GluMViEFptfhNNSfLxKNV7cWi65vSm9yM6VFbYjfXR3mawFuu11R5rgAEC6vR9AJvXZNTTdzEtKhY+bv6fq5+Z6tzC3IAdII1I/gG7u633DsSymDknKnudW9mDqIDpEYOKgnqHZjZuZ68075nl3ZydvMinaDLll9mofVvofxDVLT7SmsxVDDMuMzL3YDk4unoT3YKkyJAxWLdRzkPVZVcMqgIH/xKZKsG9ct22cO/K4HVu2Chf8HlG3UgblIvG01Tw9+KwEdqmOnbgyeteX7K9mQwrB1EZIYb1rE+iI1iA3x93OgoA8SsBvVBK5fRwVDMoIrs7ALZ1H68EAFzRs6ibf1Gu2JRbZTVbDMYj9n63kKAR1Zymt6b8uFkwJb/NwLshyUOuQmF0Jic/dLe3N8t/m35bv6Ps4T+BVDEuTlAhvxoLB+GBeUs7ZLWL/IjOBsbnibQVZM25zEdJkXdbg63K1P3O79D41VsVISjgJtxxGTR/6NBpIDlNi2L4OohLMKMvcLCvRJmDgyQdDptbj2vpDUr3zQTSJiJOzBqmO9JFU81gZwaceQLCWIlA3sFJnxzeTok+7w0N+s0f1boRzgfoAL2XsMgKWZe/ReV+N4R7sS2hIrVf9QKEHLRpt9UXLEGvBJBmKchbeR9gTdQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR16MB3135.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(38100700002)(26005)(186003)(122000001)(2906002)(8936002)(5660300002)(4744005)(38070700005)(71200400001)(9686003)(6916009)(316002)(76116006)(6506007)(7696005)(508600001)(52536014)(86362001)(55016003)(66476007)(8676002)(64756008)(66446008)(66556008)(66946007)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zDKY+eAvFjPRAUMxamlDi53xhmWP2fX3RoIXoyXbbrQKG6vs63TiNJYj48AL?=
 =?us-ascii?Q?8I1opi3xw5ZEZ3qYMXf4AO/PGtsAmFlVZGBIweP69gzI0wGjZlgD+0Xh0nng?=
 =?us-ascii?Q?nxKLJWFs/AyLDa/QFVmiLoYNutojWs9LGTXNGLKHoUrXlt8zn0uMYfT1/Pcm?=
 =?us-ascii?Q?nN7FYWOMMF+wV2ZDryI5bC4uWuQSRFhqR8Nob5StIzst9BVGVoSlsWsYCrrk?=
 =?us-ascii?Q?So4ye/pHiQtFr/dZsWgsIgWEM8j0MjXDznRro6Z6gg85m7EKZHulI1EnAxmF?=
 =?us-ascii?Q?GqWCKSuAdzrX3ABFRP/Jyo9x6/PmV2Kzwb6JkBnoAv1LlgikYSxvtVh124Vb?=
 =?us-ascii?Q?SKZpPgFnQ3ITQZP2ckHxFUQ45CoSC2SqjSwQuNm366/xnCq/ba25ptibqpw+?=
 =?us-ascii?Q?dWjPk/UHFWYbFno2plK1BEoIVHmnaZQTNg8306LB8Wp6NCKNr4G4XMp0eSPw?=
 =?us-ascii?Q?4J4q9uibuhQYQN0KfFp6zArM9MH+s0dKQH3Vju8GUY7V8Y1rx3Z3eRiRn1Yx?=
 =?us-ascii?Q?QwQIQ4TmxDtSAs1qVDG+HRlx3RX1IeyB5Sds1zrCDAWB4eK/g3B9wVPr8Plg?=
 =?us-ascii?Q?4g9uj8+5AGpVZy3ipSudwXhJnEBC3rKdgcS60s0Fpo4b1/Lf5TnS3GBhKPwi?=
 =?us-ascii?Q?8nnSd0porpHOGgSkMEfEzA/fXzFr+fNauMxYCLjqhZ77vLDqEIDDIl3aHm+b?=
 =?us-ascii?Q?UMKdvW0N1KxtBOXbyeRbd8T7js+sCezOQwUnx6iTUu0FGIsH1jy87oL86V1H?=
 =?us-ascii?Q?0Ws9lDXW2lH6vyfVMTlIs8kBVdeam169T6mhQTZ51p2pHjT37Z8ltFw55Ryh?=
 =?us-ascii?Q?kGQpALKnOBq4Df9IDQreQdIy8ooXvvQpVF8d6dJdrbk8zc4MTvMT4GlkloSO?=
 =?us-ascii?Q?Euf5jNxsXjT5NZWOpDyUidRGbfsBE0Dy7JUC9EZHppC4AyvdNo7+oBPQgLAk?=
 =?us-ascii?Q?KyM2rRq/HAHa9aX8RhZIdQHRiWUnVONZ3Kn4ftGHMFRWQ9Tw0pQC+D2726Oa?=
 =?us-ascii?Q?UPanzFV+YpUmVuAkWd9rTncJHCLPUcCc6ZD213b5MKpN0IlnTipviIVOfTj/?=
 =?us-ascii?Q?3NIZ0lJedzkf9pfh35xpWEn61Y4LIduqn1AAfJTN+EPVF37HfP34kQWJAtOT?=
 =?us-ascii?Q?uqpmiJypkOORIcfOp6HEJ6BMHwBaBxqDGqApBct0Uh3dTv04ob2jDmDvlltl?=
 =?us-ascii?Q?/YiKEe+AkEn6VkGlpiWH81KafOqv7BHisfgz1RUqiFUSxFSQcsfZlWwAAuij?=
 =?us-ascii?Q?5+o6CWwNycOswmJ9Kvvy3SLhmJg/+dgtorJhdnsJ2i2vRY0njN4KU4NaLaJr?=
 =?us-ascii?Q?9RhjIkznkkzMv2jLwED2XK/4hUjUj8r2/WG1whYaNgpuDACldStqYZxZgnM2?=
 =?us-ascii?Q?Rb83q2xFgkkBkmDcWAKgrrf94ZOTVby9q3QtiaLvzIpmqubBgrx/IyQb6KoT?=
 =?us-ascii?Q?7kbht5DtXQ0CXbBbomVaTQxZvdR0FqFANpbvR0r+0MhrYLBWzCQzjg=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB3135.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9cf953b-2404-41be-e430-08da08bfa475
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2022 09:14:01.6843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YKy/n0OBaVTS7w0UauC/TvrggsG6SUGDtkI1sqjA+VZvDJn8zJnhnIxEBocsPQlU7lPiu7qkI29N5ZweDJfHSBqGlIgJl5vxpfiR3hLYwik=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR16MB3928
X-Proofpoint-GUID: 5RBDoWWmeV7jUnBKL0L5XNkZ9gXaaOD8
X-Proofpoint-ORIG-GUID: 5RBDoWWmeV7jUnBKL0L5XNkZ9gXaaOD8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-18_07,2022-03-15_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501
 mlxlogscore=947 clxscore=1011 malwarescore=0 adultscore=0 bulkscore=0
 phishscore=0 spamscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2203180050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220318_021409_381139_F9F4B091 
X-CRM114-Status: GOOD (  12.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: sha2 digest on ppc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Commit 03fb5524b06 has changed the configuration selection for hash algorithm. For instance:

-config SHA256
+config HAVE_DIGEST_SHA256
 	Bool

This breaks on my PPC platform as the configuration selection has not been changed in crypto/sha2.c
if (!IS_ENABLED(CONFIG_SHA256))

Still working on my ARM platform because the algo is registered somewhere else (arch/arm/crypto/sha256_glue.c)

RENAUD: sha256_digest_register
RENAUD: sha256_digest_register: ALGO NOT REGISTERED
...
RENAUD: digest_algo_get_by_name: sha256 sha256
RENAUD: digest_algo_get_by_name: sha224 sha256
RENAUD: digest_algo_get_by_name: md5 sha256
FIT: /images/kernel-1/hash-1: hash OK


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

