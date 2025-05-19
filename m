Delivery-date: Mon, 19 May 2025 08:51:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGuLH-000QgU-39
	for lore@lore.pengutronix.de;
	Mon, 19 May 2025 08:51:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uGuLF-0003tv-UB
	for lore@pengutronix.de; Mon, 19 May 2025 08:51:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dTxGvhUTEMUw0Gn4BeCj0tx9fptOFjBfVM5UBJLsNZY=; b=U7yaAWbkRKkkV4O14E2h3mMTdi
	0XO7P2wdZ7O/wnaBSqwjok6/iDgyNvMIUHTH5Nt0+rRhSFLZtbmrzBJ/C1v4dk6wefnZwqDaa8kLP
	NW0hsYk8e/wiiQ7nUsCdp6DJ/j1PRoItEWN8TZPJxhWYibgj6YkxoPxVsYe6RYbXTDyPT8PB1SV3Q
	2kzUY8IDBi7Qc3SVqJvpWuS1Kn/DGT/sWQfLzVvgMm8Sr79DTaN/BSP3hUUQ2uQI1goEle8UERdcy
	+/GKPQrLxBRv2KlibWuVySQaTjj9viZXK9E8aUtJsh6aTFhvY8l2mEQv544Jqz7YcK/EnZWdUU+Pw
	zgxTo17A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGuKX-000000089FL-3DVp;
	Mon, 19 May 2025 06:50:33 +0000
Received: from mail-francecentralazolkn190130003.outbound.protection.outlook.com ([2a01:111:f403:d20a::3] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGuKV-000000089Ej-015J
	for barebox@lists.infradead.org;
	Mon, 19 May 2025 06:50:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dwYTloNwfR3lYCtjNfx4KKAsFG+0SVEP0aUgEjdWJjo8U2fzlcrRXLj7ekeqrydl8Gfgbn+dTncHu5+0fxUh7z/k+8dDYhtOd3YB19LsI20jlO0vv2suzG0YCfQjUAi0LsVoBJYAMHPpfqbPitIy9ulD5w8KM9ONOCnozAjc209hKN0mjLv6GYxr1jKo/gjGbQttw9AT2SKgLmbXTsQjzRwIhnpcMH3ApkmwpqiOdfbTMSNfOTSwbU/lxn1cSwHVd+19wWw1wnsv/EZiYxqbwWsEX2GDRyR/nGNEn/RzM87cshKYCgmI6lYOkk5sN4g8MqXX3bfjrLZX7JgHf06RBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dTxGvhUTEMUw0Gn4BeCj0tx9fptOFjBfVM5UBJLsNZY=;
 b=CZHmHO8SArHEzbRrzO5kOgnfy8z0aJxSHc8tX/J7pxgYrej+888M4eK7eFTwkIrV4m3Ods8TLu1xQb0gR9DWMquOB/ipOHWIPInK6dQpwq839cSKnMS+2qWOzE4JP3B+BK17YTBZx94KWKofFuqU7L+fIqzAW4vWUPSJEiMwiM+it3FSveSyqEPBcDe+jWo9YdVBXb5j3P5i3g6zsoLWERWHiGEXOO2PanRPWtVfjD3ZS/UMNltRrPV65dKxpZBxrJvR0EKImVdUDaL317Kj3rlUm4g+ClLI+dmuH9ZIQnFPlrYgwINZ38X0RSwWKS5YUmxlniWojUFE7BEzey8NLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dTxGvhUTEMUw0Gn4BeCj0tx9fptOFjBfVM5UBJLsNZY=;
 b=j45IGwta5qCh0DKseymBmNE49wdgXVUXi8NVxaboviPdXkwlDFZwRCbvDTXfUa0QIAqP4q70erGh/zSJ8hP+0ZILKp9jhJjdVsOn8dvLhj+IaNlLkJFfsiJ0N1vIsw4TT8wxOmVqWZvu3AhxiAX9mQEftratAdco7NMRON9038xUpEAQMoFMVqG2Qt9qQBuVjs0iza2n6RwaoQGtye/eHNnkZjuEfM5N/OU8+5EQ+iXu8PAvR1XoI59ojio98+9vq2VogPOQgIkg2kbDKd5ei6aRrT0OjHqFRZFLledNwNRTJ07QkYLMmOFdL6XQ0cpAiSipcCGMTF/MFC9LANLgTg==
Received: from VI1PR02MB4429.eurprd02.prod.outlook.com (2603:10a6:803:b2::14)
 by VI1PR02MB6288.eurprd02.prod.outlook.com (2603:10a6:800:190::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Mon, 19 May
 2025 06:50:23 +0000
Received: from VI1PR02MB4429.eurprd02.prod.outlook.com
 ([fe80::fcf4:21c7:f28e:cfb2]) by VI1PR02MB4429.eurprd02.prod.outlook.com
 ([fe80::fcf4:21c7:f28e:cfb2%5]) with mapi id 15.20.8722.027; Mon, 19 May 2025
 06:50:23 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
To: Johannes Roith <johannes@gnu-linux.rocks>, Ahmad Fatoum
	<a.fatoum@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: Barebox for Zedboard
Thread-Index: AQHV/dqOuD2lZQDqAkShrwF+6WIpRKhPvYeAgAaQdz6LiuC2AIAABt+AgAL9CACAAOBk0w==
Date: Mon, 19 May 2025 06:50:23 +0000
Message-ID: <VI1PR02MB4429AA325D9A08D898319A40AB9CA@VI1PR02MB4429.eurprd02.prod.outlook.com>
References: <DB7PR02MB43321CDF6386A16A725DC131ABF40@DB7PR02MB4332.eurprd02.prod.outlook.com>
 <845b2228ae93d93e331556bb983f19cf67a025b8.camel@pengutronix.de>
 <DB7PR02MB4332F692229D1F189B11EC49ABF00@DB7PR02MB4332.eurprd02.prod.outlook.com>
 <aCeMAO9MFhGJBStt@Precision-T3610>
 <9babe122-45a3-4843-a2bb-178979164339@pengutronix.de>
 <aCoTbGjxgymNPSQF@Precision-T3610>
In-Reply-To: <aCoTbGjxgymNPSQF@Precision-T3610>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR02MB4429:EE_|VI1PR02MB6288:EE_
x-ms-office365-filtering-correlation-id: f497fce7-7bf9-472a-36c5-08dd96a16df7
x-ms-exchange-slblob-mailprops: yzXCV5TiOCpIfSH/+IGf9WfRThBg3kw/tEPP5ZZKMFQln38/JncBy+P4G5ijr57Qvd1oxiwLv4w9DD8qU5b6ZkTSYUG9lGbMruO1i9yG89nz0PinjsZSNBZTugF5JMbJJaRW1/b0DsHd1s+TsyuAzczdTac1sJgWAFJWSfq5APH3vs2a8GkG57toQvsd2hrz3ycnHNtxaShp6GJI5RFF/Dpf1+AAOKr8OFHXIG70m0eiUYFunQVsBoDkTDLU+/S6kY2KQNLhaVDy9GaY2m/cPVmgsDrOe0ac77SaJvqfXeHlFpoiQpoVdpHId9t7fSEcOlczk338AVRPz1KVrFHcpl7qcU+TxrTJ7Qp9yYH6kpjc9HPi7nEeiGU7s0QchN0yACrVKRq4xvsrV6ZPgnh2URiNrafI2RY1hfXbsLLUGK5qClLnxvqCfcI0BtxGX3/sXwZPqVcvOowyJsKsYo8YRB5m9vhdvRcWCebZWQQHMHuVg5cMBRUcO05TmnpC6tsd4QnMCuFvn4AuLtOeku6ETHwG5AfR6269NUDrlz2C4AvaXyJMDidOj6wkOlH2Q0sGq6+QkZk4vlK/oVa6U3tgIX4LVGWTgRZaMWZ0RAqm3ISSrEHT9LH54H44Uyi1iP06k0JbrURkRZkEHP/BXfHKbpx+PqXRkMY/tAUiyNFbuB+c9u7EfzLATXLItdgV7vJPgdLYxDKb7fxlcwj4XfR39S5LEzbwFFzqjx6IE/6CTLduWCGaAjC8IW9XUlj8Gxe7lvxUVDS3q38GmLlxGTSdtbiwjMVvwHSn8/6XZL002OswFVVS2PznaRCRHNAKxOLdNsiHvlQxd25gHTRnwLkYZ66t72Cz/LhDdbzvslJPcfOmvyG4sJ3Laxcyz6z9DFKhCJmycUNEE3w=
x-microsoft-antispam: BCL:0;ARA:14566002|461199028|8060799009|7092599006|8062599006|15080799009|41001999006|15030799003|19110799006|1602099012|3412199025|4302099013|440099028|10035399007|102099032|12091999003;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?VQ5cxKTLjHowtEP/D1+rJYtGyc34veGbjz/i589TNFnfud06pISmMC7UNF?=
 =?iso-8859-1?Q?14Wb8ECUuPRiwmt3ScIOGvUOtlKeVm7hhbsr5k4mVnnARcmVEjEM2wuVNe?=
 =?iso-8859-1?Q?WhL6lnJAt+2sf+gGYwoI/oXISixHBXeP9/A3G85qLXS95mUvYej2p5Ana5?=
 =?iso-8859-1?Q?xdSFXunrKRJBjPzXomI8AO/W6OArhC4CqFKrASdWzk2TvIHSxVHbqRMXac?=
 =?iso-8859-1?Q?y6rAkweeAcBSapXB3ymE++tWNkjNggY1UFQjqAUbOFtKKcu1ywzldgF8f2?=
 =?iso-8859-1?Q?pu8NLhP9UwTGncjaevQhdLM0h0j+uFNSZjYLEaNYoqXvz13sh7rgVqxBlq?=
 =?iso-8859-1?Q?OrmWOjp9X2VYnI0Z0/qmewfN58RW/uQiQZ8G1AfzWuLPhwhHmnS6bcix+O?=
 =?iso-8859-1?Q?MphBAT594P6I+Fz3vVJvugvCoseD7yNqcP6lEiHXkdyTs54J7F5cXwAk1/?=
 =?iso-8859-1?Q?2KpqUuJAHrexLyIAyFCEuXKknnza2pvdwchltR78qwRFpFVvNhqEWZnpbI?=
 =?iso-8859-1?Q?EOfXw66bfMJVixSPOw2SSLHpsDuh/ydbah5WdghNtLBKTseIlc8npbm2H8?=
 =?iso-8859-1?Q?PH8Bn4udBHXgzH0Zqfcj6pVqion6cD8C7gtWXDaqN71u5+jgka0LhuMrLi?=
 =?iso-8859-1?Q?IrRKC0AN8fkKKZZqbsKiDLz2qMbN8uIksr7ibkUAtHBmzA7nHgYfJKxoEi?=
 =?iso-8859-1?Q?jOVEfK7+siCzoIiNo92mqAO/1ZTemdtkmUaMbdjG9h8t6XJiVay4JVLrek?=
 =?iso-8859-1?Q?9sCJzDDCpuz08def/Oln2W6vPIhqgjptybxCYJ299FLni18QVPWnbXt/Kt?=
 =?iso-8859-1?Q?qMfUYaIfOVIbZ9weLKL6PN6/0XbiORftA3BxLuRxBCD30VybuQYG18iG1Z?=
 =?iso-8859-1?Q?j2JA2+e899ghWq4ivxYb0dQwAEL/FiD+4LTtAdQlzHg9pp3kOGHZmPMdFe?=
 =?iso-8859-1?Q?Q8xq9znE17gP640Sy9bd2t3+0L5k/w3s0VAvZy2re5TT+YoilGzeA5DVs0?=
 =?iso-8859-1?Q?LQMQyx12xhuEzp0Loigv7474QEwLD53dUMi/G2Z/dFNbrsbDKIwzmMvhBS?=
 =?iso-8859-1?Q?Pa5vxpxjR07tsSCmrW1jRWEFaVf4jkNq+qnvkDZ4unEQMFZjjTuIjo62Pq?=
 =?iso-8859-1?Q?qAaoKvnjoIu7vYH2NWKYx8u7Wj16eBr5JT1oxgXtxzYUAhWJMcZV7Mvekw?=
 =?iso-8859-1?Q?fSkwofNDTWfsUbrbt9A/J4FFuOFBBnVIP2cbe/K7rrNC7fpokK0AmgM2MI?=
 =?iso-8859-1?Q?CuTsIomwv6B6QEXMQQqnGChLPFN8fnuebZGCeWpQoifDa9uNKwFUcUbptb?=
 =?iso-8859-1?Q?oADILB1soHlltlzKVDYZBXx8S5jPJbuP4hDFBtA+APtMyO8Xchssuc59ST?=
 =?iso-8859-1?Q?t+QHwzV3wu?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?PRFzfWOFaGAmtPbnA2Hh4e4eB3BfRv0EEFNwF3DGDHwRnpm9nhn28H4qwk?=
 =?iso-8859-1?Q?zNwrOASvmF8V/qaUDGBqBMHLaE7f7ka//jvHXiG7ZJbJPi+ySQR/PeNPCr?=
 =?iso-8859-1?Q?u5nG3JiEzgQJo7VNvL1DkhmNhSKsVZ1eKyA7I3Q61C2V3Mtzx4xv9CD8rn?=
 =?iso-8859-1?Q?+iL389BFEMfWmpHJPr9j9u9bRF2yiNH0kyp+B6RiC1NM9PqB/iJ8fmeAQk?=
 =?iso-8859-1?Q?D014JJqKy7cwK4PZeZwTbS79IvKBXBW9oleBiVO50xv3DMqBPeJkJv93yi?=
 =?iso-8859-1?Q?Qnjaozn2ODUGCWpHDHMKAxXkVUR76PoAfLtB6NUhKyZp3sF9toBzS2Yfdj?=
 =?iso-8859-1?Q?xB2ryB+TpmIw0EyQD3TwHWvxlk1dKZXnTWowcuMVR0wf3OHln9CUYS/khN?=
 =?iso-8859-1?Q?M6BJfr+blXjdB/tfRHQBnYVdxBwiH4Viea9/Df7Ke2GvTxtOZhey1X6x+F?=
 =?iso-8859-1?Q?K4kCKIjtIvFh3is4pUxl4hM//SPzoFHhonsJWmYhXMP6O6rKAXBHl8BEd6?=
 =?iso-8859-1?Q?XCpJzOUUts+5h+drgFzGpnVg1oDqcnuxb/jcKsAKMIAftgOEXVFdw9BdLN?=
 =?iso-8859-1?Q?zb36gy1DqA7wqb35VJyeSxlE9/QyqRhfPiVZQFzFnxd4I6A0gopyofrE3I?=
 =?iso-8859-1?Q?0M2IDg0UbNN/gbXE1xG7vuklLE8mWhtTPN56dmr7VOIwSPdxiaXEeRwf9a?=
 =?iso-8859-1?Q?TQfb3fGdo8BGDe91hrNGCNsOeVy92/2jrfcVghQEKsC15dkKJwqv0mNUkt?=
 =?iso-8859-1?Q?te9i0HLH0tKUqweF6c26n5/MEyVw7hu3GlecOCv6t34lfYohaZNwihu23G?=
 =?iso-8859-1?Q?E8/GHLlY9ltjej/cbehP2+ay+tmdIPXyoLu+oO5w/Urvsfm8omjqdV8Se3?=
 =?iso-8859-1?Q?6kqAS3bMgxzZBesjjz9Nkywpgp5o1ThZuMqlM9/xhZhK54R9U0B1wKHMAI?=
 =?iso-8859-1?Q?11mUSg11JeQVnp7UZSpmhGRFzNz0mUbg0pYtAZ5B456i8j4dh4+KJq0ZTB?=
 =?iso-8859-1?Q?cfKpkjh7HnCm4tuUhyeAhAi7d0OfEZDOwkRcG3kiR8MhmskK71Nma7yWFF?=
 =?iso-8859-1?Q?omx6/PjquoQ8j2oqh0yFt3UyEc+6VEdQ5C1OCht9W8amYl4DjoPhY+aGsA?=
 =?iso-8859-1?Q?0r5GSNnrFEzjc9ZOD2IC65+05Gsl12hzf5HNZSyrGdVjQ7XJVWvsa0Cgaj?=
 =?iso-8859-1?Q?s2VaelDE9fjYoHJ8AMQD1X8J5xhfmWtUd11IXLSrnI5vyMaqYUOIjbZJvD?=
 =?iso-8859-1?Q?xxOi5njgNFTkNhjaIONA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7828-19-msonline-outlook-12d23.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR02MB4429.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f497fce7-7bf9-472a-36c5-08dd96a16df7
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2025 06:50:23.5171
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR02MB6288
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_235031_196872_337D2548 
X-CRM114-Status: GOOD (  26.09  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_HOTMAIL_RCVD2,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: AW: Barebox for Zedboard
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

> Von: barebox <barebox-bounces@lists.infradead.org> im Auftrag von Johanne=
s Roith <johannes@gnu-linux.rocks>=0A=
> Gesendet: Sonntag, 18. Mai 2025 19:06=0A=
> An: Ahmad Fatoum=0A=
> Cc: barebox@lists.infradead.org=0A=
> Betreff: Re: Barebox for Zedboard=0A=
>=0A=
> Hello Ahmad,=0A=
>=0A=
> Am Fri, May 16, 2025 at 09:28:03PM +0200 schrieb Ahmad Fatoum:=0A=
> > Hello Johannes,=0A=
> >=0A=
> > On 16.05.25 21:03, Johannes Roith wrote:=0A=
> > > The big advantage of using such an approach would be support for simi=
lar=0A=
> > devices (e.g. the UltraScale+ ZYNQMP devices) could be added easily by=
=0A=
> > porting the Linux drivers to barebox.=0A=
> >=0A=
> > I can't comment on the Zynq, but for ZynqMP, there is already a FPGA ma=
nager=0A=
> > driver in drivers/firmware/zynqmp-fpga.c. FPGA programming is also supp=
orted=0A=
> > for Altera SoCFPGA and are exposed over the firmware API.=0A=
> =0A=
> That's exactly what I was looking for. For the ZYNQ it is not=0A=
> implemented yet, but I could use the ZYNQMP as a reference. I also saw=0A=
> there is the firmwareload command available to load the bitstream from=0A=
> commandline=0A=
> =0A=
> >=0A=
> > Loading OF overlays can already load firmware that way.=0A=
> =0A=
> Could you give me an example for an OF overlay to load a firmware? Do I=
=0A=
> have to place the firmware at a specific path like with Linux FPGA=0A=
> manager or can I specify the path in the overlay?=0A=
> =0A=
> Thanks and best regards,=0A=
> Johannes=0A=
=0A=
=0A=
Dear Johannes et al.=0A=
=0A=
i'am using=0A=
=0A=
	amba_pl: amba_pl {=0A=
		#address-cells =3D <1>;=0A=
		#size-cells =3D <1>;=0A=
		compatible =3D "simple-bus";=0A=
		ranges ;=0A=
		zynq_layer_axi_dma_0: dma@40400000 {=0A=
			#dma-cells =3D <1>;=0A=
			clock-names =3D "s_axi_lite_aclk", "m_axi_sg_aclk", "m_axi_s2mm_aclk";=
=0A=
			clocks =3D <&clkc 15>, <&clkc 15>, <&clkc 17>;=0A=
			compatible =3D "xlnx,axi-dma-7.1", "xlnx,axi-dma-1.00.a";=0A=
			interrupt-names =3D "s2mm_introut";=0A=
			interrupt-parent =3D <&intc>;=0A=
			interrupts =3D <0 29 4>;=0A=
			reg =3D <0x40400000 0x10000>;=0A=
			xlnx,addrwidth =3D <0x20>;=0A=
			xlnx,include-sg;=0A=
			xlnx,sg-length-width =3D <0x10>;=0A=
			dma-channel@40400030 {=0A=
				compatible =3D "xlnx,axi-dma-s2mm-channel";=0A=
				dma-channels =3D <0x1>;=0A=
				interrupts =3D <0 29 4>;=0A=
				xlnx,datawidth =3D <0x40>;=0A=
				xlnx,device-id =3D <0x0>;=0A=
				xlnx,include-dre ;=0A=
			};=0A=
		};=0A=
	};=0A=
=0A=
	smartcam-v4l2@43C00000 {=0A=
		compatible =3D "wipo,smartcam-v4l2-1.0";=0A=
		interrupt-names =3D "smartcam-v4l2-interrupt";=0A=
		interrupt-parent =3D <&intc>;=0A=
		interrupts =3D <0 30 4>;=0A=
		reg =3D <0x43C00000 0x1000>;=0A=
		dmas =3D <&zynq_layer_axi_dma_0 1>;=0A=
		dma-names =3D "axidma1";=0A=
		headboard-power-gpios =3D <&gpio0 46 1>;=0A=
		status =3D "okay";=0A=
	};=0A=
=0A=
for a PS<->PL DMA channel and =0A=
=0A=
	messagechannel@43C10000 {=0A=
		compatible =3D "wipo,messagechannel-1.0";=0A=
		interrupt-names =3D "messagechannel-interrupt";=0A=
		interrupt-parent =3D <&intc>;=0A=
		interrupts =3D <0 31 4>;=0A=
		reg =3D <0x43C10000 0x1000>;=0A=
		status =3D "okay";=0A=
	};=0A=
=0A=
for an PS<->PL FIFO.=0A=
But this is not used within barebox in my case. It's only there because bar=
ebox passes it's devicetree to the Linux Kernel. I only do the programming =
of the FPGA in barebox within my init script by=0A=
=0A=
firmwareload -t zynq-fpga-manager /mnt/boot/design_1_wrapper.bit=0A=
=0A=
I will send the latest version of my zynq-fpga-manager to the mailing list =
soon. =0A=
Please feel free to pick it up and finish my work since i did not do it sin=
ce 2020.=0A=
=0A=
Best Regards, =0A=
Michael=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
> >=0A=
> > Cheers,=0A=
> > Ahmad=0A=
> >=0A=
> > >> That said I wouldn't mind helping with getting the missing bits adde=
d=0A=
> > >> by reviewing/testing patches. :)=0A=
> > >>=0A=
> > >> Regards,=0A=
> >> Lucas=0A=
> >>=0A=
> >> Hey Lucas,=0A=
> >>=0A=
> >> "That said I wouldn't mind helping with getting the missing bits added=
=0A=
> >> by reviewing/testing patches. :)"=0A=
> >>=0A=
> >> Did you made any attempts to do this?=0A=
> >>=0A=
> >> As far as I can see there are basicly two ways.=0A=
> >> The "Xilinx-Way" by packing everything in Boot.bin.=0A=
> >> https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841976/Prepare=
+boot+image=0A=
> >> and the "Linux-Way"=0A=
> >> https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841645/Solutio=
n+Zynq+PL+Programming+With+FPGA+Manager=0A=
> >> using the FPGA manager=0A=
> >> https://elixir.bootlin.com/linux/latest/source/drivers/fpga/zynq-fpga.=
c=0A=
> >>=0A=
> >> Best regards=0A=
> >> Michael=0A=
> >>=0A=
> >>=0A=
> >>=0A=
> >>=0A=
> >>=0A=
> >>=0A=
> >>=0A=
> >>=0A=
> >> _______________________________________________=0A=
> >> barebox mailing list=0A=
> >> barebox@lists.infradead.org=0A=
> >> http://lists.infradead.org/mailman/listinfo/barebox=0A=
> >=0A=
> > Best regards,=0A=
> > Johannes=0A=
> >=0A=
> >=0A=
>=0A=
>=0A=
> --=0A=
> Pengutronix e.K.                           |                             =
|=0A=
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|=0A=
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|=0A=
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|=0A=
=0A=


