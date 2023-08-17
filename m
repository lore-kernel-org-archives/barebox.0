Delivery-date: Thu, 17 Aug 2023 15:51:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWdPG-00829I-Tq
	for lore@lore.pengutronix.de; Thu, 17 Aug 2023 15:51:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWdPE-0004EN-E5
	for lore@pengutronix.de; Thu, 17 Aug 2023 15:51:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i4hG45QcrxcheOnuxU7UYLIPT8BYtUVSMIsGHJYqQEo=; b=EeO0+eGtBEB0VA1gbPJVbGU2B4
	blgifZKPfNo787sgfFkl6FhdA6ToqIcT9RGdiEuDmgyvVWRp56quaYaPXHsO1PhwOfccbYn48r5D0
	5cR2U1rk2JmI0ZPirKlPe84cmwaqfVUN5BN77yU6V8u2PTplGl0nUmvLAykanUHndp6QJFE4ew5xJ
	+eriefbI87VqJozv/onndhgWU3wMMSN0K2z0JParUXn7jTNbB5nvQJ6jWEiHhpN/b+GwJTa6k9XPq
	nj+6d3xfhiqxUfPeSN1BWXW42/CjZ7x2t+4VOvRZQ0krBsnrWUXUfpFwbvFcs0ii/SYfg8wc5DRzx
	N+JLPqLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWdNj-006UeF-1V;
	Thu, 17 Aug 2023 13:49:47 +0000
Received: from mail-am7eur03on2060d.outbound.protection.outlook.com ([2a01:111:f400:7eaf::60d] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWdNf-006Ud2-2y
	for barebox@lists.infradead.org;
	Thu, 17 Aug 2023 13:49:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z/H3ADwKTo8PM6i16VZOZUxN8y+ucHKvYolq423xpABcxiyWyus339svIKZ+czSdMAMNGC5gY+l2FTLfa7URfsyu6v7B/ac4mNV4vLZzupoQ+gBro1ZRpnBO4v6nrZdmWQtxIrTm/bXiJ8Sv2UYNq/xl+bDUPjbJ737a09OilzmUUQ+PHE8LDHvHZWoZGtvI8sUcOO02qnb0xgvQ6ZqxwMdTNMTTL93lCIlhfBJws731gt1G89Etd8FD8juNdLdDZnuBX1wcAP+amrIX2ZiZLRl0sszZflZE2U1H4AKjb7tI+aGGyGv2ZtOJQd15cuTobO1PJCRr3PPhjuLv5n6WWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i4hG45QcrxcheOnuxU7UYLIPT8BYtUVSMIsGHJYqQEo=;
 b=b1LnqLX7A55lsxBb7WtAKOJDIOO3RLXp8F5uB7Kvgfncblw8qoivrR3MKnBfpT/W0MLowdEZeblv9L+JMLkiQ5xPtN+XllpIHDXxZ58YixDTmM9xBbCEDNmUKC4fa4yBoCpFIu22vghffch6kKZoudIq23vIhX+CnlHLMdHi3cFaIrscHf/jWwqsi5rLRscVgQT/X8sSlcXUU4+NO5ZaZAt+OE8pdt6l8ScAb4McwL+klr2fhirqToqmZmCnvfsoAd36MMNqGEKe3bsriquzDFGX7dzMGAm6L/cDOPS+VN5FReqSYnqpj2VobX0P+yjYD7nNodq1Uea9W++i8B+rdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i4hG45QcrxcheOnuxU7UYLIPT8BYtUVSMIsGHJYqQEo=;
 b=YMhcC4RqHLX49LP0gob5QQZGKesi5bG2WkKPvFea5QSiAOzVhHyjLPCShfV0bCo9Z/IunJvKgrBAO2WxpIM005xcmhi41ap9K/u9/8gDVxaf9yTvqELMiIad9OtVv3xsLfWLEg9DIaXvftEDnmqqfXef08VZY+eLiusI0RYmSUM=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by DB9P195MB2131.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:3d8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.31; Thu, 17 Aug
 2023 13:49:31 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82%4]) with mapi id 15.20.6678.029; Thu, 17 Aug 2023
 13:49:30 +0000
From: Lior Weintraub <liorw@pliops.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: ARM: mmu_early_enable
Thread-Index: AdnQ0AqbwZmu71wZRaWAWG5n/7MS3wACtsgAAAAP5HAADW2MUA==
Date: Thu, 17 Aug 2023 13:49:30 +0000
Message-ID: <PR3P195MB0555E881ABD36783C5557EB9C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
References: <PR3P195MB0555EE60DE17128F9831C028C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <20230817071736.GJ5650@pengutronix.de>
 <PR3P195MB0555ED3DE92FAB5706C2E458C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
In-Reply-To: <PR3P195MB0555ED3DE92FAB5706C2E458C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|DB9P195MB2131:EE_
x-ms-office365-filtering-correlation-id: 9afed496-2802-434f-87d9-08db9f28c82b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: trsuxZ7n++CKhddo6oh6egtpy9MNNvbE7dbjxQ4NuGi3k6lzXKEtbYiEjj39p4xL/GcXMiMY+KtnR2zUtfu3WvBZ8/t4bjUSN5l/kRiEdYMX2a2og0mS7sRtB1ncd3vbbRWhVUOT5xU6AnjUU9/F6hgnoB0+Fdzde2gFK+t9xPd0jUyrz739Jl+CvoW//ZXsaOap7e7P/2LMc38HXhX3aT56OpFljFJK38e8+Rc+6VIbzmzJ8vDR8tQsf9NzrKGmyHyBk4PWd/Zpake81/J0u2L+/pxP/Je0PkUFkquEGf3Q1AhF8QiBiIcNsBsn/YYMP1umWwLuspeFyQiIvMqn/kbgAUDTH2S+WPfFSjxWbxLG0IFdgvSf9kc+T1n/5odrBY/yvBVJ5CdeCA27owDJ19WjlB8m+mSANGU1ydS08f9vgYpjzQzGkcI2bscEskkqRSqJ/3Mbxaa0eAYjHE6ggwFQo3tbc/MiX1BXJWoSqwp2ntnzuw6h+ZFMhE54+bBx/0YZ285nnGIOcg41F68Fdr/b8ZqCIxGb48DGXxwsVcmUgDBZX3jOFqKA8aYN3YYHn0EyvfakGYA38u9l/xtqNV/400s6PaBZ7re9kTEaMo+zC+ZO6lWMD75Wum/5E+UsuG9WklSkwG1ywJOMSW5dxA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(346002)(376002)(136003)(396003)(366004)(39840400004)(451199024)(1800799009)(186009)(86362001)(33656002)(122000001)(38070700005)(38100700002)(84970400001)(55016003)(19627235002)(52536014)(5660300002)(966005)(76116006)(66446008)(66556008)(478600001)(6506007)(66476007)(7696005)(66946007)(316002)(53546011)(64756008)(6916009)(71200400001)(26005)(2940100002)(41300700001)(4326008)(8676002)(9686003)(8936002)(83380400001)(2906002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?8x/bp98JSB+gWAep63gUo1Fwm7WpnppL8lSkh0zkzNq99xB5sl6Pw6i5?=
 =?Windows-1252?Q?K5vg/40x9L/JK3omgHk01YwWlRRucKQ5jRtFrlaP+SA77ERPoDD8A+1P?=
 =?Windows-1252?Q?Y7yNClRFVnrJ7ta/KmJKQkZHIk0FjEwOjM6DRX8CsuRaDlEJ5LExOzuP?=
 =?Windows-1252?Q?Td3ioSeK2DrgFprhC2J/FobrNXarGkUd9TJfRhfM1c968mPbVDb/CPJX?=
 =?Windows-1252?Q?MuaZKJKYHA85fzN7zDEW/99tRP4/itL0NTfrfV3oLUotsWLbqlVWBxEc?=
 =?Windows-1252?Q?CrJlO6ESNO58wGZ/QpkT64Xf0O6D2x1NFUjtW5i+FHwKCBgKQNdGxMnj?=
 =?Windows-1252?Q?wh2PIWIlwu49XiYt+YA6qGF06ffhPwsijYKfVcwxU8kHtEgbAFDJuMDw?=
 =?Windows-1252?Q?pvdu7LmxlxBNPR1ms2tsTO/3pjgRCmMbsXr1iY7eena3RjLBwU6rjAhB?=
 =?Windows-1252?Q?Zc6ae/w9EqojmzodkThQINgP9VQIHII7xVNN/mQ7baVwfOnjFQbHDzX0?=
 =?Windows-1252?Q?qvjp4Eu27LE/gRAWKwJUeeetTvhNkrCiuAFTRI+xjNb8XgJtsLpwcnyi?=
 =?Windows-1252?Q?rqXf4+iTW4SCuI3dMhrKLjJvL8YT70pO0sFhI5Wv9AfHq4AsOE81Qo5Z?=
 =?Windows-1252?Q?4ve1bOr2ElJRZl+zRHhrmseKv+EWplb7wXakzAMfBz0P7XifAWG842tP?=
 =?Windows-1252?Q?7OtAiA+VA7rvUkpOKXe1ezYAWEhBiQAbCNjr2DUSJPh+hclFlkgLCR8r?=
 =?Windows-1252?Q?UW8chmKwnYkYEUehklxBzqRNf2qot18p6jfnW7p088WrMurcEUsuJRVj?=
 =?Windows-1252?Q?xdbG7Dbx3qGN4m0PBxVV7Y/jTatEktn7zMsaPhQod6HgoGW2J9h495C/?=
 =?Windows-1252?Q?8n3TbKLuvw3/pumWeVxO9vS2w/edimvKKZMh9CXrQaQPSJ4zhAEjS9pv?=
 =?Windows-1252?Q?lMEPzoz3bdt6PpayjgZDW6FivmBytWqz2JH4yu49hnNH34dPpLpHCApu?=
 =?Windows-1252?Q?5qmNqPIE9mh3fZWBPFa4ZL9k51bs8PReHuIwnUW7EvhfM5IQW9Z4mCQt?=
 =?Windows-1252?Q?ozQEETz4jeneVvBV6kN6eu6T/ds+cKCoyRFbjjYV2NpXopcPM6RNH7YK?=
 =?Windows-1252?Q?B/DoU48ogK481HZXMheVPGQymkuYYegHH8Nj6XTfyXi3jdYm0H2FraWC?=
 =?Windows-1252?Q?9tJIfNsbOJLYwjwzET6GYV+x71CkQH/kZ04LNPMjXIx76ZbtqJeQWp1W?=
 =?Windows-1252?Q?Vl075tPEVG0YV8LBt+gEifmEDmUytOBdudRxExKC1wsf9A2qFKrVu4rf?=
 =?Windows-1252?Q?m4naSV6VlQafQrJpKPS3NkHitaVypp7cv/5FPA/E/5p2DJ7JtwLHXxkK?=
 =?Windows-1252?Q?jbWI7ZneXoGTHGkZOZVdYQe5fqO2pheOV3iVN/GSr5NeLOKLIFLx2DNi?=
 =?Windows-1252?Q?aYonDRxPe5LvUXVbpbuNGhPFImofCruF93eUDEKmH0VRPYs2KvOKDxgE?=
 =?Windows-1252?Q?5e8tCbjbyF/o1v0N2XFuJniWrYFn8NeEFSdzGTgoi0CydofDbvXHVgea?=
 =?Windows-1252?Q?JwoUpBsdEzkcRJmIaj726jFrvrg9rriiDp5+1Tt1NmSdJdklgZJjQAA2?=
 =?Windows-1252?Q?eInLGMdFAk3PR8WZqIU4yXVWc6QRwDfGTyDw2h3Kj9q7MzFWply86kmS?=
 =?Windows-1252?Q?mmLiS+4CYR0=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9afed496-2802-434f-87d9-08db9f28c82b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2023 13:49:30.8327
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +g+JPnoYPl9WFI1fvw6j35u4SG/mfeMBZhFGxkovpgjIhyL9N39BcltVvbeNDH98eYK/ivoeYLy30mYomaoVOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P195MB2131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_064944_034223_B9FC74A2 
X-CRM114-Status: GOOD (  30.18  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: ARM: mmu_early_enable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

I read your answer again and realized my misunderstanding.
So essentially what you say is that all 48 bits of the address space would =
be set as flat 1:1 un-cached and only the SRAM region will be set as cached=
.
In that case the UART at address 0xD0_0030_7000 and our ROM at address 0xC0=
_0400_0000 should be OK to access.
We will further investigate and try to figure out what went wrong.

Thanks,
Lior.


> -----Original Message-----
> From: Lior Weintraub
> Sent: Thursday, August 17, 2023 10:32 AM
> To: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: barebox@lists.infradead.org
> Subject: RE: ARM: mmu_early_enable
>=20
> But the UART is set on a total different memory space.
> The SRAM where barebox runs and also given as membase and memsize is in
> the region of 0xC0_0000_0000
> The UART is in the region of 0xD0_0030_7000.
>=20
> According the tarmac log, it looks like access to this location caused th=
e
> exception:
>     3505306 ns  ES  (000000c0000814ac:910003fd) O el3h:	mov	x29,
> 	sp 	(console_putc)
>                     R X29 (AARCH64) 000000c0 00377ac0
>     3505306 ns  ES  (000000c0000814b0:f9400460) O el3h:	ldr	x0,
> 	[x3,	#8] 	(console_putc)
>                     LD 000000c0000825d0  ........ ........ 000000d0 00307=
000
> S:c0000825d0
>                     R X0 (AARCH64) 000000d0 00307000
>     3505307 ns  ES  (000000c0000814b4:d63f0040) O el3h:	blr	x2
> 	(console_putc)
>                     R X30 (AARCH64) 000000c0 000814b8
>     3505371 ns  ES  (000000c000000b5c:b9000001) O el3h:	str	w1,
> 	[x0] 	(spider_serial_putc)
>                     EXC [0x200] Synchronous Current EL with SP_ELx
>                     R FAR_EL3 (AARCH64) 000000c0 00000b5c
>                     R ESR_EL3 (AARCH64) 8600000f
>                     R CPSR 200003cd
>                     R SPSR_EL3 (AARCH64) 200003cd
>                     R ELR_EL3 (AARCH64) 000000c0 00000b5c
>     3505443 ns  ES  (000000c004000a00:14000586) O el3h:	b
> 	c004002018	<exception_entry> 	(Vectors)
>                     EXC [0x200] Synchronous Current EL with SP_ELx
>                     R FAR_EL3 (AARCH64) 000000c0 04000a00
>                     R ESR_EL3 (AARCH64) 8600000e
>                     R CPSR 200003cd
>                     R SPSR_EL3 (AARCH64) 200003cd
>                     R ELR_EL3 (AARCH64) 000000c0 04000a00
>=20
> BTW, In addition to the UART, there seems to be another issue.
> The Vectors themselves are located in our ROM location which also resides=
 on
> a different memory area (0xC0_0400_0000 space).
> Once the UART access caused an exception, the jump to Vectors caused
> another exception so we are in a loop.
>=20
> Looks like a catch22 to me.
> On one hand the barebox wanted to start clean and disabled the MMU but on
> the other hand the mmu_early_enable sets a partial MMU which causes
> exceptions.
> What do you think needs to be the best solution here?
>=20
> Cheers,
> Lior.
>=20
> > -----Original Message-----
> > From: Sascha Hauer <s.hauer@pengutronix.de>
> > Sent: Thursday, August 17, 2023 10:18 AM
> > To: Lior Weintraub <liorw@pliops.com>
> > Cc: barebox@lists.infradead.org
> > Subject: Re: ARM: mmu_early_enable
> >
> > CAUTION: External Sender
> >
> > On Thu, Aug 17, 2023 at 06:22:50AM +0000, Lior Weintraub wrote:
> > > Hi Sascha,
> > >
> > > I think I found an issue with the CONFIG_MMU feature.
> > > When the code under barebox_pbl_start calls mmu_early_enable, the
> MMU
> > > is set such that only the given SRAM is defined (membase, memsize).
> > > But then, if DEBUG_LL is in use and the function pr_debug is called w=
e
> > > get an exception because the UART address is not included in the MMU.
> >
> > That shouldn't happen. See the code in mmu_early_enable():
> >
> >         early_remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
> >         early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
> >         early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE,
> > MAP_FAULT);
> >
> > The first line maps the whole address space uncached in a flat 1:1
> > mapping. The second and third lines map the SDRAM (SRAM in your case)
> > cached.
> >
> > Your availabe memory is quite small (3MiB) and by skipping the
> > relocation your SRAM layout is not standard. Could it be that something
> > overwrites your page tables?
> >
> > Sascha
> >
> > --
> > Pengutronix e.K.                           |                           =
  |
> > Steuerwalder Str. 21                       | http://secure-
> > web.cisco.com/1OEKFl2BnNpoLNUlGA--QcqTLOmehOhRYUZN-
> > THBCB91kVNePMy2om4tD5Nv-
> >
> _isTZzlwD1lXGQLUMWmqHlBH9dEe0vcctRC7gn_a6v7IxQu5RV7VCRo5Rl7Tylx
> > vh1hfoYe3c1lCTbGAEE5kXKVZLdKBs7oNP9Xn4ml3gy7I78-
> >
> c_QsTMlZ4xNZj06ORqpIvkGFgk72fNMsGjjLXZP6zTk2yEI2gjapDB8ClJ0mVtAl
> > oiP9YHbgjuY0qbUbZfQq-UuasUtCi2rRo0Pu2jKm7sqnlCFb16xbdfl-
> >
> JN9oqUXAy8l3lHq0yGyfhYZnzWTxH/http%3A%2F%2Fwww.pengutronix.de%
> > 2F  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0  =
  |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |



