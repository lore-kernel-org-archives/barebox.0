Delivery-date: Sat, 27 Jun 2026 21:44:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdYxP-00AX0M-2l
	for lore@lore.pengutronix.de;
	Sat, 27 Jun 2026 21:44:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wdYxO-00037J-9H
	for lore@pengutronix.de; Sat, 27 Jun 2026 21:44:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OzCJ/6/oS0NpjwklanXoR7VkTLKHznWlzTi5tlzw9/0=; b=lgi5jNxCB8VfWmEfemLKAWD2EX
	WbjBx/cmfDfkU9RzLate5E7RQK/toEPIwzIm8mUeSwfxtgwpOTaOQ/2U/rWvMQ7z6ASr2D2viBwsG
	i7Ouun+q+PouKcBvzJ05hhKMJXsq67bjTJOJGbqLoNuU5vUp0030BIIwgRDLmsGmx8VuqUq8lZK7R
	nbRYhLb+dDonM4zUMiNe/hzSLoUP4zazxHkFr6rYptVhQwtYWUlRm4ybTuMXboIGs8ZwWDF2HVrX2
	jjrphgsq3StOIDKMhbTGcwleGXCE/eTaVh9VTq9CvlGy/4qvZWWfkle0Y3gkUNkWrG5iPMfGrSLMt
	cwilgqEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYx4-0000000CjS9-2wXb;
	Sat, 27 Jun 2026 19:44:30 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdYx1-0000000CjRG-21EV
	for barebox@lists.infradead.org;
	Sat, 27 Jun 2026 19:44:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e0Fcys1ctx+/wKM8Tw6rSCi2n/iSOCA56yZt4NoBPuwlkvWIAt4IRkOSOgGLRdCWJ/CD/hS6RgzaioPYNzZu3EowM7SmxJdSxMzE091e5wcVoGHniO9nR4wsxK8ms8qvH2G5GhvyJYhxjA6pNqsvWBQD6WX/O76KH6AHFGGNDZxYXmlji8EIsgUTxj0gsJddnHIdHMSi+/GXKeq1gGYpZ02dsYUVjyOy2UArtVlnTxxC0q2QciGCjxUPTsDKPFlpYpYFDdv4DEf3rGkufxB8tetEH22HyrIuzenu10bXzjFZ4oc4hca9PB2Hh15OofFo5kfM89y2p9hAsY+ssj5HPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OzCJ/6/oS0NpjwklanXoR7VkTLKHznWlzTi5tlzw9/0=;
 b=wnSFZbKmyMWpQiwQv6Ta/7nIKsScWLdd1IJrX9h1oLVIiuuNR9u4KDLqaHLKeDvlTpGXXIVyYN8GAL+PJcUvtDML9RbTVlzSx0hgzisz4BaD2hfiTBq9bSczeU90BVqPBI/Kl/hmezKvBaXHRoeGx1otF7ctnTGgcwnMZZxr//mYQ0BTot/2l8gO1eCk8avQrXELArNW4Ya75wXle3XV5AB0xRAYtn3Z6bbBx2wHDEM+PWAUF7rczpKTdFese0xC24Na4xQ85TPAsij8qgUnja1nn+9cGRiOZ6p+L1BM6EglS1UEcEbP5OSUU+BNNbhjOhbT0HfQE8XAj+LhSiLdWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OzCJ/6/oS0NpjwklanXoR7VkTLKHznWlzTi5tlzw9/0=;
 b=f6m94lw3nDBgV84duPaQfMsbxOK11vvtdsn8kXz2PCJr6baslhiPiOidrrCdTo6Rq6EO6wGSzXctfPwtssTDrUyA1Yk7TilUYlHq24oIIdmDh3nQuP2oZRsXZtBBqlSxfXq/33N1+G/peAX/RBBZvCClaPNGlFgNBIIAwo/J6k8=
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com (2603:10a6:208:6a::27)
 by GV1PR06MB9738.eurprd06.prod.outlook.com (2603:10a6:150:1cd::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.17; Sat, 27 Jun
 2026 19:44:17 +0000
Received: from AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc]) by AM0PR06MB4148.eurprd06.prod.outlook.com
 ([fe80::dae7:3a84:9c7f:c6bc%4]) with mapi id 15.21.0159.018; Sat, 27 Jun 2026
 19:44:17 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum
	<a.fatoum@pengutronix.de>
CC: BAREBOX <barebox@lists.infradead.org>
Thread-Topic: [RFC] mci: imx-esdhc-pbl: enable ADMA2 for i.MX8M BL33 loads --
 help needed: ADMA stalls in ST_TFR despite every visible register matching
 the Linux runtime driver
Thread-Index: AQHdAAX+VAI1ZaCinECls3LNodrw+bZS2BIj
Date: Sat, 27 Jun 2026 19:44:16 +0000
Message-ID: <AM0PR06MB41486B2B2317A7DECD05CB95BCEA2@AM0PR06MB4148.eurprd06.prod.outlook.com>
References: <20260619160915.88090-1-johannes.schneider@leica-geosystems.com>
In-Reply-To: <20260619160915.88090-1-johannes.schneider@leica-geosystems.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB4148:EE_|GV1PR06MB9738:EE_
x-ms-office365-filtering-correlation-id: 3dbc7014-051f-4a27-b1d7-08ded4847911
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|10070799003|366016|23010399003|1800799024|22082099003|18002099003|38070700021|5023799004|11063799006|56012099006|6133799003;
x-microsoft-antispam-message-info: 3q8pVXayT0TZGAVJQmC/poBpU9aRxjI3rltyJA0nmHIkqbjPOhLtkAuipdgvXpMeKM3Xx4Wej0GWtQO0FDB9gUya1u7G8brqLmJz++MYMfqkqJmjsgxS7CRtSfjpteM4XPM5n6ZCF6P9BbIctvVR80/arEYN+R0u6qkBy9Zc6azEiV8eqs0TT+ERdr4CtTKSlIa3fk+oQE2aN558XR+XYT7X4IuGOe1JdxIXjZ606vjhKqd5mac3apqWdDsNXZe6bwF862Shi1PWoh7lEd5J6zoTJD+Oqjd5Mn6GJgmllyQsf3SBcKdJtzaAg+F14TBSM6iQX0ZLAeSxrm+qh1WqM+cdt3bOlZf6kdebsgwpAk22twyyZ9B4mIgj2mJiQ6T8gVg8HrYWleflDNpxjaKUxki4a+BRocZf745lrx3TZRBPFRszjRXqBCU8Yke2BJkJxACMHwMrps2kD18eAd/KunUDobRJDUjVXNz9ylkbsOQpZb7oY7Ri+yF0gdu62qc9QIqAfjTgINkN7ofcE87BoalwzO8k90MGQTB5riGd0BeeUz4ErqkgR52EzMFquI+oanEox8z71Oh67dTKGyOvYV8IDLp7tlCKEXPxY4KVCQg5MU/FMON4UeFsDETUFnRAN/avawLXfKUTzB4cuziPyWNsRrZcc+gtyRKJabEINOM=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR06MB4148.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(10070799003)(366016)(23010399003)(1800799024)(22082099003)(18002099003)(38070700021)(5023799004)(11063799006)(56012099006)(6133799003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?DjAn0Sh5ZanKc1QMAxU40uPNJn13s8/NihceDsEapqvDHGpAZnx192JalU?=
 =?iso-8859-1?Q?PqAb9l8AoCKq3Q3qYlwZjxeUDPuB1vVHF6Cu7+014gLa0WW11tTnCrA8YC?=
 =?iso-8859-1?Q?fnA/aNJd85hEn/pBAQb4HYEac0A08Ozwm15SsQxoQRGzYfQNnkYL1ZA7EF?=
 =?iso-8859-1?Q?YCvWeleduyGrC/zPOgrvfc1ZbMF/Bt3/iVm0umxV1qCr2HMlpFLeI0GVXf?=
 =?iso-8859-1?Q?+BGC2E0Vcyx+wXs0Fp3ekISlUTn4aIIEx9P7m8mFJPfFZTYLZDwbKYViqh?=
 =?iso-8859-1?Q?y6B+/E50pG27Yd6lWh1jNDZ5orsk/a+E2ZOI6soA2qknRj00o+4Zwe1syr?=
 =?iso-8859-1?Q?aaghMrVh4WNkPwZhvG+OVqVxhW+p8b+7PVYB6anGkCOrsZuy1NBjy8o5lE?=
 =?iso-8859-1?Q?lbd83b7ohFub4VP+miWL02HVhyGF6LPW0obovsP43fEiNNsF7YiO2Uknmp?=
 =?iso-8859-1?Q?2Go2VovdeS7i/R+KT7jaBFGj1bGRe1s0TT2VCerO1U7d0nFJxvKK8eDE/0?=
 =?iso-8859-1?Q?sqMEugaZTGlh0fbGTL7sZAQLfijsxGSn/QrTbJDuB3bE4sSfHUD6SLzzAk?=
 =?iso-8859-1?Q?avOpqPPLZXhXBnUJdOply1xfF4djgEdeitCupPnlNW3J1HpqsHd/NTtd10?=
 =?iso-8859-1?Q?YwIHP0iGKOyMz8PIZLAFhodQDK/TUt6kqIfsCXoWjR2TTOyKrofH0xjHIw?=
 =?iso-8859-1?Q?j3iakLU+GFM7PzMTA10rt/jmKH1bXZupZWnxii3lmCbRhIMh6tRd+f12oP?=
 =?iso-8859-1?Q?3s21oUjP3sHrXeH2BNdYiVNYFE2AuBswvk3TAx/+gqQUSNW6Los7zKgQHa?=
 =?iso-8859-1?Q?Lro+N4W/hWd28JjkFubWRrGEDpeY4ixZBQzkYea6xrX77QqjuBP5yEGyI9?=
 =?iso-8859-1?Q?ENcoWeTpb8lPPZ8Y9LGGbsJVLD4bSWAzQMZYiqbqpCtoOPCSaQDEy/ERVO?=
 =?iso-8859-1?Q?bobv4DgLCwUBB3S3AbYmBKSxqXAXSs1lyTCLO2/IYnr4Khtmf/Phmlqtrf?=
 =?iso-8859-1?Q?OOpJK9HXAJ0yh7lfX9POiQOVoLEfDB8keYRQrwlDJK+tXDAN4w9j8sTHe8?=
 =?iso-8859-1?Q?/DStKIm5sbnDZDV/Hii+JCAPGY74RIUfkzVOCz5bxZrD81rDDUTp9C1O7+?=
 =?iso-8859-1?Q?+fmURoGdpTHuA5vmdZMK/ttpQ3hzsjZI5nc1vTkExnfO8ngeYKa5iWIw8a?=
 =?iso-8859-1?Q?FM4wK5pLXpw02CjBvaJk0hT6j3djRqOaFod3gMUetiz0puedriY8etZiih?=
 =?iso-8859-1?Q?AcxdN3sMkz3nlq7cT9n9LDWVz0F9BebUEVZLI/CPTc7V/ZhxYRoeXdQqSq?=
 =?iso-8859-1?Q?f+ZN8FoVF4ArEqaeIa8tNQ+9ezhouxeweQAYlCn3HDKYXbbpcFdDoBIgok?=
 =?iso-8859-1?Q?wZIG+5e0UuiFo3fvUyTJhLBiAFWJiCJmzzRgsm4hQIRLSJeT3rRrvrXs7J?=
 =?iso-8859-1?Q?NOb7WDAkyIn6fdKyKYLTPNXf4mCBznrLVFKpVK8cjG25o+GA+Rj3p5JoSY?=
 =?iso-8859-1?Q?mT3hmEXPnfOt4MLYVf/Ql/xFiutCQpT6SfdXW03py9uBm/iUnq5wilRpyl?=
 =?iso-8859-1?Q?IIZvGnXFXpp1Wbt5Re4fnxTc5SaYr6Zb5F7if02KsQDgKx+SoHS7IEe3If?=
 =?iso-8859-1?Q?QNZJYdLbRELJsiGrgY2DHINFdr9SyldYHJQDXRVypkRSeFb1LjW4grVWnL?=
 =?iso-8859-1?Q?7QZDfgmygTruL18FtBISna3bJeVUkXN9hWTFMjSmJiCfHe3R0eUXfLEXQb?=
 =?iso-8859-1?Q?g3VWOi1pULedASlsC+CCeNabwSWjBFBw8JgxaYj1BhpPC/vO1b7simB1z+?=
 =?iso-8859-1?Q?tlFoNmT5k8WAUbtA9aBYi1ZCBFm9VcJrcqlh7NmVeWmxr2DtflQmqUXuzd?=
 =?iso-8859-1?Q?xD?=
x-ms-exchange-antispam-messagedata-1: lCD5le3xe74pTKsXXPulGK0PN3cfWaljILeBEbjSUxnnwjWqEthywpzl
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB4148.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dbc7014-051f-4a27-b1d7-08ded4847911
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2026 19:44:16.4979
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6trK7kEMKua6ix5neQCxz5GkXan32txp7+WHx4EcbH5/vpP0fi7gs7zFBhHdIYCRZ+YY4YEUP9ZHlOHoH7EBAC+4ZooA8we2YHjxfCOzVedce48M6zxoAU2PdMAWbQRw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR06MB9738
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_124427_672208_8B5F39BC 
X-CRM114-Status: GOOD (  14.87  )
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
Subject: Re: [RFC] mci: imx-esdhc-pbl: enable ADMA2 for i.MX8M BL33 loads --
 help needed: ADMA stalls in ST_TFR despite every visible register matching
 the Linux runtime driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


Hoi,

good news, found the missing piece [1] : \o/

/* Controller treats ADMA descriptors with length 0000h incorrectly */
#define SDHCI_QUIRK_BROKEN_ADMA_ZEROLEN_DESC            (1<<30)

and now have a working patchstack [2]



gru=DF
Johannes

Link: [1] https://elixir.bootlin.com/linux/v7.1.2/source/drivers/mmc/host/s=
dhci.h#L491
Link: [2]: https://lists.infradead.org/pipermail/barebox/2026-June/056839.h=
tml

________________________________________
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Sent: Friday, June 19, 2026 18:09
To: barebox@lists.infradead.org
Cc: SCHNEIDER Johannes
Subject: [RFC] mci: imx-esdhc-pbl: enable ADMA2 for i.MX8M BL33 loads -- he=
lp needed: ADMA stalls in ST_TFR despite every visible register matching th=
e Linux runtime driver

Add a generic sdhci_enable_adma() helper that lets drivers provide their ow=
n
descriptor table (so PBL builds can use a static buffer without dma_alloc),
gate the SDMA boundary-restart loop in sdhci_transfer_data_dma() behind
!SDHCI_USE_ADMA, and switch the i.MX8M PBL BL33 load path to call into the
new helper. On a working i.MX8MM board this should cut load_bl33 from
~645 ms (SDMA polled, restart-per-DMA-boundary) to ~140 ms (single ADMA2
descriptor, one interrupt at completion).

The patch builds and applies cleanly on barebox/next. On our test
hardware (custom i.MX8MM board, USDHC3 -> eMMC) the ADMA engine fetches
the descriptor, programs the data path, then stalls in ST_TFR
(ADMA_ERR=3D0x3) with no progress. Looking for input from anyone who has
either (a) shipped ADMA2 in i.MX PBL successfully, or (b) can point at
what infrastructure the full runtime driver does on probe that PBL would
need to replicate.

Assisted-by: Claude:claude-opus-4-7
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
RFC writeup
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Motivation
----------
Current PBL i.MX8M BL33 load is SDMA-based with the SDHCI boundary-restart
loop in sdhci_transfer_data_dma(). For a 32 KiB BL33 transfer at the defaul=
t
4 KiB SDMA boundary that's eight kicks-and-restarts. Measured on a custom
i.MX8MM board:

 Boot timeline (from power-on):
         BootROM:          1 ms
         PBL-init:         3 ms
         DDR-training:   262 ms
         PBL-load:       819 ms
                 PBL-pre-load:    168 ms
                 load_bl33:       645 ms   <--  (SDMA, ~5 MiB/s effective)
                 PBL-post-load:     5 ms
                 BL31-early:      114 ms
                 BL31-platform:    15 ms
                 BL31-runtime:     98 ms
                         thru-OPTEE:       98 ms
                         post-OPTEE:        0 ms
         barebox:       5654 ms
         kernel-init:    111 ms

barebox's own runtime imx-esdhc.c driver uses ADMA2 for the same controller
and gets the FIT image off the same eMMC at expected speed. ADMA2 in PBL
should match.

Reference points: U-Boot and Linux
----------------------------------
Before submitting we cross-checked both other open-source drivers for the
same controller:

        * U-Boot (drivers/mmc/fsl_esdhc_imx.c) only does SDMA on i.MX USDHC=
:
                XFERTYP_DMAEN with default DMA_SEL=3D0. The ADSADDR / ADMA =
error
                registers are defined in the layout but no code path enable=
s ADMA.
                So U-Boot avoided this question entirely.

        * Linux (drivers/mmc/host/sdhci-esdhc-imx.c) does enable ADMA2 and
                works. The Linux driver provides custom register accessors =
-- in
                particular esdhc_writeb_le() translates standard SDHCI HOST=
_CONTROL
                writes to i.MX PROCTL (DMA_SEL bits shift from 3:4 to 8:9, =
ENDIAN
                bit gets forced LE) and esdhc_clrset_le() forces SYSCTL bit=
s 0..2
                back on after SDHCI_RESET_ALL.

barebox-PBL's drivers/mci/imx-esdhc-common.c already installs the same
write8 / write16 translators via esdhc_populate_sdhci() called from
imx8m_esdhc_init() -- the per-transfer writes from generic sdhci.c
arrive at the right vendor register positions. So we are using the same
register-access plumbing as the working runtime driver.

What this patch does
--------------------
1. New helper sdhci_enable_adma() in drivers/mci/sdhci.c: split out of
         sdhci_setup_adma() so callers without a struct device / dma alloca=
tor
         can hand in their own pre-aligned descriptor buffer + DMA address.
         Sets host->adma_table, ->adma_addr, ->adma_table_cnt, ->adma_table=
_sz,
         and host->flags |=3D SDHCI_USE_ADMA.

2. Gate the SDMA-boundary-restart in sdhci_transfer_data_dma() behind
         !(sdhci->flags & SDHCI_USE_ADMA) -- ADMA transfers must not get th=
e
         per-boundary DMA-address rewrite that SDMA needs.

3. drivers/mci/imx-esdhc-pbl.c gets imx8m_esdhc_enable_pbl_adma() that
         allocates a static, aligned 8-byte-per-descriptor table for
         SDHCI_DEFAULT_ADMA_DESCS entries, translates i.MX USDHC's ADMA1
         cap-bit-position quirk (the chip advertises ADMA2 in
         SDHCI_CAN_DO_ADMA1), calls sdhci_enable_adma() and is invoked at t=
he
         end of imx8m_esdhc_init().

Symptom
-------
The patch loads, the table address is programmed, the descriptors are
built correctly (CMD18 multi-block read to the DRAM dest), but the ADMA
engine stalls. From the SDHCI timeout path (after 10 s):

                INT_STATUS    =3D 0x00000001  (CMD_COMPLETE only -- never X=
FER_COMPLETE)
                PRESENT_STATE =3D 0x00888a8e  (CMD/DAT line busy)
                PROCTL        =3D 0x08800224
                ADMA_ADDRESS  =3D 0x40f00004  (advanced 4 bytes into our ta=
ble)
                ADMA_ERR      =3D 0x00000003  (state =3D ST_TFR, "transferr=
ing data")
                DESC[0]       =3D 0x00000021 0x41ff6000  (TRAN|VALID, 64 Ki=
B at DRAM)

Side-by-side comparison with Linux's sdhci-esdhc-imx running on the same
hardware (we added pr_info() in esdhc_writeb_le() / esdhc_writel_le() /
esdhc_reset() and watched dmesg while it did its own ADMA2 reads) shows
IDENTICAL register state at the moment the engine runs:

        PROCTL =3D 0x08800224 (both)        DMA_SEL=3DADMA2, EMODE=3DLE, BI=
T23, BURST_LEN_EN_INCR, DTW=3D8b
        MIX_CTRL =3D 0x0000003b (both)      DMAEN|BCEN|DDREN|DTDSEL|MSBSEL
        XFERTYP =3D 0x123a0000 (both)       CMD18 with proper flags
        ADMA_ADDR =3D DRAM addr (both)
        ADMA_ADDR_HI =3D 0 (both)
        SYSCTL =3D 0x000e000f (both)        IPGEN|HCKEN|PEREN|CKEN, DVS=3D1=
4
        CCGR94 (USDHC3) =3D 0x3 (both)      NEEDED
        NoC@0x8d00 =3D enabled (both)
        MAIN_AXI@0x8800 =3D enabled (both)

Access controls verified open: TZASC region 0 disabled, RDC PDAP for USDHC3
shows 0xff (all four domains have full RW). So it's not a permission issue
at the AXI master.

What we tried that didn't help
------------------------------
- Toggle ESDHC_BURST_LEN_EN_INCR (PROCTL bit 27) on/off: engine still hangs
- Manually program PROCTL DMA_SEL=3DADMA2 ahead of per-transfer config: no-=
op
        since the esdhc_writeb_le translator already does that
- Put descriptor table in DRAM at a fixed offset vs OCRAM .bss: same hang
- Zero ADMA_ADDRESS_HI defensively: BootROM doesn't leave it dirty
- Force CCGR94 (USDHC3 gate) to NEEDED via the SET register at +0x4: was
        already at NEEDED (0x3) -- BootROM leaves it correct
- SDHCI_RESET_ALL at PBL esdhc init entry, with subsequent SYSCTL re-arm
        of bits 0..3 (IPGEN/HCKEN/PEREN/CKEN) -- matches what Linux's
        esdhc_writeb_le does in the SDHCI_SOFTWARE_RESET case. Made an SDMA
        fallback path recover cleanly, didn't change ADMA behaviour
- ADMA -> SDMA fallback (clear SDHCI_USE_ADMA, clear DMA_SEL, retry,
        with explicit CMD12 to bring the card back to TRAN): works as recov=
ery,
        doesn't tell us why ADMA fails

What we couldn't try / are stuck on
-----------------------------------
- Replicating fsl_esdhc_probe()'s clk_enable(host->clk) in PBL: that
        walks the imx8mm clk tree (per -> usdhc3_root -> sys_pll1_400m ->
        ahb/noc/main_axi). All the leaf gates we can read are already on, b=
ut
        maybe the full clk-imx8mm probe does something the gates don't expo=
se
- Replicating mci_register() -> mmc_init() in PBL: CMD0/CMD1/CMD2/CMD3/
        CMD7, set bus width via CMD6, EXT_CSD read. PBL inherits whatever t=
he
        BootROM left the card in -- maybe ADMA's burst pattern is sensitive
        to the eMMC card state in a way SDMA isn't
- Logic analyzer on the AHB->AXI bridge: would show whether the AXI
        transactions are even getting issued. We don't have one

Ask
---
1. Has anyone shipped i.MX PBL ADMA2 successfully? If yes -- what bit /
         sequence / clock did you have to set that's not in this patch?

2. Is there a known reason ADMA stalls in ST_TFR on i.MX USDHC when SDMA
         succeeds on the exact same data path with the exact same buffer
         addresses? Some vendor-specific MIX_CTRL bit we're missing?

3. Worth taking even with PBL ADMA disabled? sdhci_enable_adma() is
         genuinely useful for drivers that want to plug in their own descri=
ptor
         buffer (PBL or otherwise). The transfer_data_dma() gate is a small
         correctness improvement either way.

4. A separate dma_mapping_error() NULL-deref fix dropped out of this
         debugging -- in PBL the SDHCI host has no struct device, so
         dma_mapping_error(NULL, addr) NULL-dereferences dev->dma_mask, rea=
ds
         boot ROM and returns a false positive. I'll send that as its own
         patch; mentioning it here because it's the bug that initially hid
         this whole ADMA-attempt behind a "descriptor table never got built=
"
         symptom.

The diagnostic measurement patches we used to find all of the above
(puts_ll markers, register dumps at the SDHCI timeout, kernel-side
esdhc-imx writeb_le tracing) are not part of this submission; happy to
share them off-list if anyone wants to reproduce.

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 2402b9aeaf..f5de489382 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -32,6 +32,63 @@
 #define esdhc_send_cmd __esdhc_send_cmd

 static u8 ext_csd[512] __aligned(64);
+static u8 imx8m_pbl_adma_table[SDHCI_DEFAULT_ADMA_DESCS * SDHCI_ADMA2_32_D=
ESC_SZ]
+       __aligned(SDHCI_ADMA2_DESC_ALIGN);
+
+static u32 imx8m_pbl_caps(struct fsl_esdhc_host *host)
+{
+       u32 caps =3D sdhci_read32(&host->sdhci, SDHCI_CAPABILITIES);
+
+       /*
+        * i.MX USDHC advertises ADMA2 in the bit position SDHCI names ADMA=
1.
+        * Translate it before handing the capability word to generic SDHCI=
 code.
+        */
+       if (caps & SDHCI_CAN_DO_ADMA1) {
+               caps &=3D ~SDHCI_CAN_DO_ADMA1;
+               caps |=3D SDHCI_CAN_DO_ADMA2;
+       }
+
+       return caps;
+}
+
+/*
+ * i.MX USDHC PROCTL bits we need to program directly. The generic
+ * sdhci_config_dma() uses standard SDHCI HOST_CONTROL bit positions
+ * (DMA_SEL at bits 3:4), but on i.MX USDHC DMA_SEL lives at bits 8:9
+ * (a "shift left by 5" from the standard SDHCI layout). Linux's
+ * esdhc_writeb_le() does that translation; barebox doesn't, so the
+ * per-transfer sdhci_config_dma() call only touches the lowest byte
+ * of PROCTL and the DMA_SEL field stays at 00 (SDMA). The descriptor
+ * pointer we program into SDHCI_ADMA_ADDRESS is then ignored and the
+ * engine runs SDMA from address 0 -- "DMA wait timed out".
+ *
+ * Set DMA_SEL=3DADMA2 and BURST_LEN_EN_INCR once at enable time so the
+ * PROCTL byte that sdhci_config_dma() doesn't touch carries the right
+ * value through every transfer.
+ */
+#define ESDHC_PROCTL_DMASEL_ADMA2      (0x2 << 8)
+#define ESDHC_PROCTL_DMASEL_MASK       (0x3 << 8)
+#define ESDHC_BURST_LEN_EN_INCR                (1 << 27)
+
+static void imx8m_esdhc_enable_pbl_adma(struct fsl_esdhc_host *host)
+{
+       u32 hc;
+       int ret;
+
+       host->sdhci.version =3D sdhci_read16(&host->sdhci, SDHCI_HOST_VERSI=
ON);
+       host->sdhci.caps =3D imx8m_pbl_caps(host);
+
+       hc =3D sdhci_read32(&host->sdhci, SDHCI_HOST_CONTROL);
+       hc &=3D ~ESDHC_PROCTL_DMASEL_MASK;
+       hc |=3D ESDHC_PROCTL_DMASEL_ADMA2 | ESDHC_BURST_LEN_EN_INCR;
+       sdhci_write32(&host->sdhci, SDHCI_HOST_CONTROL, hc);
+
+       ret =3D sdhci_enable_adma(&host->sdhci, imx8m_pbl_adma_table,
+                               virt_to_phys(imx8m_pbl_adma_table),
+                               SDHCI_DEFAULT_ADMA_DESCS);
+       if (ret)
+               pr_debug("ADMA2 unavailable, falling back to PIO (%d)\n", r=
et);
+}

 static int esdhc_send_ext_csd(struct fsl_esdhc_host *host)
 {
@@ -163,6 +220,7 @@ static int imx8m_esdhc_init(struct fsl_esdhc_host *host=
,
        }

        imx_esdhc_init(host, data);
+       imx8m_esdhc_enable_pbl_adma(host);

        return 0;
 }
@@ -265,9 +323,41 @@ int imx8m_esdhc_load_image(int instance, void *bl33)
        if (ret)
                return ret;

-       return esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
-                               (ptrdiff_t)bl33, SZ_32K, SZ_1K,
-                               false);
+       ret =3D esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
+                              (ptrdiff_t)bl33, SZ_32K, SZ_1K, false);
+
+       /*
+        * If ADMA hit the 10 s DMA-wait timeout (-ETIMEDOUT), tear it back
+        * down to SDMA and retry once. Keeps the board bootable when ADMA
+        * misbehaves on the specific PROCTL/ROM-handover state we hit.
+        */
+       if (ret =3D=3D -ETIMEDOUT && (host.sdhci.flags & SDHCI_USE_ADMA)) {
+               u32 hc;
+
+               pr_warn("PBL ADMA2 transfer timed out -- falling back to SD=
MA\n");
+               sdhci_reset(&host.sdhci, SDHCI_RESET_ALL);
+               host.sdhci.flags &=3D ~SDHCI_USE_ADMA;
+               hc =3D sdhci_read32(&host.sdhci, SDHCI_HOST_CONTROL);
+               hc &=3D ~(ESDHC_PROCTL_DMASEL_MASK | ESDHC_BURST_LEN_EN_INC=
R);
+               sdhci_write32(&host.sdhci, SDHCI_HOST_CONTROL, hc);
+
+               /* Re-init the controller; the eMMC card itself stays in TR=
AN. */
+               ret =3D imx8m_esdhc_init(&host, &data, instance);
+               if (ret)
+                       return ret;
+               /* enable_pbl_adma already ran inside imx8m_esdhc_init -- r=
edo
+                * tear-down because it just turned ADMA back on. */
+               sdhci_reset(&host.sdhci, SDHCI_RESET_ALL);
+               host.sdhci.flags &=3D ~SDHCI_USE_ADMA;
+               hc =3D sdhci_read32(&host.sdhci, SDHCI_HOST_CONTROL);
+               hc &=3D ~(ESDHC_PROCTL_DMASEL_MASK | ESDHC_BURST_LEN_EN_INC=
R);
+               sdhci_write32(&host.sdhci, SDHCI_HOST_CONTROL, hc);
+
+               ret =3D esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
+                                      (ptrdiff_t)bl33, SZ_32K, SZ_1K, fals=
e);
+       }
+
+       return ret;
 }

 /**
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 3474ef129b..b959e22865 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -788,7 +788,8 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct=
 mci_cmd *cmd,
                 * should return a valid address to continue from, but as
                 * some controllers are faulty, don't trust them.
                 */
-               if (irqstat & SDHCI_INT_DMA) {
+               if (!(sdhci->flags & SDHCI_USE_ADMA) &&
+                   (irqstat & SDHCI_INT_DMA)) {
                        /*
                         * DMA engine has stopped on buffer boundary. Ackno=
wledge
                         * the interrupt and kick the DMA engine again.
@@ -1305,20 +1306,9 @@ int sdhci_setup_host(struct sdhci *host)
        * Returns 0 on success or a negative error code on failure. On fail=
ure
        * the host falls back to SDMA.
        */
-int sdhci_setup_adma(struct sdhci *host)
+static int sdhci_prepare_adma(struct sdhci *host, unsigned int *adma_table=
_cnt,
+                             unsigned int *adma_table_sz)
 {
-       struct device *dev =3D sdhci_dev(host);
-       struct mci_host *mci =3D host->mci;
-       dma_addr_t dma;
-       void *buf;
-
-       BUG_ON(!mci);
-
-       /*
-        * Without a controller capability bit ADMA2 cannot be used. Don't
-        * fail loudly: the driver may have called us speculatively, just
-        * leave SDMA as the fallback.
-        */
        if (!(host->caps & SDHCI_CAN_DO_ADMA2))
                return -ENOTSUPP;

@@ -1327,24 +1317,72 @@ int sdhci_setup_adma(struct sdhci *host)
        else
                host->desc_sz =3D SDHCI_ADMA2_32_DESC_SZ;

-       if (!host->adma_table_cnt)
-               host->adma_table_cnt =3D SDHCI_DEFAULT_ADMA_DESCS;
+       if (!*adma_table_cnt)
+               *adma_table_cnt =3D SDHCI_DEFAULT_ADMA_DESCS;

-       host->adma_table_sz =3D host->adma_table_cnt * host->desc_sz;
+       *adma_table_sz =3D *adma_table_cnt * host->desc_sz;

-       buf =3D dma_alloc_coherent(dev, host->adma_table_sz, &dma);
-       if (!buf)
-               return -ENOMEM;
+       return 0;
+}
+
+int sdhci_enable_adma(struct sdhci *host, void *buf, dma_addr_t dma,
+                     unsigned int adma_table_cnt)
+{
+       struct mci_host *mci =3D host->mci;
+       unsigned int adma_table_sz;
+       int ret;
+
+       ret =3D sdhci_prepare_adma(host, &adma_table_cnt, &adma_table_sz);
+       if (ret)
+               return ret;
+
+       if (!buf ||
+           !IS_ALIGNED((unsigned long)buf, SDHCI_ADMA2_DESC_ALIGN) ||
+           !IS_ALIGNED(dma, SDHCI_ADMA2_DESC_ALIGN))
+               return -EINVAL;

        host->adma_table =3D buf;
        host->adma_addr =3D dma;
+       host->adma_table_cnt =3D adma_table_cnt;
+       host->adma_table_sz =3D adma_table_sz;
        host->flags |=3D SDHCI_USE_ADMA;
+       host->flags &=3D ~SDHCI_OWNS_ADMA_TABLE;

        /*
         * One descriptor handles up to SDHCI_ADMA2_MAX_LEN bytes; the last
         * one is reserved for the terminating entry.
         */
-       mci->max_req_size =3D (host->adma_table_cnt - 1) * SDHCI_ADMA2_MAX_=
LEN;
+       if (mci)
+               mci->max_req_size =3D (host->adma_table_cnt - 1) * SDHCI_AD=
MA2_MAX_LEN;
+
+       return 0;
+}
+EXPORT_SYMBOL_GPL(sdhci_enable_adma);
+
+int sdhci_setup_adma(struct sdhci *host)
+{
+       struct device *dev =3D sdhci_dev(host);
+       dma_addr_t dma;
+       unsigned int adma_table_cnt =3D host->adma_table_cnt;
+       unsigned int adma_table_sz;
+       void *buf;
+       int ret;
+
+       ret =3D sdhci_prepare_adma(host, &adma_table_cnt, &adma_table_sz);
+       if (ret)
+               return ret;
+
+       buf =3D dma_alloc_coherent(dev, adma_table_sz, &dma);
+       if (!buf)
+               return -ENOMEM;
+
+       ret =3D sdhci_enable_adma(host, buf, dma, adma_table_cnt);
+       if (ret) {
+               dma_free_coherent(dev, buf, dma, adma_table_sz);
+               return ret;
+       }
+
+       host->flags |=3D SDHCI_OWNS_ADMA_TABLE;

        return 0;
 }
@@ -1355,10 +1393,14 @@ void sdhci_release_adma(struct sdhci *host)
        if (!(host->flags & SDHCI_USE_ADMA))
                return;

-       dma_free_coherent(sdhci_dev(host), host->adma_table, host->adma_add=
r,
-                         host->adma_table_sz);
+       if (host->flags & SDHCI_OWNS_ADMA_TABLE)
+               dma_free_coherent(sdhci_dev(host), host->adma_table, host->=
adma_addr,
+                                 host->adma_table_sz);
+
        host->adma_table =3D NULL;
        host->adma_addr =3D 0;
-       host->flags &=3D ~SDHCI_USE_ADMA;
+       host->adma_table_sz =3D 0;
+       host->adma_table_cnt =3D 0;
+       host->flags &=3D ~(SDHCI_USE_ADMA | SDHCI_OWNS_ADMA_TABLE);
 }
 EXPORT_SYMBOL_GPL(sdhci_release_adma);
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index d1f05ac968..b95e1f0012 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -298,6 +298,7 @@ struct sdhci {
 #define SDHCI_REQ_USE_DMA      (1<<2)  /* Use DMA for this req. */
 #define SDHCI_DEVICE_DEAD      (1<<3)  /* Device unresponsive */
 #define SDHCI_SDR50_NEEDS_TUNING (1<<4)        /* SDR50 needs tuning */
+#define SDHCI_OWNS_ADMA_TABLE  (1<<5) /* Descriptor table was dynamically =
allocated */
 #define SDHCI_AUTO_CMD12       (1<<6)  /* Auto CMD12 support */
 #define SDHCI_AUTO_CMD23       (1<<7)  /* Auto CMD23 support */
 #define SDHCI_PV_ENABLED       (1<<8)  /* Preset value enabled */
@@ -413,6 +414,8 @@ int sdhci_transfer_data_pio(struct sdhci *sdhci, struct=
 mci_cmd *cmd,
 int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_cmd *cmd,
                            struct mci_data *data, dma_addr_t dma);
 int sdhci_reset(struct sdhci *sdhci, u8 mask);
+int sdhci_enable_adma(struct sdhci *host, void *buf, dma_addr_t dma,
+                     unsigned int adma_table_cnt);
 int sdhci_setup_adma(struct sdhci *host);
 void sdhci_release_adma(struct sdhci *host);
 u16 sdhci_calc_clk(struct sdhci *host, unsigned int clock,


