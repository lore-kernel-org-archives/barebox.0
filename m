Delivery-date: Fri, 10 Feb 2023 17:00:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQVoi-003Djx-A3
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 17:00:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQVof-00025o-7B
	for lore@pengutronix.de; Fri, 10 Feb 2023 17:00:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T3wDHtjLXziKdZw+G2RUy9xPKXs9gk+cHl44DcYYSY4=; b=LJhqfNXOKsRERfOZsGY9943LPA
	l6MHsI/Aq+teY9YCiM8TOr2d4PYYR2BPSzWM+GlOT7PF0Y1ftTzT7XafqdeCbT5BUfIk+kiCjVBtr
	6Y3j2Q/z1b+rAqcsBFrzNWHsisdkWa4TmzuKMSb3OKkbiDKPw60WOz+GBM5kzK5Y2AKmeYPrNF2kW
	9kdun6n1z+2+zesoobnY4MAFkr26KOIi1vTCN8NXh5/X/gQsPhEEtVSdmfBRli91Y556/IVz01mVP
	EENtOHe0Ha002JTUsPFk1aLvZtwVLk53PADxCaIEjYHgT23fiY4taU99pQjdTPBbhPxG5oLkfi1Df
	H1u11Wng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQVmb-006S9o-SC; Fri, 10 Feb 2023 15:57:54 +0000
Received: from mx0b-001ec801.pphosted.com ([148.163.140.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQVmT-006S8J-V4
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 15:57:50 +0000
Received: from pps.filterd (m0163890.ppops.net [127.0.0.1])
	by mx0b-001ec801.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31AEB76o030636;
	Fri, 10 Feb 2023 10:57:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pphost;
 bh=T3wDHtjLXziKdZw+G2RUy9xPKXs9gk+cHl44DcYYSY4=;
 b=IsuIAhcNVEeXbYuAO8JlEouJDsX91E/sUf6ebZ0IFuW+Y9S8/CXEZlSI3maZFFZhax4u
 DbzsiZ88w4CDdZ1pYAffATcVNTcqO+RfqDQqrki0QxKtGs8NC9OaPzqLq8aNJYT3ZNdg
 AcdwpT+Td9gm4f6vwyZuGKmdnQDo4AuGL/ZS8YiLBt6K66QGHZqlp1rr7MCE3l4ruc6M
 Rv2j1BK2jLYAYvod/urAOGT2AyS+IUXNFO7+L+K61S98c1yD2xcTf5l3zq+xIhk/TVU/
 0nfwK0EBudigirQ/yUtRZBPN3Jy2q8O+rG7MsX6nhtPCK8wdPP3w6yNK5Rj4xvzLMnCB ZA== 
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2169.outbound.protection.outlook.com [104.47.59.169])
	by mx0b-001ec801.pphosted.com (PPS) with ESMTPS id 3nhjnn1mys-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Feb 2023 10:57:42 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SKWik5urjGvyJEQSs9qLz16gtYlgMGNJgWEidAi/nsbyFgCc97tLjpDKcY6exioVtW4wGLDSYXNsZGGF9a6jxAqszU8J32kRogxIuU8L6V0DeVeb/NkWZ7nc9x8WEOzKQ7Vkpxhf4vrfWUPAAzSyOQm9UU1wD5K200T0UbY4LRXzqn+OQVUGxIlXc6tu+e+fOreBQSM8kmqWT3kF+I6b+DcKWjV0pWyhbRosXRWrnsBc6mfgqUWhHcRKVpuYOHRPsFQ7fjHuxz3Q2ImohfcS3P+xJxDNiZMhAGqJ0va73FQjlAyWw+ZuxELOBuPm6syx66JH/BJCwlyKJonzSiv4cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T3wDHtjLXziKdZw+G2RUy9xPKXs9gk+cHl44DcYYSY4=;
 b=PVS1/60gulxFxvGtEpN3uH8O0ptlpz+ePLjK0H/YEYydwHY/Scfct7MBWpRWNn1MhwbTNWFnDyUSKOhA7blRT7BArJZHSpqGoMcLRoHon2+ojgdlY7mLdVBCFzBRaF1YDAuxMs34QQHe+oAvyiSb9Fkbkv/Uf4dcP5IM+o6aaQCwgWufAy4oP5QNvnlYV17kgeV/T+AxK1UpfO4+9YpoMDTPpdEYaEji2u4ful2I6XUlpqb/jVcKN4ZQNFN+YDoSEKN+wo/pJ6gQaQWxbMytPc1wAtaLv327GJGf8tmHe+8Od+9ZlBnEQ3AWmVOdOqkNY9I+lmKGt05pnTGlKHbfXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ametek.com; dmarc=pass action=none header.from=ametek.com;
 dkim=pass header.d=ametek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ametek.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T3wDHtjLXziKdZw+G2RUy9xPKXs9gk+cHl44DcYYSY4=;
 b=ckDH6Fe9L51zYpeZjPSwdcrdl9qdmEFsNtFZ9+3Fe7ygJ86hAGgABmYR7iQL8KiAuL4MLTzGF9n8Dm0JXDiv0TUbVagP8IQ2AaPuIovFuqb3DiTfRcv/MAFFDMsQm3prChywZ58DRJLBk/t4U+mZIpS6Fo2BHtDUYoqn77rQb14=
Received: from BL0PR07MB5665.namprd07.prod.outlook.com (2603:10b6:208:80::28)
 by SA1PR07MB8578.namprd07.prod.outlook.com (2603:10b6:806:192::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.19; Fri, 10 Feb
 2023 15:57:39 +0000
Received: from BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e]) by BL0PR07MB5665.namprd07.prod.outlook.com
 ([fe80::1960:8419:92d:b80e%7]) with mapi id 15.20.6086.019; Fri, 10 Feb 2023
 15:57:38 +0000
From: Renaud Barbier <Renaud.Barbier@ametek.com>
To: Sascha Hauer <sha@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: [PATCH 0/2] Initial LS1021-IOT board support
Thread-Index: Adk7v9bvPBNVfXZOQru13eL/yEG7oQBgpREAAADqgsAAAS0LAAAFlBsg
Date: Fri, 10 Feb 2023 15:57:38 +0000
Message-ID:  <BL0PR07MB56657805EB651D34A18D40CDECDE9@BL0PR07MB5665.namprd07.prod.outlook.com>
References:  <BL0PR07MB566568DCB4AD086C7C4C3961ECD89@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230210112546.GW10447@pengutronix.de>
 <BL0PR07MB56659860B1E024CA7DA2AF55ECDE9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230210122540.GY10447@pengutronix.de>
In-Reply-To: <20230210122540.GY10447@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR07MB5665:EE_|SA1PR07MB8578:EE_
x-ms-office365-filtering-correlation-id: e61534eb-da2b-4b52-3b99-08db0b7f88bb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  O1LsTEMAlWL2H0XH8GUDgcvgi91EStYsv72VI3JrZOeLXwF2DCGWooV/PYPMiH2Q//YVJv8rY934dS0b1OU3HUtJyN7mznO9WYpPc4nKeji7UNfdPOZHfYDMNOKon9sjcRi//2NPhzrAiIk5c6xEeW2eSlM1yz+7vQRmo9hrJ7mymSn+2XAYb4e86MrkJvGEvaXbCEX6KbHCsqKcJqjzwIlXjJMWsKhNIbMHlsWBjDqXhq8rTy+Yn4zrsXGRTQeeg/xOvHhx/ycwAQ9RRHvZMhR7p04YJQGBUjV50ZdMVup/bYn0fupP1SbLrAjrkO36tv0gHQYw411fgPZhCdDE7QbMSD8GPHz2bk/rwzFRPaBkfXRjNKvUCmsj1RSikIiC+h2ObispcRjYMEMKn+nQ/dzY2ZBa2c82cg+6bIyye9VkID0sZzZZyqpSTy1d7kbnhvYit/zBhM191DqTsvbY1Vo98r+hdgEYZmB6K2O6rP+Czk2YzSMY4HxbS20iMZZz53hTsMTxEZ3iOV0sf1TMPSHzSRlnAInK0nJdGnV4PXgIntFljy/QWh5bTscPRdyhYn78uIFuvKwtEeJLoAc7frccbwY714Xn2BdxsMEu+m+hrTP2GPPB0EUvduTYSTww2SGMkdEi0V7KbJbeiyOYLctH6BY1a8ztc81DkKr1dlFm59JVKo/1MDdR1lNWhWdXP0nZ+n8uL+2ed9VVT9Lw1uSUlv8I0SeuVyqLYZccNHg=
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR07MB5665.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(39860400002)(136003)(396003)(366004)(346002)(451199018)(4326008)(5660300002)(76116006)(38100700002)(316002)(52536014)(83380400001)(122000001)(38070700005)(19627235002)(26005)(8936002)(41300700001)(6916009)(66556008)(64756008)(66476007)(8676002)(2906002)(9686003)(478600001)(66946007)(53546011)(66446008)(966005)(6506007)(33656002)(186003)(86362001)(71200400001)(7696005)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?us-ascii?Q?LgJfkbYQ/N/3cg0xXCNWpH/qvPta0sNo4ew65BmmtdNGNwbvCTXUM7ePA1Bu?=
 =?us-ascii?Q?ddQS1YsUFo9/KHSb9Vs3/bxwBGZbeB6L37ee9P60ixBur7E0ZNQ6zaG1VqSx?=
 =?us-ascii?Q?puimhji6yKTLr+q7boFYqrZm1XCv8KZynq39V3yJBvaTVDRxcVXKcvI4Vds1?=
 =?us-ascii?Q?DD0Uq6nL5akIzeWXZhR8B1mKwKJzcScdYbJIUK3Xtrh2uWWGQ+WnQ2jghmds?=
 =?us-ascii?Q?ZmLlDT/+u0SDW6JD6CSN97T0bQjMDCqRIyixPHpqmCGqT8CuJkHz8eRqVrqj?=
 =?us-ascii?Q?lRnf9Iacns58tTOR1FBz/gcyrxsuXJVUsOwLa2ZrToHcDr4RK09NE17z+vWV?=
 =?us-ascii?Q?cUG8I6aCqd7Toqhu1YTwf1Lf76jWNGDmc4r7+hdRJ1z+BnI11emrpfBtAqb5?=
 =?us-ascii?Q?jFzOORk7iS/568fNFLLRlO4wMkuuRWb4lvLlY5msO8W7X58BHw1wJ6uUWbz+?=
 =?us-ascii?Q?BnLrgqxhZDgkMe/xsIRDFrCmdz7RK9fvT55RqdJ4eMOccBMJlVF10ObaQgEN?=
 =?us-ascii?Q?bbqfiwLtq7AoMYi/Yh27a3fdhqUFVkY8V7bG1SkJpuGK77tE1mQNO6DQAMM/?=
 =?us-ascii?Q?yQpFvkQlquf5ge8kaYkqT46v8KFY9hBHHdEF1UwDSWg1uOfPocekQl6A9GhF?=
 =?us-ascii?Q?D4ijxPdml4pIOVwQgAMnR6zjfp7fZVE5k8XFvrPdZkWTZ9tI5zq7kjHfcLOE?=
 =?us-ascii?Q?/NaRUEauYbXD/EEnlauo/enQ1+y4u8LK42/quPPObBRGng2CHd2wBKbfTR5K?=
 =?us-ascii?Q?1s7+pUhdHHfJoBhcrs9VqXIPy71CLky/aRDxVMXiKgG0AaEEEg1D6KPAHvYn?=
 =?us-ascii?Q?c0Dj3I48l4HfeDhnplfWYIJKssINRRyCqwu6ujs4+T7n9tsq+RrhwK5Rvucd?=
 =?us-ascii?Q?IsHD68/26mdK1cXeORs/NZ5doOLB02TpPVWcLTUdD0QAbPII5ET6IUFXmCv2?=
 =?us-ascii?Q?tDWhNBL6R3a92h/XliC+BMCcFdCWuTNRh+8wt0t97cvrOJO+7vOg20NPUOfq?=
 =?us-ascii?Q?nyv1n+xwNNEWTj/zfBe+RGbWYccXIlTiTFkxLVYvBftw3OCgcCjIVvqo9oJ7?=
 =?us-ascii?Q?JrdLV21wGMIxullqshA/NGQLdUDHw4+XzqNCl1bJw8sfeDUXKUhAAyhJ7jUL?=
 =?us-ascii?Q?xf/zw6u74xkb+dLaMyvmMsqc9pCe0iPv3mxpChTBkBQgZYDCgmbYs8WZHq5/?=
 =?us-ascii?Q?7u10hnrrC0jG6ErIq5Kjc3ushW/blu8dbrLA8TJVxm49I0inulmMpexCxa9V?=
 =?us-ascii?Q?+3WnNOVmWVobSem+jdvM+AAMY4w2TismpmzQZ22aoWsONSJPw+jM1w1Las20?=
 =?us-ascii?Q?CMvsTjpwH8VNoiSAujhSJHEKEoJ1JmspljiXv47ozoNilRqeaw1ckIwxaJaE?=
 =?us-ascii?Q?X4WzR8sB2rt948hQ7GAe9EujXQKLuUqkqmr6J8fiIjkH3Gozpe7xCskAvs7H?=
 =?us-ascii?Q?f/AQ2DzoNdrbY0+04etRv7aQav8trdBxP5PIHecJyZ2EnV9NwbarUboKhNO/?=
 =?us-ascii?Q?FcO43wxwoPbq5Jxkvk8ALFY/9iLNMVQ6g7AYOl+ZsWk9IUah/4manx85Y6LN?=
 =?us-ascii?Q?0D/h3D+tHaPsxtCn+lK82zIYTP5E3M0BZbe/8z0V?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ametek.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR07MB5665.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e61534eb-da2b-4b52-3b99-08db0b7f88bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2023 15:57:38.5624
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31a88536-e2ab-44b5-837e-5110158247ab
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UiSqTUXog+tjMN3E3OHFGK66jGP29aEV4Fy5TjVeZ5Qa5MklGLrZMYWsGtdArShddyCOjSSpYhpHKXIa7hFWWybheQLhUrxutuKn8J/3FU0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR07MB8578
X-Proofpoint-GUID: 1cQ0ZS1fFRcmRMFUzGzChYQ5qtgEcN-_
X-Proofpoint-ORIG-GUID: 1cQ0ZS1fFRcmRMFUzGzChYQ5qtgEcN-_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-10_10,2023-02-09_03,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1015 adultscore=0 malwarescore=0 suspectscore=0 mlxlogscore=682
 mlxscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302100133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_075746_773791_EC312F26 
X-CRM114-Status: GOOD (  39.33  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: [PATCH 0/2] Initial LS1021-IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

What about soc/fsl/immap_lsch2.h vs soc/fsl/immap_ls102xa.h.
Lots of similarities but also a lots of differences (when excluding the pre=
fix LSCH2 and LS102XA)
Can I assume ccsr_scfg can be mapped to each other?
May be a question to NXP.


> -----Original Message-----
> From: Sascha Hauer <sha@pengutronix.de>
> Sent: 10 February 2023 12:26
> To: Renaud Barbier <Renaud.Barbier@ametek.com>
> Cc: Barebox List <barebox@lists.infradead.org>
> Subject: Re: [PATCH 0/2] Initial LS1021-IOT board support
>=20
> ***NOTICE*** This came from an external source. Use caution when
> replying, clicking links, or opening attachments.
>=20
> On Fri, Feb 10, 2023 at 11:54:31AM +0000, Renaud Barbier wrote:
> > I have not tried yet. I was not sure if you like to have separate machi=
ne
> support as there are some differences in the SOC .
> >
> > I will merge it and send you a new patch.
>=20
> I like it better when it's merged, eventhough it's never compiled togethe=
r as
> they are different compiler architectures.
>=20
> Sascha
>=20
> >
> > > -----Original Message-----
> > > From: Sascha Hauer <sha@pengutronix.de>
> > > Sent: 10 February 2023 11:26
> > > To: Renaud Barbier <Renaud.Barbier@ametek.com>
> > > Cc: Barebox List <barebox@lists.infradead.org>
> > > Subject: Re: [PATCH 0/2] Initial LS1021-IOT board support
> > >
> > > ***NOTICE*** This came from an external source. Use caution when
> > > replying, clicking links, or opening attachments.
> > >
> > > On Wed, Feb 08, 2023 at 01:26:21PM +0000, Renaud Barbier wrote:
> > > > The LS1021A-IOT is NXP ARMv7 Layerscape evaluation board.
> > > >
> > > > These patches provide a basic board support with:
> > > >       - UART
> > > >       - boot from SPI
> > > >       - One Ethernet port - eth1*
> > > >
> > > > The content of the EEPROM having been lost so the MAC should be
> > > > set in the config file
> > > >
> > > > The code is ported from NXP U-boot 2021-04. Like U-boot, the
> > > > machine support i.e mac-lxxx lives in its own directory. However,
> > > > it is very similar to the ls1046a machine support. This migth be
> > > > merged. Please
> > > advise.
> > >
> > > It would be nice to have this merged to arch/arm/mach-layerscape.
> > > For example arch/arm/mach-layerscape/pblimage.c looks identical to
> > > your version.
> > >
> > > Have you tried merging it? If yes, which problems did you encounter?
> > >
> > > Sascha
> > >
> > > --
> > > Pengutronix e.K.                           |                         =
    |
> > > Steuerwalder Str. 21                       |
> > >
> https://urldefense.com/v3/__http://www.pengutronix.de/__;!!HKOSU0g!C
> > > ZdG8RU9gQpSVfJzH_T4b8q5lFRdLrpGiJsD5H-
> > > H351N8ycvCriKuoi6quenVmESFrbU0Iw9qhIlb5z4ifTE$   |
> > > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0=
    |
> > > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5=
555 |
> >
>=20
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       |
> https://urldefense.com/v3/__http://www.pengutronix.de/__;!!HKOSU0g!G
> os0mqldKVyCzyhvalaS58FEkUQ1osWODWWtH0-
> MC4aIxC0d2rtcUzK3DWcfHooti_U0whPPLXjo8H3Xl87E$   |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


