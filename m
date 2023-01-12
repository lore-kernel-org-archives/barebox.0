Delivery-date: Thu, 12 Jan 2023 14:59:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFy78-009pm6-WF
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 14:59:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFy76-00042C-LN
	for lore@pengutronix.de; Thu, 12 Jan 2023 14:59:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LiapwQyh5T9FmA/gQwGb5FOMxVx4jowuMirJGrPhi/o=; b=t+31SFZkk7lJSRprAZpe/g4zr8
	URHyI4FAMzKu5nhQSlOYOxeNkzhGbms1s7Hv93qk4KRr1lizSPJITMpd7/1og7A9hcFeOp6/h5oGB
	QwqAU+6xAFEI0/yxKuqOfewmCfwB8G5jpo6tcYZQtsy8aplFt7Nvf62SMZexGGawi/0IMRUaWgTAJ
	5y5hQwEu80HmxNSqRjCi9oVydODJwt2ZW+dCkz37Ag2njwc5eIh7Qq6jWYhTN9tUu85I34D0s37b8
	rIHOlzMMSIlUgyXRM4zea75nlUZnJZVGENggd3MEkMxpJs0UMWdDp05E3xypAnvXnvHcc7tcTtrGu
	zLgaYjcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFy5N-00FGXV-3H; Thu, 12 Jan 2023 13:57:41 +0000
Received: from mail-he1eur04on2095.outbound.protection.outlook.com ([40.107.7.95] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFy5G-00FGV9-Ld
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 13:57:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fqcEzR7PII5be8PrPWKyQZsAS2lYTgLnE0o30lJVThhVWSjwhFuzN4FUyJipabPVQo9iOCSmH03+VAHE1WyoLL1Ggs+3VfLqAVFfRtT536UBzW9IhwrwSnXbg0IFtF1xuFthuVVqLHjvuqZ88jOakJfrL9SEAfiKMtlzPXrJNMjQR+11IBjyCn7527sbE2luPNgl+G59FhsQTtY1RWA67w4ogNX/oTKbGjCUcHiNpKUgQVCR2N9nKMV2fJASxAL/KYVzcTRo5rOlVu6mNHRn9qEmWFlEfm1azprN20f02IBpcFTK6/RvmOjB1WL5rSLkTK9AatKmsP97cWeHW+/+cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LiapwQyh5T9FmA/gQwGb5FOMxVx4jowuMirJGrPhi/o=;
 b=a+8wyOT84Vy2qGVf68K/1Ihyy2RjtulYkA9fETD0M/ffF2A1g491fCAYDKhTm/flKd9WKJh81vvaUVOimYq1g7RGi+TUrnXiTas5FDH3njyrxJyD18uC57CwNyMAQzxPn3C7a1gqMfKJXVQzbAwdfKi0Ul9rWVpy9FlT85H0nrUrTfmgG0mwjfr+2ckIUhWc1QbY/YD2eerpgoqgLLxq4muVQNLamHmi79yxbmueFLzcsRh2P2ZmvumF3PMNWpKaNTT6bKMFohMJ5S+YpDYFnLybBsM9EppB+eCSXYrlS/McM18AdSE0nr0gl3/CJDOC5GPIFnQGu9PyuUx3tOOwRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LiapwQyh5T9FmA/gQwGb5FOMxVx4jowuMirJGrPhi/o=;
 b=YaO8hSxuLQBYA5USiwoke1BxkeC/2aqcQM8ZGktOnzr8haBLvCaa/1V1Esy9fnZk8c19272uYwn7pUIEhp8VWUpeDjgTCUMtdxL1zrrqOzItf+djpbMtNhUaJh3KyMruOivUn7Za5WJtm4N0uciuHFXQmy/qxf9rIsM+dR3laNU=
Received: from DB6PR06MB4008.eurprd06.prod.outlook.com (2603:10a6:6:54::31) by
 DB9PR06MB8074.eurprd06.prod.outlook.com (2603:10a6:10:268::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.13; Thu, 12 Jan 2023 13:57:28 +0000
Received: from DB6PR06MB4008.eurprd06.prod.outlook.com
 ([fe80::b8f7:e96c:a92c:40de]) by DB6PR06MB4008.eurprd06.prod.outlook.com
 ([fe80::b8f7:e96c:a92c:40de%7]) with mapi id 15.20.5986.018; Thu, 12 Jan 2023
 13:57:27 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
	<barebox@lists.infradead.org>
Thread-Topic: [PATCH v4] ARM: i.MX8M: smccc: allow SIP_BUILDINFO call on all
 imx8m variants
Thread-Index: AQHZJl4Sttaf6W7n9E2UUAyk1PO/C66aveeAgAAQcO4=
Date: Thu, 12 Jan 2023 13:57:27 +0000
Message-ID:  <DB6PR06MB4008C99EDCC1B7EF1D39E27CBCFD9@DB6PR06MB4008.eurprd06.prod.outlook.com>
References: <20230112081530.2684687-1-johannes.schneider@leica-geosystems.com>
 <e5b08ccf-0282-ae00-9675-e0ab3309eeab@pengutronix.de>
In-Reply-To: <e5b08ccf-0282-ae00-9675-e0ab3309eeab@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB6PR06MB4008:EE_|DB9PR06MB8074:EE_
x-ms-office365-filtering-correlation-id: e0009844-baec-441b-7439-08daf4a4f0d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  tGqn5ptEfl1vUllsrLEz+HuuA4L9AEXiHF1RqFoCDMIXz0N7DQaEr8IQnfVXKAZUvahviXQFxkgTvNtbADrBMxwlnCIXA+E/2e5d/jSfCO9XybrnHtpg4R4Mxir8Fv/0whd9jVCci1AHNLhBf1YMfYx2gjG+uBPXh1yqtHdHnmrRrMnSSwvWya8s2039XTTKaOUNx8S7pOiwEyozFgBdLujnFg0o+Wy/m3kCNiTR4Is5k5NopKi9A/zQTK+i0+SxU6PWVPhB9vma31Yn9c/SY32mvr5+6GoRDNgT33jbLXhfIt1AZ88yk5H8lQhXqCPKX/qRJ+VQYaHsJzYsDP+tzW12f49BJQPL97ztBgAXEfis8Aivhkky2wcCmwuTBCTIR86TqDftCE8ZMz+yBbvTBhi4+lftIe5B+HsaI2wPlgRkcI6BMN0CpepmzTJVhB5mHd4Py7XT55cGWahUVkxhMpme1EO/Tm5K9Y6LEL9MpiClNUT9T28SgMFZ8P3JiGAEMiWIOWEKiTrJtvnmK69SjQGh0/FAqkp2wwcipqu4FxgE7FR9qyIbtOqB7w/OqKynJ8NQPqEveIpE4yDxZ1JMMRV+v5jdM87Vz2B/a0gCuZ9vP98O/EMSS8AOu4T/jjUje0bJU0ZoPzFo/OyH4mY+hHFiHdYD+L0o3+q9LnpPsXs7UL1U4kd5pj7S657uwPW1c02w3SSunj6nD+uGPrCSsabMXAH4PDcRguXTnaquqgKeKxIalIP6jIatVq+GkFCc
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR06MB4008.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(376002)(366004)(346002)(136003)(396003)(451199015)(9686003)(478600001)(966005)(41300700001)(38070700005)(45080400002)(38100700002)(33656002)(71200400001)(86362001)(316002)(110136005)(66556008)(66946007)(26005)(186003)(7696005)(55016003)(66476007)(76116006)(5660300002)(53546011)(6506007)(2906002)(83380400001)(66446008)(64756008)(8676002)(91956017)(52536014)(8936002)(122000001)(32563001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?Windows-1252?Q?RmXRk6mO7s8dc6CaY9IrGMlxNw2cVorcp+5BbV8/EQHpQz+XjaR0v/GW?=
 =?Windows-1252?Q?3QIzb3EuIMN08V3xe2ynMK4fjOG2wE9w1Tl/xdNhobleeqZunxjpVdLD?=
 =?Windows-1252?Q?1TLQbEnbNg1GzyrDh4xOLvRFJ2CDIl4V3WpOqrxpUV71BstCetq+4N2G?=
 =?Windows-1252?Q?11nVXuGVg9a5/OkGERLwf+3FuYph7vFQwk2sR4R+uF77vIXV98/tT+Pu?=
 =?Windows-1252?Q?GCtD/uX3FEDdV7KW2C1NpQmhYYNpUISdzK6OAYPZuj1TjpwrydHWBCJZ?=
 =?Windows-1252?Q?src8MkG7lXuVs8K+H7txMCoV4Ih6Ug7HGV67GlW1HAS9BYrNal8LU3iq?=
 =?Windows-1252?Q?PL3dqEp8wdMbhldKyDdHCbYSvsnX/JN+WVf9gcCLq7W1bkgxPDmqxTb3?=
 =?Windows-1252?Q?6UGwdfsyJa4O1iz1/yLinEXY2TprChNNcHQvjK41NyF0v5EfjiaChyfO?=
 =?Windows-1252?Q?B+lb4c7vmMQ/pAYhuZCqZqYSLZ7edOPqKOJiffJK3zwMXswCfKQrJ6jU?=
 =?Windows-1252?Q?MG5Hys3pcAqTOXz18OkQL7G3v5RPyeN1Ls7pcB/gzDSHr8PfnWK1mqll?=
 =?Windows-1252?Q?vikunbg5lMwCCFmx7M76yoSung89An+EYRx/sxbrnSbMEukNd8ZCh6MG?=
 =?Windows-1252?Q?t73kMMOdpUwWfwlKxoQX9LUGFQbM1uiDl/a4Oy0yImO14I8Hq6k3OZHb?=
 =?Windows-1252?Q?C+UEEmOGevV51PNpz9c0HHljrAHnBu4mjK1qhK66kSeyz5gIlHqTNyjt?=
 =?Windows-1252?Q?7AccuSeNa0HblzUwpTGOMFXd03Phr34y5iB4fffg1ws90xXWO2LjFXjU?=
 =?Windows-1252?Q?eAt+PBw51w/8lQgXPWK6i86fov9XuUcOtz2PPkuFE1G+InyWwXGzVtw2?=
 =?Windows-1252?Q?cKL3nbmy2O1O8WEkClbpaAr+Tk14qH3hD3ZjePCRGUOi3d6VERlP71eV?=
 =?Windows-1252?Q?iD6SFGMhPk4/PgZ0U3Ipt0+RWceZWpcAN06XJ5Y8k85lKJBnjjIgPila?=
 =?Windows-1252?Q?HO4mFeo/HgM+JKJfjbppa3OWa775v/EirbvYltOf96VSxdP9nEMasVp9?=
 =?Windows-1252?Q?TE4gNHvaym+ebnqD8l/59tSW0/Nu7UWCsal5gC6rZ7ohctl9rV3+lKoG?=
 =?Windows-1252?Q?qUPzX40xgfzE7I+dybUKxUOykxbeqoZqQUjlImTG8KzTDLfQcQMefwXz?=
 =?Windows-1252?Q?F7tTlvWJpQhHXAGDwMKY9S8kzqCUlvKOZHOLddyzuSb0M2hAhqw3fihH?=
 =?Windows-1252?Q?+uYHyLetKQKzys5/S5klC//wpIfxeStzOOjD/FL3AacIVvVHjy3Tpk5F?=
 =?Windows-1252?Q?XPw45nFp9LQRHvVWHaeqLLNd2dW8Wm8OiKmS7nHdJIugEy/59lE/6XNK?=
 =?Windows-1252?Q?A1UwFjFr4NWzz+MG/8jj4uugTsl7RSE0YPe6eo+oMog3wIOMHSa65HWe?=
 =?Windows-1252?Q?lc/roDlXzUSMQBqf/G8i5bcrWSHAQb39WvO0yuNtRm8Vrcjfr+G6VZk4?=
 =?Windows-1252?Q?d6leplnJDSAY0h5ZAD61gxhbCYa8B3Lm4BBjIwY5e2ZtH2pRJeeIYNrx?=
 =?Windows-1252?Q?PTJ0MDW99l2E6MJ6YVRIDcBtOOOUutrgvTXp5bhIMu0sVnwEG+j4jelO?=
 =?Windows-1252?Q?h2l7zCy4B6qQ//oBbGLUi7y1jTijQcHXWGBszJhrbQ7IGgNTVm+TNSXS?=
 =?Windows-1252?Q?8LFSdraZgQAvmYS6muvDme4kabwS7J4TB/EUXC4pU3eh6KE22Pmhm7ox?=
 =?Windows-1252?Q?nxTqStOPv3qfPTyUVNA=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR06MB4008.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0009844-baec-441b-7439-08daf4a4f0d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2023 13:57:27.8630
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1v4HgAAjllciQlQ1nwgQ7PjEYyZ0oh2wEEA0wi/PYg3VePiH/+mqWTzHpOJCyHmiFxoNIMtPu8BuhU+Vm+yGy1QMy/E9H5DcQRKnxd+TWrcpL6JVnkAbBt6lqNv1tGo5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR06MB8074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_055735_039276_CC7C168B 
X-CRM114-Status: GOOD (  21.14  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4] ARM: i.MX8M: smccc: allow SIP_BUILDINFO call on all
 imx8m variants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hoi,

reasoning is that the common config switch limits the codeblock to imx8m bo=
ards only... or at least was, since on second thought: this is inside imx8m=
.c... so the previous version with current_el might be better? preferences?=
 :-)

regards

________________________________________
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sent: Thursday, January 12, 2023 13:56
To: SCHNEIDER Johannes; barebox@lists.infradead.org
Subject: Re: [PATCH v4] ARM: i.MX8M: smccc: allow SIP_BUILDINFO call on all=
 imx8m variants

This email is not from Hexagon=92s Office 365 instance. Please be careful w=
hile clicking links, opening attachments, or replying to this email.


Hello Johannes,

On 12.01.23 09:15, Johannes Schneider wrote:
> By adding a common config switch, the imx8m_init code becomes generic
> for all board variants (and slightly less confusing).
>
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.co=
m>
>
> ---
> v4: add missing common switch
>
> v3: redid patch with suggested common config switch

I am fine with either current_el() check or what you do here,
but given that you switched between them in revisions, I am
curious what the reasoning is.

Cheers,
Ahmad

>
> v2: was:
> [PATCH v2 1/1] ARM: i.MX8M: smccc: fix firmware_atf check
>
> v1: or'ed all IS_ENABLED(FIRMWARE_IMX8M[mnpq]_ATF
> ---
>  arch/arm/mach-imx/imx8m.c | 2 +-
>  firmware/Kconfig          | 7 +++++++
>  2 files changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
> index 9758525b54..4399dc7dd5 100644
> --- a/arch/arm/mach-imx/imx8m.c
> +++ b/arch/arm/mach-imx/imx8m.c
> @@ -61,7 +61,7 @@ static int imx8m_init(const char *cputypestr)
>       pr_info("%s unique ID: %llx\n", cputypestr, imx8m_uid());
>
>       if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
> -         IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
> +         IS_ENABLED(CONFIG_FIRMWARE_IMX8M_ATF)) {
>               arm_smccc_smc(IMX_SIP_BUILDINFO,
>                             IMX_SIP_BUILDINFO_GET_COMMITHASH,
>                             0, 0, 0, 0, 0, 0, &res);
> diff --git a/firmware/Kconfig b/firmware/Kconfig
> index b4a6fd9137..09ad85c539 100644
> --- a/firmware/Kconfig
> +++ b/firmware/Kconfig
> @@ -12,17 +12,24 @@ config FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  config FIRMWARE_IMX_DDR4_PMU_TRAIN
>               bool
>
> +config FIRMWARE_IMX8M_ATF
> +     bool
> +
>  config FIRMWARE_IMX8MM_ATF
>          bool
> +     select FIRMWARE_IMX8M_ATF

Your whitespacing are ok, but I see now that the file has
a mix of whitespace and tabs. I just sent out a patch for
this.

Cheers,
Ahmad

>
>  config FIRMWARE_IMX8MN_ATF
>          bool
> +     select FIRMWARE_IMX8M_ATF
>
>  config FIRMWARE_IMX8MP_ATF
>          bool
> +     select FIRMWARE_IMX8M_ATF
>
>  config FIRMWARE_IMX8MQ_ATF
>          bool
> +     select FIRMWARE_IMX8M_ATF
>
>  config FIRMWARE_CCBV2_OPTEE
>       bool

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://eur02.safelinks.protec=
tion.outlook.com/?url=3Dhttp%3A%2F%2Fwww.pengutronix.de%2F&data=3D05%7C01%7=
C%7C70cd0fd76baf40bfb3f208daf49c74d9%7C1b16ab3eb8f64fe39f3e2db7fe549f6a%7C0=
%7C0%7C638091250067510526%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQI=
joiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3D%2B6RznkD=
0xTQ5Z%2BWuYN4NC4pvjVbFIMRaffz90gnyh3s%3D&reserved=3D0  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



