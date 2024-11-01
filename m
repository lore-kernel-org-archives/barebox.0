Delivery-date: Fri, 01 Nov 2024 06:44:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6kSL-003O0v-1Q
	for lore@lore.pengutronix.de;
	Fri, 01 Nov 2024 06:44:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6kSL-0003Sv-Sx
	for lore@pengutronix.de; Fri, 01 Nov 2024 06:44:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T43bUQchIUTzf1Fvri8rkG+3DWD+OoqaTaDZEpDFMRc=; b=NLItG/j3+Qnt1qjliy6CenvJ9g
	2l55s4uXziPlSzmX4hkmPBEVWI3rxtSEt0i5aHtFGh6L5zp4D+xaZkd+BdblNoV3GxKRC/1huhheo
	+t1TnF4iCFQ1rBW8TVF3hKiIwHJ3KWgP83mBRRi0V4SQi9H/yqjRruln2Vr7jinCENxSsmsYD8pzK
	T82x7ibj+yL+S9SDHabSwL3bc2CeAiyhVzT2s6vVf/7FUG7bQF3XyBKzptnAI3/oKknpGGK7TPCMA
	m5KtjFBG/tEmLKxcDbz61iKi3Qjtz5rFWIM6HKhOyht7BMcY8ODyFcJUNjhEQWT6hb+Jae+EVzxSs
	2TCJF4mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6kRY-00000005rnG-1TqN;
	Fri, 01 Nov 2024 05:43:32 +0000
Received: from mail-vi1eur02on20631.outbound.protection.outlook.com ([2a01:111:f403:2607::631] helo=EUR02-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6kRV-00000005rmd-0rzM
	for barebox@lists.infradead.org;
	Fri, 01 Nov 2024 05:43:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AghSix9E4OATU7t21CpUzspI/7Y/3jOmBhASMH7B4cbT6AoH5Kn7+uBKUostZN5o2PK7TYwLCc6Sq2AHMT5AJgsuuGVBJgmOvfDBbeLb7Y+JdA7M/yOmZxu5Z6SNQeB448ZYJOO40gIvcsxFAbUAmsoEOeRy2jLYA9IhZK7ceTmXshhhFHGNeUmCkKgmq5YS7AIrGSAjdesfp/v1sAG4Ux6ovynFlP8MO4fwhj2eNnpT0SxpChoN8jrgzdzx+hny+XhsKWDsjq5Da6FiThRByOmHTUNKmaLAMny9kP1Sk279+47tiYSEgerSWuS7mVIpZSZ7zU/ltGdM6OWD/j0FNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T43bUQchIUTzf1Fvri8rkG+3DWD+OoqaTaDZEpDFMRc=;
 b=y3KBGk+0BIYlFO6J+rXZCL4dRdrdDGrLPnz+e1cv4TXjNZcUxjFgql/0SSH/KdpY6l6rPaRRvy+ZEfD7E3Ix6ifA/I0wFSUXelroYlMGHf/kTsyT339ZWkXL2hhI8a74TLlPrQjvnGNpYbsV3iqeqZwoK06dMjf8q3PsfiAnUOlw1JZ35zHjEIBPoP0GX25XNqhsgVewkO7OUmPJGQNtv+RinQldLeogJD0sSRWkVgqEnqkZX07WBPjujl48tRmSxlwFpo9FsLbxaOpIN5ovhrj/TbWj5gyegOOwzgFePnOYN+mt0yCOm9KngcQzPxPxdUSrUiLsyjw7tQEvTUFOYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T43bUQchIUTzf1Fvri8rkG+3DWD+OoqaTaDZEpDFMRc=;
 b=SHnS0+axdvKGUZJnazag6rnAJUBKOOzQao2+PJZDnATgOwV8TRQCao3Jpk69dmd1DCDJclZ76SqiwUxF0dZlO0YvYMlYHY1BgItNkFSUpD4VYfXPfWRgglfS70ky/ooQkZwYsAE5JUS0O38leTFN3LTy1bTmL7we5aGvIrlQE3Y=
Received: from AM8PR06MB7521.eurprd06.prod.outlook.com (2603:10a6:20b:355::8)
 by VI1PR06MB6815.eurprd06.prod.outlook.com (2603:10a6:800:180::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Fri, 1 Nov
 2024 05:43:18 +0000
Received: from AM8PR06MB7521.eurprd06.prod.outlook.com
 ([fe80::570d:8853:c13b:c7d3]) by AM8PR06MB7521.eurprd06.prod.outlook.com
 ([fe80::570d:8853:c13b:c7d3%7]) with mapi id 15.20.8093.025; Fri, 1 Nov 2024
 05:43:18 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH] common: add custom autoboot_abort_key
Thread-Index: AQHbCD/Czt0XB1Wlu0q+X+XHNtrckLKSv/mAgA9uDas=
Date: Fri, 1 Nov 2024 05:43:18 +0000
Message-ID: <AM8PR06MB7521D0385F973992AF068967BC562@AM8PR06MB7521.eurprd06.prod.outlook.com>
References: <20240916135300.3996776-1-johannes.schneider@leica-geosystems.com>
 <Zxd2FV4C6wca_dOJ@pengutronix.de>
In-Reply-To: <Zxd2FV4C6wca_dOJ@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM8PR06MB7521:EE_|VI1PR06MB6815:EE_
x-ms-office365-filtering-correlation-id: c0a1b3df-2248-4edf-a348-08dcfa3816b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|10070799003|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?7qoUvpmXMSxhPgF0LwqNVRIoQRPV7ZW3lI6l8s9wUUtvE14gZKHGss1ZEd?=
 =?iso-8859-1?Q?pfWe9nRtr+NA6et1LOyiVONmggAiRaWJ3njE9cBsukb6/xbPmZ9yqfN1/p?=
 =?iso-8859-1?Q?AECzlkgO7QXT9QJm/g7pBPguqFY2xCcx+kBPjBNdn0DWFuqP1kCL+P8RQj?=
 =?iso-8859-1?Q?Qn+OIYxKjujeQYulGZlXhTyVxVWYQ+BSLOH4240uJyNoZk4I1nfhxsuaOu?=
 =?iso-8859-1?Q?G5arpHYdfsH0z9+0w8NGGQGgo73C3ithlO8NhW+QVZ4j+i/Ig2o3PL9GID?=
 =?iso-8859-1?Q?g6fQAe1gJcYrhyYIxxmSavIrguJLUPMgsJIQ+HIdUCr7+lqsFi2QTIpSk6?=
 =?iso-8859-1?Q?2JQdQRV2Ag7zWuBhv5rOSC98PpUyqxAAqYJo8QiYuSNMLwn+mkVugl4wvO?=
 =?iso-8859-1?Q?V3DYpm443xNftcOxsRHeYQsWFkU5LUvKm+RSSnX/mm59NMduYurB2w6t1E?=
 =?iso-8859-1?Q?94KZf+lBnOGaHL7/kX2UeazPY6gux4/tvYsURT5ytkCA+A0RQKERYOTomU?=
 =?iso-8859-1?Q?/KPRJWGy8q+3QXGDbbB8V4X/EefpXQ04bIA30oXgkkt29+vKOnEd4PYU0j?=
 =?iso-8859-1?Q?glOY/OqLcjptREO0WInb10GYmSMeTcuy7Q+t0ShJb8gXz5OmoBIcKbc14G?=
 =?iso-8859-1?Q?rAqeqCG+aL7XSPAHJ49YkqlNA+Y0rPtF/Yf9+1Dly28biULVLqePMtMYFG?=
 =?iso-8859-1?Q?XEcvbOueysfHVhqPLPChufkBn8HKOIL0l3md5f256KuuWRzO5kARaFFt9g?=
 =?iso-8859-1?Q?pkSMDRlnTQ4QeygWKz6pEsgAuYukGM0xcnpzkbTuhICnWXSHavsKaPrL+z?=
 =?iso-8859-1?Q?WJyQCmK1pFCOTKOo4SzEXKhm5ugH5LwmUInfkLzH03Gzm9bnzg7EraN402?=
 =?iso-8859-1?Q?aFRldHcYgPwxcgHFUhzopgCq9NGWUA74l/LFdAqmsvbY0Z6tW6O3URr9TF?=
 =?iso-8859-1?Q?Hv4RU9pxP69/stApw944Z7rfjJ+ZqvGVZAOLxJ7OMBtd20YSbnDKJ7cLql?=
 =?iso-8859-1?Q?Yj0yp74s8F/+KMV1d5RMqTbFTzUVatjQoZ8itI05aUbC00Nwdq9MEZbr68?=
 =?iso-8859-1?Q?dqQunnEcFa6NJaxd/laPGDHZ/D+EKNCkntZn9H8aHP/IvvT68gHGHKGi5E?=
 =?iso-8859-1?Q?VWAAvaFK9bD3Ko+v+zHlvt16PXmoGcRNacZVNnRSkmBftHGSV+sUzdynYW?=
 =?iso-8859-1?Q?M1n0MkjLBeQGigPUHp0cJLtV/A/65PxE7qs/Dw0VQxHNCT+plYZR0nju41?=
 =?iso-8859-1?Q?UwTqwieQe6B2T5OmfsNVMhpTjvgCXnzjO3B7SljaCOw1v3jTUY8o01XeeX?=
 =?iso-8859-1?Q?lmafBMt3IFLO4cUGrM+S/J+Pi5WG9YAVh65PjHdbn8Xap85Fv7zp21CWgT?=
 =?iso-8859-1?Q?ZZ6MiUc2NPqxIC6DXGIBR7BRZJG5cpIjbCt//JslB064UsXF9jpQU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR06MB7521.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?mKF3KXOMDDiMXDoLSi+BYVafXDRu+R3ffOr+IDfYxbcQO8CCRCxWCrIItB?=
 =?iso-8859-1?Q?bFJY9zydJSwkvCJf5RFv3guG50ejCPPpXLw53Na0sEqi5HLbXuWdSxRKbo?=
 =?iso-8859-1?Q?rasGQ9Ash8STu3wvGN7y8NZTND96IdD4gsX2WZNSvXDSy28CogrJrFGpRb?=
 =?iso-8859-1?Q?7VwG/vrmsC3dusb7klhHcjkTD4Zo/Kx7jGH0fUWPHv1/Bv5ZxhdR+pdzn/?=
 =?iso-8859-1?Q?DA5l4NEVU53eONUZywl7q4K2lcFIY9ch/ISseOOFSSzlJzjzLypQjQDZJG?=
 =?iso-8859-1?Q?rxF4qUg5FIbggShFoXxjlgQQunzGSRIwTYVmwjBiP/Pw/PIp1r/wx4PRs6?=
 =?iso-8859-1?Q?V1987A7oHtFtFBmPGje72FANVoPjUSUEOlAsaPyUfGVfUwuUzvtxkR5Rhm?=
 =?iso-8859-1?Q?7fscjgZWXuL4gXqkhpOYz6BTHQ0WRB1Eae9RJJIRvDbxjmUCc+JbaYWyLg?=
 =?iso-8859-1?Q?bnG0VMTLcSIzKZLj92SLIE7PtnjXIcrI+nNmyuY0JeNyNLOIyyi2pK/VZF?=
 =?iso-8859-1?Q?6pMPY7kOb4AN7bjw1/LrEBnLZG/6YuF/uGu1aakL/JRc8OXKZAkps3OU0I?=
 =?iso-8859-1?Q?izgqBO+HQiIxvYGahaJDhno70i2wPEfHIW2yKEmeXKsOR+DhIffBD0aTyI?=
 =?iso-8859-1?Q?Ux5UBR7VHI+OpCLx2iwczxbXGXTD4W5U4lRK84nnqRFbjQ/T26y1Ddu3ZA?=
 =?iso-8859-1?Q?OjcaH42Hb2ibzMPYWZISJ4XcGA4Q8cY7myOhsNzZ+kIQjer6PXMU6zZ1UO?=
 =?iso-8859-1?Q?6cBIcUBdNn16EHriq5Ipe8dsDRIylNycKwtmWpxMBLnnikOhUDeOyRBH8N?=
 =?iso-8859-1?Q?guFtnr8+G2xoyvL8CdSbJ6jarevKTsemjKrhzpeA0ggAt2zc1qJrNwku32?=
 =?iso-8859-1?Q?LhJ8k/ENkxxJvucvlUd/56UKIRjKy02dIwQZk+2oYCKH4g1gIkrsA7xk80?=
 =?iso-8859-1?Q?1JKAnKtPnUDvPa99AY/NirYE3DGzDgVFgiA2rkmQPsx9veRNvXlV54tOdE?=
 =?iso-8859-1?Q?JE1idQY9iICN1esBAaZd7lj2Me4IhEXpUgRXZG5i4PakIZ5VV1uIY2rNWE?=
 =?iso-8859-1?Q?JvkTjpcyD2nRMrqRaKvcsq90kMYf6B58Uz5otKsHFEUcBQIfz0Nbr0d5LU?=
 =?iso-8859-1?Q?YAiFgVm++1Vw2QjWCEQCy8fhMkp/XuvpTJWWEUt4g3hWT0e8lLx5GOygzb?=
 =?iso-8859-1?Q?58hQJ338/iO2YAOBKb1P9a5R+RobD716bxwwTqpugi2WZnAspWm6gns4RR?=
 =?iso-8859-1?Q?hy7/bx54h9owaojDJEppGPgAlXBL3OdsoZBhchE97Fr/Lyz8MgsFJLpBjE?=
 =?iso-8859-1?Q?3jPg6QqzpbPc/SMRdEpEzZ5fwX3w5f7WS/2Fp9qOy4r49zeiouTuYYLSFB?=
 =?iso-8859-1?Q?koNIf2F4DV7149m5zpp+93GymwH7JCpHn3sgfvkit598MkwYzai7+o7FBJ?=
 =?iso-8859-1?Q?MzBmjYlKw7H2TqCZCNrPOwWNgaCrYe5oM9+FT+bOcFjCW2i3NJy9qMcuE/?=
 =?iso-8859-1?Q?RFQiE3u8juuDM9Ega1FPSTWEu2bSUMRaYedq4B6XqfIJk6UuPbYQcVg6lk?=
 =?iso-8859-1?Q?PMcFgA1u81gJzr+1LSnaaBoS4MX2Blvmq5jBXB39jfUF5luMoazDPGfmZr?=
 =?iso-8859-1?Q?dKoYquliI2hDuuzGGzXURIGayfxJ/jnPrlt7sC6cY6gDARoJzL2rKlJmQT?=
 =?iso-8859-1?Q?i0OlHYgla+M1iDxDhXaP3NJlyMzyr5sUvSjUIkcLZJQCsWSzIWi9REklXt?=
 =?iso-8859-1?Q?K5ydgKB6oGSw7s+lmikQCXNo8=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8PR06MB7521.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0a1b3df-2248-4edf-a348-08dcfa3816b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2024 05:43:18.5423
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7d2D53/V6Wks3qjSuXsIpljgt9g8+FOBMrE1tABF7ula+jC895A88VHRg+adC5ex2S/4BUkk4QBlan0auTd1Wo2VhJgjCXoy0HI+F9uxAc/c8KYYIojUrNo8Jw3JIxat
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR06MB6815
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_224329_335666_A2840BAB 
X-CRM114-Status: UNSURE (   8.27  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: add custom autoboot_abort_key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hoi,=0A=
=0A=
> =0A=
> Having a custom key to stop autoboot is generally fine. Defining the key=
=0A=
> at compile time not so.=0A=
>=0A=
=0A=
i was at first wondering "then how are we supposed to configure it" but loo=
king=0A=
through the code how 'global_autoboot_abort_key=3D1' for ctrl-c was nowhere=
 to be=0A=
found in the codebase, i realized that the <any> is just the=0A=
global.autoboot_abort_key no-one ever set to anything else :-D=0A=
=0A=
... and i should have set it up in a way that you'd feed barebox an=0A=
env/nv/autoboot_abort_key=0A=
with 'any', 'ctrl-c' or the one key -- right?=0A=
=0A=
>=0A=
> Instead we could convert autoboot_abort_key from=0A=
> globalvar_add_simple_enum() to dev_add_param_string(&global_device,...)=
=0A=
> the set function could then accept "any", "ctrl-c" or any other single=0A=
> digit string.=0A=
>=0A=
=0A=
got it - i'll rework it and send out a v2 :-)=0A=
=0A=
> Sascha=0A=
> =0A=
> --=0A=
=0A=
=0A=
gru=DF=0A=
Johannes=


