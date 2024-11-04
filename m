Delivery-date: Mon, 04 Nov 2024 13:57:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7wea-004kSP-2G
	for lore@lore.pengutronix.de;
	Mon, 04 Nov 2024 13:57:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7web-0007Lq-5I
	for lore@pengutronix.de; Mon, 04 Nov 2024 13:57:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TfcpNfPBNeavL+lTSuOh58J81FtGIG0ZHiuECkxMesk=; b=vMIt1jf6Kr7ab87DZTsHBBvnSG
	DFWNitOIZSncOtulBBWQ1FkhKI1Heg7+8OwMbMdLdhbDvO2qKb5HxiAnrTTK9g1+Gku3/yiZlZ1XZ
	igKRnQQRB9UttqGHZr8rsYpJTAekZsSKSdg+HqGz+JgN5RwqRVtiYo+EQ/lmzoWoRADWAEA1Ec38w
	QNCV095nPBrz+xQoEj3kc1ykiQXZ8IG6/+pquicbWYDchu6Y4G4Y2Bze6pR/QYN/21Tq0dG1I+hjF
	nYU+p62IdoceCTJVSNhcLcoDqilW2KKwoH0YsdgysrIC6VP2ys3+dOEi7XMX3VFujdRw9NUAqZK90
	6T6QsOeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7wdw-0000000DlFB-47d6;
	Mon, 04 Nov 2024 12:57:16 +0000
Received: from mail-db8eur05on20613.outbound.protection.outlook.com ([2a01:111:f403:2614::613] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7wcK-0000000Dl0r-3qxi
	for barebox@lists.infradead.org;
	Mon, 04 Nov 2024 12:55:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UyUa31/6PgBvEf+wFLpdUG3O2LjZGlyIOC8uA/EPolXwpdj4hyyuoGXiku/uaOc3fOkm22xej3vTAObphOj3if0UoDEcMbJiw7yix5jvDAsGXoU2qnkHju+CeRiXLZ1LbQcnZvfNE5TJsWyfWyd45BLkJCwC2rND7VrQfWy/EmKLiJ1NO6dX8dGM2v6QcGLeyMYoUpabLb4n45N7xslaGd44w8ozi2UaX2kyvzFgiiyxsY+OwY/KFWa8HuarkXCABRONYmUrJC2LdsYSQVRweOe/AEpVXgQQVbkcvsfuDIFSAFllT9Fpq6FU/pHrtQMtPzNLq7ui1vNLFB6Fxkw0+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TfcpNfPBNeavL+lTSuOh58J81FtGIG0ZHiuECkxMesk=;
 b=Mahfpz8BxeDc03Srhb99qhAC1tONxhvZmr82iLC7DkUqslVz3fRFxEVmuEKBQ6WRE2kQ0A1J7XdkQD4pxDUVstyNKmnfjMMLZU3JJFUDdYUVeirGImvnQrCE9Al96i8QMEJUimgdFfHrSTuDyUQCny+zdBDrEZo3wAnWGKiFUuVP3J16TRd8zfwL+Ntmwmr0nJtTn10P8NFM/QGzBFhSYOXnyLnDvOQoOciCOEPjm11Vzrb+aYbJPOP33Soll6uQDJJuyjzzX+wHV4HBsd+/dZ3NqIAgzFh6E+HQACB2B3ML5fc9u++DOkmHlaw9ridApCwLbmRspPpbSupRY/Y1Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TfcpNfPBNeavL+lTSuOh58J81FtGIG0ZHiuECkxMesk=;
 b=efzL07/1fvMgg05bV2fCxb1X81y3j/b1+cuXzdv9z0eSdqlUoFNBL/Cw03V0tiKbWTigULfObwjjRdmkkodo+Cxl+KGAbfjQNCVBhTcI+FBSMA30Ay/3k5TKR/hb9vif5+FXj7azU5i5QHxOf9A282x0aYQ/cSftoPNAqDURnpY=
Received: from AM8PR06MB7521.eurprd06.prod.outlook.com (2603:10a6:20b:355::8)
 by DU0PR06MB8453.eurprd06.prod.outlook.com (2603:10a6:10:351::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.29; Mon, 4 Nov
 2024 12:55:30 +0000
Received: from AM8PR06MB7521.eurprd06.prod.outlook.com
 ([fe80::570d:8853:c13b:c7d3]) by AM8PR06MB7521.eurprd06.prod.outlook.com
 ([fe80::570d:8853:c13b:c7d3%7]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 12:55:30 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH v2] common: add custom autoboot_abort_key
Thread-Index: AQHbLTWnYEtFN7KzMkmzsC3932sFr7KnBmoAgAAQfhk=
Date: Mon, 4 Nov 2024 12:55:30 +0000
Message-ID: <AM8PR06MB7521281D18381AC470D2B8ACBC512@AM8PR06MB7521.eurprd06.prod.outlook.com>
References: <20241102144342.2464331-1-johannes.schneider@leica-geosystems.com>
 <Zyi2JpuQYAb_yHCW@pengutronix.de>
In-Reply-To: <Zyi2JpuQYAb_yHCW@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM8PR06MB7521:EE_|DU0PR06MB8453:EE_
x-ms-office365-filtering-correlation-id: 0feb16cf-df8d-42dc-2fc0-08dcfccff6bb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|10070799003|38070700018;
x-microsoft-antispam-message-info: =?Windows-1252?Q?WjWzFuZ9GDetxTTZdUglnsiqoaHzVUMuLxuTQn21gAOM1Pomz19N31xz?=
 =?Windows-1252?Q?7LoRoohJomffb+mFRrS2fm3C4riyTC/MqCExAW3LxeXupstKzXPjCocu?=
 =?Windows-1252?Q?oaFaGXMR6ZInoNOPpG8z72JsKAmVKGrQ+CbR7a2u5MxgXv2w3RIHUrCM?=
 =?Windows-1252?Q?7X94P8SpnGdoHlHOIu2EoQZ+L++7oc+DYTR2WBtyB4InX9Rtvmm6nuao?=
 =?Windows-1252?Q?ehVqCs2pII4ywU9P9kLWACb6cFr5YJo0f00wABfZU3fjRdeqaxzIKzoG?=
 =?Windows-1252?Q?L01t58CY0BXb86p+KVfrfr4VrQuwDvrnCG29zR0NB7U1nA6Xzn9ddq58?=
 =?Windows-1252?Q?QdN3faLAVFIrx25ZYwyOFaoghIhbPavXywB0TzkI+BUVVzAjnqOn0BHR?=
 =?Windows-1252?Q?sneUk3sZR6A5vsJZA5uarLzVsRxByeJG1I1zRyx/7qTiIn4+eryEXAED?=
 =?Windows-1252?Q?KiqGnbwJ7OcOHcbAJ4GN6xh7I27nFFFPEoyVrMEF3T3KBLPBA0ILdLi+?=
 =?Windows-1252?Q?X3eeY4uZuxw6sakbS3RrqLBMOFvB0a8eoWyApIPxfpprnhgN6p7JNtbm?=
 =?Windows-1252?Q?GlaGzj8Yl+gNA8WH0EQu+GqXA2TbbzoQuq4Dy266eeJ6IA2ssG+AnLdZ?=
 =?Windows-1252?Q?AZyr7kZipwRI6MrqQE3ZNz6mcm6vtfEe3LgnPMT+hejTE+NX2lI4CGP3?=
 =?Windows-1252?Q?YL92GebTNQEEQryhGoN5/aluMyj2QQ+G0nZjFLDlXJO7apVfH8fvG1HI?=
 =?Windows-1252?Q?KACJsj+qGXvhutN7lJ6Sey0VAXIaqoyka5+2dc0AUplm6R9kYJe+HbLx?=
 =?Windows-1252?Q?dF/K87Qd97vW7BbyEgcWZ021XFph4mtNtWj8QGYBOnhwrfYe2tCWbJ4/?=
 =?Windows-1252?Q?W3+Fiim5v3yjlIEpeSN7ZX2vu2dwULzlDn3fZoJNVhUpgBVUFEMitRFI?=
 =?Windows-1252?Q?sX7jO02DsL6wv2xAeRR1B+DVGvd0anQqW6J+XUDlrZTcOrwuEw25361Y?=
 =?Windows-1252?Q?36kVIb60U/FcHJUmHzL6HJvHmDm4Q59r2XHqnMjU5yzahZ/7UfyqGCRT?=
 =?Windows-1252?Q?LLfac56AYU0Zv1C/P5Km1ulmVnpEec6Ta9gHp6oXxVIkpatb0R2l5Lfv?=
 =?Windows-1252?Q?ro+/YfbeTY55eFt6QoUVc6vEGA6WZRQ14fZxxxUP4tGcBmIoy21Tmcqe?=
 =?Windows-1252?Q?21eAUpPzG9nNG84dKoFcDNniwTXlO5lirKLvCJLcTHCBxA6TfgnnSJ2h?=
 =?Windows-1252?Q?8tKzJoBYOUk5dugUO4BY31mtOX5apUUf/oHYdGzVzg3a6Ze3kseekGV6?=
 =?Windows-1252?Q?IZL6vookXhw5QoQpxG1y1CdTxvYGeIhIz2dvuP8fC5YkZ0Xbt8WPAr/N?=
 =?Windows-1252?Q?ERRoa+oLu9sNwPrq0F7B6HU/1kDg5dt/GEvjqBxp5eqpRFA3I1Omm6Ch?=
 =?Windows-1252?Q?FDjIgmSxaP+dRvB6iPOLbahg2YNvTRhINPQKWwhauQA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR06MB7521.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?GP3DjRhDKNKrPaIDVIC1/+3tF9QS9oAO6XDJ6xGUN3R5YvrXFVXULdv7?=
 =?Windows-1252?Q?cSumJdXumxPWXlSjhJ0kXcNsU/a7fVabZCXzHFoTK8OpKfNTAZEp022Y?=
 =?Windows-1252?Q?PbiEfjAFN+WaSJXbymKnyO7zag9B9vLafO9MC1K9TL0g0q8ARBr+R3J2?=
 =?Windows-1252?Q?INNR79fGsHWvQyza3Rg8te5UFKJrY2FxixkFvXx55W63DSkgp1R5fhMi?=
 =?Windows-1252?Q?4fdI/35x0QD83+ieWq+HySYGgXH84WJzwTTtwDeRvldD2DIAUMq1Pu9W?=
 =?Windows-1252?Q?BBPwXHw+VGzyHWe6m62rnjiVpHN047zqN7Fwni4dW2wPKU+myBQExE/5?=
 =?Windows-1252?Q?pql1rFsJskIZWb4yv3TQ3FuafLcJbz42AegN8V0N+ivo3rz01wX25l/e?=
 =?Windows-1252?Q?lI21uJ8g+POYwkRXIEHD5hfEOhPh45dbi5HJiVbTnT/sJcIv8qdbLIg4?=
 =?Windows-1252?Q?uFwWyeHs7hTHNevM80WuF6Sx4NBNTdMab3FCEIa0vgM31JCQpsHqAMqe?=
 =?Windows-1252?Q?eMCHY46MyCXzz0qh1WCUgH4TjxUrf8DBInsuKlh6wHfqwQ3/r7lAbc6P?=
 =?Windows-1252?Q?dHnzfSbxYwujlwdrUR4AKb+8RR9AMBHbmJ8DP+jUSmFIlFOQR5aVkTf8?=
 =?Windows-1252?Q?ijC/YISxhmPJff/BnuRGB1ct1syKnycE9uFj24SjhJi37s5e5evMOPpO?=
 =?Windows-1252?Q?YX/IPASd0DkiUC0QDKreewillg46AEKEiWSKT0sR5wEZiGcFUzTlIRhr?=
 =?Windows-1252?Q?L7zVm2yhQdUISSQJhfBmre30zBf3JbQQGwwGae86ICIdFrNbWDObWMJ5?=
 =?Windows-1252?Q?txnadJfsjT+zFEor1LMPimTFBKH6ADfVAkPAaITsb9rSWxwGeloh34A5?=
 =?Windows-1252?Q?MRBE39QbMjBo5NWhVwdPZVPnMfcaFTl8ti8OPwedARP+aRK4DOgXdoIz?=
 =?Windows-1252?Q?JeYJVrtynKUfQqvzBQC0k5nBWBsW/cH8M9sOl7sMJj+Qy47FJbM1WpCJ?=
 =?Windows-1252?Q?GWowew1PJ+qU+3POQEAXwQ1+1eUhgONYsB3Rgtb2hhbYt79oNnaoqCaZ?=
 =?Windows-1252?Q?6GRMG0Ye/VK/hnzMYfmHw5ck4xvZwgNLat7xf5qqvKk6D/dMkYfnhlH/?=
 =?Windows-1252?Q?XNPeKDpknHnAF9JojnctAfsYzJneNJRUWBawSNokVThPcr4LEbEL0eEh?=
 =?Windows-1252?Q?OCZAVFuhLKik22mAaUmU5RwFKfsOqeeu3v8X3Z6hEVgt9CLnjNYFtBxv?=
 =?Windows-1252?Q?Ei3OUBAzcbr6kyFWSIRAXBQlJCZjl7t2ca0CF8kRC8DcHufbgy5I1/fZ?=
 =?Windows-1252?Q?0Mts4a7gI2ZIFLaCKS/bXc7j8ZhPRbCWqymihQ35JxPCLen/+Tt2+tLv?=
 =?Windows-1252?Q?B/0mgpbhGULYTqMjiz2mAtJ2h1sGxzKSFKtOXQFtc4Igwma1lOAImz34?=
 =?Windows-1252?Q?jWcWnXxXmZLyushhLx4BfNBk257GvObBtkYp2bKB5kVAYIUKEaan/CGy?=
 =?Windows-1252?Q?aRcADiNiVwcfZ/F+ywB2Lw+xeFPfEXaBUUXZ394TF18btNiwlokbyiro?=
 =?Windows-1252?Q?DWpKA1jgG7Dhs+MRxCShk1aI/VmuIKif7Lm84QgoFfDTwlSxfNgmVWlf?=
 =?Windows-1252?Q?xh+fzoFKvF0UVLvfFMdOF/cpjG4oBDXopKVo7EAvzwXX0g4/btawFzbv?=
 =?Windows-1252?Q?+zZw9aW1wzXk/GJIouZ65Oa+GC9rVlYv+c3dJI+mSfqN58sTxJHwNm6J?=
 =?Windows-1252?Q?PqR9dpJ5JdDLpfzXmNZqCIkiJhEWjsV9rKxrEdNKbjQyLMg56Rs8E/42?=
 =?Windows-1252?Q?6OU51jEsLHHEKoudH6UOJ5oesJ0=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8PR06MB7521.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0feb16cf-df8d-42dc-2fc0-08dcfccff6bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 12:55:30.7045
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LO+XKsYX5AoIkYhctLXRzHwpuWwJZ4g1y58G2QuK1yJTZDoHqETVlLoVFgQdK3mkRRAXi2uyGvic7zkw5OKiuK4xpYhOzGyjvyLrqKvotE+sX5tNudZwR3ztzXSvWS12
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR06MB8453
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_045537_047677_2C4BD312 
X-CRM114-Status: GOOD (  16.79  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] common: add custom autoboot_abort_key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

=0A=
> Subject: Re: [PATCH v2] common: add custom autoboot_abort_key=0A=
> =0A=
> This email is not from Hexagon=92s Office 365 instance. Please be careful=
 while clicking links, opening attachments, or replying to this email.=0A=
> =0A=
> =0A=
> On Sat, Nov 02, 2024 at 03:43:42PM +0100, Johannes Schneider wrote:=0A=
> > Extend the autoboot_abort_key handling to alow custom=0A=
> > abort keys.=0A=
> >=0A=
> > Allowed values to set in the env/nv/autoboot_abort_key=0A=
> > are any single ascii charater corresponding to the desired keyboard=0A=
> > key, or the strings 'any' or 'ctrl-c'=0A=
> >=0A=
> > Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.=
com>=0A=
> > ---=0A=
> >  common/startup.c | 53 ++++++++++++++++++++++++++++--------------------=
=0A=
> >  1 file changed, 31 insertions(+), 22 deletions(-)=0A=
> >=0A=
> > diff --git a/common/startup.c b/common/startup.c=0A=
> > index 47b70a7..125bcf1 100644=0A=
> > --- a/common/startup.c=0A=
> > +++ b/common/startup.c=0A=
> > @@ -93,11 +93,7 @@ static int load_environment(void)=0A=
> >  }=0A=
> >  environment_initcall(load_environment);=0A=
> >=0A=
> > -static int global_autoboot_abort_key;=0A=
> > -static const char * const global_autoboot_abort_keys[] =3D {=0A=
> > -     "any",=0A=
> > -     "ctrl-c",=0A=
> > -};=0A=
> > +static char *global_autoboot_abort_key;=0A=
> >  static int global_autoboot_timeout =3D 3;=0A=
> >=0A=
> >  static const char * const global_autoboot_states[] =3D {=0A=
> > @@ -187,24 +183,22 @@ enum autoboot_state do_autoboot_countdown(void)=
=0A=
> >       menu_exists =3D stat(MENUFILE, &s) =3D=3D 0;=0A=
> >=0A=
> >       if (menu_exists) {=0A=
> > -             printf("\nHit m for menu or %s to stop autoboot: ",=0A=
> > -                    global_autoboot_abort_keys[global_autoboot_abort_k=
ey]);=0A=
> >               abortkeys =3D "m";=0A=
> > -     } else {=0A=
> > -             printf("\nHit %s to stop autoboot: ",=0A=
> > -                    global_autoboot_abort_keys[global_autoboot_abort_k=
ey]);=0A=
> >       }=0A=
> >=0A=
> > -     switch (global_autoboot_abort_key) {=0A=
> > -     case 0:=0A=
> > +     if (!global_autoboot_abort_key ||=0A=
> > +         !strcmp(global_autoboot_abort_key, "any"))=0A=
> >               flags |=3D CONSOLE_COUNTDOWN_ANYKEY;=0A=
> > -             break;=0A=
> > -     case 1:=0A=
> > +     else if (!strcmp(global_autoboot_abort_key, "ctrl-c"))=0A=
> >               flags |=3D CONSOLE_COUNTDOWN_CTRLC;=0A=
> > -             break;=0A=
> > -     default:=0A=
> > -             break;=0A=
> > -     }=0A=
> > +     else=0A=
> > +             abortkeys =3D xasprintf("%s%s",=0A=
> > +                                   (abortkeys)?abortkeys:"",=0A=
> > +                                   global_autoboot_abort_key);=0A=
> =0A=
> This memory is never freed. I converted it into a static array while=0A=
> applying.=0A=
> =0A=
> Sascha=0A=
> =0A=
=0A=
ups :-S=0A=
thanks! :-)=0A=
=0A=
=0A=
gru=DF=0A=
Johannes=0A=


