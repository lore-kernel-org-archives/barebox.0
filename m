Delivery-date: Mon, 19 May 2025 10:33:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGvw2-000SBr-1K
	for lore@lore.pengutronix.de;
	Mon, 19 May 2025 10:33:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGvw1-0005an-NT
	for lore@pengutronix.de; Mon, 19 May 2025 10:33:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m3g69WTrIDZqitozjIN6312aqtBr71jItUpqImZt9MM=; b=zqiN44IeLfZtIYqkrg7uEjlw0c
	vPv04uTNKhJ4sYvGZ2BHcR0RKxXZxpL50ZPUy2uTAkMWcP9BjuE4sZunVBzfxR04RVe+qD4ZWQsNX
	Vbl7LKe9M3gw4px+F/5yhpA8XOaGfjRvYJ5lspMGoG+u1xwL3UasNxAu1PgLltRbxM3EvSUWkbkJQ
	EtqF2RXM2rN+JtsAWfwfKQ0CddB5+UAYDXtW8l1+/jkGPryOz1g1vx0gKM8JfQlLCBufbHYEmvwcw
	vFk8ziYIpKhUs3jmyGstnxbLUyOUGAKVWx58brTQhFguQkUBnr0hcfFGZnM+valadj+ZLk6zavh/S
	QuWiHrfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGvvL-00000008MPR-3JDa;
	Mon, 19 May 2025 08:32:39 +0000
Received: from mail-db8eur05olkn20827.outbound.protection.outlook.com ([2a01:111:f403:2e14::827] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGvvJ-00000008MP0-20c9
	for barebox@lists.infradead.org;
	Mon, 19 May 2025 08:32:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J8HmJ5aoafTu3/iJ2WMs7goMVmTTQZ/orBf5s2D+Wq5sML5nGJXgUB0l7VixnQMM8vtJpBDo9OCrNQRbEgHrm25pCz7h5nE1CPOq6WOCU1llb/uG9zCCiKHCmvyhExeUOAP1RulFEjpRA729bMTgN3lz61frlpLMnZQGjmVA5fJ8qwa+2M/qpm6Zpk6gtP/w59BYTEA/QDEPVUpG1xkhJEXw4/FygKC9qvXcoBnTIj3uk25ueQ18S1LrOpplg9u31aquVmzXzaBsZ6KwG3B7/dlpmL5nmiSe22r+gRsaBbuaRI7Sdu06VWXl+pcPJEscnhI4QZRvL8veRkpGpyyMww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m3g69WTrIDZqitozjIN6312aqtBr71jItUpqImZt9MM=;
 b=Hyi74BOiC6cEUPU670Ro4He50OHnwYgppVScZchfhwElm9SD0wR0pW8AyLYBHtg9v1WbBIE9BfqfpmmLx9alQuvTwLzrAwIQ5ebs19cV8Gt4KVnqfBKJpN+9lH9/7ELHYGZAxVk4jPZ83derDcvD8UjLjCiuigLbjYKS3NHqKD48oR5jgHoNhDDGZxuMCujwIuGiiuUMOl8OqmPlGFZD5XvjnDbyhiz2UdhmkEHhlcavuFi+X7ndAWI4Ifd5UfCK2sY8Q+QdfZ/nrvmTnInubPv4IqrZOV9K/3nX96bQczVmPxFtakHBu3G0/EoDFfiixTMZApi02ka1WHuvkkYSaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m3g69WTrIDZqitozjIN6312aqtBr71jItUpqImZt9MM=;
 b=QzxSeWUuuRjHtx0u5BlJWSCwDZ7eSwYl9f69wC0LBnozYf5ce1D4fqoKV5gw/ql5ZfMhitWhOTDOaNi84930ywqJ0muF8xKD1W9Jp7fZMsbttF3v+Jm2ZGEG5GVNjVPpBDZTQ+4qwGQRpkqUyOF6FuvjFyb4CqFFfAg3lOx3qTjt2iDNncDE7gnZAAAgrc8WIm7e/ADEo1oE7cE/rJZXQmnmnc5jBKPei96xAnsydvsQ/hxOgeATK+qm/N/qSj/xHeSS72gwpr8agmnydo4ZjIuAg+i5bbqDszBozxy4rF/UCTe7gNaGpjpk4VZldv+6GzenJwcNioz6zNjwR58/Cg==
Received: from VI1PR02MB4429.eurprd02.prod.outlook.com (2603:10a6:803:b2::14)
 by PA4PR02MB8239.eurprd02.prod.outlook.com (2603:10a6:102:270::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Mon, 19 May
 2025 08:32:32 +0000
Received: from VI1PR02MB4429.eurprd02.prod.outlook.com
 ([fe80::fcf4:21c7:f28e:cfb2]) by VI1PR02MB4429.eurprd02.prod.outlook.com
 ([fe80::fcf4:21c7:f28e:cfb2%5]) with mapi id 15.20.8722.027; Mon, 19 May 2025
 08:32:32 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
To: "johannes@gnu-linux.rocks" <johannes@gnu-linux.rocks>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: Porting Cora Z7 Board to barebox
Thread-Index: AQHbuGQPqzwALOjZYk2NUVoQpLhIlrO6UiKAgB9if84=
Date: Mon, 19 May 2025 08:32:32 +0000
Message-ID: <VI1PR02MB442974EA90C7070E2DCB3350AB9CA@VI1PR02MB4429.eurprd02.prod.outlook.com>
References: <20250428172001.6708-1-johannes@gnu-linux.rocks>
 <aBCO-SSyT0BQnlek@pengutronix.de>
In-Reply-To: <aBCO-SSyT0BQnlek@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR02MB4429:EE_|PA4PR02MB8239:EE_
x-ms-office365-filtering-correlation-id: 488d951c-65da-4a6f-42cf-08dd96afb33a
x-ms-exchange-slblob-mailprops: EgT5Wr3QDKyPkYWRuRja31U+70CKwIFkeYT8wGZSrxHOzOXjskmspcz9Rhe9Fm2UpJT3YloIUbCThTz8SMj17JqMJLJutRBsOVPqKyWg3DKzHyMPPkBIsiZJthB/Lqw83q7ykQ20Knu5gPEKCX8gN1IZ1zJ25yTDB9oM8fsy34OLhWY94BaNW11EoIoxpzFcmJd2vRkyzt733lrf6rgodJxZnNS36w/FekT8VmOg8Ud65Nk9OKjPJeqOweaFfQzFgRD3xfIZYbKe1zpF/laozujJKugd6ttAyyg2GOmMz4u1Ws4MLmKfytj61JnPRBT9selpPFxJut0CbIMoN7tb9YxaebUv4/2+gT6VMJSDKZVUJ+fIXkw9YTIU2X9EcySLcq2Z/cR6ZXMJKg0zCjY/KLOv1jB9BrF9YJJUNyUz4hu58ppVzMuYQm+IlHUbPmdaC8vu2KQ6CWu4PXMda+LpfEZNb8r/xi5kYIMCwtQ/v7fddJWzG5yWAdeT5I16VXrX6nK9hvTfgzTo0qlbUjKdDGC5V5dz0WwWgLpe68De1tdlcuQiyxU2xuuX0dTO0cYY3TRljaXVsSHhAoOiJVSIPm2lp+B1cgKxweWczd1w/ql8eOTS9rZXndyJWA24SicCfqNAdT4c7cKpuywSKjBszzm9PKUdUBbU8muY/zldzuW2RZAceoj4RGzjigrqg2ypucF8OTCQ90Y2WUU8F6T1iMr/iW25f52J6ZuvY8ayty0=
x-microsoft-antispam: BCL:0;ARA:14566002|15080799009|19110799006|7092599006|41001999006|8062599006|15030799003|8060799009|461199028|3412199025|440099028|102099032;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?JvQDe+nfYAvqvHmDA1u4cEF75B5tS2UbYIn+9Mv+0t94yIM/a/Is/JUZeT?=
 =?iso-8859-1?Q?mANtuoFtybyB3GfAUpuk8pGkTM7VaoPL6yXcGMLq0SS0Ay4C5E8DwBUwC0?=
 =?iso-8859-1?Q?5HUuPOhMoVvScKu9383i5ipEHmVH66xhB2b/Vh6/JyZH+3Sbmv0YJ08CGL?=
 =?iso-8859-1?Q?8WJ4hIc//ZqkiP/nlwpJK6bMW0C3MKOLpCzyCj2OBA0VUnE8VVEGxwtxY5?=
 =?iso-8859-1?Q?473dyT1BTO5IJIzCVXiy09oIl8aIpPhB0m4ET7NNo3t1z1OQNE8bjTTQ/s?=
 =?iso-8859-1?Q?LjtHRWw+bPDNVCd1QfAzoIYRk7Kic9XOyd/afBJaRcKdtNf0wymf+RAF6E?=
 =?iso-8859-1?Q?4lyVbDfdIxBVxvv5B9XdHK2WlpQBs1HSr/DmiXROzC36RHpY3ZQRYs0WUu?=
 =?iso-8859-1?Q?eUtBc0sDG/EdSDfFDkjpASVY3tY5qkQudsvbiJMSFmfWmc5KS/q9RSLr2T?=
 =?iso-8859-1?Q?bTuzL2NdW6+3sh9zJ/GDnh6wnQ9iOGxSIFGg7qyh8dSNNWt2V71x39OW7e?=
 =?iso-8859-1?Q?dYC5Pa/NBrNiMIZlCxJ0fJg/ynGJ6Louy0lvVrwIqinLK7XVrmJM3ejcvM?=
 =?iso-8859-1?Q?u5vThZ+VV+5KBA1eDilWV4vBZz1g8BQ955B5fZVWTnV4f1IWWX0UO5ORRE?=
 =?iso-8859-1?Q?eURRqTYpqvvFc1JnHr+0RVIeTs3TcXRUMjS+XjF/9Ws0VfMiJyuBCCKppx?=
 =?iso-8859-1?Q?uyAnjBD1NtniB2MyD1zH0lpceu12clPjB+x72DCn3MxTMuIg+F46uCar8n?=
 =?iso-8859-1?Q?JrNH9d8cG6OTeiKKn/9FI2Ub6hArc90icJt6hymYF2TA+Y4zUX34sek/Fv?=
 =?iso-8859-1?Q?NEZAVqV1tTNUtNbdglfM6piz/DlRpHH4efdR7OkDPpI+Isy/CkMBd+zmIF?=
 =?iso-8859-1?Q?OpCKcPmP1dosI+Fs9o+wxQXwGdYMyBRxEdu2J4Nvd8WytLNk3A8QPsroYG?=
 =?iso-8859-1?Q?SLDyJWKfNfz/5QOLhXB5uRiUTeXgC5vKNqgQWqwwMGa7Bn7KRSheqj4ChK?=
 =?iso-8859-1?Q?W4oWxGKZjHaD9PR4LEp4b6mP7qxc1Itp2PU9UGWdgXHSyyeVB4Wp4kFfaD?=
 =?iso-8859-1?Q?9h67FCyvm4QwNF8eAfRw2ngaV0IkrDLrrKda6vGtlAImlEi3PwQR56Nvoc?=
 =?iso-8859-1?Q?bbElHx7G4cvc7BB6w6fAIZxxdKGyz9cIlb9j29Mslv/6IEbGHwOGgx7Xfj?=
 =?iso-8859-1?Q?B53ZGD28HphecXZ/ENNHkA3C5Y5DJm39iK8=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?w6SUS7pjV7HnOkCmzJcZDAeXBUhckBVCvYDaUoqE1vUJ8xYoK1klSBl/M/?=
 =?iso-8859-1?Q?9C669OnhROz1CPe5RXeS2r03rGjnqhRaJWlX6acetvd0yK2DQwi392W+ry?=
 =?iso-8859-1?Q?tF9NESUOOCf9XOjZm3ShoBn9HjtW7J+gltEYVu/QAmsWlMSSDewk5c4q/v?=
 =?iso-8859-1?Q?PEMe8iYbARG6fgfEblLWZRzeJU4EjJhr7LDqFnu4P9UnJzR9C9egyCBvxu?=
 =?iso-8859-1?Q?HtNuyu9/uZnbi95uc4mnU35yJhJEL7hnLN5WLWHIp7LgoG98iStwQOx+TT?=
 =?iso-8859-1?Q?278HxbnJsfG0WHNjMb88Lz03OMENbdoViWWweSB6mK3KjLJdXhsMvlc+Ov?=
 =?iso-8859-1?Q?cy3YKdm4R2JRQ1oI4NuhWS+V1YNwkQ+18DFh0Tru4Wu3vFNLCpGO//JeHS?=
 =?iso-8859-1?Q?/aJaNmmP0HCg9c21Lph//E3GB2INSB6QHbo7djAlPse1TMbtMGt72JWSWM?=
 =?iso-8859-1?Q?FYKbsiqjjr4gAH9bnYMHatUcB92JhwrnTHiC22HlDmfnVJD7NqOof4HzNh?=
 =?iso-8859-1?Q?rapaZ3Pel6d6vce2LynPD2EZ4CSDkdCN6IkV3jQVmBQggmMasISHhvkTF/?=
 =?iso-8859-1?Q?vKE1zQfzC5Kc/qjWlU1Fa4y6pdzv4/x3b5RgbZMjSt9nU0zWj8mOyRdvlk?=
 =?iso-8859-1?Q?gJ6eVG+W18/myQAKI/jeLDrZSbuVm0zoj+JzhxfC2mnGCImpXVP86h1/H3?=
 =?iso-8859-1?Q?T9F90Snl0KTK/9qmqGIWs9i540AX22y+pVX2uh9LyMCf65Kp8tsh4wiuI8?=
 =?iso-8859-1?Q?pFfyFudf++wDiah68vPaicO12/R88sk+h262wwMntpKVQUxnY3QwuHD/Ih?=
 =?iso-8859-1?Q?CeZ+H7Zmg6raxO2auNm69SQy6LBOj849SVUmvLS/dKNst6xsUchiLXcqq8?=
 =?iso-8859-1?Q?OyLET4q0pvB1YQgcgGIpQx8WbFSCVpclQte4zhwALCjqaf2lvbJhNcN01L?=
 =?iso-8859-1?Q?6uEta6FaF8r7WHQjCCcQkHVWV1oEELPYAhEGjPO6ynYf9tPV/BH6diFfgc?=
 =?iso-8859-1?Q?+waQ9JG1VDsPqcabEINasrxWz6INZQLr97Offd9p7/vbwT/PYrj3ao0Rg4?=
 =?iso-8859-1?Q?5nF9AxCxI9HkNnG1rhSDOcUdvWu02JVTLryOUM+rCOasSfPzwGckZtpgI/?=
 =?iso-8859-1?Q?SM5wygfWzeDY+WEtsbTXWGU1JplAJ+TQQwDapRIJ6gQ7KNc9+oPMvd8KTY?=
 =?iso-8859-1?Q?nkV9mUcWY4hpz49lsuDE/YKGOjoWgoH4Dg5vBBtQNL4k/9s4wcW9GoQAfp?=
 =?iso-8859-1?Q?cOd57wpD8ESsI0bBodfw=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7828-19-msonline-outlook-12d23.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR02MB4429.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 488d951c-65da-4a6f-42cf-08dd96afb33a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2025 08:32:32.6535
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR02MB8239
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_013237_531041_1FA17A69 
X-CRM114-Status: GOOD (  14.04  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_HOTMAIL_RCVD2,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: AW: Porting Cora Z7 Board to barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

> > =0A=
> > In lowlevel.c I am setting the clock divider for the sdio0 interface to=
 10=0A=
> > and the Source for generated clock is IO PLL. Therefore, the sdio IP=0A=
> > should get a 100 MHz input clock. IS this correct? Do you know which=0A=
> > clockrate the driver expects? =0A=
> > =0A=
> > Or do you have any other idea what could case the error?=0A=
> =0A=
> Ok, I found out that maybe 100 MHz is a little bit to slow for this SD=0A=
> Card IP. When setting the clock to 200 MHz or 250 MHz, the mmc0 gets=0A=
> detected all the time by barebox.=0A=
> =0A=
=0A=
=0A=
=0A=
This only works for me on my soldert eMMC card (MTFC8GAKAJCN). =0A=
>From my measurements back in 2020 i remember that the amplitude of the cloc=
k signal will shrink with higher frequencies on Zynq-7000. =0A=
Therefore I reduced the Clock to 25MHz on purpose, or some micro SD cards c=
onnected to the other sdhci interface do not work.=0A=
=0A=
I do not have a solution for this, but an eval hack ;-)=0A=
=0A=
@@ -985,10 +985,13 @@ static int sd_change_freq(struct mci *mci)=0A=
 	if (mci->scr[0] & SD_DATA_STAT_AFTER_ERASE)=0A=
 		mci->erased_byte =3D 0xFF;=0A=
 	else=0A=
 		mci->erased_byte =3D 0x0;=0A=
 =0A=
+	/* Bug do not change freqency for SD cords */=0A=
+	return 0;=0A=
+=0A=
 	/* Version 1.0 doesn't support switching */=0A=
 	if (mci->version =3D=3D SD_VERSION_1_0)=0A=
 		return 0;=0A=
 =0A=
 	timeout =3D 4;=0A=
@@ -1499,14 +1502,22 @@ static int mci_mmc_try_bus_width(struct mci *mci, e=
num mci_bus_width bus_width,=0A=
 static int mci_mmc_select_bus_width(struct mci *mci)=0A=
 {=0A=
 	struct mci_host *host =3D mci->host;=0A=
 	int ret;=0A=
 	int idx =3D 0;=0A=
+=0A=
+#ifdef CONFIG_ARCH_ZYNQ=0A=
+	/* On zynq-7000 mmc and sdcard are connected via 4-line bus anyway */=0A=
+	static enum mci_bus_width bus_widths[] =3D {=0A=
+		MMC_BUS_WIDTH_4,=0A=
+	};=0A=
+#else=0A=
 	static enum mci_bus_width bus_widths[] =3D {=0A=
 		MMC_BUS_WIDTH_4,=0A=
 		MMC_BUS_WIDTH_8,=0A=
 	};=0A=
+#endif=0A=
 =0A=
 	if (!(host->host_caps & (MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA)))=0A=
 		return MMC_BUS_WIDTH_1;=0A=
 =0A=
 	/*=0A=
=0A=
=0A=
=0A=
=0A=
=0A=


