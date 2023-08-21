Delivery-date: Mon, 21 Aug 2023 16:31:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qY5w4-003VH3-Jk
	for lore@lore.pengutronix.de; Mon, 21 Aug 2023 16:31:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qY5w2-0004uU-2d
	for lore@pengutronix.de; Mon, 21 Aug 2023 16:31:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qbh1ByRP76l1vI/8gRITAHXBlZW1G6n5stiTGRWlyrE=; b=Qwxqb5UEwwR8vrsMGzSzxVmG/D
	eLGg5VKLOWyIS0qcCmou2z9v1gfqjGermnp3uBScwkDQ/7EAjej8fNE5Vx1ucfz7caodRJeEQXWQI
	pDkAfkUeTBKJMgkvdsfOZPTZIzX44sQuOKpmh8V+zx1CDSr+rXutduMdHlfl+jSGwlo7Co3JdXDYE
	LtORvU/Gdl4fAObquStcauC/FVrUrdvTGBKudZwWpMeu7ztatjm0uGjA4L/i5KSimcvif4ehe7N6F
	5tF4yrOhuzU6LwkiRfSF2kIC7ri/Iz3WRWIXKd1WQBM65ZzU/xubWxuTQ1kmj/WncHwYkvwnHDng4
	CBOB23SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qY5uT-00EB2E-2H;
	Mon, 21 Aug 2023 14:29:37 +0000
Received: from mail-vi1eur04on0630.outbound.protection.outlook.com ([2a01:111:f400:fe0e::630] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qY5uQ-00EB18-0s
	for barebox@lists.infradead.org;
	Mon, 21 Aug 2023 14:29:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VLVnx+tAlCNlfsrvYsgZiP1YRdcU2FB8ddX9LTF4mzDG8nz/Wik6Rq3zAAnhZ7lBc1wVBos+MPOvkUHEqoTVQ5U5jz1VaRA/B1pU7Bo4IT5ED0Q7SFS24YSO0Xz3rJRrZJ5y+n9IG5SnFxK8lFiBRqcCXTcF4Mql5ZX1FTG6QTmo6sZLymBNjJKD6ihw09vwYRDMl4Eytlep4esQNQYluqi2WHxFLdL+3mrgPid8XNkC/xOJ36Vv2ImCZGRAlqU+wBXNheEW/R5k7Pm25sabyoWRUPSRMIbmP6AKSQkWkVNS/aWb6kxApkjymJISco/BtBeYypTZGaxCgKDHWIoVrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qbh1ByRP76l1vI/8gRITAHXBlZW1G6n5stiTGRWlyrE=;
 b=j8nLw5XSf9x4Rs2/XFzkWpTdN0k5jvaVyMhlh6mlgulQuOh1ydqPNVFg67CM8y+oVT2vFvfjp+YTlENvrUf1ezXmRQw4FsFs34B6Qs3ik0EnAIXVr912akgwhUXgTgMhCZFlX0Y0nGB/83sb031Io5NSBn2SHs0/ySHy48P8NEkn8QU6Dg6I0M7N+UmzvA5vko+8PC4mpB79Q86zHEgkYya9udxvMeZXgMCrJMKNsLjxLOgqH4WCp8YwUxoGHINdv6Z3UeNXcC92l+dEschZ+/YmdSrtdabwRiszoZaC2bIvWjrXne95bvcatNlDWTj7DSI2nRWu1ZqdNMSu16p1hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qbh1ByRP76l1vI/8gRITAHXBlZW1G6n5stiTGRWlyrE=;
 b=KPT59eJTpJKJg3CSIMxqPK2rklqAQBGI3K6n/G17WtZQ0FS1wq3OOh2UAJ9HfBM3k+FTK1nYuqcfmKvivG2YIOV0cq0dpy7j+Aa5MitWmdZBRddfG/WW7TUeL8CYlaCVRtcGLh5xyuo2EvGd8yVaeh7wA/dFOkSV/LYpGl5+uPI=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by AS1P195MB1542.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:4a0::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 14:29:25 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82%4]) with mapi id 15.20.6699.020; Mon, 21 Aug 2023
 14:29:25 +0000
From: Lior Weintraub <liorw@pliops.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Ahmad Fatoum
	<a.fatoum@pengutronix.de>
Thread-Topic: ARM: mmu_early_enable
Thread-Index: AdnQ0AqbwZmu71wZRaWAWG5n/7MS3wACtsgAAAAP5HAADW2MUACLeinw
Date: Mon, 21 Aug 2023 14:29:25 +0000
Message-ID: <PR3P195MB05558441FD995F0F06CE132AC31EA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
References: <PR3P195MB0555EE60DE17128F9831C028C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <20230817071736.GJ5650@pengutronix.de>
 <PR3P195MB0555ED3DE92FAB5706C2E458C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <PR3P195MB0555E881ABD36783C5557EB9C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
In-Reply-To: <PR3P195MB0555E881ABD36783C5557EB9C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|AS1P195MB1542:EE_
x-ms-office365-filtering-correlation-id: fe56721a-a567-47c6-d7b4-08dba25304f0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eU2A7n5GHBoJea46d/NVQlCEHsvrxqOu7Re7VX3Rk2DaznKgSdcJGcvsz6o8sl4bemcp1UK/Wb0fDQP56u99RQX0rRfAcG2h0wkAEf62Qn7qDIVWMvMRTTNm/GOQXwESQ1TtiQweQLkH1EAEJT1vEYFv5NI1rFReeJUFPuea8zf51fmbf4muNHJ3yBN5vFLlzhVCUtNwXEg7wdsztTNtm36ps7qWWXlTuNbH6uOdPK2jDbQ2gMxLS+PgkPdf+yzBK5hXN3SEQ7jliIvNoyV2uG7slGX7EGx6HTJpk2AtejwXyl5P5y+G7s2UhmhiNkxEnf7/J2Yg6m/OZPqd9XLENcT1EdW+SnnZhxgN+RlTDnQ0kqK4Ve5r/u4dzG+lHSuKFddznUFJd24pJuh/GyoykFLMsASUgDCXOHw2Q+iS91LP1WnR6m7SRwjft6rHO8yto1nlB9MhQLy141NsaUONPP042j+oqge6aGcXKxhIWYFPRVUqWf2ZESKvjZxI2K4zCVyhyACNvekI1YMubnbwRGQmO4pg4lWNUOqsDglFjvJAQvr1iBb2W/0slU5e9bVP0cObLmiwHU37buksieDHIeCE/2w0/E+Q1CBlj8iDVW8=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(346002)(39840400004)(366004)(376002)(136003)(396003)(451199024)(186009)(1800799009)(2906002)(84970400001)(53546011)(38100700002)(38070700005)(6506007)(83380400001)(5660300002)(52536014)(33656002)(26005)(7696005)(86362001)(8676002)(8936002)(4326008)(316002)(9686003)(66946007)(64756008)(54906003)(6916009)(66446008)(66556008)(76116006)(66476007)(966005)(478600001)(122000001)(55016003)(71200400001)(19627235002)(41300700001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?vvgweRx8GUIqSv9NSqSPyqxPhXufidwjmuzYx5+fReRAsJYLj+SQzsdW?=
 =?Windows-1252?Q?/OXqq3q44VY/YjoenVLW4bZ/1LceZGmk6Ns9YXoUx3e++utnV9b0PS4y?=
 =?Windows-1252?Q?WAXcQM4bizLqi5oHgCXkd6g4Zv+byDyetp0Ez6eTahdqxXTZx9Mp07X7?=
 =?Windows-1252?Q?pLKanpAEOHATn11Q4CxSXa3wynLzRCDv/IRow6Hp9UuaECal6mIk+kvk?=
 =?Windows-1252?Q?B69cPsCiNVOQZss/cAdOx5HrasjbZm8DgIVYbA+XCY8Ye6BtGOBRYaYi?=
 =?Windows-1252?Q?4o9tqamw1GF9452dO/HcBUfmpRfroN2lhJNzU5GL3duQWLBO+b6wOOwB?=
 =?Windows-1252?Q?Z89CztxSH4RF+ssoMLf5SA46gMcHK2jnOCMWD88is2AEeLv0zrufe0qr?=
 =?Windows-1252?Q?9iYl1UrCtp6OxfQu+yrtgtJi9eNrs7thJ17/Fg+WixZih0YDadpdUFpU?=
 =?Windows-1252?Q?U78LR8zmYGHHSaIqhBCe/qFmjD5x8SGVV3V1j0X/d78pHDFySegkiwjf?=
 =?Windows-1252?Q?cUgAvzXVUIaXFCf2x+QsIkt3Y9zdyV4oxw0h8E9j30ix0Vg1DaWnLyca?=
 =?Windows-1252?Q?phXk61cQqjlGl8F6idM69NbjSciJwW6enZzSTZGzTWqmon5EY8JJh0JC?=
 =?Windows-1252?Q?SNrx5LN1y3zfNUWar6zrZvFLLS6wHt6CoK+rXgb/Z+krCUiTLkItxFY2?=
 =?Windows-1252?Q?oOB4FM8u/fmvUypw3wWOGbDrESV66uL5BY11gDplMk+ZlEYJxl5Cp059?=
 =?Windows-1252?Q?lQ5w2m0CkvfETERXBARJIQED3Lwy8jzSRq37hXBiUlH3b/gsnKUr5Aff?=
 =?Windows-1252?Q?OdnKI7dPykVSz51B0WMRzGj14dc+Vl/+xlHorB3WaleD+rumrx67s8Gv?=
 =?Windows-1252?Q?726mS1gmTamZZymGuytMwkbu4KoSBSVmtrM0hNfYeFMQWiUpHddhWMfx?=
 =?Windows-1252?Q?YIed1cWpz9tY5U1Ke95qURZgN5V+gkRdwG4mKvoWP0HQHA/ueI2PTEOq?=
 =?Windows-1252?Q?n4SqMVTWtx4tQHP1VSYHfWybDnyDCy5c7qAfq7NFgySVFZBKq+DMbzc6?=
 =?Windows-1252?Q?CFS4kg8G3LhILdPT/kw5tqVHA09Yhl5AcZH0vTJloitgmcdKlqCO4lT1?=
 =?Windows-1252?Q?LbpTy5hOwF/rR3YEfMteec0H+DQUPlTWid+PkEw5pcHnq1Wy3wc0Hivq?=
 =?Windows-1252?Q?foTeCNIqZfQaPdO7sH9ZiCm2BosOJ1FojeCDsMz3e0Xx5uqSM6/9ZPm8?=
 =?Windows-1252?Q?TU7PclR4FbLzcUZGZS9klOovhEiEod0a9necBf6o/45HOE7MKnCpwrvi?=
 =?Windows-1252?Q?IdOzSTTad4+tIH0X8ZbDM77cnT2v1BkgsFnE/Ly+AujzYamLNo7P8d+8?=
 =?Windows-1252?Q?aWC/moNbB6ZsUM1ym2bx4Ny1c4wtJXkTlNdiUpOs3+yl94/lefIon+kT?=
 =?Windows-1252?Q?a0Lps1o8egwh11tSNZRMJiOTL5M9HP8C9V9ie+g8r8BXxNrvh3LlR8wf?=
 =?Windows-1252?Q?UarHGAnvFR0+epBb84bGgfOVDUQpajT9uCyg3OdwcBfDJwoEOYotoRqC?=
 =?Windows-1252?Q?s/FEtU7MtsSVwj8c5SUBhYa1FcDxXaS0BaiinPfhXBTbTdJ/hJRcNvVZ?=
 =?Windows-1252?Q?TVnrcwTnyZp422bSnRXH/3QMKLST1GpbTAVr+Er/F7fblqlESH+UoutD?=
 =?Windows-1252?Q?D78aLN3TIDM=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: fe56721a-a567-47c6-d7b4-08dba25304f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2023 14:29:25.1325
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GPs89ik/JInhoZdfADiczLFsvG3d2yL0DXuztEhyI9Xdpwq+I3QTGvfi4hXg1LSaowUAGxk9yGDzUivDrBjnQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1P195MB1542
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230821_072934_515666_717ABA5B 
X-CRM114-Status: GOOD (  40.90  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: RE: ARM: mmu_early_enable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

After further digging into the mmu_early_enable function I found that level=
 0 is set with block type (PTE_TYPE_BLOCK) but AFAIK level 0 must have a ta=
ble type.
Only level 1-3 can be either table or block but not level 0.
I think that until now this wasn't an issue because all (I assume) implemen=
tations\porting that enabled the use of MMU also gave the barebox a startin=
g address that is within the first 512GB range.
As a result, the current implementation replaced the first entry of level 0=
 to point into level 1 table.
In our case, where the memory used is above the first 512GB we got an excep=
tion.=20

I suggest that the initial setting of flat 1:1 mapping of all 40 bits will =
have:
2 Entries of Level 0 which point to level1 tables.
512 Entries of level 1 each of which define a block of 1GB to map the first=
 512GB.
512 Entries of level 1 each of which define a block of 1GB to map the secon=
d 512GB.

The reason 40 bits is used (1TB) is because this is what currently barebox =
set by default for the physical address (see function calc_tcr on mmu_64.h =
where ips is set to 2).
The below patch suggestion assumes this will always be the case.
We can make it more generic by introducing a new settings that will set the=
 total physical address bits.
We then can derive from this configuration how to set the IPS value and how=
 many tables of level 0 needs to be initialized.
Let me know what you think.

Cheers,
Lior.


diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index cdc4825422..28358dd7d9 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -245,6 +245,19 @@ void dma_flush_range(void *ptr, size_t size)
 	v8_flush_dcache_range(start, end);
 }
=20
+void init_range(void *virt_addr, size_t size)
+{
+    uint64_t *ttb =3D get_ttb();
+    uint64_t addr =3D (uint64_t)virt_addr;
+    while(size) {
+        remap_range((void *)addr, L0_XLAT_SIZE, MAP_UNCACHED);
+        split_block(ttb,0);
+        size -=3D L0_XLAT_SIZE;
+        addr +=3D L0_XLAT_SIZE;
+        ttb++;
+    }
+}
+
 void mmu_early_enable(unsigned long membase, unsigned long memsize)
 {
 	int el;
@@ -257,7 +270,7 @@ void mmu_early_enable(unsigned long membase, unsigned l=
ong memsize)
=20
 	memset((void *)ttb, 0, GRANULE_SIZE);
=20
-	remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
+    init_range(0, 2*L0_XLAT_SIZE); // Setting 2 entries of 512GB to cover =
1TB memory space
 	remap_range((void *)membase, memsize - OPTEE_SIZE, MAP_CACHED);
 	remap_range((void *)membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT=
);
=20

 =20


> -----Original Message-----
> From: Lior Weintraub
> Sent: Thursday, August 17, 2023 4:50 PM
> To: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: barebox@lists.infradead.org
> Subject: RE: ARM: mmu_early_enable
>=20
> Hi Sascha,
>=20
> I read your answer again and realized my misunderstanding.
> So essentially what you say is that all 48 bits of the address space woul=
d be set
> as flat 1:1 un-cached and only the SRAM region will be set as cached.
> In that case the UART at address 0xD0_0030_7000 and our ROM at address
> 0xC0_0400_0000 should be OK to access.
> We will further investigate and try to figure out what went wrong.
>=20
> Thanks,
> Lior.
>=20
>=20
> > -----Original Message-----
> > From: Lior Weintraub
> > Sent: Thursday, August 17, 2023 10:32 AM
> > To: Sascha Hauer <s.hauer@pengutronix.de>
> > Cc: barebox@lists.infradead.org
> > Subject: RE: ARM: mmu_early_enable
> >
> > But the UART is set on a total different memory space.
> > The SRAM where barebox runs and also given as membase and memsize is in
> > the region of 0xC0_0000_0000
> > The UART is in the region of 0xD0_0030_7000.
> >
> > According the tarmac log, it looks like access to this location caused =
the
> > exception:
> >     3505306 ns  ES  (000000c0000814ac:910003fd) O el3h:	mov	x29,
> > 	sp 	(console_putc)
> >                     R X29 (AARCH64) 000000c0 00377ac0
> >     3505306 ns  ES  (000000c0000814b0:f9400460) O el3h:	ldr	x0,
> > 	[x3,	#8] 	(console_putc)
> >                     LD 000000c0000825d0  ........ ........ 000000d0 003=
07000
> > S:c0000825d0
> >                     R X0 (AARCH64) 000000d0 00307000
> >     3505307 ns  ES  (000000c0000814b4:d63f0040) O el3h:	blr	x2
> > 	(console_putc)
> >                     R X30 (AARCH64) 000000c0 000814b8
> >     3505371 ns  ES  (000000c000000b5c:b9000001) O el3h:	str	w1,
> > 	[x0] 	(spider_serial_putc)
> >                     EXC [0x200] Synchronous Current EL with SP_ELx
> >                     R FAR_EL3 (AARCH64) 000000c0 00000b5c
> >                     R ESR_EL3 (AARCH64) 8600000f
> >                     R CPSR 200003cd
> >                     R SPSR_EL3 (AARCH64) 200003cd
> >                     R ELR_EL3 (AARCH64) 000000c0 00000b5c
> >     3505443 ns  ES  (000000c004000a00:14000586) O el3h:	b
> > 	c004002018	<exception_entry> 	(Vectors)
> >                     EXC [0x200] Synchronous Current EL with SP_ELx
> >                     R FAR_EL3 (AARCH64) 000000c0 04000a00
> >                     R ESR_EL3 (AARCH64) 8600000e
> >                     R CPSR 200003cd
> >                     R SPSR_EL3 (AARCH64) 200003cd
> >                     R ELR_EL3 (AARCH64) 000000c0 04000a00
> >
> > BTW, In addition to the UART, there seems to be another issue.
> > The Vectors themselves are located in our ROM location which also resid=
es
> on
> > a different memory area (0xC0_0400_0000 space).
> > Once the UART access caused an exception, the jump to Vectors caused
> > another exception so we are in a loop.
> >
> > Looks like a catch22 to me.
> > On one hand the barebox wanted to start clean and disabled the MMU but
> on
> > the other hand the mmu_early_enable sets a partial MMU which causes
> > exceptions.
> > What do you think needs to be the best solution here?
> >
> > Cheers,
> > Lior.
> >
> > > -----Original Message-----
> > > From: Sascha Hauer <s.hauer@pengutronix.de>
> > > Sent: Thursday, August 17, 2023 10:18 AM
> > > To: Lior Weintraub <liorw@pliops.com>
> > > Cc: barebox@lists.infradead.org
> > > Subject: Re: ARM: mmu_early_enable
> > >
> > > CAUTION: External Sender
> > >
> > > On Thu, Aug 17, 2023 at 06:22:50AM +0000, Lior Weintraub wrote:
> > > > Hi Sascha,
> > > >
> > > > I think I found an issue with the CONFIG_MMU feature.
> > > > When the code under barebox_pbl_start calls mmu_early_enable, the
> > MMU
> > > > is set such that only the given SRAM is defined (membase, memsize).
> > > > But then, if DEBUG_LL is in use and the function pr_debug is called=
 we
> > > > get an exception because the UART address is not included in the MM=
U.
> > >
> > > That shouldn't happen. See the code in mmu_early_enable():
> > >
> > >         early_remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
> > >         early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
> > >         early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE,
> > > MAP_FAULT);
> > >
> > > The first line maps the whole address space uncached in a flat 1:1
> > > mapping. The second and third lines map the SDRAM (SRAM in your case)
> > > cached.
> > >
> > > Your availabe memory is quite small (3MiB) and by skipping the
> > > relocation your SRAM layout is not standard. Could it be that somethi=
ng
> > > overwrites your page tables?
> > >
> > > Sascha
> > >
> > > --
> > > Pengutronix e.K.                           |                         =
    |
> > > Steuerwalder Str. 21                       | http://secure-
> > > web.cisco.com/1OEKFl2BnNpoLNUlGA--QcqTLOmehOhRYUZN-
> > > THBCB91kVNePMy2om4tD5Nv-
> > >
> >
> _isTZzlwD1lXGQLUMWmqHlBH9dEe0vcctRC7gn_a6v7IxQu5RV7VCRo5Rl7Tylx
> > > vh1hfoYe3c1lCTbGAEE5kXKVZLdKBs7oNP9Xn4ml3gy7I78-
> > >
> >
> c_QsTMlZ4xNZj06ORqpIvkGFgk72fNMsGjjLXZP6zTk2yEI2gjapDB8ClJ0mVtAl
> > > oiP9YHbgjuY0qbUbZfQq-UuasUtCi2rRo0Pu2jKm7sqnlCFb16xbdfl-
> > >
> >
> JN9oqUXAy8l3lHq0yGyfhYZnzWTxH/http%3A%2F%2Fwww.pengutronix.de%
> > > 2F  |
> > > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0=
    |
> > > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5=
555 |



