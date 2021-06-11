Delivery-date: Fri, 11 Jun 2021 17:18:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrivk-0001xl-IG
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 17:18:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrivi-0002sF-Te
	for lore@pengutronix.de; Fri, 11 Jun 2021 17:18:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Av11Glyw38dqQ2q35TPZ3NNOFu9KHKsNwYv7WhZF378=; b=PMFmY++a/yyolI
	9XiZ/8QNx4WCQGICgw3krCsCdTfOvOj7hlebN1dDi/K2TwXL421uIM3R0FlvppYzmS2yZWTxqUsBz
	UzpMAza29u9EHXnzeFBqBcYJj3GCzpADrZfwl6cyT5wvbdJoSkzmVca737KfsE3fVBqvETyoNHeDV
	uETxO/MWWPtJHuTfAamBCBR49qT+O+rUbO4Hs2EHuNOD9RRrjg9eNaa6B5F+SEyQbTClTMZ65D2NI
	VTFxylef7MIjcfVcf7dMQLs8NgPuLFora/gTd57odx7cLsdNzTr+Ny9t9txwWAg/E8m663fvS6w64
	uAIqzOAQm+p1uM6a+NDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lriu0-005mss-N9; Fri, 11 Jun 2021 15:16:56 +0000
Received: from mail-vi1eur05on2119.outbound.protection.outlook.com
 ([40.107.21.119] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lritq-005mqB-GF
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 15:16:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VSSFE1N6/pniSblBad5+n4PM+ie2Q04a11qulxoqJC5gluizJXBG+NQm+ZqpmyJiXR/QFo2IUABCGH30n1M+EaeinhpRpm6EQeKIX4JnJUpXZWV3ZI+kszBvmhajFxyWnGgSmkjQmqu0ZDFkAbwR06qfyPaOobGZU1h9Ma+Tk2/kxeYrkc3iR7TTKmLu8Gx8XllNokA3ovI7sQ8sYi5UupRxHguE338lLnH5RFMX/OWwvgv3LwImOY1e4iTfxOLQZz/FbmPnAQhvaa/9MqdZHIjNC/i6HK9nmKvjVkFouaNWsh6lXxeqeUHVeVNolCSC2yODNdTd9sgrKkskKA0Xxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eVEINtJaC9hsgfDXc/kvRhOTo9CFhCmmtKXpBuw45MU=;
 b=JpI/DWYRsvWYJLx4MHlQMAeHz4Q9JN074npznhvwzqyxjcGuzpQnjVy08YeiLrLsxFBW8JQ97YJvliRrViRznmVMjJv+pLAFa9S+bUD6g4bSjy2YkCuzb0+VxWZdQV6z68g4jnWBIUrMYUFHJHAqaARCEhSkZTqmU6ljJghrAlVhr40IPrt57gJow4AVS1L6HnkUd7Eh5nxGMRgMppJKLxHSufcGhgSDMKT7SNmior3SlLuoSN8I/aWdXdg83g48+ipCgoP7nzjUK9pUk8RzsuI7Pl+lsSOVmA2jM1tH1Rin5ImXN1BQ5cGHOfKUp/VoE5tyK1I/lNhVWxEPYX+0pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=klsmartin.com; dmarc=pass action=none
 header.from=klsmartin.com; dkim=pass header.d=klsmartin.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=klsmartin.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eVEINtJaC9hsgfDXc/kvRhOTo9CFhCmmtKXpBuw45MU=;
 b=Z7n0PffDTsHjOE70dX4o6KzRHokn2s8TVv87UVzViMI75nNPGtN23h1BwnzqLXaxAcHss2JlT5LuAqsuliWSKKDzL92mhkkteRPBvwhauPFZDjERbn0tynOEkiSIuaUWzLUXLqXobWwg609wvBxMNrMiO/OTI6Bt6uHLisAiIdWRV3LBe4CGbGaIUndbeOFuiHwNiog+a+f1I++DDA01dpFjIAIW3Iwbq6lHqRe5Pskhs5RSydErdRCcS2aHOFtjiMo+vQDe9GdEh81kLy8SBAjWaRY5Vu+n2qZjo30/FTil1Tus3gEX8E366uV6qAJKZ2OD1VpcpsyOSIBfi3RA4Q==
Received: from AM9PR02MB6900.eurprd02.prod.outlook.com (2603:10a6:20b:26a::17)
 by AM9PR02MB6801.eurprd02.prod.outlook.com (2603:10a6:20b:2c2::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.22; Fri, 11 Jun
 2021 15:16:41 +0000
Received: from AM9PR02MB6900.eurprd02.prod.outlook.com
 ([fe80::cc8f:2e77:bbe5:e226]) by AM9PR02MB6900.eurprd02.prod.outlook.com
 ([fe80::cc8f:2e77:bbe5:e226%7]) with mapi id 15.20.4219.023; Fri, 11 Jun 2021
 15:16:41 +0000
From: "Middelschulte, Leif" <Leif.Middelschulte@klsmartin.com>
To: "sha@pengutronix.de" <sha@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: imx6 nand: dbbt version/layout
Thread-Index: AQHXN3D5yYp2rPZ3AUeQvgRvYVw+QarRweWAgD14yIA=
Date: Fri, 11 Jun 2021 15:16:40 +0000
Message-ID: <c72b0e7bc67a05f77a67c4fbf9d0b04d27a7fd44.camel@klsmartin.com>
References: <78f79375e21e753086868b2212485b488443bcb1.camel@klsmartin.com>
 <20210503123232.GJ19819@pengutronix.de>
In-Reply-To: <20210503123232.GJ19819@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none
 header.from=klsmartin.com;
x-originating-ip: [212.211.189.60]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c0de43bb-765d-43cf-274a-08d92cebea6b
x-ms-traffictypediagnostic: AM9PR02MB6801:
x-microsoft-antispam-prvs: <AM9PR02MB680175C1D5ACB8910E19E5C699349@AM9PR02MB6801.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TuqlTrBf/4cTBcZZaOS/qduwiowQ6C5hcHEqFHtpDMM10s/hmaijyXmNKQHV+7iF4I1oDAQEs8/85wXUcvPbntda4oSJzdy1Xmi5xIRjppCJtQ0CpfRAVgkw5cspUs4haiTZXl78bbt60SsGkrBPdopgo0XfF0FFi92f+yYAdShWPwv0SkBepp5teQqN/8e29eRGXrFez70AjLo+hGkZNtGc4IqTHbPzGY/NLEoH5ysYuBIrJXZlfnvLbtEfDqBkXN6thSyz3uA/TZHaQ+02aVSOZJkmUDhw9vcqzLWtGam32llLMhdgqkFH1KqhUoo9dGVm5qQ33fOKqba5jOQJON8fqAbg3gjGzwesFPxP4boEBNRteN0gPZHidYPKOTP795/Nhk9ecT94W4KCUMizKIG2I0GnJgnnmG9CdK2On+Wy3yMr3JIN0rghxwyc9YrIUKN3tl9gOWCib3CTuFCRUhmukUWJktPLBUu1ujm4rzOmaUK+gduzd8umPVEOYiSbw8PbmMeQhqTIPyKkK1M20pR+POgxv6pF9AN3FAqZHRdsdiQJ1xrTzyRlYLp1az7lpdhTqWxjw2EoQmzFFXdRKDINf4zdUEnRlurAusdehEwDOsVQylcGVlljae5KL/9l8YKu/IN49bMw7mM8YUs57xrEMgyFwT2CPudBKbtYSBejd8a7Tp0qaKcLjj+3lp+oKoaCVhzQ4/HGCiCN7UkY0g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR02MB6900.eurprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39840400004)(376002)(366004)(346002)(136003)(15974865002)(316002)(2906002)(86362001)(6486002)(186003)(6916009)(26005)(5660300002)(71200400001)(6506007)(122000001)(966005)(8936002)(38100700002)(66556008)(66446008)(66476007)(36756003)(83380400001)(64756008)(4326008)(2616005)(478600001)(66946007)(6512007)(8676002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a01DN0l6bWI1MUtvaEk0NitBNjFVbHZUVy9BU05PaGNrZ0FBL1MyalZPQW4v?=
 =?utf-8?B?MThxM3B6Wnh4bHhyb2wzVENoQVhxdFpnL0w2U3FTMlcxc0RLbzhtbzh3bkJZ?=
 =?utf-8?B?QTBKMnRaaUVaZ08rUVZSSlJpSjJHUmtKQkpXeDRMazllMGxGTmtNVWQzRWhB?=
 =?utf-8?B?VVhZV0ZYa1d4YzhJUlphRTR5cFgzSWcvcUlhcUJ2WlEwbGJBS25lUHdjUGZn?=
 =?utf-8?B?VzB3ZnpCTmRISDVPQ2FxSVQySWNnVzBuOVF1a0trZ2o4bEJMUkdCbmEzRGpr?=
 =?utf-8?B?UWl2bWNWai9MTmdCdUZaYmNJbjhSSjRFQWdid0QrNHlubndabWQxdzdnS1FQ?=
 =?utf-8?B?NW1qOUFOR1BEQzlHdkVtVGpSeTY2NGlDNGxMUENmS3p0SXFLbTRBR09BZHJK?=
 =?utf-8?B?TUo1aTZaUGlkclRpUkh5YnNISTRQdnhPcGp1YWxhMTBHaFR2OGh3NFBmTHZX?=
 =?utf-8?B?U2p3QjFXSThQbmZnYmRjckZ3Uk1ocFp0aHR3NG5jQzNjYzJObTlFalhYNnBx?=
 =?utf-8?B?emRBbVJvNDlBaUZwRU1WUVdnTWdjemZoa0x1RU1qSUZEQlBuNGVMQkF2RWYx?=
 =?utf-8?B?M3dFQjRyaU1IdllsQXh6N1U0VEZvOE40dXhlS0lQNHFGUWlTbGMrZnZtcC83?=
 =?utf-8?B?bFk3V3ErTTdYaC9UdzYwUFZEUkNPY2RieXlCZXNXK2FleHo3WHNCWmRRUmtv?=
 =?utf-8?B?VTRjVWNCMk9MV3puSExoR3BzQjlRUEU2c2s5NHdrMEErdlFMRTdRMzAvQU9y?=
 =?utf-8?B?QWxPWllBdm1Ca3lrU1VCZE5HaTYxT0cxV1ZsWEVGb1dzd0dISnVacFZvYVM4?=
 =?utf-8?B?OWQyQXJNWGkrWUpWc0dRRGtRTHgxQzZBamdtbkJGTEcrc0YrMkp3WVRGeHIr?=
 =?utf-8?B?SDUxeDc3RjI2OHBiY1VtWmxKdkYyV1p5WThZSjJXYlhobEVsRE9HWkk2L2gv?=
 =?utf-8?B?SXlHT3N4cEFScmUwdzE5M3k5K0NaOWY1aUJTVk9FU0hyNkl4YnIxY0drM1NP?=
 =?utf-8?B?ckFZQXJ0VGJuMWlvU0xhWWs4VHhpSy9uRTFYL2tzeTEzTzRVWnNoNUZFTis1?=
 =?utf-8?B?VkhjbUhrVjRucGE3VFpCZHMxdHlMM3d3eTZzS09HNUozSDh2T3FYQmRVWUNE?=
 =?utf-8?B?SzFyeEFxZzI5WGxGRW52TjhtMXloU0c3dUlqVGJBZGRLY1pnVU1wejlUVU9C?=
 =?utf-8?B?Uk80a2U3dmJxMmFLbU1LU3Fza0RrbUhYU1dKYitiQ212WUNFRHY1TUJocVQr?=
 =?utf-8?B?UUJHSGNhTUViaGxoWHdtZ1o5eVE2NTZTamttdjVqZ0plQm9qKzdYcEwyMGtm?=
 =?utf-8?B?azJKcWF6SVJ2RXJ2YnhLRGdSeEsyYktyVmU4T2xvT3gyNFMyV1JoR3ZDWnNF?=
 =?utf-8?B?aVNDdFRqcVRvTXRpNkNxOHk3Sy9RU252Y2ZNSnVlR2ttbUNSU1FNZnlxOGxy?=
 =?utf-8?B?blYxSWtxeExEd09xSm9KVi9DLy9XLzc2Vktad3BNTUd5RFJ4TTJkTytxTUZE?=
 =?utf-8?B?NVhzY09SYm1mVHdrSUNZSksyZ3h3RnJYNXFMQThsMmNROVZ4ZHhGNnFZV0NH?=
 =?utf-8?B?S3RMOGZPblVFcUhSRnl3QXNyZzNxT3dIdjIyOWZpajgzcGhDb3NnOVdhR0dP?=
 =?utf-8?B?MEsvOGFJTzkwQVpUMmRmYThwVmVnUjJBUE5BSGRaUjJiQ0xVL0dVRlZsM09C?=
 =?utf-8?B?SlBobzFRd3FBVFNPWHZnMFFMbjk3Z0ZsWUdQS3hxSmdYd0RiZTk3eVk3MTZK?=
 =?utf-8?Q?ILEt0cKumDim+nUKopHqrodE0ExfzdEBYGIbcHg?=
x-ms-exchange-transport-forked: True
Content-ID: <D50AF402774F474C9266CD5AB8F156B8@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: klsmartin.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR02MB6900.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0de43bb-765d-43cf-274a-08d92cebea6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2021 15:16:40.9581 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9d29fdbf-9c75-430e-86f5-ebe1ff5a5223
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ldbuAarLp3fYry2E+cUj44bWnpxObVe5RylgG7H2JssEL4L1tRKqdMtkHzG16ljng7f4pEQfzIeQ/AH8WmYZGqpJxEO9A2GGFnZZcUrnIzZd7NFJjcT9dx3LjWwLT9EZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR02MB6801
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_081646_634108_E1B7446B 
X-CRM114-Status: GOOD (  35.11  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: imx6 nand: dbbt version/layout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am Montag, dem 03.05.2021 um 14:32 +0200 schrieb Sascha Hauer:
> Hi Leif,
Hi Sascha,

>
> On Thu, Apr 22, 2021 at 12:13:59PM +0000, Middelschulte, Leif wrote:
> > Hi,
> >
> > I'm in the process of fixing up imx-kobs to support
> > - boot configuration dumps
> > - boot stream extracts/updates
> > on iMX6QDL using the GPMI-NAND interface, as provided by some more
> > "recent" kernels.
> >
> > I updated barebox on the NAND flash storage using another instance of
> > barebox. Now it turns out that the dbbt version used (i.e. written)
> > by
> > barebox and supported by imx-kobs (as it was) is not documented in
> > the
> > i.MX6 QDL reference manual.
> > Barebox uses[0] DBBT version 0x1000000, while the reference manual
> > describes (i.MX6DQRM Rev 3., section 8.5.2.4) layout version 0x1.
>
> It's stored in big endian. Just endianess swap 0x01000000 and you have
> your 0x00000001.
Thank you for explaining the quite obvious, my bad.  :)

On another note though: Barebox writes[0] and verifies[1] ' BCF' and
'TBBD' in the BCB.

The most recent manual (IMX6DQRM rev. 6)* states the following though:
- FCB FingerPrint "FCB ": also given as 0x20424346, which is ' BCF' in
ascii
- DBBT FingerPrint "DBBT": also given as 0x44424254, which is 'DBBT' in
ascii
Notice how the value is reversed in the first case, while it is not in
the second.

Other tools, such as imx-kobs, seem to use[2] the value given in the
reference manual for the DBBT.

Since the ROM seems to boot either way, finding "the correct"
Fingerprint might be nitpicking, besides the verification (write skip).


[0]
https://git.pengutronix.de/cgit/barebox/tree/include/soc/imx/imx-nand-bcb.h?id=7689055a8b037363dae840eee33a0ed43f905b7a

[1]
https://git.pengutronix.de/cgit/barebox/tree/common/imx-bbu-nand-fcb.c?id=7689055a8b037363dae840eee33a0ed43f905b7a#n791
[2]
https://github.com/NXPmicro/imx-kobs/blob/269fdffcf97238684de9f28977a73677282e061f/src/BootControlBlocks.h#L35

*CAUTION: Older versions of the IMX6DQRM state even other hex values
for the FCB fingerprint (i.e. the ascii equivalent of ` BCN`).

>
> >
> > Besides that, the reference manual apparently does not describe the
> > field `BBMarkerPhysicalOffsetInSpareData` at the end of the FCB
> > structure. Yet again, imx-kobs and barebox are reading/writing it.
>
> barebox doesn't actively sets the value to anything else than 0x0. I
> have no idea if and how the ROM interprets this value. Indeed the name
> of the field seems to be inconsistent to the reference manual.
Never mind this.
>
> Regards,
>   Sascha
>
>
> --
> Pengutronix e.K.
> |                             |
> Steuerwalder Str. 21                       |
> http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-
> 0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-
> 5555 |

--
Kind regards

Leif Middelschulte
Software Development

KLS Martin GmbH + Co. KG
A company of the KLS Martin Group
Am Flughafen 18
79108 Freiburg, Germany

Phone
Fax
Mail
Web

+49 761 557 997 -543
+49 761 557 997 -152

leif.middelschulte@klsmartin.com
www.klsmartin.com




Commercial Register: Freiburg im Breisgau HRA 4044
Managing directors: Michael Martin, Karl Leibinger, Christian
Leibinger
General partner: KLS Martin Verwaltungsgesellschaft mbH
Commercial register: Stuttgart HRB 451316
Tax ID number: DE 237467280

This e-mail may contain confidential and/or privileged information. If
you are not the intended recipient (or have received this e-mail in
error) please notify the sender immediately and destroy this e-mail.
Any unauthorized copying, disclosure or distribution of the material in
this e-mail is strictly forbidden.
This message contains confidential information and is intended only for the individual named. If you are not the named addressee you should not disseminate, distribute or copy this e-mail. Please notify the sender immediately by e-mail if you have received this e-mail by mistake and delete this e-mail from your system. Any views or opinions expressed are solely those of the author and do not necessarily represent those of KLS Martin. E-mail transmission cannot be guaranteed to be secure or error-free as information could be intercepted, corrupted, lost, destroyed, arrive late or incomplete, or contain viruses. The sender therefore does not accept liability for any errors or omissions in the contents of this message, which arise as a result of e-mail transmission. If verification is required please request a hard-copy version.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

