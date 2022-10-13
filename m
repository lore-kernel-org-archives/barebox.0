Delivery-date: Thu, 13 Oct 2022 09:36:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oislP-0075PG-Tb
	for lore@lore.pengutronix.de; Thu, 13 Oct 2022 09:36:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oislN-0007cW-G9
	for lore@pengutronix.de; Thu, 13 Oct 2022 09:36:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M4ySe6eTPMJiCxuR9XGVn3PlHyWyEM4wXrbyJwLl+o4=; b=QHqvP66AKZkCAMSVS0WZaejQLM
	grcxoZn/uvOYv1u5o8mWo2uVjWNFf3OyuPxUKuvusBkYcBUdnblqCZ94reBNRYaJlF4fjxVrKSHos
	H5aH27PpDMQIEGMuGp86s02S/EidwYRAq7+zcpv0VYQP++dZUcV7jmhhjHN7DCW83H8n7eTSz695T
	6edzdzqgI6iPl1w0rzNyNQZBwyuzTw2fxQ4Ubbi6ELG4pPD1wlNhNh2DZVVHv6grnJo0X+NzMG3aD
	sd6FKxRTiUlbCvTh7/jiz+mV4iI0F76gQFyHLAP5j1yEFvj7nflhSwXN4lK0xiSwNAf9mCDNdedH5
	o0DHegXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oisju-00AzK3-EU; Thu, 13 Oct 2022 07:34:46 +0000
Received: from mail-eopbgr90085.outbound.protection.outlook.com ([40.107.9.85] helo=FRA01-MR2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oisjp-00AzIx-B7
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 07:34:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q3rBTG/6smh4ENGW0Zzgd16cSJiPrLzoArNdr9batagcbWKE0oC/nyJUNDhWdfNEUFbwZWKX2DsWOI/XQX5CQR2UOHDDkGhQk02tZKG68zwFZRxxaekr+YG7hmdfQ7TQl1dSZliMvhFwXu2CJ+q9gbAdsMYtqZQ6rl9PDSO5tpRX2wiDQOlxpOXYUCxyHCFvUSUflcYE11ZDX51AZzR7PsnPzgb1KC5kdj+pLLkrKrNXhl2dcaFtx88F8+Cygh+lBPXrCD7Yk6wnH0DxO/Gbr+u4U3wWFuBWTAgT9+E0lvc4kT7MiunQGZbQWLi5I6Bo/Q1oQ/gmf9XsmXMq4EWCmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M4ySe6eTPMJiCxuR9XGVn3PlHyWyEM4wXrbyJwLl+o4=;
 b=n+WHwLEjYHIqcQPq6GA7HajEkAXEWDS0XYEUp0CpoJRzFOiHMmnNhvxQcLONsRq+gE7/6s/AD5WiuAS3ozTqUOBvTnaAlFwHElUpQ5f7FN9I8o5BIunU7zd44PCIck41FKD3XLFS0vTyVs3MCbEgCv3BuJ5xWuhyL6XfEB3VuBN/qjjJAJB6TP+hlwcFY1qHHzpJDzrjXfj0V0T/ze6sZQfPyL6XIRftSbkVDufXIIc5zTkjXsO/Kwjt4klUjOv7++BY685+xCD80sWvS+SulPZYnDyYbM9pMY7rzWmWnXqYn8/vE9+wFePMAfVG3D5ZsrptIPjVb/AfzIWG/6SEJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ses-imagotag.com; dmarc=pass action=none
 header.from=ses-imagotag.com; dkim=pass header.d=ses-imagotag.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ses-imagotag.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M4ySe6eTPMJiCxuR9XGVn3PlHyWyEM4wXrbyJwLl+o4=;
 b=wvZGtbW4EP9qiIY8Pacn6IokkSPrfXz3Xn5NE2n5mIDJ0rTz9CLuHU5EBDkur3mgnivpNzvWsx5jUbJRjJjJHimn88lzyKudN5IG8poFiNpW1zTPVrmOhcSIqpA9hEGDH4LxinD5ngVuUnN9kSC/mTxvuzpJ2sWI3t/Hc81mjIw=
Received: from PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:110::13)
 by PR0P264MB2918.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1d1::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Thu, 13 Oct
 2022 07:34:37 +0000
Received: from PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM
 ([fe80::d93f:dce1:6eef:fbf9]) by PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM
 ([fe80::d93f:dce1:6eef:fbf9%7]) with mapi id 15.20.5723.026; Thu, 13 Oct 2022
 07:34:36 +0000
From: BAUER Bernd <bernd.bauer@ses-imagotag.com>
To: Sascha Hauer <sha@pengutronix.de>
CC: Barebox Mailingliste <barebox@lists.infradead.org>
Thread-Topic: HAB/SecureBoot on IMX8MN
Thread-Index: Adjew3QqlZdjr+/eQJKZCbpzh8lxTwAEm+0AAAAOdRA=
Date: Thu, 13 Oct 2022 07:34:36 +0000
Message-ID:  <PR0P264MB3289835436E9D3C600F7FD3CD2259@PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM>
References:  <PR0P264MB328928CED65F8A4275814502D2259@PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM>
 <20221013073204.GE6702@pengutronix.de>
In-Reply-To: <20221013073204.GE6702@pengutronix.de>
Accept-Language: en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ses-imagotag.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR0P264MB3289:EE_|PR0P264MB2918:EE_
x-ms-office365-filtering-correlation-id: 4ae34dce-b16e-46ed-3cbe-08daaced6121
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  804KKAuh9EYhcwozwOiVTObxB78WVmCs5tmR4/KDROsHF/MyzRbUspeNLfjrouQLmXODK/MUwQPDya5VxYKXPvVk0JW/bUkdOOV5m1CbXj++JIqwzFI4kJ7cWWYlRRZjSW42tpfFEpHNkbT417bA5unuff4n1EPPEKGwsa4jidLIsnui/+PXZBQkuJQmcE8plhgd71DE+37E+/B0PWj3ZqYgJai+YqBtu49ZYiDSD9pieL+YbNzxJn/cfp+zr1yK0MbKK0ebqYQi1Jtwe9Rzen54stAc2d6jTGo/0VgSOuFQyQ4KzpdVuukbcmcpnybU1B+7lThUBOdomEk05pFQJCltRwCioxEnlGrdVocG7TzL18VB5Hp8c2/fPLjcrymvVu7M1CDTx0/ln3MWHO/xJrDXrRR0gbiXt2/FX6LLjpslz8zEMYuEw7bu2I8uK4/kxiRiiJuzMXj4gRvmZnXhCOdFEeuLAM36fbjGtyaMUYiLyYg9Pd2c0oPhhmwY1EmdRZ5SF0hCkBbnEnMeOna6BnJdAaFfL+61BRujAakQpUxePlLdPDEmG6VhE/xjOIDg4qye0ZsIKLA+bkFSO/5gPoScI8SJlYj+Oi2kihk6sss7zEn9GL57dpP0cfIBopgwkHtRwP5ZIt4SIt4na4eN9xdft46YXEYpJSfP3YUyP7bo72yGJJwvXrIr3YcvX5X7mlClgGBiaqao92y3uYw/9UzMCSGH8RAeQtwKTfxq9cP1eeQweRUjMVBeaSqA1Y+bAYWSRPnxdUHTmdlG9Mvmqg2A1jt8BMkL0CuxWCEH/ESmkKwuOKFlNrpXvhdk6zedcj5Lm2jgsWeeVBuYbyXeptttgp6eyLoIhv8BgjpzWt2q1UEQila40nOf8goA+sGl
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(376002)(366004)(346002)(396003)(136003)(451199015)(66574015)(53546011)(26005)(6506007)(83380400001)(86362001)(38100700002)(6916009)(41300700001)(7696005)(64756008)(4326008)(8676002)(66446008)(66476007)(76116006)(66946007)(66556008)(2906002)(186003)(52536014)(5660300002)(33656002)(9686003)(8936002)(19627235002)(55016003)(316002)(71200400001)(478600001)(45080400002)(122000001)(966005)(38070700005)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?ZYLdUuYzf5luD+GNjqK+AcM5BkeBI+pelMvaSGBaLUr8Vw74q/DXhm8Typ?=
 =?iso-8859-1?Q?t/kcE/A4RBWrx4EKscMXVAMYMMFOeCbfKkRbm4cEoYxMuh8UdHQGHUq1H2?=
 =?iso-8859-1?Q?1ygHncm5gX1Cy7z4pciHyY2mxbl1Ac4Uu2jEwAAZ1hecr3TS2UOh/n25jk?=
 =?iso-8859-1?Q?+XHP4Wl0gY0Oz0y0zNRIrZGoUW1eirKP5TlEutA3nKeMsdkuRJWPa99hhX?=
 =?iso-8859-1?Q?SFpnB9tgrN2VsgkXGQtkDzPFkVORNkuQ4Lb3n3jPYf0X6ef6PUyrC3M1mN?=
 =?iso-8859-1?Q?UECtWESFz2J9R6MydTiWrZG09B4lZdH5BcQRsvBSSPHAKPjiokAtUL4CJS?=
 =?iso-8859-1?Q?FDI28stEIwajoYpGyuit+mGoW1J+0qzYvCt1jdqYtBG8AtTkkOUhtqfENO?=
 =?iso-8859-1?Q?rde24cKA5+3e/HI71rUnu7UIpr2TsT5SmgUWxF34UPycuo1DT6xCu20rOe?=
 =?iso-8859-1?Q?f2akfOOd3t5Kyo1DNHMNAd44c2GqDTWdkxLs/muiBsyA9yLXM7nnVjFdSL?=
 =?iso-8859-1?Q?SNu+mqkHgNbmGoBUzuCXYuxUJsGKXsHwcCWN8rAhU5CnZnnJzjxTvuqFGn?=
 =?iso-8859-1?Q?D1lv7T4CvEkybtHBhOoDFkEh3bipYJ8QEQsk5cO9lPqrCZrzXbDrM/fhD1?=
 =?iso-8859-1?Q?ogdxmvROi90Uerycwb/jWLQ3ekAkzY8SCgW06QVPqDZ+xKMYr4g49Lx3Qh?=
 =?iso-8859-1?Q?441F758ONbyLC1q5x8HrZnLbb6arYw3g59vaBZtRymSCksMMTzXLyjjNfy?=
 =?iso-8859-1?Q?5frTcDZIFfZrMJk3nHst2lHhzGMSehKmsyNookuwyrTlMXtxOoj4FNKNYv?=
 =?iso-8859-1?Q?fxKzZk+T1oDDZ4l75UNronGaSj7PK2L7MNV/Ty+kIAZ68anM3KxhtwDKnl?=
 =?iso-8859-1?Q?MwYVc10hJIboUaSp9GWbhg8v+TReREAjjVIz09FDh4wg0OqQTnfUAMsEZi?=
 =?iso-8859-1?Q?TgBpoc3niJWGX3Nl29R1w9vrll6BvQ4pS765qtY2CpShZp241CEiMCI0tS?=
 =?iso-8859-1?Q?o0tJsUodHdXbMXNpPFJpk6radPkzGQp/yF/BNLIkPJDrkk5X5ebdWpxgq+?=
 =?iso-8859-1?Q?nlhn5esjMvB0ohB07pa50DaA267PJ7q4HSFBZoZYg6ywrHXEqLt8V7evHV?=
 =?iso-8859-1?Q?pBgc0qJxWDcDcUcIkc7Fsk7jUXMo92f+GmPyu3YvkZ6GUtZB8XUcHXuK4n?=
 =?iso-8859-1?Q?avmzY+sOTjR+sf0vW/0B4IgkOBfqOgq5inves1XJRy0aAPEnHexTYiOjgZ?=
 =?iso-8859-1?Q?LMb7nImLn4BruNV6rRa5BkXi8u1gvtrzAzaqprh9VXs0+sFoaLD95vsMVR?=
 =?iso-8859-1?Q?eba4uqTQJSO7f6YZocyArp3tVrCw3MViwhNvpqYW4unaoU55k4WgjOaLAG?=
 =?iso-8859-1?Q?B8COvBAVVyCjCVq59Gngt1kYmXLpRZtxr1Jqy2RsG1xPO3lPiVLVQ+bcYU?=
 =?iso-8859-1?Q?w+RdjoY3niay+X1zJ4HlQZOGiuSiFpZBmVJC8gUuCCfASfWGBKlkdWCVvR?=
 =?iso-8859-1?Q?O/PMmddlrcz4EgprLiBQ/LZq9VSQhwmfH3+l+5NGUYI6teZ8ajGtGctZ1l?=
 =?iso-8859-1?Q?z+q5uGn2iySBHsYbSwxfgLZBjSOORU1TRi/8qQAuAZT7suUSjEedPyADMS?=
 =?iso-8859-1?Q?VO9my8trNn5R6E/E9K/ZZMTJTRMRvnDsX/LDRxLH2lcNXYJrZMolEUKg?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ses-imagotag.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ae34dce-b16e-46ed-3cbe-08daaced6121
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2022 07:34:36.3141
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 026f3f97-f463-4c41-ba74-bc156c3be494
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rBKxA1M3PLcYROUnzj/jsWCD5QVGoMVtmR/PDe72zG6WlptzFKwudv7nt2HpzGCN/YhK2y7rB5KaI06AWsYMkLiZX31ryAgWwaZQH4LqTjk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR0P264MB2918
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_003441_594860_5343E066 
X-CRM114-Status: GOOD (  22.26  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: AW: HAB/SecureBoot on IMX8MN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sasha!

Thank you! I'll try it.

Greets Bernd

-----Urspr=FCngliche Nachricht-----
Von: Sascha Hauer <sha@pengutronix.de>=20
Gesendet: Donnerstag, 13. Oktober 2022 09:32
An: BAUER Bernd <bernd.bauer@ses-imagotag.com>
Cc: Barebox Mailingliste <barebox@lists.infradead.org>
Betreff: Re: HAB/SecureBoot on IMX8MN

Hi Bernd,

On Thu, Oct 13, 2022 at 05:20:06AM +0000, BAUER Bernd wrote:
> Hi!
>=20
> I have a question regarding SecureBoot/HAB and IMX8MN.
> In barebox I can only enable HAB if the architecture is set to IMX8MQ.
> My project is based on an IMX8MN.
>=20
> Can I just extend the definition to IMX8MN and enable SecureBoot for the =
IMX8MN?
> Does this work? Or are there differences in the registers that have to be=
 implemented first?

>From a quick glance at the corresponding U-Boot code I'd say that HAB suppo=
rt is identical between the different i.MX8M variants, so the following mig=
ht indeed be a good start exploring it. I have no idea though if there are =
any subtle differences between the SoCs.

Sascha

--------------------------------8<--------------------------

>From 0daeceb70f0dfe0d2fdb65c986a613fe2d3d6203 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Oct 2022 09:30:23 +0200
Subject: [PATCH] Enable HAB on i.MX8M

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig index dc=
b70c8c1a..8d3f75e3d1 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -902,7 +902,7 @@ config HABV4
 	select HAB
 	select NVMEM
 	select IMX_OCOTP
-	depends on ARCH_IMX6 || ARCH_IMX8MQ
+	depends on ARCH_IMX6 || ARCH_IMX8M
 	depends on OFDEVICE
 	help
 	  High Assurance Boot, as found on i.MX28/i.MX6/i.MX8MQ.
--
2.30.2


--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://eur03.safelinks.protec=
tion.outlook.com/?url=3Dhttp%3A%2F%2Fwww.pengutronix.de%2F&amp;data=3D05%7C=
01%7Cbernd.bauer%40ses-imagotag.com%7C34e74f243dea4f0185bd08daaced0750%7C02=
6f3f97f4634c41ba74bc156c3be494%7C0%7C0%7C638012431286975126%7CUnknown%7CTWF=
pbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D=
%7C3000%7C%7C%7C&amp;sdata=3DRykG7xxwLLJK87kdqhDTBHJmAEfS7EyaL0smddx4OZk%3D=
&amp;reserved=3D0  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


