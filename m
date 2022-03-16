Delivery-date: Wed, 16 Mar 2022 14:47:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nUU0J-008ibN-JP
	for lore@lore.pengutronix.de; Wed, 16 Mar 2022 14:47:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nUU0H-0005xp-Bd
	for lore@pengutronix.de; Wed, 16 Mar 2022 14:47:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IGXjwDZsZPZUk9qTZHKjrcO5pGHAiJfeS2wvbI//B8g=; b=ZSfiZeYuny25oJ
	DE9kXak13TnRWS1tH3S8gOEjWQO88rXMEyVdsTaFo2NTPKzeWH2ZbYYk95DJgVXsXO8FG+OI5RNKl
	rfk1DVwYXNSuo18ctm1LNDUDLKYhlbGizKqFBHSdaFLvaPGNFrjd940SvfO+60ETVC/oW3h9A5SKJ
	xau6PNQghHF/qTF0rteN6vfI1smJv5+ECtnB13RRP/pwUX/k27rFszhQ+OeWePf+nfcEyXw7/IgSW
	xV9lxir4f65/3FvFiEy6saZrDMbTbEja6UWxIsl09/HS1dKbJrhI2DrojJXJbMWLLtrheJ4j5VNaF
	ubmohIt7DCcO/aE/mh1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUTyG-00D5cJ-7J; Wed, 16 Mar 2022 13:45:48 +0000
Received: from mail-he1eur04on0725.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::725]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUTyA-00D5bv-6h
 for barebox@lists.infradead.org; Wed, 16 Mar 2022 13:45:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cR9xrSL91PBkmwrxh5OsjDOUxerLLjq5hHTjFDmK6N7JSONkzSJj6/grurHCZtL7aggzTrJHjFx07wEMlQzLvD6nEReeFpkxRs5ftopOWeTyuSgtFFO+vfLGhCr1Dl+exlU1HlZmGpLRf/FntEkIQCrQbsKCFf7rKu5a4vMp8kk60CSU9g4Fbub0cEz3NM7BG9c0foEgttBkJl+tIpc7hcz1xk8e9asZH97Q3zAO5Ce7MbHDCfwLdc3rZMLohSDOQCxZseTE1hwAHc/8QHG0On0+MGt7RnPuU+2lJoZBTyb2YDVoSFd8wINQrBuOknAyXtnfsADwXtOXRNSaa6Hhyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CGMNaSfI0fLMDnkcWqxuIiP58goDPNZvyIYh9sBCXOs=;
 b=JzVECJTHeDfo/LxIC+UjZjzv0Xk0BBEqd0ejbxfy+3rNa3x64QQgNvkeAaCAVNtbYUabiaf5lwBu6LGq3HKtfTdVW4hoFhsO+uCziujp9uzDWxuhWvTXX/km71HO4Dyv5AOmb2zwcqMs6POVUYCwMJGxiYL81uQeLU3iRCVrwaXO8al4Lb5Lso1SCjV7CvVLlNNJWRVNyWpurTMJgYWnZVWzw8U1HnMGDkdde2lmalp5lCOzlY6ZDUwBlT763dJsWGG1+zDMLYJT7oORxv3XHjKeiNfmK5PLGW4YVv7cJ/0+NfHgkTvKPtChL+F23fXXEAuQ8gNXx0tZ2UcR3m6o9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=basalte.be; dmarc=pass action=none header.from=basalte.be;
 dkim=pass header.d=basalte.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=basalte.be;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CGMNaSfI0fLMDnkcWqxuIiP58goDPNZvyIYh9sBCXOs=;
 b=q+w3ib/+j+m7XvGA4sHEmOQB+2VKBInebFn0zqYvwGIoMhndS9W2cm11y9Rw1639ktaYsj6X3IStJkWG7j5Jd2AX24DSihqSZnCsn54ODobCpxdiT2qhxeVKT9p95y4Oft6FOHr3SkMuVhppKgQqTaVSh+OgPU6GvP8jMgDuC4PG5aRilFzWP0ZCYss3HmKk9pnJe9FCfe7qei771AfNnKEvRoEmi85ST/gbDu8Qdp3vD/GZvACHQl9YqXDQWspX04USsFFd0UliZTHbFLE/cV/JvhZmGgkB7ALnjFb/3YZArFMAtDVuKenElu7DU2SCA/LgvvYW45WZ+TYta3Ngkg==
Received: from DB7PR04MB4249.eurprd04.prod.outlook.com (2603:10a6:5:19::25) by
 AM6PR04MB6200.eurprd04.prod.outlook.com (2603:10a6:20b:73::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5061.28; Wed, 16 Mar 2022 13:45:31 +0000
Received: from DB7PR04MB4249.eurprd04.prod.outlook.com
 ([fe80::35eb:4428:3952:c4e0]) by DB7PR04MB4249.eurprd04.prod.outlook.com
 ([fe80::35eb:4428:3952:c4e0%5]) with mapi id 15.20.5081.014; Wed, 16 Mar 2022
 13:45:31 +0000
From: Tibault Damman <tibault.damman@basalte.be>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: nand "BCH decoding failed" when using bch8_hw_romcode ecc mode
Thread-Index: AQHYOTJYb21ShT7QkkuLwX09eUkWOQ==
Date: Wed, 16 Mar 2022 13:45:31 +0000
Message-ID: <DB7PR04MB424951EBC916B7A1E0A1B274E8119@DB7PR04MB4249.eurprd04.prod.outlook.com>
Accept-Language: en-IE, en-GB, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 553f022b-9216-ade0-ded1-55467526e448
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=basalte.be;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1c1ce052-74d2-461f-0b67-08da07533cf1
x-ms-traffictypediagnostic: AM6PR04MB6200:EE_
x-microsoft-antispam-prvs: <AM6PR04MB62007F2750B301C69E3573EAE8119@AM6PR04MB6200.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xxiTj21AwQTVVL3SlIU8z9VHM10Ns++7yW+GYxql5WKZPhdVK4CHmVDz8NseJ8EUI2KPWrqBLgXPqAAYJI44gFQT2wWRHeVFpoHhWtV+p3NcGRk865heevVvAbIoTLbu+P8KJLs9CInNRGGbLijLb4qGvk+Mprwt2LIYaR8S49cifnjj4XBHEjR5jximXbCszbez3Tm8bqTn8i2Q3HY66zZwYiuLG9qBPcZk6obkkliMxuWpmcztgh2dHCiTPFo0DLOybLk8orGkIMuAnxBYiH1ONWy1xbnabOy5gTjVGZIFrWRMFiFQhcbyPkaOgjqVS4WcYT2VfrJ6UYF4WYyvFMDC8NUk0C4eHIC9vskqyeZ4qiQZC3bzq5KUzd5S2A2QvQ4ie4r+i5Wgu+NJ3rNjohZhsZSuFKghTAewRfTT2ljS6CTxMWZ3lHkjFVuMvgmIiuaRWwsgO7FjRgJL2dVoisMrl5WLc3eq9wkx1wvBhtfusVWMOWbrznvA1IDg/bq86X9NsV8bIv7rbMNUHrKbP4TfATPQ802KTAG7qDEjd1R1mQw4UMByxPw9RywgeAfUzupqm45a2USzG5TPnEYjuiO9BdtO3Dvxm6f5F8p0jrNYK0svbpELmBZyFpDMODq3CqVVY+ash9eZCcd5ladn+iqZxAxIRJtqYRZM4G1+P/BhH4xP9ncz9L23wCVkD6QWMG5o9zNymmBvc74XAeD3aA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR04MB4249.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(396003)(136003)(346002)(366004)(39840400004)(376002)(316002)(66946007)(55016003)(8676002)(508600001)(9686003)(5660300002)(64756008)(66476007)(122000001)(86362001)(66446008)(91956017)(8936002)(38100700002)(76116006)(66556008)(33656002)(44832011)(7696005)(6506007)(38070700005)(52536014)(26005)(186003)(6916009)(2906002)(71200400001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?wqA67/igvIvLP4qRB6OyejEub6Dw+esLSoph46g+YeCM6+on3ksUeP38Bk?=
 =?iso-8859-1?Q?oezL+XKyqlaE+UVy/Lvd0ScTM4HR99luVdeuJp6RK2kULOrGbslnfqqUMM?=
 =?iso-8859-1?Q?VO4vIZ3P+4M/cUpCmbCt/s1J8aSbvX5qrW+M8sqjfT0UkHwDIoZKG+nJiP?=
 =?iso-8859-1?Q?ywARKw5ox+ocnEYC8sakRuFcy5qa5AgAul4dZ9RlamfMsYgG3D8nWRkEQn?=
 =?iso-8859-1?Q?39nRO/6z1kJU6TRWlcFWvnHBgI86iIqQ1XOP0FlRpzijsLUv+98kZ0oe3a?=
 =?iso-8859-1?Q?5ap4j4b5+/yaiXUaKHKi7J0jPYT+SakNX7wMTTECW85W1Y/fMUasc0NzMF?=
 =?iso-8859-1?Q?L7TI7nBNb/Og+IRvc6NtxWE5xs2/doGS2Gjjb6Dj83TQ9nK+45J+ICC4x9?=
 =?iso-8859-1?Q?KQIpIyXW5UK4apZvZtFIvkCMdwQxgXxEryNzgnhu+dwSanHdDdVLhLSyqL?=
 =?iso-8859-1?Q?9ZoBkYlyh3MW0oT1qly6wA1Z/dHMFy0UcFRFH0rBIHM0x+0NkmyO8SR5cZ?=
 =?iso-8859-1?Q?v/jKFvMozkNaKtGG8J8DAYUWBn7CQfRPPa1r4K5MFQvNUAzkadc8jUltzk?=
 =?iso-8859-1?Q?tjngwodhlIZHamwQN1Yt5kJUQ798uORb8sNZ4f1MoKHRa/Q3UrcLgXYucj?=
 =?iso-8859-1?Q?sCgxZ8gK1pzOw9GXlvwWnbdUfRmq9xW0aZvS9a59az58NEzpEvXmCsGvwZ?=
 =?iso-8859-1?Q?lKheQFxuJhN4dApDROU6rpM0imiKe6DLvUXOXyYwJCMMdWZFTIyO0kpIem?=
 =?iso-8859-1?Q?0YIs+fkW+PLm3kHZMx/S3tgdq933iFoSaGewMcGLf6egzXafqhHsMjPpPy?=
 =?iso-8859-1?Q?wr0weDcaaG94SoLLkdt4zorD7dHXsTZnzuHpZikSAQ4ABptIu5zz0/3neG?=
 =?iso-8859-1?Q?Wkn7/cGy0Z3Poitmt3yNKPw+uaBB5v4yNSvY5mOib1v/VsLRMu2/t9I6rO?=
 =?iso-8859-1?Q?mCQa3JMWYlV1OIhEJyXyu8RHO9XIyIU+xVmtI2TNLI6B9CEBZFNDjMkhZ4?=
 =?iso-8859-1?Q?BmTsm8GVmPhqKRwh70HQHURapVuhQjmXSdYqiSc4DgEakx/DhT3CctQ0kh?=
 =?iso-8859-1?Q?Q5Nl62Mg6GRsfHBHtHQ2IziC21RrhZmIM2lyjKJlykvaiJqay7Om6mbQbE?=
 =?iso-8859-1?Q?lLNL1hZV4fR+cwRfY6bk+gVuqo0xxFl2aK9d6Nlj2xqYqAVwLJEWknKQ3S?=
 =?iso-8859-1?Q?2rFNQzcvldYGKW8ASPiucYvVJqp1gepJr2fTT6ROdRfIVTcwGek1S1VeSe?=
 =?iso-8859-1?Q?iHhisJ7ibMp0Y0P1JD1tzw0zuoc2CDfkiCiTvM3ITwK+swPoABR4Mf6Ko7?=
 =?iso-8859-1?Q?/to799FKwxsKcmrBiqX3TBIhGjaS5cK1IMvzMEACqMvID5MoG4I2rE/348?=
 =?iso-8859-1?Q?+k8aKn9kf6Uosk1/9S8KQimKQRngYy86dpC8OQY2rVUUwjN3YtE3y9Qjgn?=
 =?iso-8859-1?Q?/H1KEkMXZnXETPbELV62BK0ovLSNPHpCScMM5yLI83x4yTkwvejs8D7Fq3?=
 =?iso-8859-1?Q?Ri8aD/GbHBsFdxg3DaRJIA?=
MIME-Version: 1.0
X-OriginatorOrg: basalte.be
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4249.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c1ce052-74d2-461f-0b67-08da07533cf1
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2022 13:45:31.1050 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 848bfa46-da8c-48a5-a4f3-bafe311d486d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TtYOfA/UT25t4H9s7MuWOijItfPs9K2pKbuwwL++JCX7zqvhUBzT3IcBH3zB8C/oBArwXroVTWA8ppapWUJs++5/ODYymD9UOOMaLNYbMIk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220316_064542_569422_C82AFDE3 
X-CRM114-Status: GOOD (  11.38  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: nand "BCH decoding failed" when using bch8_hw_romcode ecc mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all

Due to component shortages, I'm trying to move an old board from a Phytec Phycore omap4430 with 8bit nand (Micron MT29F4G08ABBDAH4) to an omap4460 variant with 16bit nand (Micron MT29F8G16ADBDAH4).

To be compatible with Linux 5.4, the rootfs nand (ubi) partition needs to be in BCH8_HW_ROMCODE ecc mode instead of the default BCH8_HW.
When I use ubiformat or ubiattach from barebox in this mode though, I get a bazillion "BCH decoding failed" prints (which I did not get on the omap4430)

> barebox@Phytec phyCORE-OMAP4460:/ ubiattach -O 2048 /dev/nand0.sys
> ...
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> nand0.root: error -74 (ECC error) while reading 512 bytes from PEB 887:0
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> nand0.root: error -74 (ECC error) while reading 512 bytes from PEB 888:0
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> BCH decoding failed
> ...

I tried these combinations:
* omap4430 (8bit nand) + BCH8_HW ecc: works (but not compatible with Linux)
* omap4430 (8bit nand) + BCH8_HW_ROMCODE ecc: works
* omap4460 (16bit nand) + BCH8_HW ecc: works (but not compatible with Linux)
* omap4460 (16bit nand) + BCH8_HW_ROMCODE ecc: does not work

I've reproduced this on the following barebox versions:
* phytec's 2013.06 fork
* 2019.07.0 (which I've been (successfully) using for omap4430)
* the latest 2020.03.0

Any clues what could be going wrong here?

Maybe the 8/16bit thing is a red herring, but it was the most obvious difference.
I've tried setting the nand device width to 16 (instead of 0 (auto)) in the board file, but that didn't change the above behaviour.

(I've also noticed the ubi tools keep assuming the subpage size is 512, when the nand has no subpages. Passing -s 2048 and -O 2048 works for the omap4430 though.)

Thanks

Tibault

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

