Delivery-date: Mon, 29 May 2023 15:36:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3d2j-001OzP-7h
	for lore@lore.pengutronix.de; Mon, 29 May 2023 15:36:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3d2f-0006Vp-2k
	for lore@pengutronix.de; Mon, 29 May 2023 15:36:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ew9nK4bRz+/Fpo56Rr5O1nMNVQgsyG+g/zV+/79nJr4=; b=Ra4tzsAvhewh3cagF0CAhfxQjf
	7dKsEVFeYeiKFQobt5Vu62n1kDhx6hm/2wu6wDUk6Z+UI6fR0Ue8NDnD0AHSBJpFo/YuTgHmhwz9V
	U+/IYgXrH0eDVaJR90FVhc3DjRIdICyD3Waj8oHmYf5g9ZJIVonN5ID/vMx57OD8dhSOZOB2Tn+Hl
	cpwHPw96kJmYi0Eq/jT6ZhmffrDeEYyny1Maww5IvKGR21WaPpCk/fkI3MFqcOgdACBa7IeUxrQ+L
	Dt2D1H06TkLbqvlHcgPy51LW7bDxvb1ytAWf62IbjGxiYA6gL0YFxtIkaswJXlNnuUFplRFj0YkfT
	nF2+uUrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3d1D-00Ac7N-1L;
	Mon, 29 May 2023 13:34:39 +0000
Received: from mail-db3eur04on0618.outbound.protection.outlook.com ([2a01:111:f400:fe0c::618] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3d18-00Ac6F-1a
	for barebox@lists.infradead.org;
	Mon, 29 May 2023 13:34:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lsSSsFYKy92GQKD6L79o8Tc2Mmm4DW4gzb+Lk6c8PvYHPoNZPtb6QVl6BOVq66OUbPPxwvJpKqWo2zvU4vGp8NJBi4aBsS3GhhSny8p1sfkWDfD6rjajOyhz9f9JxcmF03z2tWyhuRNY3cnK/N6Kv1vtlVu6vUPKjB8yFdE/TTN+zA64nXMM/C6+WbIJEIdy5v7qL28TrLFcDa6CXryrkdJ/k+okUrUVT7M1RCKNOr6ejyqnWssXv1fkj9uGZ7SoV4sQ6Ne9afRBPGfe06n6rsL4HfoeaaMjAzR9rJ+M5d9gIY91LtxH4S15/1Frrdvfry2Eblyci0Y64JeXFtVlzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ew9nK4bRz+/Fpo56Rr5O1nMNVQgsyG+g/zV+/79nJr4=;
 b=H2Rf4nM7PfWQNcf4lFCbpvUN1kZcNrMb4AQXC51+FXN3butY3/M3AaIc2ZbUq1idwxLt5X9utgKxBwz5PlIDrg6LOeMwf6MyF+0nyB3A3c0FdLidET34JcNKBwhF+vTX47R831SSXqba8P7vFym5y3zvblstEZI+CtiV3oXOyPvf3uoL6WwXsSeTvmZQ/NaGVH8TGuCmgajxMbIM9NriDuWQopVjCqM3CCbAk9Y889vaEGWfzd1NQWQPxvQ/+oK6F855D7L+ACscg+KQY27PFFJg/oSYxHce1kyTw+dric/o4cP4xFfz+8ke5Oh3AhLqLSayTFrxCHl6/KkMfB0LEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ew9nK4bRz+/Fpo56Rr5O1nMNVQgsyG+g/zV+/79nJr4=;
 b=dC6z2ieN621Hmql8w4B3bSGh1glBr0LhCoZGyFa1A45aeW3YxC/e9I05v8iXyQs4IcOSxJ5PXzOalNtDYKmTSW8lXszc/hPmh/GIvB+Ov1MOzP1wuWsd7T4Cq/Mh1M+2Qdxi1klEBU3EYG8lFf6v+WWPH3VM2+MjyGbVywZLVq8=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by AM0P195MB0580.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:16b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Mon, 29 May
 2023 13:34:25 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::c695:44b1:a751:3684]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::c695:44b1:a751:3684%3]) with mapi id 15.20.6433.022; Mon, 29 May 2023
 13:34:25 +0000
From: Lior Weintraub <liorw@pliops.com>
To: Ahmad Fatoum <ahmad@a3f.at>, "barebox@lists.infradead.org"
	<barebox@lists.infradead.org>
Thread-Topic: [PATCH v2] Porting barebox to a new SoC
Thread-Index: AdmRYNrtRrBKX5DDRQGPzQVQ7b/lvQAGThgAAAAP8YAACFyNQAAg73hQ
Date: Mon, 29 May 2023 13:34:25 +0000
Message-ID: <PR3P195MB05555743B13DDCB43CEBA309C34A9@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
References: <f4aae166-1cc4-6255-1fde-7a52c7872bd8@pengutronix.de>
 <20230528153735.3315271-1-ahmad@a3f.at>
 <PR3P195MB05551AE3B3998B097BC90DCEC3459@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
In-Reply-To: <PR3P195MB05551AE3B3998B097BC90DCEC3459@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|AM0P195MB0580:EE_
x-ms-office365-filtering-correlation-id: b79daad1-8d1f-49ed-f1bc-08db60496b40
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZHQ6G6OgrXCBHLfd+UAa2M+E601L5YQ9CtNXEZEkAC9Q0+oFsplo+FsvsvLue6NMy3uX42X/4LzQguun2QM3b+Bblp7NCk9iFSV2wzAk6JbLU1I0EjL+1s0hjHQyCKvyzZw/g3dfxSmY0VHjOtUrHlH1EpT7g8q5V2b1ckoNv+AAWW0SBezCDrLo8NWz/4r2m/mrmXrmjxOUyoHuY96HRBJ/RT5P1JBO/mKiPnAIdf2ksURJZHNdfyZj1dsQL3PvTqnSjJjdcebSU38fR7kao9ypNW/LcXHVPXRO0hFVAGy7k/guOmDE3t6DuKJPWkk4khTacdH48HVeclH2rrk2fwDeRHHZ4ctocxYKeeSuchDS7oN4+vIxZwTxDlkX1xO/xrp2gGp8i9mIOjQDzcnrrcgGYbZejrqiY6EJbaydF1McEOKqKMUL7cP/VwbyQoi/N66sk0wk2/mXydvjF/hF1YTAYGT7w/U7O47CXiI030JG3kaQXFXFXNqH4aYUCibteHPoNBoNDXTtZBOcJ4wSdDBwXESqaVNfWkEFXCxszve6eGsCBeEAacjBF7yIIvXhuRMNJd/fWFrn72sFg2vpuPj+eIIRzv6SfSJzm4l4qBA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(366004)(39840400004)(136003)(376002)(396003)(346002)(451199021)(45080400002)(83380400001)(71200400001)(33656002)(66946007)(5660300002)(316002)(76116006)(64756008)(66446008)(66476007)(66556008)(52536014)(38070700005)(966005)(8676002)(122000001)(38100700002)(41300700001)(8936002)(7696005)(86362001)(55016003)(110136005)(53546011)(30864003)(2906002)(6506007)(9686003)(186003)(478600001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?P9lfIjgAQBVqpjnZ+JaIjXfgJxw6cniGO/XxBvD+AOe0ZPx78bJqap1noVxE?=
 =?us-ascii?Q?Li9JLjNxvECf+Q13BF9ob7HZrJTX4+Y3Ygyd4dKiUm/qmPCpqJUHKapDYyLi?=
 =?us-ascii?Q?sgvoL6iRUHEer1+LuZLchpXp6igFeYRsTkE6/0i2jGHAeec7MbxIdi31AW2x?=
 =?us-ascii?Q?ZY5Q/sL+GhKRvlLPL8VOfNq7gYcH5KLixXmXXcNCOEIxxKUKnxYYMhLXhDJ7?=
 =?us-ascii?Q?fyGu6fWGljidU2NM8+mcGjB2qqHDzBcYJDxRTVzGKfwL48gNtNOWmx7M2Qdj?=
 =?us-ascii?Q?IUNn0h7ukwdE3F4Gb+NalXYA6LTUD2qQVhv1YVtpM1zFbqtr3J0Ee3CjrtQq?=
 =?us-ascii?Q?8JF3qA39S8X7aBsb9TWFnX5WaYcMbyrUbZwtaO9ewZ63nstIYuw3E91XoGeU?=
 =?us-ascii?Q?uzOqCGkf9J4/ehEnfqE+ShuEdssrm26aGBs4iSUgrUvgtLKVRMIsBKelgxtA?=
 =?us-ascii?Q?DglCk3Zjs6FN24tD6NU7xfwku9t8l/LwF5rhBcCSQeVR+05Ri/Xj2id1suCx?=
 =?us-ascii?Q?FqM7E2y1/nrUAkD7DBjwkfCWJGWO3twNNFqifhf44V8OPIbilV039kPeMmcs?=
 =?us-ascii?Q?qzhFvEvuZLommcQedLW2tm3MdZMEdJvpInH34514yWHcayJmKKuKH5UcktI0?=
 =?us-ascii?Q?Ck9n3woFp9WKaSNeuemYakyBnojOQxpMa9TPnSH2s2Dlplcl3o/lHFFJBHy/?=
 =?us-ascii?Q?qS53h4mm/yZlXJU7+Ny57L1pQR8FFZQK3pmZu2a8jwyxC5BeAizjZ2ujyAWR?=
 =?us-ascii?Q?Pu9lUN1mV7NUMhjrR4WX63pmh217Xk94vN7lHU90yB4WrDAhKUAnz+p2i3uV?=
 =?us-ascii?Q?ZybKH3x/DuxUvOo+fBCIgwjW0FkrzvDsZYimxBj6MeKF/L+pF9U7+5RNeNIw?=
 =?us-ascii?Q?Sh7tRGO586Ght5kPYU2L5AprAyn6nIK79cV5vGqwwtaWFP1xWKX+AyzmNmL3?=
 =?us-ascii?Q?JWSg1GhSuu6LgAQNT/JcEenT1/DFl7zpS48hLLneSRxe/S61rKSj+b87myLC?=
 =?us-ascii?Q?YPto/0NAnvcNJaXtXk3ocZDOumUnHRShcCMPO/O2mj9rpSGQCZvVf7elxd0t?=
 =?us-ascii?Q?5/9qkedqNhmLgkZDyv/b0Pg821MKjS6qWetQ2wR2nILh1tBFKr6+YeiMv1uv?=
 =?us-ascii?Q?NefnFEh24bqja8TVCu7FvOVhcIfqTZEDIIdHCXsM8FBZ28RetQPkzhDxMLu6?=
 =?us-ascii?Q?dXlKkIDAdSDLxbgc2KqnHpf9St7qQWYnlXFRjNwrUf8hoR9n30KNYTIX02un?=
 =?us-ascii?Q?6oD2z+IHX/0lhJTO2rhY3CCR2l7VPy2rvMSw/xWdm9EBa+UIAf7LUV98Mid1?=
 =?us-ascii?Q?UfByiOKI5oYtJlyCO+rrp8tu5F8iF5Yuy9onsQI03R3kF9bvwCBfkfG8yeS6?=
 =?us-ascii?Q?7AtJiSBveJgprmeSe+fWA7AD4R39GEF4LUqPwv0ssEfaDDSJxVrTrvVn3+vO?=
 =?us-ascii?Q?TBks8DqclBjQPHh4vDgEQXXa8jO1MRvlF3hwscP05aPC0ysLdxubsBQYWiy+?=
 =?us-ascii?Q?jvA6DdqqUsNC4uxlzRRYcbSie3olVZ3TtKVaom+GOV+IWew5lfHhsWryZaJW?=
 =?us-ascii?Q?NfPTF15rhkZZ8SFie+R4FZRxeBS51I5KyMS0uIM6NAWbUuNZcGj6fuxF6alD?=
 =?us-ascii?Q?6jjBwZNi0bxDyQvYlDpMIkQ=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b79daad1-8d1f-49ed-f1bc-08db60496b40
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2023 13:34:25.1086
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3QUYP7Y6yc4s+FA2dayGwgFLiZ+NEkSmcxJBz6kwvxyqsR4Y4rzWMnRGLeB2FkO0zQ3Al2nTkipJKdz3/+v3DQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0P195MB0580
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_063434_726936_33BE5DF7 
X-CRM114-Status: GOOD (  34.22  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: [PATCH v2] Porting barebox to a new SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

I have revised the addresses and used DRAM address @ 0 instead:
#define UARTBASE        (0xD000307000)
#define DRAM_ADDR       (0x00000000)
#define MY_STACK_TOP    (0x00000000 + SZ_2M) // Set the stack 2MB from DRAM=
 start

static inline void spider_serial_putc(void *base, int c)
{
    *((volatile unsigned *)base) =3D c;
}

I will try to test it on QEMU using an initial QEMU machine we made for Spi=
der.
In this machine we only have 3 memory regions and a PL011 UART:
spider_soc_memories soc_memories[] =3D {
    {.name =3D "SPIDER_GPRAM",   .add =3D 0xC000000000ULL, .size =3D 4 * Mi=
B},
    {.name =3D "SPIDER_ROM",     .add =3D 0xC004000000ULL, .size =3D 128 * =
KiB},
    {.name =3D "SPIDER_DRAM",    .add =3D 0x0000000000ULL, .size =3D 1 * Gi=
B},
};

This special QEMU machine can run our BL1 code from "ROM" address (we set t=
he RVBAR to point there).
So my idea is to test the barebox image by the following steps:
1. Modify the QEMU code to have a "ROM" with the size of 128M.
2. Compile our BL1 code to include the barebox.bin as a const array, copy i=
t to "DRAM" @ address 0 and jump there.

For this to work I wanted to understand how to call (i.e. what arguments to=
 pass) to barebox.
So I checked the barebox.map and found the function "start" on address 0.
Then I went to arch/arm/cpu/start.c and realized that the code is compiled =
with CONFIG_PBL_IMAGE.
In that case I assume I need to pass 3 arguments and use this function prot=
otype:
void start(unsigned long membase, unsigned long memsize, void *boarddata);

Few questions:
1. Will that call work:
    typedef void (*barebox_start)(unsigned long , unsigned long , void *);
    #define DRAM_START  (0)
    barebox_start p_barebox =3D (barebox_start)DRAM_START;
    p_barebox(DRAM_START, DRAM_START+SZ_2M, (void *)(DRAM_START+SZ_4M));
    This assumes that my BL1 code also copied the device tree (barebox-dt-2=
nd.img? start_dt_2nd.pblb? start_spider_mk1_evk.pblb?)
2. Do I want to have my code compiled with CONFIG_PBL_IMAGE?
    If I understand correctly, it means that my code will provide a PBL (a.=
k.a BL2) which will set the DRAM and STACK among other things (MMU?).
    In that case I assume it is OK.
3. If I try to remove it by having CONFIG_PBL_IMAGE=3Dn on spider_defconfig=
 this doesn't do anything
    The build (make spider_defconfig) ignores it and say that " No change t=
o .config ".
4. I also tried to understand how to implement PUTC_LL but not sure I under=
stand.
   4.1 When I set "CONFIG_DEBUG_LL=3Dy" on spider_defconfig it is again not=
 written to .config and I get " No change to .config " message.
   4.2 Do I need to have my own debug_ll.h file?
5. When I make changes to spider_defconfig and try to regenerate the .confi=
g and I get " No change to .config " message, does it mean that those macro=
s are "hidden" symbols like you said about the CONFIG_CPU_V8?

Apologize for so many questions :-)=20
Cheers,
Lior.

-----Original Message-----
From: Lior Weintraub=20
Sent: Sunday, May 28, 2023 11:16 PM
To: Ahmad Fatoum <ahmad@a3f.at>; barebox@lists.infradead.org
Subject: RE: [PATCH v2] Porting barebox to a new SoC

Hi Ahmad,

Thank you so much for your kind support!

Indeed we also have a 16GB DRAM that starts from address 0 (though currentl=
y we don't have the controller settings (under development)).

I also wrote the BootROM (BL1) for this SoC (128KB ROM @ address 0xC0040000=
00).
I understand now that it would be best for me to develop BL2 that will run =
from our SRAM.

As this BL2 code is bare-metal I have no problem or limitations with the 40=
 bit addresses.
The BL2 code will initialize the DRAM controller and then copy Barebox imag=
e from NOR Flash to address 0 of the DRAM.
Our NOR Flash is 128MB in size and it is accessed via QSPI controller.

I tried applying your suggested patch but got an error while doing so:
$git apply 0002-Ahmad.patch
0002-Ahmad.patch:115: trailing whitespace.
      .of_compatible =3D spider_board_of_match, };
error: corrupt patch at line 117

After some digging I found that my Outlook probably messed with the patch f=
ormat (even though I am using text only and no HTML format).
When I went to the web and copied the patch from there (mailing list archiv=
e) it was working well (i.e. no compilation error).

Cheers,
Lior.

-----Original Message-----
From: Ahmad Fatoum <ahmad@a3f.at>
Sent: Sunday, May 28, 2023 6:38 PM
To: barebox@lists.infradead.org
Cc: Lior Weintraub <liorw@pliops.com>
Subject: [PATCH v2] Porting barebox to a new SoC

CAUTION: External Sender

From: Lior Weintraub <liorw@pliops.com>

Hi,

I tried to follow the porting guide on https://ddec1-0-en-ctp.trendmicro.co=
m:443/wis/clicktime/v1/query?url=3Dhttps%3a%2f%2fwww.barebox.org%2fdoc%2fla=
test%2fdevel%2fporting.html%23&umid=3D60097eda-f136-45a1-9c8e-cf6a76e45cf8&=
auth=3D860a7ebb9feba264acc79b6e38eb59582349362c-480ae23736add41c88ab8d30c09=
0a75517ca7f9e but couldn't follow the instructions.
I would like to port barebox to a new SoC (which is not a derivative of any=
 known SoC).
It has the following:
* Single Cortex A53
* SRAM (4MB) located on address 0xC000000000

The below patch shows my initial test to try and have a starting point.
I am setting env variables:
export ARCH=3Darm64
export CROSS_COMPILE=3D/home/pliops/workspace/ARM/arm-gnu-toolchain/bin/aar=
ch64-none-elf-

Then I build with:
make spider_defconfig && make

This gives an error:
aarch64-none-elf-gcc: error: unrecognized argument in option '-mabi=3Dapcs-=
gnu'
aarch64-none-elf-gcc: note: valid arguments to '-mabi=3D' are: ilp32 lp64
aarch64-none-elf-gcc: error: unrecognized command-line option '-msoft-float=
'
aarch64-none-elf-gcc: error: unrecognized command-line option '-mno-unalign=
ed-access'
/home/pliops/workspace/simplest-linux-demo/barebox/scripts/Makefile.build:1=
40: recipe for target 'scripts/mod/empty.o' failed
make[2]: *** [scripts/mod/empty.o] Error 1

Not sure why the compiler flags get -mabi=3Dapcs-gnu when I explicitly set =
CONFIG_CPU_V8 and the arch/arm/Makefile has:
ifeq ($(CONFIG_CPU_V8), y)
CFLAGS_ABI      :=3D-mabi=3Dlp64

The changes I did:
>From 848b5f9b18bb1bb96d197cbc1b368ee0a729d581 Mon Sep 17 00:00:00 2001
---
 arch/arm/Kconfig                      | 13 ++++++++
 arch/arm/Makefile                     |  1 +
 arch/arm/boards/Makefile              |  1 +
 arch/arm/boards/spider-evk/Makefile   |  4 +++
 arch/arm/boards/spider-evk/board.c    | 26 +++++++++++++++
 arch/arm/boards/spider-evk/lowlevel.c | 30 +++++++++++++++++
 arch/arm/configs/spider_defconfig     |  8 +++++
 arch/arm/dts/Makefile                 |  1 +
 arch/arm/dts/spider-mk1-evk.dts       | 10 ++++++
 arch/arm/dts/spider-mk1.dtsi          | 46 +++++++++++++++++++++++++++
 arch/arm/mach-spider/Kconfig          | 16 ++++++++++
 arch/arm/mach-spider/Makefile         |  1 +
 arch/arm/mach-spider/lowlevel.c       | 14 ++++++++
 images/Makefile                       |  1 +
 images/Makefile.spider                |  5 +++
 include/mach/spider/lowlevel.h        |  7 ++++
 16 files changed, 184 insertions(+)
 create mode 100644 arch/arm/boards/spider-evk/Makefile
 create mode 100644 arch/arm/boards/spider-evk/board.c
 create mode 100644 arch/arm/boards/spider-evk/lowlevel.c
 create mode 100644 arch/arm/configs/spider_defconfig  create mode 100644 a=
rch/arm/dts/spider-mk1-evk.dts  create mode 100644 arch/arm/dts/spider-mk1.=
dtsi  create mode 100644 arch/arm/mach-spider/Kconfig  create mode 100644 a=
rch/arm/mach-spider/Makefile  create mode 100644 arch/arm/mach-spider/lowle=
vel.c  create mode 100644 images/Makefile.spider  create mode 100644 includ=
e/mach/spider/lowlevel.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig index e76ee0f6dfe1..e5dcf1=
28447e 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -255,6 +255,18 @@ config ARCH_ROCKCHIP
        select HAS_DEBUG_LL
        imply GPIO_ROCKCHIP

+config ARCH_SPIDER
+       bool "Pliops Spider based"
+       depends on 64BIT
+       depends on ARCH_MULTIARCH
+       select GPIOLIB
+       select HAVE_PBL_MULTI_IMAGES
+       select COMMON_CLK
+       select CLKDEV_LOOKUP
+       select COMMON_CLK_OF_PROVIDER
+       select OFTREE
+       select OFDEVICE
+
 config ARCH_STM32MP
        bool "STMicroelectronics STM32MP"
        depends on 32BIT
@@ -331,6 +343,7 @@ source "arch/arm/mach-omap/Kconfig"
 source "arch/arm/mach-pxa/Kconfig"
 source "arch/arm/mach-rockchip/Kconfig"
 source "arch/arm/mach-socfpga/Kconfig"
+source "arch/arm/mach-spider/Kconfig"
 source "arch/arm/mach-stm32mp/Kconfig"
 source "arch/arm/mach-versatile/Kconfig"
 source "arch/arm/mach-vexpress/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile index 35ebc70f44e2..4c63=
dfee48f4 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -101,6 +101,7 @@ machine-$(CONFIG_ARCH_MXS)          +=3D mxs
 machine-$(CONFIG_ARCH_MVEBU)           +=3D mvebu
 machine-$(CONFIG_ARCH_NOMADIK)         +=3D nomadik
 machine-$(CONFIG_ARCH_OMAP)            +=3D omap
+machine-$(CONFIG_ARCH_SPIDER)          +=3D spider
 machine-$(CONFIG_ARCH_PXA)             +=3D pxa
 machine-$(CONFIG_ARCH_ROCKCHIP)                +=3D rockchip
 machine-$(CONFIG_ARCH_SAMSUNG)         +=3D samsung
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile index 2877=
debad535..6fe0a90c81ea 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -135,6 +135,7 @@ obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO)        +=
=3D terasic-de10-nano/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)      +=3D terasic-sockit/
 obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)              +=3D solidrun-cubox/
 obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)           +=3D solidrun-microsom/
+obj-$(CONFIG_MACH_SPIDER_MK1_EVK)              +=3D spider-evk/
 obj-$(CONFIG_MACH_STM32MP15XX_DKX)             +=3D stm32mp15xx-dkx/
 obj-$(CONFIG_MACH_STM32MP13XX_DK)              +=3D stm32mp13xx-dk/
 obj-$(CONFIG_MACH_LXA_MC1)                     +=3D lxa-mc1/
diff --git a/arch/arm/boards/spider-evk/Makefile b/arch/arm/boards/spider-e=
vk/Makefile
new file mode 100644
index 000000000000..da63d2625f7a
--- /dev/null
+++ b/arch/arm/boards/spider-evk/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y +=3D board.o
+lwl-y +=3D lowlevel.o
diff --git a/arch/arm/boards/spider-evk/board.c b/arch/arm/boards/spider-ev=
k/board.c
new file mode 100644
index 000000000000..3920e83b457d
--- /dev/null
+++ b/arch/arm/boards/spider-evk/board.c
@@ -0,0 +1,26 @@
+#include <bbu.h>
+#include <boot.h>
+#include <bootm.h>
+#include <common.h>
+#include <deep-probe.h>
+#include <environment.h>
+#include <fcntl.h>
+#include <globalvar.h>
+
+static int spider_board_probe(struct device *dev) {
+      /* Do some board-specific setup */
+      return 0;
+}
+
+static const struct of_device_id spider_board_of_match[] =3D {
+      { .compatible =3D "pliops,spider-mk1-evk" },
+      { /* sentinel */ },
+};
+
+static struct driver spider_board_driver =3D {
+      .name =3D "board-spider",
+      .probe =3D spider_board_probe,
+      .of_compatible =3D spider_board_of_match, };=20
+device_platform_driver(spider_board_driver);
diff --git a/arch/arm/boards/spider-evk/lowlevel.c b/arch/arm/boards/spider=
-evk/lowlevel.c
new file mode 100644
index 000000000000..e36fcde4208e
--- /dev/null
+++ b/arch/arm/boards/spider-evk/lowlevel.c
@@ -0,0 +1,30 @@
+#include <common.h>
+#include <asm/barebox-arm.h>
+#include <mach/spider/lowlevel.h>
+
+#define BASE_ADDR       (0xD000307000)
+#define GPRAM_ADDR      (0xC000000000)
+#define MY_STACK_TOP    (0xC000000000 + SZ_2M) // Set the stack 2MB from G=
PRAM start (excatly in the middle)
+static inline void spider_serial_putc(void *base, int c) {
+//     if (!(readl(base + UCR1) & UCR1_UARTEN))
+//             return;
+//
+//     while (!(readl(base + USR2) & USR2_TXDC));
+//
+//     writel(c, base + URTX0);
+}
+
+ENTRY_FUNCTION_WITHSTACK(start_spider_mk1_evk, MY_STACK_TOP, r0, r1,
+r2) {
+       extern char __dtb_spider_mk1_evk_start[];
+
+       spider_lowlevel_init();
+
+       relocate_to_current_adr();
+       setup_c();
+
+       pbl_set_putc(spider_serial_putc, (void *)BASE_ADDR);
+
+       barebox_arm_entry(GPRAM_ADDR, SZ_2M,=20
+__dtb_spider_mk1_evk_start); }
diff --git a/arch/arm/configs/spider_defconfig b/arch/arm/configs/spider_de=
fconfig
new file mode 100644
index 000000000000..c91bb889d97f
--- /dev/null
+++ b/arch/arm/configs/spider_defconfig
@@ -0,0 +1,8 @@
+CONFIG_ARCH_SPIDER=3Dy
+CONFIG_MACH_SPIDER_MK1_EVK=3Dy
+CONFIG_BOARD_ARM_GENERIC_DT=3Dy
+CONFIG_MALLOC_TLSF=3Dy
+CONFIG_KALLSYMS=3Dy
+CONFIG_RELOCATABLE=3Dy
+CONFIG_CONSOLE_ALLOW_COLOR=3Dy
+CONFIG_PBL_CONSOLE=3Dy
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile index 98f4c4e019=
4b..94b304d4878f 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -134,6 +134,7 @@ lwl-$(CONFIG_MACH_SOLIDRUN_CUBOX) +=3D dove-cubox-bb.dt=
b.o
 lwl-$(CONFIG_MACH_SOLIDRUN_MICROSOM) +=3D imx6dl-hummingboard.dtb.o imx6q-=
hummingboard.dtb.o \
                                imx6dl-hummingboard2.dtb.o imx6q-hummingboa=
rd2.dtb.o \
                                imx6q-h100.dtb.o
+lwl-$(CONFIG_MACH_SPIDER_MK1_EVK) +=3D spider-mk1-evk.dtb.o
 lwl-$(CONFIG_MACH_SKOV_IMX6) +=3D imx6s-skov-imx6.dtb.o imx6dl-skov-imx6.d=
tb.o imx6q-skov-imx6.dtb.o
 lwl-$(CONFIG_MACH_SKOV_ARM9CPU) +=3D at91-skov-arm9cpu.dtb.o
 lwl-$(CONFIG_MACH_SEEED_ODYSSEY) +=3D stm32mp157c-odyssey.dtb.o diff --git=
 a/arch/arm/dts/spider-mk1-evk.dts b/arch/arm/dts/spider-mk1-evk.dts new fi=
le mode 100644 index 000000000000..b8081cb85bf8
--- /dev/null
+++ b/arch/arm/dts/spider-mk1-evk.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0 OR X11
+
+/dts-v1/;
+
+#include "spider-mk1.dtsi"
+
+/ {
+       model =3D "Pliops Spider MK-I EVK";
+       compatible =3D "pliops,spider-mk1-evk"; };
diff --git a/arch/arm/dts/spider-mk1.dtsi b/arch/arm/dts/spider-mk1.dtsi ne=
w file mode 100644 index 000000000000..d4613848169d
--- /dev/null
+++ b/arch/arm/dts/spider-mk1.dtsi
@@ -0,0 +1,46 @@
+// SPDX-License-Identifier: GPL-2.0 OR X11
+
+/ {
+       #address-cells =3D <2>;
+       #size-cells =3D <2>;
+
+       chosen {
+               stdout-path =3D &uart0;
+       };
+
+       aliases {
+               serial0 =3D &uart0;
+       };
+
+       cpus {
+               #address-cells =3D <1>;
+               #size-cells =3D <0>;
+
+               cpu0: cpu@0 {
+                       device_type =3D "cpu";
+                       compatible =3D "arm,cortex-a53";
+                       reg =3D <0x0>;
+               };
+       };
+
+       memory@1000000 {
+               reg =3D <0x0 0x1000000 0x0 0x400000>; /* 128M */
+               device_type =3D "memory";
+       };
+
+       soc {
+               #address-cells =3D <2>;
+               #size-cells =3D <2>;
+               ranges;
+
+               sram@c000000000 {
+                       compatible =3D "mmio-sram";
+                       reg =3D <0xc0 0x0 0x0 0x400000>;
+               };
+
+               uart0: serial@d000307000 {
+                       compatible =3D "pliops,spider-uart";
+                       reg =3D <0xd0 0x307000 0 0x1000>;
+               };
+       };
+};
diff --git a/arch/arm/mach-spider/Kconfig b/arch/arm/mach-spider/Kconfig ne=
w file mode 100644 index 000000000000..6d2f888a5fd8
--- /dev/null
+++ b/arch/arm/mach-spider/Kconfig
@@ -0,0 +1,16 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+if ARCH_SPIDER
+
+config ARCH_SPIDER_MK1
+       bool
+       select CPU_V8
+       help
+         The first Cortex-A53-based SoC of the spider family.
+         This symbol is invisble and select by boards
+
+config MACH_SPIDER_MK1_EVK
+       bool "Pliops Spider Reference Design Board"
+       select ARCH_SPIDER_MK1
+
+endif
diff --git a/arch/arm/mach-spider/Makefile b/arch/arm/mach-spider/Makefile =
new file mode 100644 index 000000000000..b08c4a93ca27
--- /dev/null
+++ b/arch/arm/mach-spider/Makefile
@@ -0,0 +1 @@
+lwl-y +=3D lowlevel.o
diff --git a/arch/arm/mach-spider/lowlevel.c b/arch/arm/mach-spider/lowleve=
l.c new file mode 100644 index 000000000000..5d62ef0f39e5
--- /dev/null
+++ b/arch/arm/mach-spider/lowlevel.c
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier:     GPL-2.0+
+
+#include <linux/types.h>
+#include <mach/spider/lowlevel.h>
+#include <asm/barebox-arm-head.h>
+
+void spider_lowlevel_init(void)
+{
+       arm_cpu_lowlevel_init();
+       /*
+        * not yet relocated, only do writel/readl for stuff that's
+        * critical to run early. No global variables allowed.
+        */
+}
diff --git a/images/Makefile b/images/Makefile index c93f9e268978..97521e71=
3228 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -150,6 +150,7 @@ include $(srctree)/images/Makefile.mxs  include $(srctr=
ee)/images/Makefile.omap3  include $(srctree)/images/Makefile.rockchip
 include $(srctree)/images/Makefile.socfpga
+include $(srctree)/images/Makefile.spider
 include $(srctree)/images/Makefile.stm32mp
 include $(srctree)/images/Makefile.tegra  include $(srctree)/images/Makefi=
le.versatile
diff --git a/images/Makefile.spider b/images/Makefile.spider new file mode =
100644 index 000000000000..c32f2762df04
--- /dev/null
+++ b/images/Makefile.spider
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+pblb-$(CONFIG_MACH_SPIDER_MK1_EVK) +=3D start_spider_mk1_evk=20
+FILE_barebox-spider-mk1-evk.img =3D start_spider_mk1_evk.pblb
+image-$(CONFIG_MACH_SPIDER_MK1_EVK) +=3D barebox-spider-mk1-evk.img
diff --git a/include/mach/spider/lowlevel.h b/include/mach/spider/lowlevel.=
h new file mode 100644 index 000000000000..6e0ce1c77f7e
--- /dev/null
+++ b/include/mach/spider/lowlevel.h
@@ -0,0 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0+ */ #ifndef __MACH_SPIDER_H_=20
+#define __MACH_SPIDER_H_
+
+void spider_lowlevel_init(void);
+
+#endif
--
2.38.4


