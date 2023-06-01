Delivery-date: Thu, 01 Jun 2023 10:34:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dlO-005Xq3-9J
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 10:34:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dlL-0004QV-Jk
	for lore@pengutronix.de; Thu, 01 Jun 2023 10:34:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pSFGjnWSkgaBkmXIJ3H5M+xZZK88vOlNR6JUE1//mvM=; b=e/QgYEF/yTf6aXb02JFs7WtR6D
	FBOKwO/vxOV/JiQJsubqBkHFsh0qxa+/qM8MChYB+2CFFk5GNJb3QhX0iSWSFeZO0Tk6q9Wo3yQfr
	34BA/v7IlqGzDlrNhFg6S9bNk/0Vktg2uFK5N2uscabgbWzuaO3Rh5vu5afJdLT1OUhvtn9hfQ3N0
	3xAdXzSMz3eeHiqq/IteVqJiDRZqOjCcZ4nMn104k+u2jDs+kAhOR8TFaPFj+oj3gN+mbdOfAVxmv
	AK9WEiJ9uF76uk6K/XF2vWjaSPMvRAit5HlhH8+YnYwWvCHAMXNKeWK8Y/0hWny3MBTiuFzuFcwjW
	GLL/TQ+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dkC-002Zke-3B;
	Thu, 01 Jun 2023 08:33:16 +0000
Received: from mail-ve1eur01on062c.outbound.protection.outlook.com ([2a01:111:f400:fe1f::62c] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dkA-002ZjA-0y
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 08:33:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FbPl9wW7sBFRpddKsDckt720INb87bkDHE9eCxVs6bX1ReRIXEpHJog3uwFA2X0btJ8XHjnMDhZzJH5BSHEU3VkU11b3SS0xWnrdmobUIChACZcBvA93hgE03LTfVdS9i0kZOrulljWrHpV0iRn4CwFvKesbtxdBuoak8OhTXq42NCS5/7nmRirQGw+TviCMlRt7JYcWWDhpBht+9vi1LOUt7lmu9e8Zi/Bbdu/6rsOLzHcgLGdmb49WLlgP0vXpu3UcR0tzMfFYdUXAzcxNSrJO50fcmpCPkPtwhX5SxyyNu2XcznzD+XTbD0Oky9umyaLuEblKZxDiunTqdGwjxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pSFGjnWSkgaBkmXIJ3H5M+xZZK88vOlNR6JUE1//mvM=;
 b=Y6DOM01IOmN8kd603aq/4OKAncYm5hfGKw7Ti1eTRXKNMXJq7Su84fq4pnPBQQ9/5sHhmC8ijgOItkVwUwvW3jSKBS/crv0bY6FUxNWnbhgouyxQYyGm/CT9+CyCttB9iPGw6GdtwlgAWPxyrHT6mWU8U+j9hBKIa8dnJThL5RPO+UFGR3aGh25hA7qwPM/2SnEKGpZWKklvJlhYzqOcEQn8zzrrjCcQxhfKEz1k1NmTnKa8Lua2LFLJ9wAiPBo4vwTH3QMFYFeWPKCUi0hGGTZw7aryBVMIqRyacbz//rE20gcPy7qglGG2Ji9XkijYCSlinJbRW9bgQ/aqyYumXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pSFGjnWSkgaBkmXIJ3H5M+xZZK88vOlNR6JUE1//mvM=;
 b=glD58FE9NpWfdgDfiHGRu3yrX9neBicNcpak9RjjF7Zpeaiz32n87y4X/KHCICcEhxOvtB3coxFe93iEMp9M3gdEb/qidbCD/zeVgGXcFKCZnQTHeMa6DmRZrnll7a8nHAruVBflxvrYs+OlP2nsbHwxdi1eVMC9jVV9Nviy/uA=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by AM9P195MB1029.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:1f9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.23; Thu, 1 Jun
 2023 08:33:06 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::c695:44b1:a751:3684]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::c695:44b1:a751:3684%3]) with mapi id 15.20.6455.020; Thu, 1 Jun 2023
 08:33:06 +0000
From: Lior Weintraub <liorw@pliops.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
	<barebox@lists.infradead.org>
Thread-Topic: [PATCH RFT] ARM64: cpu: support 64-bit stack top in
 ENTRY_FUNCTION_WITHSTACK
Thread-Index: AQHZk+icFUUpQCLgFES0FvdaJsU5gK91mZWQ
Date: Thu, 1 Jun 2023 08:33:06 +0000
Message-ID: <PR3P195MB05557909F99422D8CAC469B7C3499@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
References: <20230531175157.1442379-1-a.fatoum@pengutronix.de>
In-Reply-To: <20230531175157.1442379-1-a.fatoum@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|AM9P195MB1029:EE_
x-ms-office365-filtering-correlation-id: b11c30a4-c3a9-46ae-124c-08db627ad2be
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0xzrcbPfUzFm6NVH52T1v0z/bNZ+gXO8Dfsk/gJQTVtXMgcUolQ0zGxgHDWXi5HN4qvx5mdXSJH2KjLC4pnmHxjJShmm3Wetxsb78AbCenqr976nB8Md0F7L8uDavETy3CgOLkTJlITsV8Z8HQLq2mTMkcI/oovbArwd+YtuGTwWQPLqwQ8fBMR5NYcfV9hjsJbMC1BgVKEqxx+D5IhKBE6nadKWPgwhq7HoA/qxJzfxvvPP0DA88C1mA5i0xP/lxcr3LyCklHLPtWBa2QsR4tJxu01SLYGlXeNvVLe5VVholiu2lfjXxYlkjh75zWJCYL+QMskPe32IhZRiwFl1P2X/KSdXYQZLfPqbuAxxVfRbOlUnyz1NFfoc4pye/arLnVeW1PmWaiq06mmarkO6texqUIfQUts9ogrjJWJv6i64M+2EM7ZOwcu0np8f6DmXZU9DopwL+DA0wNoDr6bk4AYXZzeWD7AlYJfuS9f4Sk0fVoYNmNTRSVirA4uTcbjSMRIuXZf4nxCb084XnozjigJEY6k/XS9br9f1f632Xt5DRcHOVQYOanpTlKbPDM0ANKQ8VlpOxlyPglZ8HX9QKZkP5cS5gYcUKEYFXtejvvf9xF8H8hhq2b89v3HXNCc7
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(376002)(366004)(39840400004)(396003)(346002)(136003)(451199021)(7696005)(71200400001)(478600001)(33656002)(186003)(53546011)(26005)(83380400001)(9686003)(6506007)(38100700002)(38070700005)(86362001)(122000001)(55016003)(316002)(41300700001)(76116006)(64756008)(66476007)(66446008)(66946007)(66556008)(52536014)(2906002)(8936002)(5660300002)(8676002)(110136005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Qylw6lt/h99Zi6W1adO9gHrhtoGp+Tg+ga2hgvTIjLfGINJx17ilIAqyiLKU?=
 =?us-ascii?Q?87AWlCkXWIzA1oOlVp74jwfM6krGQ9ee65kGESAzVvgGG/9bHonKgUQGNshz?=
 =?us-ascii?Q?dhhx+NKJmWrhGqIIDAzqbKSu6YJ8HyvMN+kr2/QYzzTZKH30d2JTVOxllGBu?=
 =?us-ascii?Q?ahyNW4a7a4JLkCKixdGgJoxd8Pm/1CmvvGCeQ/00eHMz6TJmMCJceffN0+yF?=
 =?us-ascii?Q?fOX7XjKGja3ojlFLyTj+H6Tc+AZYbL/aOQbzWX8K+YFS0Ym2pcnROM4Mykdl?=
 =?us-ascii?Q?fsrRb6NV2X8JOxWgjnJXQmRvd8kSXoFZJXouAdaypVbVFAQZw08PBxDn4NSP?=
 =?us-ascii?Q?jl7ijVzL0Yo4AFMe0A37Crxs0ODIGKRCX2Tu7JpSS+79p/I9ROBfjQmB3aeL?=
 =?us-ascii?Q?6e8hyMKrO2kPStFcTmQczKzjjxEZuitB7eyorzpsYcQZj02nEyhyBtIqCNyI?=
 =?us-ascii?Q?6RLUU05FRFJZ+1FwLmjNOXc3tUKS3mDa7fiecCmj0bigPLrt8RVisMEKaWYo?=
 =?us-ascii?Q?GM38mlKLc7Pphb8E9es/wALT9B8yrsRd4NcPhgTRdgatyVN5WccrZXBXs6Le?=
 =?us-ascii?Q?wzsnCchbPDi0eO6PFd3gcAtl8exXTHLvwLHjhDJd8QepG994GoYwU6KQjXdH?=
 =?us-ascii?Q?z6BI/t1N6v0WGCpARdOsZXiyGY1SkQQEMZGzB8ub5FGFMLkCsv3g1pIevul9?=
 =?us-ascii?Q?ia+V407NiT7KjfmoW2SlzsfyFhkv6JL9FeBPfaM49yArnxzZUPZhm2kLsiyb?=
 =?us-ascii?Q?ljZ1TnNQ/W0V1kNObc/qPMxwuEH5tpgDHGEkFWWi1ZmtQnraddrOzoi55IXe?=
 =?us-ascii?Q?SQY2+EhEdfTFJnjaxQQ8/PqLAWoBlXH7rAQpWWFUZR520/6AE2O02hsq/UXn?=
 =?us-ascii?Q?j775kLTOswRVOm/PQgCI9VEMsBcb2OKmhAyadYy2QRWOTMJ0SC8qs99wPrXs?=
 =?us-ascii?Q?T0aSprCNY11YZCnO7Ii2A3uoS2R2H0yGjfq6BAu5cuNjYbS6CvLZ2gdiHu2W?=
 =?us-ascii?Q?kx1hCxmsgFnzieSYAuTM9LEcicjeLvUB7vZt1/gazZGfg6mdj/TtEoymH2hO?=
 =?us-ascii?Q?cbaz4dARIQxCay0QEaMXIUbOAR9fXdMmJEfIB4yr5P5e+/zSAGFumsQtjnUC?=
 =?us-ascii?Q?GU1/v9mqjBZhnCfZI8X4L1RRoOcXwyjCuxb0Tj69aE3Y02mASQFrk9o6VvdV?=
 =?us-ascii?Q?BIfo5RRdV3ykIjVfiMQP/NQC9sIRRyzOy6eloc33/P8P3jpauVXWU2tWd3DB?=
 =?us-ascii?Q?GouHui01tZVxrExSGEGZ86rZ6DVsqBQ96qk1fPqIsHTfsPdLkNV1Lyh+AyOO?=
 =?us-ascii?Q?fgYqfdqVkeDLhgfR7Cn4Jj903J4h2iz2QavCUDD3UU625LYrg2EblVr7QLpw?=
 =?us-ascii?Q?JpMv3GUEZ+0O9iWUjVWwRzeglb5pvARyCiNIwyKnfOFN5xKtMOD3zaeQANpA?=
 =?us-ascii?Q?ofV/SjOdpg10vMp2T6Q+FrPfUrsamUUzC4tDjp55Pm2cMnB749a6Xbxdr9zR?=
 =?us-ascii?Q?hmy4EyTsBBQlbD+l5Nx1SpjqT84o8obumW85sZj3vT/96zKEJrmnUxbdLLJK?=
 =?us-ascii?Q?8q+XX8dZCbCER+7v12U=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b11c30a4-c3a9-46ae-124c-08db627ad2be
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2023 08:33:06.4182
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N50PVFm+Us6/FhraMbtddQOVbGQMjVQDfx9mdkPgengLcfdlNAXy54+dCM6oehOuipDkayd8K24XFbHbALLQeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9P195MB1029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_013314_388914_E7D8A245 
X-CRM114-Status: GOOD (  19.88  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: [PATCH RFT] ARM64: cpu: support 64-bit stack top in
 ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,
Thanks for the patch.
I have checked it and can verify it is working correctly.
Cheers,
Lior.

> -----Original Message-----
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Sent: Wednesday, May 31, 2023 8:52 PM
> To: barebox@lists.infradead.org
> Cc: Lior Weintraub <liorw@pliops.com>; Ahmad Fatoum
> <a.fatoum@pengutronix.de>
> Subject: [PATCH RFT] ARM64: cpu: support 64-bit stack top in
> ENTRY_FUNCTION_WITHSTACK
>=20
> CAUTION: External Sender
>=20
> ENTRY_FUNCTION_WITHSTACK was written with the naive assumption that
> there will always be some memory in the first 32-bit of the address
> space to be used as early stack. There are SoCs out there though with
> sole on-chip SRAM > 4G. Accommodate this by accepting full 64-bit stack
> pointers in ENTRY_FUNCTION_WITHSTACK.
>=20
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/head_64.S             | 2 +-
>  arch/arm/include/asm/barebox-arm.h | 2 +-
>  arch/arm/lib/pbl.lds.S             | 7 ++++---
>  include/asm-generic/pointer.h      | 2 ++
>  4 files changed, 8 insertions(+), 5 deletions(-)
>=20
> diff --git a/arch/arm/cpu/head_64.S b/arch/arm/cpu/head_64.S
> index 398c4d3471e0..546efc263a06 100644
> --- a/arch/arm/cpu/head_64.S
> +++ b/arch/arm/cpu/head_64.S
> @@ -11,7 +11,7 @@
>  ENTRY(__barebox_arm64_head)
>         nop
>         adr x9, __pbl_board_stack_top
> -       ldr w9, [x9]
> +       ldr x9, [x9]
>         cbz x9, 1f
>         mov sp, x9
>  1:
> diff --git a/arch/arm/include/asm/barebox-arm.h
> b/arch/arm/include/asm/barebox-arm.h
> index eb31ca278821..aceb7fdf74f8 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -158,7 +158,7 @@ void __barebox_arm64_head(ulong x0, ulong x1,
> ulong x2);
>                                 (ulong r0, ulong r1, ulong r2)          \
>                 {                                                       \
>                         static __section(.pbl_board_stack_top_##name)   \
> -                               const u32 __stack_top =3D (stack_top);   =
 \
> +                               const ulong __stack_top =3D (stack_top); =
 \
>                         __keep_symbolref(__barebox_arm64_head);         \
>                         __keep_symbolref(__stack_top);                  \
>                         __##name(r0, r1, r2);                           \
> diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
> index 114ec7bc8195..2b4b1d6a9513 100644
> --- a/arch/arm/lib/pbl.lds.S
> +++ b/arch/arm/lib/pbl.lds.S
> @@ -4,6 +4,7 @@
>  #include <linux/sizes.h>
>  #include <asm/barebox.lds.h>
>  #include <asm-generic/memory_layout.h>
> +#include <asm-generic/pointer.h>
>=20
>  #ifdef CONFIG_PBL_RELOCATABLE
>  #define BASE   0x0
> @@ -44,14 +45,14 @@ SECTIONS
>         . =3D ALIGN(4);
>         .rodata : { *(.rodata*) }
>=20
> -       . =3D ALIGN(4);
> +       . =3D ALIGN(ASM_SZPTR);
>         __pbl_board_stack_top =3D .;
>         .rodata.pbl_board_stack_top : {
>                 *(.pbl_board_stack_top_*)
>                 /* Dummy for when BootROM sets up usable stack */
> -               LONG(0x00000000);
> +               ASM_LD_PTR(0x00000000)
>         }
> -       ASSERT(. - __pbl_board_stack_top <=3D 8, "Only One PBL per Image
> allowed")
> +       ASSERT(. - __pbl_board_stack_top <=3D 2 * ASM_SZPTR, "Only One PB=
L per
> Image allowed")
>=20
>         .barebox_imd : { BAREBOX_IMD }
>=20
> diff --git a/include/asm-generic/pointer.h b/include/asm-generic/pointer.=
h
> index 8b9600b02939..89817ce59ebc 100644
> --- a/include/asm-generic/pointer.h
> +++ b/include/asm-generic/pointer.h
> @@ -8,6 +8,7 @@
>  #define ASM_PTR                .quad
>  #define ASM_SZPTR      8
>  #define ASM_LGPTR      3
> +#define ASM_LD_PTR(x)  QUAD(x)
>  #else
>  #define ASM_PTR                ".quad"
>  #define ASM_SZPTR      "8"
> @@ -18,6 +19,7 @@
>  #define ASM_PTR                .word
>  #define ASM_SZPTR      4
>  #define ASM_LGPTR      2
> +#define ASM_LD_PTR(x)  LONG(x)
>  #else
>  #define ASM_PTR                ".word"
>  #define ASM_SZPTR      "4"
> --
> 2.39.2



