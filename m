Delivery-date: Wed, 16 Aug 2023 21:20:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWM3y-006kos-Em
	for lore@lore.pengutronix.de; Wed, 16 Aug 2023 21:20:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWM3v-0006mf-Pv
	for lore@pengutronix.de; Wed, 16 Aug 2023 21:20:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xPyoaplOEtOsIaVBgMxE0oT7JWWve7Wc1RK6Jp2OhwM=; b=kcjrn/0NhuVkmk+I7i1ZsLm8Q7
	awpai2B4wRTjcp9UdjCNmxZ7jkmyv6hSH029a0a+UX71dgH3Kq+AL0uvBALgjAmI2zqIS3Tq1NKzX
	r/OpAiyrEz0kN4BjQQPVidfYdpa+rNj1NPEsyW+nMoIETuINED2WjZTDCwW7vrXU/QcI7D0SF0Crh
	AcE3MT0Rk5NNfw5zDlIM4tT1lAk4jxq/8K8QPHRspxSDq28CoHIGBAlgnKn7MFKjr0bPlNqJl4E1n
	9k4AkNmWOlUpa6xVgKjxCoRTDPJFef5gG8uB6RnY2iwyAGGmBW9B3htJvnOaxAt9gFuVaAD/C4Oyb
	FyQP3WnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWM2R-004sNp-0L;
	Wed, 16 Aug 2023 19:18:39 +0000
Received: from mail-vi1eur05on20625.outbound.protection.outlook.com ([2a01:111:f400:7d00::625] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWM2N-004sN2-1j
	for barebox@lists.infradead.org;
	Wed, 16 Aug 2023 19:18:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P38ZKcXi0FsBZkycnUHx+gzEutDZNnYYDul31H40HvFqihLOuDmR3LXx0gt9cjJ/3kQ9wLXJf6Ce+h/BRI2XybbFPLUxoUzi6XeezgOI5OmfGrKJw28aKk66KPMkI/NizS5uUl5rbj6xGGR8VsCp4Rv3n2nwohhZScO5krhyA3FI+1aaDTiNdxVpcU1DBFfdv2xTUfTMaW45619y9hoPcSy6Y2IUncMsOXyApaNGkL6uHSZ2ZqjljOMHyGpQcQKB06MTqMWbD+/raEwi1dOuYGYPXLn5+llWURWqRJxF98ulBO0TB+gGnQZFcPhPVu/LqiOHbBoFYFbZ9Aj/si/GIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xPyoaplOEtOsIaVBgMxE0oT7JWWve7Wc1RK6Jp2OhwM=;
 b=H1ruTYzEDtKLf92p//mw5AtK05xz68TW4mc1Ajv9stO6zt513hPYjg8gJBxfHQVvnd4+VdetPCtW5sE8WFxdQqoilS/r+nIpWopQsuKwlhv2GW4iGhxHTeBsQTUD+Ts64ms01aBy7T3AgTgOedvV7tGX9zsRLw6CxzmIx4eV9W4wjm229bHXmK+qIa9OfTAAY6KVG5BTF6PHZHEScfituytuGsfgP98/DD8VhZX15OKJOojXjFMBdIHQgpOEHXo0qJqb78VaOa+7I6rqs7XSXsyubhbTklgqO75k/lMCui08SdWKTxSZG+edpNDJM1K5T0mqckLxNJtNwkauqN9ubA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xPyoaplOEtOsIaVBgMxE0oT7JWWve7Wc1RK6Jp2OhwM=;
 b=PTmOXC473KZKsEjCFPmIUPCusMpNo94f7VEF8JjgNUtDwwy41RWG/NboL/ReCJdVZ3pDieKf2+cqkB2PGxPNIvXXxHxgLhOBPsJRWrY921NpOEY5ER536Mwx3zmWxXaGyMUWI1XOUnk+wsSwWjqX0b2tsX32L581VtJ1jqAvmSQ=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by GV1P195MB1641.EURP195.PROD.OUTLOOK.COM (2603:10a6:150:61::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 19:18:20 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82%4]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 19:18:20 +0000
From: Lior Weintraub <liorw@pliops.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Ahmad Fatoum
	<a.fatoum@pengutronix.de>
Thread-Topic: Barebox PBL with uncompressed barebox proper
Thread-Index: AdnQLM5R08lcrCAnQASl0DOuC0F/VAAAdO+AAADnRyAABunygAAEKkLgAAXveyA=
Date: Wed, 16 Aug 2023 19:18:20 +0000
Message-ID: <PR3P195MB05554D773E67C1A2E5D5F760C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
References: <PR3P195MB0555163C72FCE82E3A4052F1C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <20230816104429.GG5650@pengutronix.de>
 <PR3P195MB0555F57333C5D9E6A4951C00C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <20230816142819.GH5650@pengutronix.de>
 <PR3P195MB05559A232A25A80463C4D60EC315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
In-Reply-To: <PR3P195MB05559A232A25A80463C4D60EC315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|GV1P195MB1641:EE_
x-ms-office365-filtering-correlation-id: 6365f95c-db3e-4d38-89db-08db9e8d8d9a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V8FY1OBxvjITg57munRaZmsUXL5mS5Yv3PdS5zvb3CiIbjciYAQS1RjOj8/7dGu3wcD6HZ6As78pknriQTHM39ozYjh7oSVC289Y3EoIZV3qI2/Bro9gU9j+lgpe+HYVxLvBo9W/8HOkt5Ct6xA8R7v8JKmG9JPv4jHHEQJarAGnz0u0cQx83b7J/teKF/OVF85/W2tfoS7kSNRymAEI5hjYOzfGN5CJJB0kUDcuSSMQG68kwhf9W/q14lof9T9DfNCfFq1JrHzwM2mzFDCEei3oufEZX/BxJBBl3nDNo8Ubl5KJAwmi8mQs+yR46rGyH3vfsO1C9O47ru6Jbb5NyIeooPvUxrk+U+sylcO2HUBCu2LYk6GCR1iZb9ts8nE/yuW7Mv5RbQ1OWOJrpqNgpkcsd0wwlo6aAB9Vwq0ywJguN7zD6o49kqTn7u8FQC5nmBjFwKxSMTGj6xsn+Yc3igQ1+bPlWa8xjnl8qFeV+XXKLYGP7o8KUfwU7PmQU7j/t2LjmCBTmjdOKsVNcOLFkq+uNDDczEFe0nAQa7H4DSFbvx2jMI7ZKqEhpOcM1WnunOlwd/343LNcGRWh5IIssLWW6b1f/DWFHFpR+f5gBhU=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(39840400004)(396003)(136003)(366004)(451199024)(1800799009)(186009)(316002)(76116006)(54906003)(6916009)(66946007)(66556008)(66476007)(64756008)(66446008)(122000001)(966005)(5660300002)(41300700001)(52536014)(84970400001)(38100700002)(38070700005)(8676002)(4326008)(8936002)(2906002)(19627235002)(83380400001)(55016003)(478600001)(2940100002)(86362001)(9686003)(53546011)(33656002)(7696005)(6506007)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?cu6NMATa0vRby56XXsTljfv7O+8LL/I1aeF0746IxeC/M1x+5ntXG7Ly?=
 =?Windows-1252?Q?AMbnfOgH45N+9A2/VAfpKCk0JkvuE+y87viJv0rijH3Z6WM5GW8HEXi5?=
 =?Windows-1252?Q?54bC1Bg6u1Pvu8qcVW1OuwchtDwEqu5G21xZH6+04J5hiPktvfIZDLEZ?=
 =?Windows-1252?Q?U63zcCGrucn35eoQ3eFGPfRZ/nV0es2lWXlokRze5hGV8obY+da6DBnP?=
 =?Windows-1252?Q?ZqByeFvREBGA05VfOLk6mofveqA5vF/m4iLGS1/VJqyTq0Q+7bo4Lmhd?=
 =?Windows-1252?Q?wQUp328RxIxSLgtPdz1gtMuPpwf4wu5+5NNogl+DE7JHq1nozx5Zqb32?=
 =?Windows-1252?Q?Mc2WvKmBwH+YRtbxK7PW5UwaYxJUiHgZfAchR8z2EKWtujHpfZa/MRC8?=
 =?Windows-1252?Q?o5GUWxvpJIbV/vS9QnbIh4dgLBvStWPVDv5yS/YZhjvRfuiU61Qm3XmE?=
 =?Windows-1252?Q?C4FXcbYHi22Bz8vkLUyHonPv48nmru18booAZxc+J61k7tkKnfKtdJfl?=
 =?Windows-1252?Q?rXkXmrAwE085SqtckEMunKTnBK9w7JWFuS+J0P3sC3lOh2wRjx2C6L5G?=
 =?Windows-1252?Q?IWp0hiYLA6+cxV8FAqG+dBkcC9X3UEVAmpsq1Q0YHoTC4/SayJoRdc2N?=
 =?Windows-1252?Q?HT8OI6tjyBHvrOhPHaIkwzFbTD7i380XoARXHLjx6BgYuSkfVaHkoBii?=
 =?Windows-1252?Q?ALFkEuxVCCcMzkVEkdDmtJKRLz0stuwdK80rOna6uFLewZmQJHpCXQWK?=
 =?Windows-1252?Q?7N5g0JSZabueEQsyrmCyJVJ2cOLZpEB4kzOrEvRj+qVhhwt1wRW2TJ24?=
 =?Windows-1252?Q?eBSi3+87b6EpnMGgO0jWohVzrBQhuSRVtEn6YSlTwFae6yPKh5moH5uq?=
 =?Windows-1252?Q?Hcp/lbuupxCkCuwi3t1fhxvW4eDyUy6m4SwdaOPQM9WN/snmv45r4mgK?=
 =?Windows-1252?Q?57dyp0IDS4O1kXyS45xOqqKx7dzKuR1K/096NI1IYvabHG4M9BifFPZD?=
 =?Windows-1252?Q?fCC6KNYRzMZ7nl3pgn6c40IeQ8dIhnsNR67CY1m6znlJ7mPCCnlao84L?=
 =?Windows-1252?Q?2Qu1PSYrtFj4scsCEOXPfs79r4xfqyu1ihvZFcTJ589qTFHf+mxVi5/i?=
 =?Windows-1252?Q?VWRmsN7EnRdNl0W18GPiHul1EOG12F22cFDWl+bkwx8dNVjIK+jrtYdu?=
 =?Windows-1252?Q?BHnrLmH+4rb66DxPq5/XtCBclhvlpdSlGMOSl2NJ12oA7EvuYb4QRwTs?=
 =?Windows-1252?Q?7EGhuVQj+I/niiP1sphqeRECpnL76mBjcIRlVq8hVhrfvcLRPDubBnzu?=
 =?Windows-1252?Q?4cE/tWjtw2Gn09Ycbk2pGtFIChdA3bTCl29RoeXKWdQzHsNswM7BczWx?=
 =?Windows-1252?Q?EzNMv6lDUe/vBHFDN6TYjhN5z4XQIzTAHMW9r6LPyDalxKRo1Lb/Qhge?=
 =?Windows-1252?Q?aAP8gvW7xSWwlfWkwBcDFxINUx6M+uh0ZudJKkdXsPN//m1n/crC3uXq?=
 =?Windows-1252?Q?aAL07/VT7Lq7sm+Ef8mcBvBnckBypga/ynhjwjHjDQPSyFnyRsX09+6G?=
 =?Windows-1252?Q?dldhbGSHVjGSHI7iFLa+np7aqJbOkjz5ZCvmOEaNrX4WmXFRQNoknPXY?=
 =?Windows-1252?Q?oIikXJ4flVd28ppoV1G3Fybo16FMdJz5H8IVA1U0TnHLms85IOInxB8Y?=
 =?Windows-1252?Q?Ol0HW01X3gFLjXgjOlZbBC2XAPBQQo12gh/AyyUa3Uz7pQ8bQMg4XQ2p?=
 =?Windows-1252?Q?QMwLxAVmMMn0dmkoXDjc747BCjgmevAlW7YyElTS?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6365f95c-db3e-4d38-89db-08db9e8d8d9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 19:18:20.6041
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M3ASGMwxmKceWPcDOfEPQ+AHBZ9oIEjdQ8wCNPYnKLdKIAgyhx1NkocwXgO7AFYCSWRf8NhH4VTeCq29JWZQpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1P195MB1641
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_121835_795180_490D4417 
X-CRM114-Status: GOOD (  46.04  )
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

Sorry. Used wrong casing on barebox_base assignment.
This is the correct patch:

diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index a481c4634d..c554143acc 100644
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
+        barebox_base =3D (unsigned long)pg_start;
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



> -----Original Message-----
> From: Lior Weintraub
> Sent: Wednesday, August 16, 2023 7:49 PM
> To: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: barebox@lists.infradead.org; Ahmad Fatoum
> <a.fatoum@pengutronix.de>
> Subject: RE: Barebox PBL with uncompressed barebox proper
>=20
> Thanks Sascha,
>=20
> The thing I am trying to achieve is to run RTL simulations in a reasonabl=
e time
> frame on our bootloader and barebox loading.
> On RTL simulation environment it takes about 5 min for each 40 us which i=
s
> about 2 hours for 1 ms of CPU time.
> When the original code with the relocation and decompression was tested i=
t
> was still in the middle of decompression after 2 hole days of simulation.
> I managed to patch the code to avoid the decompression (which is actually=
 a
> memcpy in this case) and it seems to work fine (tested on QEMU).
> The patch I used:
>=20
> diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
> index a481c4634d..cde03dc0c1 100644
> --- a/arch/arm/cpu/uncompress.c
> +++ b/arch/arm/cpu/uncompress.c
> @@ -71,9 +71,14 @@ void __noreturn barebox_pbl_start(unsigned long
> membase, unsigned long memsize,
>  	pg_len =3D pg_end - pg_start;
>  	uncompressed_len =3D get_unaligned((const u32 *)(pg_start + pg_len -
> 4));
>=20
> -	if (IS_ENABLED(CONFIG_RELOCATABLE))
> +	if (IS_ENABLED(CONFIG_RELOCATABLE)) {
> +#ifdef CONFIG_IMAGE_COMPRESSION_NONE
> +        barebox_base =3D (void *)pg_start;
> +#else
>  		barebox_base =3D arm_mem_barebox_image(membase,
> endmem,
>  						     uncompressed_len +
> MAX_BSS_SIZE);
> +#endif
> +    }
>  	else
>  		barebox_base =3D TEXT_BASE;
>=20
> @@ -87,12 +92,14 @@ void __noreturn barebox_pbl_start(unsigned long
> membase, unsigned long memsize,
>  	free_mem_ptr =3D arm_mem_early_malloc(endmem);
>  	free_mem_end_ptr =3D arm_mem_early_malloc_end(endmem);
>=20
> +#ifndef CONFIG_IMAGE_COMPRESSION_NONE
>  	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to
> 0x%08lx (uncompressed size: 0x%08x)\n",
>  			pg_start, pg_len, barebox_base, uncompressed_len);
>=20
>  	pbl_barebox_uncompress((void*)barebox_base, pg_start, pg_len);
>=20
>  	sync_caches_for_execution();
> +#endif
>=20
>  	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
>  		barebox =3D (void *)(barebox_base + 1);
>=20
>=20
> Your call if that makes sense to include in the upstream or not :-)
> Thanks again for your kind support,
> Cheers,
> Lior.
>=20
> > -----Original Message-----
> > From: Sascha Hauer <s.hauer@pengutronix.de>
> > Sent: Wednesday, August 16, 2023 5:28 PM
> > To: Lior Weintraub <liorw@pliops.com>
> > Cc: barebox@lists.infradead.org; Ahmad Fatoum
> > <a.fatoum@pengutronix.de>
> > Subject: Re: Barebox PBL with uncompressed barebox proper
> >
> > CAUTION: External Sender
> >
> > On Wed, Aug 16, 2023 at 11:23:26AM +0000, Lior Weintraub wrote:
> > > Thanks Sascha!
> > >
> > > Before applying the recommended change the trace showed:
> > > uncompress.c: memory at 0xc000000000, size 0x00300000
> > > uncompress.c: uncompressing barebox binary at 0x000000c000002b60
> > (size 0x00030def) to 0xc000100000 (uncompressed size: 0x0005a9a0)
> > > uncompress.c: jumping to uncompressed image at 0x000000c000100000
> > >
> > > After applying this configuration, the .img file was increased (as ex=
pected)
> > and the trace shows:
> > > uncompress.c: memory at 0xc000000000, size 0x00300000
> > > uncompress.c: uncompressing barebox binary at 0x000000c000002480
> > (size 0x0005a9a4) to 0xc000100000 (uncompressed size: 0x0005a9a0)
> > > uncompress.c: jumping to uncompressed image at 0x000000c000100000
> > >
> > > Indeed is seems link an uncompressed image because the sizes of the
> > > "compressed" match to the uncompress (well except 4 bytes which
> > > probably indicate the image size or the compression type (just a
> > > guess)).
> > >
> > > I assume that the decompress function detects the header and know tha=
t
> > > it is an uncompressed image and then just copy it to another location
> > > (in my case 0xc000100000).
> > >
> > > Can we avoid this step?
> > > Since the image was loaded into SRAM we wish to run locally without
> > > the extra relocation (which also takes simulation time).
> >
> > I don't think this is easily possible, at least not in an upstreamable
> > way. Normally barebox puts itself at the end of available RAM and puts
> > the malloc space directly beneath it.
> >
> > What you describe here seems to be a very special purpose barebox. What
> > you could do is to disable PBL support and only build a barebox proper.
> > Then add your own entry point and jump to start_barebox() from there.
> > You'll need to copy/adjust the useful things from
> > barebox_non_pbl_start() as well.
> >
> > I am not sure what you are trying to archieve here, because copying the
> > binary usually takes time in the order of milliseconds and that is
> > normally not a problem.
> >
> > Sascha
> >
> >
> > --
> > Pengutronix e.K.                           |                           =
  |
> > Steuerwalder Str. 21                       | http://secure-
> >
> web.cisco.com/1XpYzNc191JjtGaWh_8mPulQQYcyNjNxrljKOy4EXP2rJ6BI69y
> > LQZalS_CIiCjQ0DKAyT3wD0pqV_fDARkSkZJR-
> >
> QINkixMViIHKcS0xPNjMFyt4edli64apIWuOxcO_28UOr2R8MQOuS7ZeOhXjm
> >
> fpSK85jwv7AhOTHiCnokRyVhHNWfbb1o05jLvnoR6zBmZ8U5MiQ5cwXYnEq
> > w4fYe6wBKoBmerRBThjYiwC7_6_5LUEtO3BFAF-
> > brnGnHBd9opXwB2Lq4kXhbQ4HLNnL1ZiAuKMKm7EYhvbN3y3BML9T-
> > mz5ZvxUqx6VzqE8FAGv/http%3A%2F%2Fwww.pengutronix.de%2F  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0  =
  |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |



