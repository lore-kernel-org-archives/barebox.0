Delivery-date: Wed, 16 Aug 2023 18:50:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWJiu-006bG8-T1
	for lore@lore.pengutronix.de; Wed, 16 Aug 2023 18:50:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWJis-0007wb-Pe
	for lore@pengutronix.de; Wed, 16 Aug 2023 18:50:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G1n3z3+T7DWY3NhWfGGGRNkOgVW6HnmUIFgyXq8HWj8=; b=B6CiRWoyknGkCHWDmt+AIXQ3Po
	ZAJyFOmyAmkn6KFq82nGVBXEDkIJcjPIZHfCElZOFH4gpVsSEsgRrhMlUD849lUIbg6G+vXcM70Ev
	CuMQYHeV7Afg2vyIajFd0hRqTxGT8qqwl630WIkzolc6pfcTqc59gSSfCMHIDDX65DUELopaFOlTp
	kIwU7wOAXp7fjkQC6A413tmLAtzFD+LyyxxtHKYOlKMPjUs1QsXE/iTNbeKXxaKSidAoSbPDmFuE7
	14EkFzmYmvfVM0UsvfHjh/yVUzWPJSLW6HhnxrtpD5S8noFzAZp/IKCKk1idE6Vo+8BUG5/TU68bT
	a1gpliPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWJhT-004eK8-0M;
	Wed, 16 Aug 2023 16:48:51 +0000
Received: from mail-db8eur05on20609.outbound.protection.outlook.com ([2a01:111:f400:7e1a::609] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWJhP-004eJX-1V
	for barebox@lists.infradead.org;
	Wed, 16 Aug 2023 16:48:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lp78/cuSQExzxgwwBVHG+I8UM2iALXEjweJWIlI8MsiSv2TOIjXAOwL2RuMX6TNQtpsZU/RCyN24QIEy21oGFaBXdaaEGwAkKP5xlEW9wHJXfdd+bRvYl8v9yKTy8popLweeKoQv8A/Rl6OHgINepxQM1BXaMFGknUQyDStnrmemQtOX6BjtIAHPZEGuWbpCj01bn1Uf3/Uh0wuDxSkbdwCHw733VGgqfDuXif3WFK/sbs/KaGwISJvzul+hwOrCY0IakyfoXKP7EkO7VBaZ1Ig7oWWQxfeeh6Du5idkVeX7HNPFgav+h/zbbq8FMkPfDQQGRCHjY6MhFnd8OM66EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G1n3z3+T7DWY3NhWfGGGRNkOgVW6HnmUIFgyXq8HWj8=;
 b=HyFh95c0DPGJ0WkX4Bf3400Nnfix187YhZapGiUT7BlAHZRP3K974m4D0DgexYdF58mD95xY7K0ERyUvhg7Lmr+vtzKnpCwxRh8/CyAaUsshg009/8x2qke0JKvRRF1ILEg2dsQWAgo5wPH3x1pufL69zwmuMVb4ij7BsiYeJ2Y+sXOPLq60crNBhRWCbOiS48Os1NibHl3nZqdFGeI7ECC0jV4avevwMwb/0oGAQ8t8qb1U3ciIiGx6FJ+K/jZVVTrh3w32X80TrRkOVWaVqrDGVT2uWd1WKxlG73WfOg4VDBqblrqgOM09DzfG//28sD1coIQ4ZLdE3bfpJjCUPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G1n3z3+T7DWY3NhWfGGGRNkOgVW6HnmUIFgyXq8HWj8=;
 b=GsAtKx1GjPnFCngnMe7Dd6rNxfIQhZS5/evY2gt8hPbQ61f4nw46lEHWd8p/wmE9oByq8UgFbCQIvezoCbCPm63ufdsjBU+kUm5bmZIDGxm6hFx7cjBFYmd3I1eFoifkMeXezMV5hIncfA6iGNwRn1kDcrQayAfsJAjYOkdZmZk=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by AM9P195MB0840.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:1f5::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Wed, 16 Aug
 2023 16:48:37 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82%4]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 16:48:37 +0000
From: Lior Weintraub <liorw@pliops.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Ahmad Fatoum
	<a.fatoum@pengutronix.de>
Thread-Topic: Barebox PBL with uncompressed barebox proper
Thread-Index: AdnQLM5R08lcrCAnQASl0DOuC0F/VAAAdO+AAADnRyAABunygAAEKkLg
Date: Wed, 16 Aug 2023 16:48:37 +0000
Message-ID: <PR3P195MB05559A232A25A80463C4D60EC315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
References: <PR3P195MB0555163C72FCE82E3A4052F1C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <20230816104429.GG5650@pengutronix.de>
 <PR3P195MB0555F57333C5D9E6A4951C00C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <20230816142819.GH5650@pengutronix.de>
In-Reply-To: <20230816142819.GH5650@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|AM9P195MB0840:EE_
x-ms-office365-filtering-correlation-id: 41352549-8563-4b41-f19a-08db9e78a30e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IT+zD4XBg1AZt60H8g41uw5mYjV7aEuvfxl+vOVZsMziQzDvZMw6tFKIVtzlJcQu3fIyKeqQd6uKiOVNNXgi3MLrLL3TNHg1ICY+yzM/jVdLQa19ASW6gCYlCmax4rY3GVZLZ0FQ8Gf/dhUlkEH/PDfMpKs9gPWHbwn6fpA0w9WU02rYWZCLMGW4jeIYbBceh7b8CRmx7b1E+tjeEINTbmo4Cw0m6bR2P+YOOlJCd+v1ztyWh89xx7rh8nahKsCg3qjtJlAAom1LdRXx+dz4DyEoZpQC7r59LFMGf+paJZl8LnwyGi4it9ZIIaXUeeHgeV00jHgMss6O+SugkAZ79eqRNsKPr5nG/Ti9emqQvG9CaevtSijsYmIa6Bb9XfLlGR6f7n2f2DZHCOtoWd2miXpKH/pyJu/Im6BQdZgo3R+xfMHzNKIVCmvSIQ/UCBmRPgCAJldVBgsyaoZXEvrlVywPWQCDlFi6sOUPomQvKmeWDMLpWKEJjj3cGzlwJopQ4x6jYBgxj1Oev2C3la326CDDP8nJjS2Z9TvwbD/b/Ce0QED9w4ZV6fSNvoT2aAdKDsc5Od5duau7SonUnCkQ5zKnVhU+Jx7IN4snt80atqM=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(396003)(39830400003)(346002)(366004)(376002)(136003)(1800799009)(451199024)(186009)(316002)(54906003)(76116006)(6916009)(66946007)(64756008)(66476007)(66556008)(66446008)(122000001)(966005)(41300700001)(52536014)(5660300002)(84970400001)(38070700005)(38100700002)(8676002)(4326008)(8936002)(2906002)(19627235002)(83380400001)(55016003)(478600001)(86362001)(9686003)(53546011)(33656002)(7696005)(6506007)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?Dy74pCIMhqcoySDyby++0C23nHwLh/kVUQTYJtnk2Nd1sxUIUkpRgyN0?=
 =?Windows-1252?Q?ERyLXYbyDZVStpcxfwPyjsxrqj65d04PqzaBcs5f7qp/ejMYI5fAC5/l?=
 =?Windows-1252?Q?mGI9fRznf01CsrI95/PMuXWQZ+eYoBYlspn/k+8FVahwnYna5oC+ymsF?=
 =?Windows-1252?Q?aECBhssD7QaxK4XeO0VGkPXvIWE6GtvwCyGwfekEAa++bRntHolmZHRd?=
 =?Windows-1252?Q?xY/KpCqZwsdcAZkYLSQAWLTyujjIyyLlRmlYx9FBcDFMwJ1Hezstlanv?=
 =?Windows-1252?Q?4CGlM1rxasjQmS1BzDYhbVB5wH8XkkuDGYUR/qJ0Pq6A3uZ9sCuYihJ5?=
 =?Windows-1252?Q?iGLfhUX+BYfrWxzdIBPA4MzyaQR3iI2EKqJsnPAlMy7ogUEaMHtvWtE0?=
 =?Windows-1252?Q?TTwOFCB0lturwqGqzjaq+MKHu6lAL5jtSkoUfBU3PiGK/EYoEHZgN/Z6?=
 =?Windows-1252?Q?wDdbNeb+941YGy5g3STJ2GdwWq/cJDFzvJyss7tlpRuW+rkEVA0GbXip?=
 =?Windows-1252?Q?gjt4Dnbch/9Joz0/KPWWpKQ+gn5Ptpl/1P1N2VRrDBk4kYLqYLJzG0LH?=
 =?Windows-1252?Q?h//I92WEr+wXFsPyQKJkRBlhyHKxKaIdMlEZ9fVrBsVpDTm1WZ17FN6v?=
 =?Windows-1252?Q?jPy11rULTScYcKaBrMGhiZXsj2d/X3P6bufwE0YYwpjOC8N0WvD+I5I6?=
 =?Windows-1252?Q?z6CrI5Oknr7jt0iW4Wwvz11jAJ/qbh7CtrEkZPw9taQhOVO0dIC5yl5q?=
 =?Windows-1252?Q?DScBVi+CESLWsS/UVDGi89WGxMZ63wIIv3YO2epwcPe8a72z27c2Vr1R?=
 =?Windows-1252?Q?KsBlmYjX3BsiRvSX0TnfSRs6YOhSpWvRUuMgEgUt3w1/dvwGcDmrPDgG?=
 =?Windows-1252?Q?emM0dmof8lzBxxubNb4D3PYoSVVk/Wu1v2gTgZxwtVdp26JxwWRWJRNI?=
 =?Windows-1252?Q?O/6Un2srjOnkPaOh1RUwb07gyh+kIgQrA5bYPoropx58MVOvOppt2pv0?=
 =?Windows-1252?Q?uaC26JgQWycgHOr1xtnrXHye8X8H2uXnDJIn0wSIi8iPereSLRx2PleA?=
 =?Windows-1252?Q?5q9cIK7IdoMxdscWkAWUC7y2HABtB+LEDI4JTJNMvui634DQGwoWoNqw?=
 =?Windows-1252?Q?WA5o6lTZ49z/c8H1nRKZ1Q9/TILNfA8yBY8KEprUt3dbLTy8Il9VuP4n?=
 =?Windows-1252?Q?ERUT//uHryfPUAxV1eXfgdzdc4VK2WFFQC9zyTmXDeUQ7vOUUYe4OmJH?=
 =?Windows-1252?Q?inhAiY/xUX2ObBkOfM57LD804U3qR/JABetet3flL3T91Y72ONA0dxFB?=
 =?Windows-1252?Q?brNH3f4N/jDOPYXZV5XyUqU7jc90g/8O5PJyqy+w8lEv0XRsqiBDQ/g4?=
 =?Windows-1252?Q?73dsobgwMxmHlM6aWrD/q1i0BCQhLsAStfmzzyeA4P9yM/sHCbzm9W1Y?=
 =?Windows-1252?Q?QtoSXeJPu6trQTh9KHnnnRe8mKnw4DFqFGu9DfQr3NlI0F1JHP3b+yrF?=
 =?Windows-1252?Q?bD9ZUdRGHwMx5qktO+TBNdfz1OTLJLho+FoOZUCGiAs03/tNBZfj6Yko?=
 =?Windows-1252?Q?85qUfPzF2BxqcvLVwPqyeGwdn6qILm2I4Yh/4DS8fMqDLQmyKTSXgxiA?=
 =?Windows-1252?Q?pP5/R04Tz1XLCANlrM6utxgCJupMztitADDV/oqJ3ZUH/R6ULGHjQCkI?=
 =?Windows-1252?Q?VrjkNbvTxu2f7qqBx8uatbXH+cKwaXmve09Q8nx0S74c31MGqZuLuEXz?=
 =?Windows-1252?Q?K1tQLIhLoyaf1xFJBCQ=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 41352549-8563-4b41-f19a-08db9e78a30e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 16:48:37.1919
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: umYvQrTxxlnNq7P7B/MOaYYUZXxF1awOXT7ZFsJSOfkEYHtnZ6PHlVJLYKwNLmhBry6JgCnpb3JwZ3JkCLR/nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9P195MB0840
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_094847_550316_35F0AD39 
X-CRM114-Status: GOOD (  36.21  )
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
Subject: RE: Barebox PBL with uncompressed barebox proper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Thanks Sascha,

The thing I am trying to achieve is to run RTL simulations in a reasonable =
time frame on our bootloader and barebox loading.
On RTL simulation environment it takes about 5 min for each 40 us which is =
about 2 hours for 1 ms of CPU time.
When the original code with the relocation and decompression was tested it =
was still in the middle of decompression after 2 hole days of simulation.
I managed to patch the code to avoid the decompression (which is actually a=
 memcpy in this case) and it seems to work fine (tested on QEMU).
The patch I used:

diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index a481c4634d..cde03dc0c1 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -71,9 +71,14 @@ void __noreturn barebox_pbl_start(unsigned long membase,=
 unsigned long memsize,
 	pg_len =3D pg_end - pg_start;
 	uncompressed_len =3D get_unaligned((const u32 *)(pg_start + pg_len - 4));
=20
-	if (IS_ENABLED(CONFIG_RELOCATABLE))
+	if (IS_ENABLED(CONFIG_RELOCATABLE)) {
+#ifdef CONFIG_IMAGE_COMPRESSION_NONE
+        barebox_base =3D (void *)pg_start;
+#else
 		barebox_base =3D arm_mem_barebox_image(membase, endmem,
 						     uncompressed_len + MAX_BSS_SIZE);
+#endif
+    }
 	else
 		barebox_base =3D TEXT_BASE;
=20
@@ -87,12 +92,14 @@ void __noreturn barebox_pbl_start(unsigned long membase=
, unsigned long memsize,
 	free_mem_ptr =3D arm_mem_early_malloc(endmem);
 	free_mem_end_ptr =3D arm_mem_early_malloc_end(endmem);
=20
+#ifndef CONFIG_IMAGE_COMPRESSION_NONE
 	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx (=
uncompressed size: 0x%08x)\n",
 			pg_start, pg_len, barebox_base, uncompressed_len);
=20
 	pbl_barebox_uncompress((void*)barebox_base, pg_start, pg_len);
=20
 	sync_caches_for_execution();
+#endif
=20
 	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
 		barebox =3D (void *)(barebox_base + 1);


Your call if that makes sense to include in the upstream or not :-)
Thanks again for your kind support,
Cheers,
Lior.

> -----Original Message-----
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Sent: Wednesday, August 16, 2023 5:28 PM
> To: Lior Weintraub <liorw@pliops.com>
> Cc: barebox@lists.infradead.org; Ahmad Fatoum
> <a.fatoum@pengutronix.de>
> Subject: Re: Barebox PBL with uncompressed barebox proper
>=20
> CAUTION: External Sender
>=20
> On Wed, Aug 16, 2023 at 11:23:26AM +0000, Lior Weintraub wrote:
> > Thanks Sascha!
> >
> > Before applying the recommended change the trace showed:
> > uncompress.c: memory at 0xc000000000, size 0x00300000
> > uncompress.c: uncompressing barebox binary at 0x000000c000002b60
> (size 0x00030def) to 0xc000100000 (uncompressed size: 0x0005a9a0)
> > uncompress.c: jumping to uncompressed image at 0x000000c000100000
> >
> > After applying this configuration, the .img file was increased (as expe=
cted)
> and the trace shows:
> > uncompress.c: memory at 0xc000000000, size 0x00300000
> > uncompress.c: uncompressing barebox binary at 0x000000c000002480
> (size 0x0005a9a4) to 0xc000100000 (uncompressed size: 0x0005a9a0)
> > uncompress.c: jumping to uncompressed image at 0x000000c000100000
> >
> > Indeed is seems link an uncompressed image because the sizes of the
> > "compressed" match to the uncompress (well except 4 bytes which
> > probably indicate the image size or the compression type (just a
> > guess)).
> >
> > I assume that the decompress function detects the header and know that
> > it is an uncompressed image and then just copy it to another location
> > (in my case 0xc000100000).
> >
> > Can we avoid this step?
> > Since the image was loaded into SRAM we wish to run locally without
> > the extra relocation (which also takes simulation time).
>=20
> I don't think this is easily possible, at least not in an upstreamable
> way. Normally barebox puts itself at the end of available RAM and puts
> the malloc space directly beneath it.
>=20
> What you describe here seems to be a very special purpose barebox. What
> you could do is to disable PBL support and only build a barebox proper.
> Then add your own entry point and jump to start_barebox() from there.
> You'll need to copy/adjust the useful things from
> barebox_non_pbl_start() as well.
>=20
> I am not sure what you are trying to archieve here, because copying the
> binary usually takes time in the order of milliseconds and that is
> normally not a problem.
>=20
> Sascha
>=20
>=20
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://secure-
> web.cisco.com/1XpYzNc191JjtGaWh_8mPulQQYcyNjNxrljKOy4EXP2rJ6BI69y
> LQZalS_CIiCjQ0DKAyT3wD0pqV_fDARkSkZJR-
> QINkixMViIHKcS0xPNjMFyt4edli64apIWuOxcO_28UOr2R8MQOuS7ZeOhXjm
> fpSK85jwv7AhOTHiCnokRyVhHNWfbb1o05jLvnoR6zBmZ8U5MiQ5cwXYnEq
> w4fYe6wBKoBmerRBThjYiwC7_6_5LUEtO3BFAF-
> brnGnHBd9opXwB2Lq4kXhbQ4HLNnL1ZiAuKMKm7EYhvbN3y3BML9T-
> mz5ZvxUqx6VzqE8FAGv/http%3A%2F%2Fwww.pengutronix.de%2F  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|



