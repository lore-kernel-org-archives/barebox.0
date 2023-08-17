Delivery-date: Thu, 17 Aug 2023 09:33:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWXVx-007fX0-Tc
	for lore@lore.pengutronix.de; Thu, 17 Aug 2023 09:33:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWXVv-0005XJ-Om
	for lore@pengutronix.de; Thu, 17 Aug 2023 09:33:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KJ0Uq08A3nDUGYmk3Ud/9oWXxrgNSIaamUc/tkOEcBk=; b=TaTt9OgseyRWya5W7bb13aohbo
	80k/7zg91GKNBjXP7jvHMyV/AgqDgbR4Gvi2AMzjcShaJKvEkwnwpnIn6Y77JFtzassptkm1HlShe
	YpV+NIWvokc8oz02kqnpUJIC03G4jTcyxz1RaBTrxAR1xiF2Z8gQTCpHMXz1+QMMR3FlTAD6+u1RI
	Mu2wFH1w3xOR3l9xGWxEEkWFESpSbFhbL0+0mZ0o0Ln0aaM5HY97/2pNelwaOocfca5n7my0bOMre
	0gsp1nYel8+YZIk4Y6uE/ljHd0AHgND+k2VRmSzbRLjb7hti941ZPQwMd7EemGGdmRNmWci7KT8+N
	PumOK1WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWXUe-005j7E-2B;
	Thu, 17 Aug 2023 07:32:32 +0000
Received: from mail-am7eur03on20605.outbound.protection.outlook.com ([2a01:111:f400:7eaf::605] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWXUZ-005j4y-23
	for barebox@lists.infradead.org;
	Thu, 17 Aug 2023 07:32:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PQSYy2LUYvSrx15H4DMYht+qVUmCmrAAjEeuZbCKT2SkVq0gpVYL9BVhSMq7SRcHf3KtmjmNF4hNd6R+CvWhhfGVNDBos18wnIVrh9jrGBx+av/33T9lO3kX+t/sKs4yGUz+c4fj7LlqnXpZZft60jsddNVUZ+/0K2GbU4wZY/gzgL27FLpuhkE3UhzjsNb2GYZKVn6urQRpKcD+q39BIOZwQUIAuAJbuO1W2ZQPdflg/s9gDmMXRQOJ4Yy8uCAoTgqCro0VlLLlTK/1N+Qr8Dsw9rIJ+0aHn9ODiiR+1dfnkQj57jGup4DNNVIkL3V0BgfnbllHh+gwMoZNZTc4Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KJ0Uq08A3nDUGYmk3Ud/9oWXxrgNSIaamUc/tkOEcBk=;
 b=jcQSZDuRBpvpG+DFRG8NpWGEbM+5U24Lm2VP35wI6aVpasNYxaOVcs8SmhS9SnUJ5LCXDmecyIn5sdIh2Xp7re+5+JIyZomX6XcDGEGfNf++rL36EEl/hTEmuUO8p/9shobdUCV+jWJGELZRt3PYb7QHEp0q2zygFNZVkGs6H3Sbr6cEWNjGLMuWzuPSgILcpzzVh5wmM0VNR8z5a9dKoYJrIkXXANPpTCodkUlGvVDs27r8D1ffAxEUY6lW85P8+XavD8WqswtlmWXTsx2Mh7UImkKdad8GHq3hd3g05WhEN20I9QYch968GWZ+34q82kO0WTz0Xa+gVLvuGNSvVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KJ0Uq08A3nDUGYmk3Ud/9oWXxrgNSIaamUc/tkOEcBk=;
 b=XpCKwNSHTRjzEEKZkUcPaiChXHt57RXqWQCUZ8ZK2DA5vMsQDDGrm3BVp5wT/HeqdyINBuGzRVOBkjwTSXNZntQZ8t/SdCJDKfB1Gv6nH8glI/MjGovKbgyH5ShlXSH9N4C1WvphkIgP0xlT0keXrpGHd2ne+abJ/QuwutBy1Es=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by AS4P195MB1599.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:4bb::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.31; Thu, 17 Aug
 2023 07:32:16 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82%4]) with mapi id 15.20.6678.029; Thu, 17 Aug 2023
 07:32:16 +0000
From: Lior Weintraub <liorw@pliops.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: ARM: mmu_early_enable
Thread-Index: AdnQ0AqbwZmu71wZRaWAWG5n/7MS3wACtsgAAAAP5HA=
Date: Thu, 17 Aug 2023 07:32:16 +0000
Message-ID: <PR3P195MB0555ED3DE92FAB5706C2E458C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
References: <PR3P195MB0555EE60DE17128F9831C028C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <20230817071736.GJ5650@pengutronix.de>
In-Reply-To: <20230817071736.GJ5650@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|AS4P195MB1599:EE_
x-ms-office365-filtering-correlation-id: 94c81dfb-34b7-4626-6e90-08db9ef4152e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KgqrMUX5OaM/HRr/StQcdrRzdAj+W7jzazI3GVKniobs57eR9xNXWUfG5DlsMshmFNK67NIln9qywEhV0YqhsD7MZmSfsRP2V4KbEW8o2KaEzVEuPU2Ym73RgfdTMRtQRGCAB87GwROsIrqibyRyNl6Y2rTt9k8kkvIqvg509Mmq6Qcu2NAAUtVNVcxsvTpHZPII9llipbnst3DyDRNzOZmAMajJS31YZUPgB22VECHXyaVERvdDit9oPcvYevrIG0r0wq2aG5cmmL1T1ZgWzDR1Kux0KkmRoTN5NEPN/B/tvErE27zjAanOBhmUCafymhuTmPSugJ7ADuANkl1pWVAcz2SOayxQhRdRF/WYK0DfUh69XmPIja1QO21HNFHly1v0bWcIgBWXjh7BLHiL+nKy4NKxpMMx9BrEqo0RZaMjGWsR9T80+hFPR4hFdUcGHzUSN4mBLghg2OC+jszMWZJCXodFvYpvIkJ495ij5EAX8P0fxhQjZbZ7DQdqmPj4gJt8v9rhDpL2uW2wY8aeBw3wtw2Ym4aWBNUD714Ok44UaNji5V1bKgShVfGLCP1LGMhQXIGS0gu1CQqQq2fzzxFWGwT7bja7C/VcBj5FoA0=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(346002)(396003)(39840400004)(136003)(376002)(366004)(451199024)(1800799009)(186009)(86362001)(33656002)(38070700005)(38100700002)(122000001)(84970400001)(55016003)(19627235002)(966005)(52536014)(5660300002)(66446008)(66476007)(66556008)(76116006)(66946007)(478600001)(64756008)(6916009)(53546011)(316002)(71200400001)(6506007)(7696005)(9686003)(26005)(41300700001)(4326008)(8936002)(8676002)(2906002)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?BaCgPBXQGDgT9cFRN4J7A4qHTChieJsxi3DQRqu5dCVlqX9yUiQArDwh?=
 =?Windows-1252?Q?lxrFaPTBexFWP04YjwH2Qabm49lwhHW3+U0b1XWBxNIHzI+iiU7aSguz?=
 =?Windows-1252?Q?6G32fOHQl3lCj0jRLMYos81x84ci+67MEZT5d2YgSmPZR8eHXI2Bzkyz?=
 =?Windows-1252?Q?nzadtu9/Fp0MxS5ZGNq6L69HtZHlbmqvk46YkpXL6ef/l+oIilkIKl0C?=
 =?Windows-1252?Q?ESgYim6etfEqtLqkdRYn2geH7dO6WH+n7gCnLOBCrCqZ9ksYxomChs/o?=
 =?Windows-1252?Q?xTWBBnG8hOXdsKNR4Sgf3moo+cHle98tJ+Jg2UOp5bA5VTQPetO2pI0Z?=
 =?Windows-1252?Q?AqcMOMtHku6gtBwpc27RA7qEv7sXSgLFAtY3KW/vZsQr7L7RSRhKUAcC?=
 =?Windows-1252?Q?NtelZs8X2IvHrSFAE9HvFpGM3S7eE2/NdA7sGLFL/DZ1WA3aSacxn676?=
 =?Windows-1252?Q?kZQYEIBKzSyH82QpWcK5gzm7/Y5jKsSRbfuasRfucKss59rUKaRPgFW3?=
 =?Windows-1252?Q?5j6OUE//UWTOoyGRoR6cJ0qvGbR0xfixSvk1EkRsySP5YKC89t9tFSuu?=
 =?Windows-1252?Q?0wSkS0IrsMVg/oJvlzNxi/zedvLDdy+tTy9anfuntF3u/PvxkynVvTzC?=
 =?Windows-1252?Q?/kwsU8m0fkUezRMPKCBfunf42DMZVuF/xD0r48TncimokkeK05YucDab?=
 =?Windows-1252?Q?WlRVZ604iDrC51oQkU2xQzIcpzXQMXQ8rEFvZLjGuRTg0nVLqTMeLg4P?=
 =?Windows-1252?Q?IbpMXw0WmtZVFMYe4v6ChUSOtpVaWwgRudUWRBw9OVFV0QxtmvciMqQa?=
 =?Windows-1252?Q?LS49EnTXRWSCYY7OOqUoqqxewYOHgx0Ua3uAqcM3nT6idX0Y4clithK+?=
 =?Windows-1252?Q?CWVDbfucV1zLgnYNfkGdsWqE6y6Yr7csIxefBkkynB7chrLoTp3wnI1q?=
 =?Windows-1252?Q?xo90U4MmSoIy+M63HuATMNbUv9JmmyNnaLeLVPZcpu82XEaDplQl9KkB?=
 =?Windows-1252?Q?nIkkoo3XFifPxQYAOPyox6e4xTWoZYYsZcqzMJU53oNe61ljdvlDO/OV?=
 =?Windows-1252?Q?heeBWcwzBwnZGz9oiMTQWD65Gtat2i00sRezECwHwNk/ObZSED0gdxNB?=
 =?Windows-1252?Q?G215aVXkCbGQxKrJVbZ6lmprJ0f9hhMTNo6HPzjvu5tgfrF+UMWOp/iF?=
 =?Windows-1252?Q?HUb+VLZHU4gmFDWM3D1O2Cx46kqvN5cd6qASxzPYuKEKNF8vAqsCLCb6?=
 =?Windows-1252?Q?OS8rdpgar+dUAD+V5bj3ViEJNcTD3wcud8ck0GjgblcNF7+5Xk0XkjGI?=
 =?Windows-1252?Q?2YQgTtLIPw0tgJiWs+IvsAEJi10WxMgWaoPWfDSp5AAQtVKlVZcdHFx/?=
 =?Windows-1252?Q?QL4U1GytiDrky3RjgwsXQYVpxVIhkSgZqE7cmUi+bVr3O9IKFWPvf9Q8?=
 =?Windows-1252?Q?UGA+oF6dMFJPcMYSdTBbH7VOZADFSsZalyW16NK5ec8Lqas+x+cKT/Nu?=
 =?Windows-1252?Q?102JcxDRXDAUMWJ4wKp86o4FuXsdQdJ0e4C4RSs69Pi/niZ82e0/ARlO?=
 =?Windows-1252?Q?snKFjzzIONq2k3mt/PFPW7pk+/Cqh7Q0ZIxQVrIv2Bai58CgFu4DBwy/?=
 =?Windows-1252?Q?9ChRb3Um2N2gPfDuhyNr/f8LV27Rrrp5riDDXIl65xQqPOOUBTqRykQW?=
 =?Windows-1252?Q?ctCK/s/wB5CvXAlTn/4tRRbrsp97ZkmC?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 94c81dfb-34b7-4626-6e90-08db9ef4152e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2023 07:32:16.7384
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qt634jLDFYhMxDPE7IDaMd9448jUKi5LJ4o7YrmzJqzrSvc3CajDWBvgKyz7txyXkhjVS4D3UJ1L+v3+hJrMfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4P195MB1599
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_003227_733575_8C777B67 
X-CRM114-Status: GOOD (  24.02  )
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

But the UART is set on a total different memory space.
The SRAM where barebox runs and also given as membase and memsize is in the=
 region of 0xC0_0000_0000
The UART is in the region of 0xD0_0030_7000.

According the tarmac log, it looks like access to this location caused the =
exception:
    3505306 ns  ES  (000000c0000814ac:910003fd) O el3h:	mov	x29,	sp 	(conso=
le_putc)
                    R X29 (AARCH64) 000000c0 00377ac0
    3505306 ns  ES  (000000c0000814b0:f9400460) O el3h:	ldr	x0,	[x3,	#8] 	(=
console_putc)
                    LD 000000c0000825d0  ........ ........ 000000d0 0030700=
0   S:c0000825d0
                    R X0 (AARCH64) 000000d0 00307000
    3505307 ns  ES  (000000c0000814b4:d63f0040) O el3h:	blr	x2 	(console_pu=
tc)
                    R X30 (AARCH64) 000000c0 000814b8
    3505371 ns  ES  (000000c000000b5c:b9000001) O el3h:	str	w1,	[x0] 	(spid=
er_serial_putc)
                    EXC [0x200] Synchronous Current EL with SP_ELx
                    R FAR_EL3 (AARCH64) 000000c0 00000b5c
                    R ESR_EL3 (AARCH64) 8600000f
                    R CPSR 200003cd
                    R SPSR_EL3 (AARCH64) 200003cd
                    R ELR_EL3 (AARCH64) 000000c0 00000b5c
    3505443 ns  ES  (000000c004000a00:14000586) O el3h:	b	c004002018	<excep=
tion_entry> 	(Vectors)
                    EXC [0x200] Synchronous Current EL with SP_ELx
                    R FAR_EL3 (AARCH64) 000000c0 04000a00
                    R ESR_EL3 (AARCH64) 8600000e
                    R CPSR 200003cd
                    R SPSR_EL3 (AARCH64) 200003cd
                    R ELR_EL3 (AARCH64) 000000c0 04000a00

BTW, In addition to the UART, there seems to be another issue.
The Vectors themselves are located in our ROM location which also resides o=
n a different memory area (0xC0_0400_0000 space).
Once the UART access caused an exception, the jump to Vectors caused anothe=
r exception so we are in a loop.

Looks like a catch22 to me.
On one hand the barebox wanted to start clean and disabled the MMU but on t=
he other hand the mmu_early_enable sets a partial MMU which causes exceptio=
ns.
What do you think needs to be the best solution here?

Cheers,
Lior. =20

> -----Original Message-----
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Sent: Thursday, August 17, 2023 10:18 AM
> To: Lior Weintraub <liorw@pliops.com>
> Cc: barebox@lists.infradead.org
> Subject: Re: ARM: mmu_early_enable
>=20
> CAUTION: External Sender
>=20
> On Thu, Aug 17, 2023 at 06:22:50AM +0000, Lior Weintraub wrote:
> > Hi Sascha,
> >
> > I think I found an issue with the CONFIG_MMU feature.
> > When the code under barebox_pbl_start calls mmu_early_enable, the MMU
> > is set such that only the given SRAM is defined (membase, memsize).
> > But then, if DEBUG_LL is in use and the function pr_debug is called we
> > get an exception because the UART address is not included in the MMU.
>=20
> That shouldn't happen. See the code in mmu_early_enable():
>=20
>         early_remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
>         early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
>         early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE,
> MAP_FAULT);
>=20
> The first line maps the whole address space uncached in a flat 1:1
> mapping. The second and third lines map the SDRAM (SRAM in your case)
> cached.
>=20
> Your availabe memory is quite small (3MiB) and by skipping the
> relocation your SRAM layout is not standard. Could it be that something
> overwrites your page tables?
>=20
> Sascha
>=20
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://secure-
> web.cisco.com/1OEKFl2BnNpoLNUlGA--QcqTLOmehOhRYUZN-
> THBCB91kVNePMy2om4tD5Nv-
> _isTZzlwD1lXGQLUMWmqHlBH9dEe0vcctRC7gn_a6v7IxQu5RV7VCRo5Rl7Tylx
> vh1hfoYe3c1lCTbGAEE5kXKVZLdKBs7oNP9Xn4ml3gy7I78-
> c_QsTMlZ4xNZj06ORqpIvkGFgk72fNMsGjjLXZP6zTk2yEI2gjapDB8ClJ0mVtAl
> oiP9YHbgjuY0qbUbZfQq-UuasUtCi2rRo0Pu2jKm7sqnlCFb16xbdfl-
> JN9oqUXAy8l3lHq0yGyfhYZnzWTxH/http%3A%2F%2Fwww.pengutronix.de%
> 2F  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|



