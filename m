Delivery-date: Wed, 11 Jan 2023 11:25:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFYIw-008jF5-Kv
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 11:25:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFYIu-0006ha-6t
	for lore@pengutronix.de; Wed, 11 Jan 2023 11:25:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/93s6qphg/Hawof2ITIwOM01xe9iv7xsjUv3Hn7fUzQ=; b=yfEeKQnuEK+1iJKZ4qZyXZtPD+
	A3gtWEkxKXcsy0eYWdUMyeysl0abzxEekaC4byHb4MexKrhjVzoNJXKZDBnFokxhbYJfK+WI2w+zo
	qJpOfKQzR+4RlDAKy5cUuM+rK0lCghzX7wqjnSXvfQ29HXX9sJji5wpmcQ66J2YYM3zRYt6f+AxdY
	K0DuCTRgl2bRQhlzDKjRFkH7wthbbTlDduFJse9LOFncADKFBcPddv3StCcXV0kZ4Pw+31155GBo5
	85awDWTcHQh4Gv2EfvDIcfxkpGLnMfo9efqzcLwRRIyfO16YoN42vB2pQNFi0resUZq7R/gaBl4Sr
	diYCYuhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYHT-00AlRN-QM; Wed, 11 Jan 2023 10:24:28 +0000
Received: from mail-he1eur04on2092.outbound.protection.outlook.com ([40.107.7.92] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYGn-00Al4J-Bo
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 10:23:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ag/Fiza3hOv1mNRl41xU8QQe3DbGp2ObssHhSwms78e7JPRq9J5OTIKcXknznsDYrBeaJhOOmXf0LeV7frkT09dlDvLPwAdzw7BgqMVrEq+lz/3Dh5cyKfzQGf8/cJSG8EXjPRMNW9gVehpchHw9aRJpK7mtwdoKxDLVWTHTzmK/JsawDe0tpmjxLa5rq1LDQmpKfBh2EILCWgr6719upZ6WXQ7OdrEnEgNJWE6PCzjzKLNjzOrcMWWwmJmTZPJ8x5XAKXDJgFRMB6OWj+ZjQhQdsxBpRGg5cgnHxWIz5UWZgZYjbkZ+wXDvo/xbCE5KtS2qohnKb+KfcwPUxxXYxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/93s6qphg/Hawof2ITIwOM01xe9iv7xsjUv3Hn7fUzQ=;
 b=iXEet0ImF2BBsQw+pOLI2IXMj8FZXRlejygNtao0sV++4HlLdfsuCh9rS6L0zlJy183qNuBTGPeZyGr1Pw/ZX+v+fWGGrkeq6n993OVzQz7SM5NBQjmiJXqQZ01Y8Tjku/fYugpJXCMvYuCGxS/OBaZ/drY7ANFTnkicyGBgSB7qnzS+Alp2oZfcB90rUO5iqGImQcmEwHvMx5IukRggOignslL/wNmc20A48B6dufvfcKsJcrcFP/Vqp4kInkKwibT/ccDhXRACkPtSc6n1++wQPEx1BFyZKdurY7dx5hkYt0LSQK3NvsGBjvqPuu6KFGYhOgo0D+92G7oaSqNnIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/93s6qphg/Hawof2ITIwOM01xe9iv7xsjUv3Hn7fUzQ=;
 b=rEna8alZhFSOozRPPZWEFJxARwXHArlzeZJZweNKYJIIHiYa5JRJLxJDiupBQ85bBP5/VPRdob/EqOhtUXWlQoyMozzvrUj3iHLAmmk0yTA+KCB8JHrfGdi1wUD7OTfiiA+4HVi1jDNQpox5IsGF5AkAJWnWE14v3R5VsAZPV1A=
Received: from DB6PR06MB4008.eurprd06.prod.outlook.com (2603:10a6:6:54::31) by
 PR1PR06MB5738.eurprd06.prod.outlook.com (2603:10a6:102:6::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18; Wed, 11 Jan 2023 10:23:36 +0000
Received: from DB6PR06MB4008.eurprd06.prod.outlook.com
 ([fe80::b8f7:e96c:a92c:40de]) by DB6PR06MB4008.eurprd06.prod.outlook.com
 ([fe80::b8f7:e96c:a92c:40de%7]) with mapi id 15.20.5986.018; Wed, 11 Jan 2023
 10:23:35 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
	<barebox@lists.infradead.org>
Thread-Topic: [PATCH v2] ARM: rpi: parse memory from vc fdt
Thread-Index: AQHZJaSEy7cSPWJ9nEO7Ah8bRDgiWK6ZAgAm
Date: Wed, 11 Jan 2023 10:23:35 +0000
Message-ID:  <DB6PR06MB4008615BC36D7D652E8F4A93BCFC9@DB6PR06MB4008.eurprd06.prod.outlook.com>
References: <20230111095646.672125-1-johannes.schneider@leica-geosystems.com>
 <c90633ae-7fec-0b9b-2964-e0c11489be0b@pengutronix.de>
In-Reply-To: <c90633ae-7fec-0b9b-2964-e0c11489be0b@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB6PR06MB4008:EE_|PR1PR06MB5738:EE_
x-ms-office365-filtering-correlation-id: 136baa3f-db5c-44fe-aaad-08daf3bde57d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  /Q40pg7e7U1RvvfPuRm0ZGxXsRY8ZY6oLWmdVTUNb1tLdiigyv5/1YTaZkUUIZT09YTrdSxeNXP4qthQKiVnDttU4xrMcr8XpBErgSeoJJAfDe/iZPHQ58ZAcH6RsTPNge2cOoSj4SkTcrmIjVms8kktHDqF/kmPQ9cX9KfGyvoSgVOAa5CE0RTKNEbZrZmHeZgbGNlQOqeA/MbhHWV0p1BX9C2p6qCOTISHmDnhjUcDmFkpmYIcoVHRFvisZEkSLZ6K1N4ISI+B9/fAWPkJIZAcQLQ9HSLYopyYwmNSTXWJbpbtU6SE0wseVc4lOehH2lGpCnqaFElAw5L6aoq+N4itJwgQf9ZothBDDepjjVC4jNfYxWbDhaNaw8a2B/vmern10p5a0YhwupZ43q5Q/6ZLAezxEJvrAnib9Gjipp/J430OHXqoJAMW2ws/fD8CsO8SD93zOz7rwaubycVC3QsHQ8Q57nFRZHLZ33lTlT8OFrQ9bXuqC4EAXHgTBHBKwFqsHkRcP910Jdx37GADdA3z8+iKtnO7PKTs7j92RAMvIpiV3DLbFmo9MjZiZ4ospFSyCjbj4r3xkLKjjpoA1e04RCDjqsStulm/AjyEWIhmhrZ/LVlYr9qojEDw3wwwbO+w+R2P6Tj10oZ69UnzEK+ZI/OHBxWd715vwynM3gny3XuicQuAs+uD6Y0INSOUUZ+RC0WlA5y3dtKZ4hNeKoZRR1I39K70PYVLdDltC3I=
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR06MB4008.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(366004)(396003)(376002)(39860400002)(451199015)(9686003)(54906003)(6506007)(186003)(55016003)(110136005)(76116006)(86362001)(4326008)(38100700002)(66446008)(66946007)(91956017)(66476007)(64756008)(38070700005)(122000001)(66556008)(5660300002)(478600001)(8676002)(53546011)(2906002)(26005)(71200400001)(316002)(33656002)(52536014)(41300700001)(8936002)(7696005)(83380400001)(45080400002)(966005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?Windows-1252?Q?fbw6SDdBC5V5G60jD+iVjwI5gZdx2LYtbKvG0nlXL9D2bAFAXKyCtkDI?=
 =?Windows-1252?Q?inQaqh2XjxSgHBklSu5+c/PrXSkGVYOg/27i4IW2iEwPiV4rzKHPldTI?=
 =?Windows-1252?Q?Jn21+StMmpkofzKZ0sX6UMxM3vI5BXuARRcUjh78yzNGOluBuJxOriiE?=
 =?Windows-1252?Q?FKCygktErR4DjiGIIZ6CB7kIY3y4MD0+ZfsaM9oV3H3q+JDt6mN4x/g7?=
 =?Windows-1252?Q?hddjZFPhIT5B+xtWDW2u4hzfxr65ISnGkR0IL1QTz11FDuirSCXNnSmQ?=
 =?Windows-1252?Q?wCYUzpqeMvrB9Q5Zn/c11KTonhzM455Eg1clRhmwzDhGiJkSQNMCP+3W?=
 =?Windows-1252?Q?7I8VSD0BzL3t3nruvJqr+bRaF4qaLXoxp+8HL/vEehIeyWKHiIW1kgU2?=
 =?Windows-1252?Q?YQzawYUF6ljgExYpgc41Ehpcm+QYBf+I7xp9fq9ZoL3jBfLJH47hARAb?=
 =?Windows-1252?Q?aiFw7QasHKWfwkwkd+2wRF9BUHWIGC2ID10vZFJYUeGA/bKPEQfmBoLw?=
 =?Windows-1252?Q?+UisLRVudjk8fY6dQDxbyb5PwTxVYlOd/BxMFWrsh7CFb7nMZLx3gYSB?=
 =?Windows-1252?Q?vEWA72vZtKQdeKcgBJrpZmQ5DtcxngB1myDLira5UDaI3tQWrenXmwKV?=
 =?Windows-1252?Q?ReTmI1bxn5VmZ5/qg6YjvyaEFhr7f/4HPMOwc6s98L6B+R2erytvnlWp?=
 =?Windows-1252?Q?zdg2LQkCkR0SzOmvSiZ/fkF7Xz+VC3cRRwU/HQnk+yw6EWMcyAoJDg2l?=
 =?Windows-1252?Q?Fdp8XscnxBPtP76ODxAAB5XHmsPyw8HbnqMYnmsKjqwjyK6d6kZ2a5V6?=
 =?Windows-1252?Q?hRC9oAW6qTzE2SbnPP/26KNgm/yKsV4EH3kedG2x7hu0efX1d9J1N8LX?=
 =?Windows-1252?Q?ZrZQCcJ8mzZCHAkTGGxhb8ocBHvPAJe7otaCJd9wjBZ/KnCaspMQeB5J?=
 =?Windows-1252?Q?Z/g3q01zhTpjFN4ek/+pwGJtLcOKIDvaTH1zbvACvD/0zeT+sU5zyOxp?=
 =?Windows-1252?Q?wpHafs+hbnhWYC1kHxX5u3dIg5ypSvyi2utrfvOJVAvcSE2ZUP3Vo6Ue?=
 =?Windows-1252?Q?bppCvIM71r/WAY+QPguefVeOAQ96iVLZP3XoyEhnuOUZMBbt0udvAjgB?=
 =?Windows-1252?Q?OUu5g2xo+DhbwwyGO8Dm67a4j7XUOyFmyWahUFXoLIzrd04pnQGew1DF?=
 =?Windows-1252?Q?+2p1Gs/GhX2mAmxPYcwTU0iBJJCtmRPoGmIapvTmPbFiXvqNfMZ7XKtN?=
 =?Windows-1252?Q?ma3rIkxv+pF4EVmpFZH24sHvz+nlXWHEIDhzuuojWc/CiMiYhZg7M7m8?=
 =?Windows-1252?Q?1VgXwvBAj4UOUFaWKSsOGZThiTsQuxFE1/O9+nXSP7D6VG+lxRYeuClz?=
 =?Windows-1252?Q?trO8ADsWVP+0FEcFAz8YJGRoXpy79B9YAuJuwFBlN0KRlpuO3chNG8MX?=
 =?Windows-1252?Q?84OkuL7UZzS+pioUCsl7ugoVEApqu3nanLXoBuqmrP/oNpYKjLZT64qm?=
 =?Windows-1252?Q?lHx2JmpliOqK92Qs7Zj+14RIo+pQ4ung/aQjKl4dMO2xZ69HsLyYDxr8?=
 =?Windows-1252?Q?ACPbIk5s0saLvGH2fj0M9+QSsnGqePH/ANgO/9pKsjzQOuUGniVJ8eW4?=
 =?Windows-1252?Q?OqoJyQ7rYmeOLGAXjZUnVS5ezVmGSwYq7vGqhOp0a4AM5QE+Zbx6D8BY?=
 =?Windows-1252?Q?qxfLT1odouVZNUXSajiGCKj8lcFTifWJ/23o9lPtcMjJwQSJXjAP0URY?=
 =?Windows-1252?Q?ObVgD9kD1WBHJQZDF4c=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR06MB4008.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 136baa3f-db5c-44fe-aaad-08daf3bde57d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2023 10:23:35.0308
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qhEmRzdnw5Y2eBkJPLKXvNoPsB8Qjj0DdfQqW1ckSCHJ6JAYKQnoQfxmyRFX7evE7wwas6sHNTSCwvf2LYpzGleTCwPPIVM1QRhNOJtdSOAw0xT8g3uRssuIuy/yA0Xi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1PR06MB5738
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_022345_450291_0567FD2E 
X-CRM114-Status: GOOD (  26.32  )
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
Cc: Marcin Niestroj <m.niestroj@emb.dev>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: rpi: parse memory from vc fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

> Did you mean to resend a patch already applied to next..?

oh oops, that was a send-patch mishap... please ignore :-S


regards
Johannes

________________________________________
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sent: Wednesday, January 11, 2023 11:07
To: SCHNEIDER Johannes; barebox@lists.infradead.org
Cc: Marcin Niestroj; Sascha Hauer
Subject: Re: [PATCH v2] ARM: rpi: parse memory from vc fdt

This email is not from Hexagon=92s Office 365 instance. Please be careful w=
hile clicking links, opening attachments, or replying to this email.


On 11.01.23 10:56, Johannes Schneider wrote:
> From: Marcin Niestroj <m.niestroj@emb.dev>

Did you mean to resend a patch already applied to next..?

>
> Currently for RaspberryPi platform there is only one memory bank
> created, based on information fetched over mailbox. This is fine for
> booting Barebox, but unfortunately all the other memory banks are not
> propagated to Linux during boot, thus cannot be utilized. In fact, even
> when using /vc.dtb as device-tree for Linux, all memory nodes in FDT are
> deleted and new ones are created by Barebox by memory fixup mechanism,
> using exising RAM information. As a result RaspberryPi 4 boots Linux
> with 1GB RAM available, instead of 2GB (2 banks, each 1GB).
>
> At the end of VideoCore FDT parsing, do the same as of_probe_memory() in
> mem_initcall does, but for VideoCore provided devicetree/memory
> information. During Linux boot this information is used for memory fixup
> mechanism and in case of RaspberryPi 4 this results in 2 memory banks
> being propagated:
>
>   # ls /proc/device-tree/memory*
>   /proc/device-tree/memory@0:
>   device_type  name         reg
>
>   /proc/device-tree/memory@40000000:
>   device_type  name         reg
>
> Signed-off-by: Marcin Niestroj <m.niestroj@emb.dev>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Link: https://eur02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
Flore.barebox.org%2F20230110193251.2821638-1-m.niestroj%40grinn-global.com&=
data=3D05%7C01%7C%7Ce22566ee1edc40d19e3108daf3bba3e1%7C1b16ab3eb8f64fe39f3e=
2db7fe549f6a%7C0%7C0%7C638090284505422798%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiM=
C4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&s=
data=3DqzGOCullLi46yt9L8%2FpHfZ%2BpdTf0rkR7%2BenfsQlimSY%3D&reserved=3D0
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/=
raspberry-pi/rpi-common.c
> index 77935e5c88..c6c7fd52bd 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -258,7 +258,7 @@ static u32 rpi_boot_mode, rpi_boot_part;
>  static void rpi_vc_fdt_parse(void *fdt)
>  {
>       int ret;
> -     struct device_node *root, *chosen, *bootloader;
> +     struct device_node *root, *chosen, *bootloader, *memory;
>       char *str;
>
>       root =3D of_unflatten_dtb(fdt, INT_MAX);
> @@ -324,6 +324,16 @@ static void rpi_vc_fdt_parse(void *fdt)
>       if (IS_ENABLED(CONFIG_RESET_SOURCE))
>               reset_source_set(rpi_decode_pm_rsts(chosen, bootloader));
>
> +     /* Parse all available nodes with "memory" device_type */
> +     memory =3D root;
> +     while (1) {
> +             memory =3D of_find_node_by_type(memory, "memory");
> +             if (!memory)
> +                     break;
> +
> +             of_add_memory(memory, false);
> +     }
> +
>  out:
>       if (root)
>               of_delete_node(root);

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://eur02.safelinks.protec=
tion.outlook.com/?url=3Dhttp%3A%2F%2Fwww.pengutronix.de%2F&data=3D05%7C01%7=
C%7Ce22566ee1edc40d19e3108daf3bba3e1%7C1b16ab3eb8f64fe39f3e2db7fe549f6a%7C0=
%7C0%7C638090284505422798%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQI=
joiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3Do%2Fwdqem=
F%2BDEDZKYUjnPRZdmzieePXgQc8%2FUCpncyJfA%3D&reserved=3D0  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



