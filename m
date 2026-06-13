Delivery-date: Sat, 13 Jun 2026 11:52:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wYL2l-005NMq-0D
	for lore@lore.pengutronix.de;
	Sat, 13 Jun 2026 11:52:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wYL2k-0002Nm-4N
	for lore@pengutronix.de; Sat, 13 Jun 2026 11:52:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z9aaZ41xt0U2VqN5klogIxqgVR3k9mhTiXFomizNeIc=; b=fDnCmRBBoXwtq7xOBIF0fM0hX7
	ha7WOLHgcFpiRa2mmXUqHbQqSjBFxUVl/D6BWc92xWu1KcBbqOz7Gxk4/35LQkJILvQ/xnDKJKMYI
	j7sJJQ1RW25eDbnKJTcumrwWJ/Ds/8yo/WRvoz5Pup+icJ5DsSmdFq2a0qfozYoa0GEkhbRpOXKM0
	EZatvp8DkNQH+sJaJmvilkiBSRi8Q4tJanrlDtY+m4kDTgjfvSnkjsPuUACmiJpHyXqPKD+bLHPED
	q62GV5+IFpIBtElq8OSWedQLrJ1Bje4jGaW2cIbHpeimZC+ohIVwH+ifqnWe3m3OoN3ltdgBQh7Qz
	0eeJJKDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYKoU-0000000C7ne-32T6;
	Sat, 13 Jun 2026 09:38:02 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYKoS-0000000C7nE-2ehY
	for barebox@lists.infradead.org;
	Sat, 13 Jun 2026 09:38:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HqsIpaWzBKjBsmt68itqOeZMY2j+E/I983Kq3UybPy5eAiiW075AveiTk9y7auuGPPECkxxjQwEeCCJ0ELm/IdZ/p9J8mR4EuYWFs0/c3fV5qTbulFGrtder0DS94h1CEFSvpFZ2nTHGFQoDtkt4xt7SLLAUPNcqBMlQjVgd7CXzNyenrBgnA0xNKvaY+OXJ+nO/TkArEoztXapXHWYi9hdxGAnUnaRtMfwKBBW3VCsPfgpDBESLymXS2h5zrT/VxPucVr332rLTTV7fr+clWL0KwtpDCrnQwCHBCLLkQPsPFgrjIzqY132sL3uYVhT4T9/JR9Z6IjnHDIuabfGC3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z9aaZ41xt0U2VqN5klogIxqgVR3k9mhTiXFomizNeIc=;
 b=i7YK2ZY9guTsTG2o07m09gWpPtpHNTzisH1I/SgBNXayVIVnuk9SuA3dqYdMJ5O1m9kCRMLe7LrKl4sTVJPGNOagGg03hLcPIs9WCxYUtIjWOoCfbEfgNODudMqphQKWKaLSuvAbD8juROXcyUyJ4ebnnhMPY+1vPi1ANNSJxK5zkTKV9txLzrCb6B4DptF9ekwh4BI4/lNEDZYntRgzv993gZ23R2qVQsbU3AqDabc+1VZtz9rEosRoTr74Som+LKQ4f54QjISM5RYCVMa1TEwICH+vfYxO7GW2EgCmRSTz5d6PsPb2E0QPuRr4khJQBvR3dTinZvknhDOIr9YjVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z9aaZ41xt0U2VqN5klogIxqgVR3k9mhTiXFomizNeIc=;
 b=U6XipkiGGkIYQo22wrIrzCGG0nJzKCCt0gsHH5uuJ1U/T1VYAiu5C5B461Ecl4FMzIQPj30L6yldvtbcY+x1mV6P/z1QTD0VeqR9alobcu1culXy7CaDWBLPjBjpEaA5pSeFis7/KpX2BelQYesOXqPV2sxz7g9SC0d4X0+jYMU=
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com (2603:10a6:208:6a::27)
 by GVXPR06MB8608.eurprd06.prod.outlook.com (2603:10a6:150:110::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.16; Sat, 13 Jun
 2026 09:37:54 +0000
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc]) by AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc%4]) with mapi id 15.21.0113.013; Sat, 13 Jun 2026
 09:37:54 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH] lib: decompress_unlz4: drop redundant -4 in wrapper call
 to unlz4
Thread-Index: AQHc+vM8zj2qauOgvEOQcLeE6y7wgrY8OFnH
Date: Sat, 13 Jun 2026 09:37:54 +0000
Message-ID: <AM0PR06MB414868E79F9E8C8128214B70BC192@AM0PR06MB4148.eurprd06.prod.outlook.com>
References: <20260613051225.3778935-1-johannes.schneider@leica-geosystems.com>
In-Reply-To: <20260613051225.3778935-1-johannes.schneider@leica-geosystems.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB4148:EE_|GVXPR06MB8608:EE_
x-ms-office365-filtering-correlation-id: 748a72db-fe8d-430d-8a6f-08dec92f71af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|23010399003|366016|10070799003|1800799024|11063799006|5023799004|56012099006|22082099003|18002099003|3023799007|6133799003|38070700021;
x-microsoft-antispam-message-info: 3KYRIEI25QPcLO7C3bNq6s5kCDZR/S2nAquzzRiYJ4B+kwe+9nsTwnTnHhG+rQOgVMTcU9ANPypJCb75sYvmEzwL+NTPOJ4+H/uiZf5umSn0dEbsalk/xXX1YZejHHg3jWSnP7KpDacm5YeNFXb7EXYmgC5Qpw+OP/kzyejmDQXhGYARRrgU1MdERK5wB3mm55dW2/3HyIb6YYy2qTcbPDV2C/+j5f2GvfdRY9XR9nzoQjc14rTdOpP4BvJyhp+EBkBtRGodvYy2ZIe0dBg2O4zcnPww2eYap0HhzToynpYpE+YMMLLb4SLX3H86Q83B+EdL8i5OrB/N4TaJlv3bJPLNljI+xwDplgcPunXFCwFZZB6twdPQOgTn1+ztYZyewdnoKXCdbiCfosBG9yq1Hg4EIl0Z9M2EtayWAI7E/hlFq0tKaKT1HqBPfGWMz/vPDyAaEEvgUZ5olNEeVohl1T2sOUhPqq4ZIpoRpTKChzXnypPLBRZHf0kpzLed7d9rnUDYrUequy/hNBjzoK/O/URaU7DCu37b35/HWH5QOvYi7hbK+dvuib/x0NynrtjKbSu8kmxNkfvzhAIYv78F6/TE/uWp/7f4bC+YA5xe5QRrMDs7cdzUYml+mXJmY37BiIpZsk326e/dx8jVEQ/fIctyys1KtvwDxRNHr+JOk5yutP6xXjd2vgeP/Js3IYmeal4bjSYR6qCye6yL3nWtc4UqbDtbN7P5Ys3Hz8TlS5firHXdw/alPuwtnHECO9bS
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR06MB4148.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(23010399003)(366016)(10070799003)(1800799024)(11063799006)(5023799004)(56012099006)(22082099003)(18002099003)(3023799007)(6133799003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?gqKZ2qRfw4608stpJhrzvcKE3v9CO0SXFJcs6sbiBYAr/KoUNRprguWc?=
 =?Windows-1252?Q?ciwEMMy+Q42ZXXSPi/7JCObLoOj03rto4RTnZ8NGo2OdzCn464geV23S?=
 =?Windows-1252?Q?aCSzi+3BMxN3/DR1FcB4w2H5iuYVh7yQ+o8eUQrmKHdAyIGaowjLlqFb?=
 =?Windows-1252?Q?dlijioB3isIx4LrjjvR81RSDkEHJUXKkXZ0hzDI5qgYabhT88tEQYJbU?=
 =?Windows-1252?Q?2+8rD8NGZKywyjl3Dn2gMXOl643X7s1vOsDi9ilmadA+XjB3FyrgPi8/?=
 =?Windows-1252?Q?43ye5tRRB0ZzTWex+jEgjjfjoBr4cFF5s1jgMGPp1YUtzx+9dkmnHdFn?=
 =?Windows-1252?Q?rvTNFlhpA5wNaMJyvr/nEc0+jiVXPETXxGQmXNvJAVDHKtU8LXmRTHd6?=
 =?Windows-1252?Q?k1Ffjm4Lr8QpP1dK/ND3cIzpsCCxV5IT2+JuaWtINtmv2zytCprdqNCZ?=
 =?Windows-1252?Q?1fcTIbXwyl33uEoXtxdDKG1HUs+X9+xvYAcCmnwt3JZh8JhEc8IC53ds?=
 =?Windows-1252?Q?vl0CDQs3pWp5sp+WzW4eLFfYpFq0FCcCPeCUtGeudbVq6AB/0vBYl8Oy?=
 =?Windows-1252?Q?jIUZuP4syoPAT+JI1OTba6ua+gNLTaArDQcrIm3hlE67jTp65fVIecJg?=
 =?Windows-1252?Q?XNsQddBK5ZFrQewsmH19kWxrqWFE/ly6WnXT0xBpHuArX3pzSABCZCy5?=
 =?Windows-1252?Q?0HwKPyDvAZ3wsm75zaZy7jwRvJODAj0ZuLgjjpfWUlHo9E7IAnYSXApf?=
 =?Windows-1252?Q?SF/i5zWy7vOSvKzbHExHa+WsCjAgQ7AFmI37JrZF+MW7V1N9mCxnd5u7?=
 =?Windows-1252?Q?lqzbH6RD9qcff856+B5bJfG6DfGsO4sR3zEIak45HnBSo368tQIG0bkK?=
 =?Windows-1252?Q?c6bTPY4ywbWecT5XUVzQfq0PgVxzCyDLRvC+Aq0PXoAgwEEqBJDymU3p?=
 =?Windows-1252?Q?PtXPwzJJ8+lnMk3pFDD0TnLUKQOv2ZxtWM/xpIt2h/LaBFfcY6UWSJvY?=
 =?Windows-1252?Q?AvFI4LSfgz/FzSSGzXpEOawC0fyJBObJW4BGzYfd1Yj6RdF3Ncgs0gc8?=
 =?Windows-1252?Q?+V93on4VFANkKOago6eLIUI6O12OyJ/TZeE+zKSYO714I9Fd5fkrnVqF?=
 =?Windows-1252?Q?OrA/YMv5wM2qxwPooLBxpAfGLWJPefq6PgIW4IHnMnpx2BVkd0Q9Nf5h?=
 =?Windows-1252?Q?6xYEEubveXCpt+elA1W/wQ9s9vBbVi6QKhER+E1hJBasPaRlpgfQB2cN?=
 =?Windows-1252?Q?aGu6qw5wD2MzPKn7HIqYElyU8b4BtvKgkOKrzWueVvlESf6gpLzZsOKI?=
 =?Windows-1252?Q?hvfw3LLjmeu2zUm1IlOMZO3yIukqu7zc+H379NW4uBNElIUK6b0vcngo?=
 =?Windows-1252?Q?AhWfFHDbs+bXNEsfh0NdClbyAzq70NRQv0imJwAdVap6nUGm1+ys8Gx0?=
 =?Windows-1252?Q?p5SQob+RM3pRTp/Yu0zGbeNXduzl8CfsMuUvEvI7waI8BVCgOxCTSjrD?=
 =?Windows-1252?Q?HSc+8iaQ2ubKMhNuiYBqV2MXzkherdUQUO5e93kwl/eCdhNIDgpEvpLi?=
 =?Windows-1252?Q?4uoTbV7L5fwYdQuWcnf28NouqDN9jWV0vzdLJK7C/ocyJqaffCfmYljF?=
 =?Windows-1252?Q?UkirU75QP+6SI6I9fFKtutDgr2j4nia/725NuCB+bi1MRFrHG91hw+vt?=
 =?Windows-1252?Q?/IkqQgLCTGunIDpukYMhjCqp5SJevidMPl75/PDffL+yWBMjLyN/lsbw?=
 =?Windows-1252?Q?H3rUot6IzYh55Xe1+qHqVpBryWpNN0PIOdf9LzcTyhbz76B8aXtR3lLh?=
 =?Windows-1252?Q?JIcEtyEh2kT68abKm0JAtKWinvKipx+JrMKScbHaMVlwvuonWeo1FuKa?=
 =?Windows-1252?Q?PgenMEiHhofEqENEYWijivmqassBbiTwjfr/3bpH7X5lYEVZ+5u7i1j2?=
 =?Windows-1252?Q?fZlqgb7Y?=
x-ms-exchange-antispam-messagedata-1: +0P1QFjO9Er6eYZSrs6DYqzgbv24DOD7bYWYeb48W4YPaqgkok5VORqj
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB4148.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 748a72db-fe8d-430d-8a6f-08dec92f71af
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2026 09:37:54.0737
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i4iNFWfiqxx4PGhBm+Ad7SE1dcFouqVVWOo0XaPoGt2WOdIYfJC8Hu0AflNS4EmemOWynqZkFFUlSNUl3KJPYtRvPxMSZwHIS2szPOWnbVAHhQvOvp9U2wfbn+irLKm+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR06MB8608
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260613_023800_836587_D32E3E7B 
X-CRM114-Status: GOOD (  14.16  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] lib: decompress_unlz4: drop redundant -4 in wrapper call
 to unlz4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hoi,


please disregard this patch :-S

i've since found out that the root cause lies in the way we build lz4 compr=
essed fitimage parts - there a plain lz4 call, with no 4-byte size trailer =
is used. And this missing trailer is what triggered the "Error: Fit: data c=
orrupted" - which is non fatal anyway, as the system still booted.

Now i'm wondering why barebox is using this (legacy?) format?


gru=DF
Johannes

________________________________________
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Sent: Saturday, June 13, 2026 07:12
To: barebox@lists.infradead.org
Cc: SCHNEIDER Johannes
Subject: [PATCH] lib: decompress_unlz4: drop redundant -4 in wrapper call t=
o unlz4

decompress_unlz4() passes in_len - 4 to unlz4(), as if the caller had
already stripped the LZ4 legacy frame magic from the buffer. But unlz4()
reads the magic itself from buf[0..3] and, in the buffer-input path,
explicitly accounts for it via:

        if (!fill) {
                inp +=3D 4;
                size -=3D 4;
        }

So the magic is subtracted twice from the running size counter. After
the last chunk is consumed, the counter underflows to -4 instead of 0,
which trips the "data corrupted" check at the end of the chunk loop:

        if (!fill) {
                size -=3D chunksize;
                if (size =3D=3D 0)
                        break;
                else if (size < 0) {
                        error("data corrupted");
                        goto exit_2;
                }
                inp +=3D chunksize;
        }

The bug is benign in practice =97 by the time the size check fires, all
chunks have already been successfully decompressed and flushed, and ret
holds the 0 returned by the last lz4_decompress_unknownoutputsize()
call. unlz4() returns 0 and the caller treats the operation as
successful, but a spurious "data corrupted" line is printed on every
LZ4 decompression. With pr_fmt set by image-fit.c, FIT-image kernel
boots show:

        ERROR: FIT: data corrupted

right between the configuration line and the cmdline-append line.

Pass in_len through unchanged. unlz4() handles the magic itself in both
the input and fill paths.

Fill-mode callers (e.g. uncompress_fd_to_fd) are unaffected: they pass
in_len=3D0, and unlz4() overwrites the initial size on the first fill()
call.

Assisted-by: Claude:claude-opus-4-7
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 lib/decompress_unlz4.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/decompress_unlz4.c b/lib/decompress_unlz4.c
index 2bb30e71bb..17bb4e5de7 100644
--- a/lib/decompress_unlz4.c
+++ b/lib/decompress_unlz4.c
@@ -209,6 +209,6 @@ STATIC int decompress_unlz4(unsigned char *buf, long in=
_len,
                              void(*error)(char *x)
        )
 {
-       return unlz4(buf, in_len - 4, fill, flush, output, posp, error);
+       return unlz4(buf, in_len, fill, flush, output, posp, error);
 }
 #define decompress decompress_unlz4

base-commit: 6c70fb327d486376c1f2e37dfff2212cb9eebb1b
--
2.43.0



