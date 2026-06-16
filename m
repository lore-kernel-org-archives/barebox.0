Delivery-date: Tue, 16 Jun 2026 17:00:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZVHf-006XDb-21
	for lore@lore.pengutronix.de;
	Tue, 16 Jun 2026 17:00:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZVHe-00006X-2O
	for lore@pengutronix.de; Tue, 16 Jun 2026 17:00:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hJxVzkR+zOjHZb+/kJ9YMa1+5Ss+tukRjSB4Um1xTww=; b=YvGdnHcF8yrXtqV7wJEdPc+aGY
	oLKBa41KdrNhQH5Ks3zTg+AMGZvWcDr4ZkkBHayIEgRsEMdhwkDdzFvLHPjeMG7nOn3nUHhE+x6Xc
	q9gVMo7XZezqX9FoRte50GfU8LfQ5uEFIX0ee3W3ky3VlXAX9xhonbe2hejeR98gj9NyAM702EQEa
	zB8a2UQyj9OcwkOe5eHGEjz+JP6L3M2hTEaPKL8A7AZlHnl0iEIXPhBYZFKElcZ4ZBPOzRAhDKNLm
	9R/3u8W1o3T8rF/C2MDvwsfGoEvE8wJtFKzu4N+PR8cUvJCYFfXOYS6/+TuuJGq80Bk/2gl6RWQsL
	jsR0jkQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZVGT-0000000Fxsr-0iXk;
	Tue, 16 Jun 2026 14:59:45 +0000
Received: from mail-northeuropeazon11011029.outbound.protection.outlook.com ([52.101.65.29] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZVGP-0000000FxsQ-0QWP
	for barebox@lists.infradead.org;
	Tue, 16 Jun 2026 14:59:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N5GryApqhXfA5qztwhJ1pXPgMMfZvx2t27v0qVgfXe8kVktVg2KGjQrnMb+qK3qK9B1dhxlzbA/UK/raaL6oGqTDEazm8GUzg6E4Mv4su6QnirDbGNwlIie3hvU7I8IIG0mJCTZBd0BBNkcaJdWfQk3oYDFC8z7NQSFfjWpAcAmPCdoFjkl4cVToQLsLiC1yTSGT9fru0Fuhs0ee0XLYI0pkUbLec5+f9AhAxG1q/zxtRzuS3SBa+CRGtwPYk9ZisJNQl5OrCRXzyO9dFjSpE2CZcPUKPKA0k+GWYsBPAZ4AG7BE9trZhsHTem8TRb68iUldtEeIkBa7ifCdYLcwdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hJxVzkR+zOjHZb+/kJ9YMa1+5Ss+tukRjSB4Um1xTww=;
 b=WN6JFA0PzfTb99KEYeIr3lDZ4zcokg0f6mmhqZShF5M4W43bnkXcoyG/JwOBc1H2B0n3rpbB0p8onvP6pWjIkzBoPKCY7OLDHjM//H00lqPbMRJE/nW64wyd4DsNP9BIiXrx/Ebbyoe2/GpDMBS2fsQXBn71L9U+XKY44zSG91oZm++UI3/eZeAtlOJCxjTiiVu8wnAfFloEclqvi1q+ZhDRUUo0AxnL8pzqXsTPff+mU+vybJRiez2+zwhyVo0n0DDYITMOWTs9k1rVtQVri0ZZlj8k6gQz3A/0+4qSiOM3QnJ6dBqQvFKxxjgewjr3S0LgpA/kHA+JUY5gj2hz8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hJxVzkR+zOjHZb+/kJ9YMa1+5Ss+tukRjSB4Um1xTww=;
 b=DPdU/x6KmhUvPSK3IUQELvgk6XJQjNZtX1FkVUxuMhM2blf53qZ5UjnRcVgCNn0crUcKphvFcY2la6INbebwx//W4ZDz2TV3G3HLM2EuNB+DVKx1jnn4XjiaHqPOHYXNGUTflZnZi0v0D5CCJsfo4/uH3q8wW1EPEZOLuvSNUeI=
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com (2603:10a6:208:6a::27)
 by DB9PR06MB8138.eurprd06.prod.outlook.com (2603:10a6:10:29c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 14:59:34 +0000
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc]) by AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc%4]) with mapi id 15.21.0113.013; Tue, 16 Jun 2026
 14:59:34 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH v1] firmware: choose PBL fw-external verify algorithm via
 Kconfig
Thread-Index: AQHc+267spIjlNZnlkGezYJAQrdMGLY/YYyAgAFLOYuAACzAAIAAbuD/
Date: Tue, 16 Jun 2026 14:59:34 +0000
Message-ID: <AM0PR06MB4148A8E07CF7950F26DFC7E0BCE52@AM0PR06MB4148.eurprd06.prod.outlook.com>
References: <20260613195626.1650288-1-johannes.schneider@leica-geosystems.com>
 <b332b48b-dee1-4e12-8186-f76bc60bf4c3@pengutronix.de>
 <AM0PR06MB41485EC4B2403D9B22037A6FBCE52@AM0PR06MB4148.eurprd06.prod.outlook.com>
 <ad9006dd-08c6-4c9f-be0c-a97a673e2117@pengutronix.de>
In-Reply-To: <ad9006dd-08c6-4c9f-be0c-a97a673e2117@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB4148:EE_|DB9PR06MB8138:EE_
x-ms-office365-filtering-correlation-id: 9bbd1cdd-0a0e-4e63-5fbd-08decbb7e096
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|23010399003|10070799003|1800799024|11063799006|56012099006|4143699003|5023799004|22082099003|18002099003|4133799003|6133799003|38070700021|13003099007;
x-microsoft-antispam-message-info: HEjwrw8OvXINSuF95XdtE7CHbEOAoO2mbZrrqhzwD/yf7/F0TmI1ouyIznR+crpRTdOuaIy2TFnJo1Dad1sACLZSzx9su0Z470VqAdjQnnEXKPWTOEIem8VG0Qv/FwWLrriYAuaJ3QDfjzliCzdm6qVHw5dBawX+SPvHhfaa9ogVkHHedYkOMkoB6tAcW9y2d8FLp/SV8s585xMGJauR7z1VTSdJqKM6JmaE2CEvcTSCQnZzvNme4Cp5CYOYvxKoiswR3Sv03ZulrAwAFQFCGe8FIAcBt5zfyYH7g3hEz0K7uZyo4DiYwqRbs/Y1FQYzyZhIamcNi7hq7Lp/6EdQNDtDRUjjITXfGYhOZlj6uHt/wW3uTxE4MSS1lCPYbIhAsv17d1FEnBX887q7YqMM516Ldb2OlW44zm0XJ1a1UALAtTswzwE9X99GytYAmfRHLfGS3B84I87naxq3/wj7QrvS2ixHSB7BmQL6TaqKKVViVh2cjifO65uKoGHXVtTj70u+0AHB8Izg3MA3VotQO8yw8oEdL3GfFbGwkEna7c1VVCKWR/f2gcH+8uiJUoJVy+Arfopuw9oTARGJ9URE4e9PBvlfTA0W5hs5GqHM0j47DRmC96INnIDf1unDkZ1SBUOxpw8zjulI62nT0J/FSvuxHzCkFBDOOLsLoEEA4qGYviSitYPBA8dehVuRIZL7
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR06MB4148.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(23010399003)(10070799003)(1800799024)(11063799006)(56012099006)(4143699003)(5023799004)(22082099003)(18002099003)(4133799003)(6133799003)(38070700021)(13003099007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?qCgLFFvA11BIhoO6uzXd3It/ghohzi+0CvXg9r+5ABkQxlZKgYWO/9ARhI?=
 =?iso-8859-1?Q?cZKFW7clhh2pWhIPxwLqO9yr+tEPpQq7SvF3hf5q0IcsvIZBe7Opvadgsw?=
 =?iso-8859-1?Q?zcl+i5VVqqqX3QtA7dWaWqcNO+7ZPIbMP0zivT1I1ABFhmPDh4KQCmSapZ?=
 =?iso-8859-1?Q?OZX9wFBduFGjbmepKWZENiFR1zY/QqbySKZi/exrHr7MRMoz3fbt2gmnK8?=
 =?iso-8859-1?Q?tiJawLAtETwJpJ4A/DM1zokDYVBlz8d26/WvgYAnsmp3n9ce0l57upXKme?=
 =?iso-8859-1?Q?4d+Wthg9QbbbuShvQzXYiJlUBbNTXgZNYQoq6XntFHPj2XlbF80az/XEFq?=
 =?iso-8859-1?Q?WH6uUL4jILBAy0hD19+dO3gVFqm3eLCneo1JsIFqv0Fy55zUesulEfmW/Z?=
 =?iso-8859-1?Q?rteQlioXiHVEY3lCIrzYtB8jKPkmjzt9apg6a/WChPfcCButl2jGufxPhU?=
 =?iso-8859-1?Q?XqCv3ziWQDmPt0LzBy+6zsxM4RVjjG+wRVFqVyrxj/eSI0O+qTEdxPLlwu?=
 =?iso-8859-1?Q?ku8VyGHd3sVzZVyDw2/06T9NC0a+df8vX+nr0pajBnpgzlcJ3Ep88Ynfq5?=
 =?iso-8859-1?Q?F5IRQ0GUgM2JU7mu3XgtDj2pK9YZLv+ySoTQXrxis/aIMRGgBAbpS8lWM4?=
 =?iso-8859-1?Q?0HEow/73X1YWJGA4Kijzp7YfTw0qM1QyjDYD6y5KwjyWfT4ZND8gwFIu7S?=
 =?iso-8859-1?Q?a2MEYaOI5ZIevIbCtVJsQ9UiS1cHVNTPp2OqUeMcKfVjTH4IXy0E7VcA8/?=
 =?iso-8859-1?Q?Ubsb3f4h+qznSI6xpDVm3CCrAnT7Iir9h27/RDagUsl2bjiQJ6+mI/Afcq?=
 =?iso-8859-1?Q?hixAAJyn+/AUCPMcRVUbMdHrQ94unX25B7w7UfjTI5q87XmGGLs6i/q7Y7?=
 =?iso-8859-1?Q?4V45uBK5XKkbk9qsjjioRcrpA/ium2FXoigSsZkJOmxeaVc8BxEUYSAjLz?=
 =?iso-8859-1?Q?tnsmHJ0T0DjuF0dsIACK30jDeqPTPejXPjKgykbL6oyavnghGapm/5F11h?=
 =?iso-8859-1?Q?qsOgQeLyrAQVEZFobZo5aA9eeV0eP/OmVpf3aCtgfOC8jsdpAFzmMsvv0f?=
 =?iso-8859-1?Q?yg1k13/EBsOn7junB6mYbNYSZ0tFVd/foorijmPBl2wkqIpP9gng0qfOjs?=
 =?iso-8859-1?Q?vVag6RSBRTnX+vS4ex9EXivCnl90DcBQum6zIv0vsFtBhSvXUEo4YJzwoQ?=
 =?iso-8859-1?Q?Rp5ozivsgfF/NnHd3DuQg7RKumeVgXtYiDJoX4DbtQrCLAPjjjd1dUok5z?=
 =?iso-8859-1?Q?DoAalbYpapVKvi1QC3QdVU+ZisJELpCevlQ3vGZbeFEdsHTXXOOvgRPn7t?=
 =?iso-8859-1?Q?MgrbYvQ9rkEGuKIXaz/ed0qm/0tYK4N1I10Rocg9zhANCaXKBY60J2UFjj?=
 =?iso-8859-1?Q?zVzdZYASCwmhBq5vigNMdFkEZs3oDG/oCeoJSHAL3rh+jqbyQzMnwXteZu?=
 =?iso-8859-1?Q?moZsRFdnBmcENfR8BCb2/Re1S+H/FmrrTCPv+kH+Ksv33wb5Mtdn8NA9+4?=
 =?iso-8859-1?Q?tdT6alvEF7A678QKPof6hpk9dW0BAw4SlMPmAWn6C1K2i6Zmc6gzg5vOvs?=
 =?iso-8859-1?Q?9A438m1MbQOXZOsVq3FJ2Da1D47BuwgHkAs3kr0HjDMu7YfXY0cIa1/zK3?=
 =?iso-8859-1?Q?yi3lO/jaH2FheKUw6gxUxt7Zupc1n15gh/ji/YGufYPZFZxYrwKYtIP3Iw?=
 =?iso-8859-1?Q?czvtvKl7ZneYTof2fWfaC4ZVAXV29Cx56DQUtT7zKjpAp+Si1MPyyCEvIJ?=
 =?iso-8859-1?Q?vUqEUOfklQrjLoTVPlOTDQm+la3xkRceXOkzLv+Lsz5kCCD4+laZ/f2GAX?=
 =?iso-8859-1?Q?bS20QCk/FGq9w9csphCCEAMChuLvnUD8RRNSCNZgpvZMzTbWlv71ayboJu?=
 =?iso-8859-1?Q?1w?=
x-ms-exchange-antispam-messagedata-1: T1TlAkiNm7Yg9eP1hSKnJn1mG/e6RVtMCGjynRykR/8oIFSGx62FNvC3
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB4148.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bbd1cdd-0a0e-4e63-5fbd-08decbb7e096
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 14:59:34.0316
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y4xSDVVGCeqJzBswhWM/eGA2EIWiA8+p2E+ZbqUlAt5Te0hM0xrAzL4pwCnfwG+gjUhdDLDCiR608mUkgiY9PY2BTw6kIjy3Ows7Rh142KQJWMtV0qMp18R0gHqFD4U0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR06MB8138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_075941_293869_4402258D 
X-CRM114-Status: GOOD (  29.17  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] firmware: choose PBL fw-external verify algorithm via
 Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hoi,

>
>Hello Johannes,
>
>On 6/16/26 7:46 AM, SCHNEIDER Johannes wrote:
>>> On 6/13/26 9:56 PM, Johannes Schneider wrote:
>>>
>>>> it
>>>> only re-checks the BootROM->DRAM copy against a value baked into the
>>>> PBL itself, not against an external trust anchor. A 32-bit CRC over
>>>> the same window catches the realistic failure mode (a corrupted copy
>>>> into DRAM) at ~200x lower wall-clock cost.
>>>
>>> Give recent commit f2ae1a4a85d0 ("ARM: rockchip: atf: enable MMU in
>>> PBL") and its follow-up a look.
>>>
>>
>> thanks for the hint, i'm "toying" with the code now, and am wondering: i=
nstead
>> of enabling the MMU to speed up the software sha256, would you have any =
concerns
>> if i would enable and use the hardware sha256 that lives inside the imx8=
?
>>
>> from my first couple of measurements i get:
>> | Variant                  |   bl32-verify | Delta vs prev | Cumulative =
drop |
>> | Pre-MMU-on (generic C, uncached)    |    2190 ms |        -- |        =
-- |
>> | Post-MMU-on (generic C, cached)     |     451 ms |   -1739 ms |   -173=
9 ms |
>> | Crypto-ext, per 64bytes block       |     192 ms |    -259 ms |   -199=
8 ms |
>> | Crypto-ext, batched                 |   **5 ms** |    -187 ms |   -218=
5 ms |
>>
>> i could send either the "enable mmu" or the "enable hardware hashing" a =
better follow up to this patch - opinions/preferences?
>
>Por qu=E9 no los dos? :-)
>

fair question, i thought that either one or the other is relevant - measure=
ments
showed both contribute, but not in equal amounts: on imx8mP the mmu-on part=
 is
negligable, on imx8mM it is not. the batched crypto-ext is in both the bigg=
est
win.

both follow up changes are now sent to the ML:
[PATCH] ARM: i.MX8M: enable MMU in PBL around fw-external BL32 verify   Joh=
annes Schneider
[PATCH] crypto: sha256: PBL multi-block transform via ARMv8 Crypto Extensio=
ns Crypto Extensions   Johannes Schneider


so please disregard this concepturally broken first attempt O:-)


gru=DF
Johannes

>
>>> I'd suggest you do the same: Keep the hash as-is, but set up MMU as soo=
n
>>> as you have the memory size.
>>>
>>> You can also play around with mimicking compression of firmware blobs
>>> like we have on Rockchip. Depending on CPU vs I/O speed, this can also
>>> reduce your startup time.
>>
>> compressing the optee tee.bin (~720KiB) and having PBL uncompress it aga=
in would
>> (probably) work, i have some code that does this - but for some reason t=
he way
>> we build and sign the whole barebox binary now doesn't agree with the im=
x8m*
>> bootrom, and it drops me back into serial-dl mode =3D it refuses the ima=
ge
>> completly.
>
>That's strange. You can continue booting via serial download mode and
>run the bootrom command. Maybe there's some useful info there on why the
>boot failed.
>
>> Any hints for what i need to look out for when adding such feature to th=
e PBL?
>
>I haven't implemented it myself yet, but saw Sascha's patches for
>Rockchip. I'd suggest you to follow that.
>
>Cheers,
>Ahmad
>
>>
>>
>> gru=DF
>> Johannes
>>
>>
>>>
>>> Cheers,
>>> Ahmad
>>>
>>>>
>>>> Make the verify algorithm a Kconfig choice:
>>>>
>>>>   PBL_FIRMWARE_EXT_VERIFY_NONE    no verify
>>>>   PBL_FIRMWARE_EXT_VERIFY_CRC32   4-byte CRC, cheap corruption check
>>>>   PBL_FIRMWARE_EXT_VERIFY_SHA256  current behaviour, default
>>>>
>>>> firmware/Makefile selects an algorithm and passes it to gen-fw-s,
>>>> which emits nothing for NONE, a 4-byte .long for CRC32, or 32 bytes
>>>> for SHA-256 in the per-blob .rodata.<fwstr>.sha section. The macro
>>>> in include/firmware.h declares the verify symbols only when actually
>>>> used (offset !=3D 0, i.e. fw-external blobs), so NONE is a true no-op
>>>> and in-tree firmware never grew a section dependency.
>>>> firmware_ext_verify() dispatches via IS_ENABLED() at compile time.
>>>>
>>>> The verify-section symbol names (_fw_*_sha_*) are kept as-is rather
>>>> than renamed, since firmware_next_image_verify() also references
>>>> them for the FIRMWARE_VERIFY_NEXT_IMAGE path; under CRC32 the name
>>>> no longer describes the contents, but renaming would expand the
>>>> patch scope unnecessarily.
>>>>
>>>> Default stays at SHA-256 so existing defconfigs keep their current
>>>> semantics.
>>>>
>>>> Assisted-by: Claude:claude-opus-4-7
>>>> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems=
.com>
>>>> ---
>>>>  firmware/Kconfig   | 33 +++++++++++++++++++++++++++
>>>>  firmware/Makefile  | 15 ++++++++++--
>>>>  include/firmware.h | 41 +++++++++++++++++++++++----------
>>>>  include/pbl.h      |  2 ++
>>>>  pbl/decomp.c       | 35 ++++++++++++++++++++++++++++
>>>>  scripts/gen-fw-s   | 57 +++++++++++++++++++++++++++++++++------------=
-
>>>>  6 files changed, 153 insertions(+), 30 deletions(-)
>>>>
>>>> diff --git a/firmware/Kconfig b/firmware/Kconfig
>>>> index b9b4556dbd..f745819a67 100644
>>>> --- a/firmware/Kconfig
>>>> +++ b/firmware/Kconfig
>>>> @@ -151,4 +151,37 @@ config FIRMWARE_VERIFY_NEXT_IMAGE
>>>>         verified images. The function to check the next stage image ha=
sh is
>>>>         firmware_next_image_verify(), make sure your SoC code uses it.
>>>>
>>>> +choice
>>>> +     prompt "PBL fw-external blob verification"
>>>> +     default PBL_FIRMWARE_EXT_VERIFY_SHA256
>>>> +     help
>>>> +       Algorithm used by the PBL to verify an fw-external blob agains=
t a
>>>> +       value embedded at build time, before handoff to TF-A. Runs wit=
h
>>>> +       the MMU off and DRAM reads uncached, so cost scales sharply wi=
th
>>>> +       blob size and algorithm. This checks integrity vs the build-ti=
me
>>>> +       value; it is not authentication against an external trust anch=
or.
>>>> +
>>>> +config PBL_FIRMWARE_EXT_VERIFY_NONE
>>>> +     bool "none"
>>>> +     help
>>>> +       Skip the verify. Appropriate when the boot chain authenticates=
 the
>>>> +       blob upstream of the PBL (HAB, AHAB, signed FIT, ...) -- the
>>>> +       in-PBL check is then redundant.
>>>> +
>>>> +config PBL_FIRMWARE_EXT_VERIFY_CRC32
>>>> +     bool "CRC32"
>>>> +     select CRC32
>>>> +     help
>>>> +       4-byte CRC32 (zlib polynomial). Catches accidental corruption
>>>> +       of the BootROM->DRAM copy; not cryptographic.
>>>> +
>>>> +config PBL_FIRMWARE_EXT_VERIFY_SHA256
>>>> +     bool "SHA-256"
>>>> +     help
>>>> +       Cryptographic hash, software-computed with MMU off. Strongest
>>>> +       option but by far the slowest -- prefer NONE or CRC32 when the
>>>> +       blob is already authenticated upstream of the PBL.
>>>> +
>>>> +endchoice
>>>> +
>>>>  endmenu
>>>> diff --git a/firmware/Makefile b/firmware/Makefile
>>>> index 7e433a1824..1590bed9f1 100644
>>>> --- a/firmware/Makefile
>>>> +++ b/firmware/Makefile
>>>> @@ -61,8 +61,19 @@ pbl-fwext-y :=3D $(addsuffix .extgen.o, $(fw-extern=
al-y))
>>>>
>>>>  FWNAME    =3D $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.=
S,%,$@))
>>>>
>>>> -filechk_fwbin =3D $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DI=
R) .rodata '' $(fwobjdir)
>>>> -filechk_fwbin_ext =3D $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWAR=
E_DIR) .pblext a $(fwobjdir)
>>>> +# Verify algorithm passed to gen-fw-s for fw-external blobs. Drives t=
he
>>>> +# verify metadata section emitted into .extgen.S and matched by
>>>> +# firmware_ext_verify() in include/firmware.h.
>>>> +ifdef CONFIG_PBL_FIRMWARE_EXT_VERIFY_NONE
>>>> +fw_verify_algo :=3D none
>>>> +else ifdef CONFIG_PBL_FIRMWARE_EXT_VERIFY_CRC32
>>>> +fw_verify_algo :=3D crc32
>>>> +else
>>>> +fw_verify_algo :=3D sha256
>>>> +endif
>>>> +
>>>> +filechk_fwbin =3D $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWARE_DI=
R) .rodata '' $(fwobjdir) sha256
>>>> +filechk_fwbin_ext =3D $(srctree)/scripts/gen-fw-s $(FWNAME) $(FIRMWAR=
E_DIR) .pblext a $(fwobjdir) $(fw_verify_algo)
>>>>
>>>>  $(obj)/%.gen.S: FORCE
>>>>       $(call filechk,fwbin)
>>>> diff --git a/include/firmware.h b/include/firmware.h
>>>> index 6511d56b2e..72a47f24e3 100644
>>>> --- a/include/firmware.h
>>>> +++ b/include/firmware.h
>>>> @@ -80,13 +80,21 @@ static inline void release_firmware(const struct f=
irmware *fw)
>>>>
>>>>  void firmwaremgr_list_handlers(void);
>>>>
>>>> -static inline void firmware_ext_verify(const void *data_start, size_t=
 data_size,
>>>> -                                    const void *hash_start, size_t ha=
sh_size)
>>>> +static inline void firmware_ext_verify(const void *data, size_t data_=
size,
>>>> +                                    const void *verify, size_t verify=
_size)
>>>>  {
>>>> -     if (pbl_barebox_verify(data_start, data_size,
>>>> -                            hash_start, hash_size) !=3D 0) {
>>>> +     int ret;
>>>> +
>>>> +     if (IS_ENABLED(CONFIG_PBL_FIRMWARE_EXT_VERIFY_CRC32))
>>>> +             ret =3D pbl_barebox_verify_crc32(data, data_size,
>>>> +                                            verify, verify_size);
>>>> +     else
>>>> +             ret =3D pbl_barebox_verify(data, data_size,
>>>> +                                      verify, verify_size);
>>>> +
>>>> +     if (ret !=3D 0) {
>>>>               putc_ll('!');
>>>> -             panic("hash mismatch, refusing to decompress");
>>>> +             panic("firmware verify mismatch, refusing to decompress"=
);
>>>>       }
>>>>  }
>>>>
>>>> @@ -96,22 +104,31 @@ struct fwobj {
>>>>       void *data;
>>>>  };
>>>>
>>>> +#if defined(CONFIG_PBL_FIRMWARE_EXT_VERIFY_NONE)
>>>> +# define __fw_ext_verify(name, fwobj)        do { } while (0)
>>>> +#else
>>>> +# define __fw_ext_verify(name, fwobj)                                =
        \
>>>> +     do {                                                            =
\
>>>> +             extern char _fw_##name##_sha_start[];           \
>>>> +             extern char _fw_##name##_sha_end[];                     =
\
>>>> +             firmware_ext_verify(                                    =
\
>>>> +                     (fwobj)->data, (fwobj)->size,                   =
\
>>>> +                     _fw_##name##_sha_start,                 \
>>>> +                     _fw_##name##_sha_end -                  \
>>>> +                     _fw_##name##_sha_start);                        =
\
>>>> +     } while (0)
>>>> +#endif
>>>> +
>>>>  #define __get_builtin_firmware(name, offset, fwobj)                  =
\
>>>>       do {                                                            =
\
>>>>               extern char _fw_##name##_start[];                       =
\
>>>>               extern char _fw_##name##_end[];                         =
\
>>>> -             extern char _fw_##name##_sha_start[];                   =
\
>>>> -             extern char _fw_##name##_sha_end[];                     =
\
>>>>               (fwobj)->data =3D _fw_##name##_start;                   =
  \
>>>>               (fwobj)->size =3D _fw_##name##_end - _fw_##name##_start;=
  \
>>>>               if (!(offset))                                          =
\
>>>>                       break;                                          =
\
>>>>               (fwobj)->data +=3D (offset);                            =
  \
>>>> -             firmware_ext_verify(                                    =
\
>>>> -                     (fwobj)->data, (fwobj)->size,                   =
\
>>>> -                     _fw_##name##_sha_start,                         =
\
>>>> -                     _fw_##name##_sha_end - _fw_##name##_sha_start   =
\
>>>> -             );                                                      =
\
>>>> +             __fw_ext_verify(name, fwobj);                           =
\
>>>>       } while (0)
>>>>
>>>>
>>>> diff --git a/include/pbl.h b/include/pbl.h
>>>> index fe4367825c..57ca8b4eb3 100644
>>>> --- a/include/pbl.h
>>>> +++ b/include/pbl.h
>>>> @@ -29,6 +29,8 @@ fdt_device_get_match_data(const void *fdt, const cha=
r *nodepath,
>>>>
>>>>  int pbl_barebox_verify(const void *compressed_start, unsigned int len=
,
>>>>                      const void *hash, unsigned int hash_len);
>>>> +int pbl_barebox_verify_crc32(const void *data_start, unsigned int len=
,
>>>> +                          const void *crc, unsigned int crc_len);
>>>>  int pbl_load_fdt(const void *fdt, void *dest, int destsize);
>>>>
>>>>  #define PBL_MALLOC_SIZE SZ_128K
>>>> diff --git a/pbl/decomp.c b/pbl/decomp.c
>>>> index 1539a6b67e..ace121eac6 100644
>>>> --- a/pbl/decomp.c
>>>> +++ b/pbl/decomp.c
>>>> @@ -13,6 +13,10 @@
>>>>  #include <asm/sections.h>
>>>>  #include <pbl.h>
>>>>  #include <debug_ll.h>
>>>> +#ifdef CONFIG_PBL_FIRMWARE_EXT_VERIFY_CRC32
>>>> +#include <crc.h>
>>>> +#include <asm/unaligned.h>
>>>> +#endif
>>>>
>>>>  #define STATIC static
>>>>
>>>> @@ -90,6 +94,37 @@ int pbl_barebox_verify(const void *compressed_start=
, unsigned int len,
>>>>       return memcmp(hash, computed_hash, SHA256_DIGEST_SIZE);
>>>>  }
>>>>
>>>> +#ifdef CONFIG_PBL_FIRMWARE_EXT_VERIFY_CRC32
>>>> +int pbl_barebox_verify_crc32(const void *data_start, unsigned int len=
,
>>>> +                          const void *crc, unsigned int crc_len)
>>>> +{
>>>> +     uint32_t expected, computed;
>>>> +
>>>> +     if (crc_len !=3D sizeof(uint32_t))
>>>> +             return -1;
>>>> +
>>>> +     /* Stored little-endian by .long in the .rodata.*.sha section. *=
/
>>>> +     expected =3D get_unaligned_le32(crc);
>>>> +     computed =3D crc32(0, data_start, len);
>>>> +
>>>> +     if (IS_ENABLED(CONFIG_DEBUG_LL)) {
>>>> +             puts_ll("CRC ");
>>>> +             puthexc_ll((computed >> 24) & 0xff);
>>>> +             puthexc_ll((computed >> 16) & 0xff);
>>>> +             puthexc_ll((computed >> 8)  & 0xff);
>>>> +             puthexc_ll(computed & 0xff);
>>>> +             puts_ll(" vs ");
>>>> +             puthexc_ll((expected >> 24) & 0xff);
>>>> +             puthexc_ll((expected >> 16) & 0xff);
>>>> +             puthexc_ll((expected >> 8)  & 0xff);
>>>> +             puthexc_ll(expected & 0xff);
>>>> +             putc_ll('\n');
>>>> +     }
>>>> +
>>>> +     return computed =3D=3D expected ? 0 : -1;
>>>> +}
>>>> +#endif
>>>> +
>>>>  void pbl_barebox_uncompress(void *dest, void *compressed_start, unsig=
ned int len)
>>>>  {
>>>>       uint32_t pbl_hash_len;
>>>> diff --git a/scripts/gen-fw-s b/scripts/gen-fw-s
>>>> index 78c3193479..d7d7d15824 100755
>>>> --- a/scripts/gen-fw-s
>>>> +++ b/scripts/gen-fw-s
>>>> @@ -3,13 +3,20 @@
>>>>  #
>>>>  # Generate assembly source to embed firmware binary
>>>>  #
>>>> -# Usage: gen-fw-s <fwname> <fwdir> <secprefix> [secflags] [fwobjdir]
>>>> +# Usage: gen-fw-s <fwname> <fwdir> <secprefix> [secflags] [fwobjdir] =
[verify-algo]
>>>> +#
>>>> +# verify-algo selects the metadata emitted in the .rodata.<fwstr>.sha
>>>> +# section, matched by firmware_ext_verify() in include/firmware.h:
>>>> +#   sha256 (default) -- 32-byte SHA-256
>>>> +#   crc32            -- 4-byte CRC32 (zlib polynomial)
>>>> +#   none             -- no section, no symbols
>>>>
>>>>  fwname=3D$1
>>>>  fwdir=3D$2
>>>>  secprefix=3D$3
>>>>  secflags=3D$4
>>>>  fwobjdir=3D$5
>>>> +verify_algo=3D${6:-sha256}
>>>>
>>>>  fwstr=3D$(echo "$fwname" | tr '/.-' '___')
>>>>  fwpath=3D"$fwdir/$fwname"
>>>> @@ -19,8 +26,6 @@ if [ -f "$fwpath" ]; then
>>>>       fw_uncompressed=3D$(stat -c %s "$fwpath")
>>>>  fi
>>>>
>>>> -sha=3D$(sha256sum "$fwpath" 2>/dev/null | sed 's/ .*$//;s/../0x&, /g;=
s/, $//')
>>>> -
>>>>  echo "/* Generated by scripts/gen-fw-s */"
>>>>  echo "#include <asm-generic/pointer.h>"
>>>>  echo ".section .note.GNU-stack,\"\",%progbits"
>>>> @@ -59,19 +64,39 @@ echo ".global _fw_z_${fwstr}_end"
>>>>  echo "_fw_z_${fwstr}_end:"
>>>>  echo "#endif"
>>>>
>>>> -# include sha256, needed for external firmware
>>>> -echo "    .section .rodata.${fwstr}.sha"
>>>> -echo "    .p2align ASM_LGPTR"
>>>> -echo ".global _fw_${fwstr}_sha_start"
>>>> -echo "_fw_${fwstr}_sha_start:"
>>>> -echo "    .byte ${sha}"
>>>> -echo ".global _fw_${fwstr}_sha_end"
>>>> -echo "_fw_${fwstr}_sha_end:"
>>>> -if [ -f "$fwpath" ]; then
>>>> -     echo ".if _fw_${fwstr}_sha_start + 32 - _fw_${fwstr}_sha_end"
>>>> -     echo ".error \"sha256sum invalid\""
>>>> -     echo ".endif"
>>>> -fi
>>>> +# verify metadata for fw-external blobs, consumed by firmware_ext_ver=
ify()
>>>> +# in include/firmware.h. Driven by the PBL_FIRMWARE_EXT_VERIFY Kconfi=
g
>>>> +# choice (passed in from firmware/Makefile).
>>>> +case "$verify_algo" in
>>>> +none)
>>>> +     ;;
>>>> +crc32)
>>>> +     crc=3D$(python3 -c 'import sys,zlib; sys.stdout.write("0x%08x" %=
 zlib.crc32(open(sys.argv[1],"rb").read()))' \
>>>> +             "$fwpath" 2>/dev/null || echo "0x00000000")
>>>> +     echo "    .section .rodata.${fwstr}.sha"
>>>> +     echo "    .p2align 2"
>>>> +     echo ".global _fw_${fwstr}_sha_start"
>>>> +     echo "_fw_${fwstr}_sha_start:"
>>>> +     echo "    .long ${crc}"
>>>> +     echo ".global _fw_${fwstr}_sha_end"
>>>> +     echo "_fw_${fwstr}_sha_end:"
>>>> +     ;;
>>>> +sha256|*)
>>>> +     sha=3D$(sha256sum "$fwpath" 2>/dev/null | sed 's/ .*$//;s/../0x&=
, /g;s/, $//')
>>>> +     echo "    .section .rodata.${fwstr}.sha"
>>>> +     echo "    .p2align ASM_LGPTR"
>>>> +     echo ".global _fw_${fwstr}_sha_start"
>>>> +     echo "_fw_${fwstr}_sha_start:"
>>>> +     echo "    .byte ${sha}"
>>>> +     echo ".global _fw_${fwstr}_sha_end"
>>>> +     echo "_fw_${fwstr}_sha_end:"
>>>> +     if [ -f "$fwpath" ]; then
>>>> +             echo ".if _fw_${fwstr}_sha_start + 32 - _fw_${fwstr}_sha=
_end"
>>>> +             echo ".error \"sha256sum invalid\""
>>>> +             echo ".endif"
>>>> +     fi
>>>> +     ;;
>>>> +esac
>>>>
>>>>  # include a string containing the firmware name. When a non existing
>>>>  # firmware is referenced in the PBL then _fwname_${fwstr} is referenc=
ed
>>>>
>>>> base-commit: 6c70fb327d486376c1f2e37dfff2212cb9eebb1b
>>>
>>> --
>>> Pengutronix e.K.                  |                             |
>>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>>
>>
>>
>
>--
>Pengutronix e.K.                  |                             |
>Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


