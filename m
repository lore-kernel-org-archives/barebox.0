Delivery-date: Thu, 31 Jul 2025 10:51:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhP0b-005Xo8-0O
	for lore@lore.pengutronix.de;
	Thu, 31 Jul 2025 10:51:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhP0a-0007sa-BX
	for lore@pengutronix.de; Thu, 31 Jul 2025 10:51:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WxDss2kxUMVhnG9Sb7YtT+m96ojHnPVTjdGHiEqSvDc=; b=XSB3YEarZezv5pbr1qVHX4lW2k
	P38N1UIE94DwMlUy/xqeFbqPyhiQlViPPV1T8XQ2qsFME9NgV31STlfcRGMgt30FXdb+Nya47JnAj
	MiCy0BCaIRGFd4X4wkAncadnCWV1lWD8Wy2eKtT4PnXNGvbO6efokFOeevRx3FCB1oK3xzWVQBCBf
	wKOeLDtsULYgub+1RH9ejIieCQt2a4AfbSFgZz+h2z7i42CW9fAJ7c/QgShqCrb0cwczL0B/But6D
	cmfCjPh6B4AscV1HWP/wc6pDic06JF/Irg/ZiDNIW5u/R/QDopJnTKoofI8MzQLqrlg7gkV3oV6WF
	9vc3K8zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhOzl-00000003Clr-3OXp;
	Thu, 31 Jul 2025 08:50:37 +0000
Received: from mail-am6eur05on20700.outbound.protection.outlook.com ([2a01:111:f403:2612::700] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhOqJ-00000003BkO-42zn
	for barebox@lists.infradead.org;
	Thu, 31 Jul 2025 08:40:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=prv+wSUD+c2qd0GiadS7001Yob8vu/5KKNWaV7pL9gskxAGmRUE3PPa7QwCWadekDnGt0JXsLAVzdi6bbJH71b07GqRxfAwl693eNL7CvExsXmSYnNF4QZTU+DT6VukkgqgcJmrVK4HSr6OklL6+VDl7TS106NShCBX0ReqboaTHR35RsKfBqyhhdYbKEpWlZXPaLXjWNIz2b05tRjRN/Mg1XVzhJ18LDSo/8uP+UN//K5jTM4o5XX2f6VD/bTLbcY1obQ/0xw3RaBsJ97H3vCojRCh27nz5bgmNHoGCV5WnTkpvDFwpCCms4OM5lVw5/PpNtiuaE9DN84cLs1Wh8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WxDss2kxUMVhnG9Sb7YtT+m96ojHnPVTjdGHiEqSvDc=;
 b=rFa8afq1TiZQSbeBX00N5/7VZowtlAujDkbCBcyKgOeS7OFdMyHSGtJXkecOqUYnD1FG98rY0vkXwgbt7fV9etZfE3c02oxBiTLrWpF4kvm4EsjhBMJBvHK+fRR8BbDK6NIqQFg8WSoFxZaDl29XVlczqCV809TabAc/k/zfzQ/8vcLgVATLgs/dc76ck4D6qE3CWCFO9Qh0WOB0rP+GFf2PUsEmYbb3vmcYtA4HFDSkC3hpw5IFjMNi6i6FPT8kDYCETtCt1bBUc0U8tSoJZozkcFe0HgyU/2E3OT/lMadEh+uSdo2ihPXUmIrI48e0/tLlUSllTJ98rGyb3oqt+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=groupe-cahors.com; dmarc=pass action=none
 header.from=groupe-cahors.com; dkim=pass header.d=groupe-cahors.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=GROUPECAHORS.onmicrosoft.com; s=selector2-GROUPECAHORS-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WxDss2kxUMVhnG9Sb7YtT+m96ojHnPVTjdGHiEqSvDc=;
 b=KYyY3suYkMRYlOEzxPXQXOhYZaLPnj5ocPi0dfjh+YH4jc47hd1WGAQYZby51MjuJlEezHA95sag/o7Zfry3yP+FviOz/LbosC6+yWLi+/5CzVq1j87GEcQ9RUCtU6hL4uA1FORFeOCZw8ZBVhO2ZLqkCXJEqfiw1UBGyqq3wfM=
Received: from AS8P251MB0388.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:407::9)
 by GV1P251MB0793.EURP251.PROD.OUTLOOK.COM (2603:10a6:150:50::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.24; Thu, 31 Jul
 2025 08:40:40 +0000
Received: from AS8P251MB0388.EURP251.PROD.OUTLOOK.COM
 ([fe80::24f:cd6f:a00f:9b17]) by AS8P251MB0388.EURP251.PROD.OUTLOOK.COM
 ([fe80::24f:cd6f:a00f:9b17%5]) with mapi id 15.20.8989.013; Thu, 31 Jul 2025
 08:40:40 +0000
From: ANQUETIN Mathieu <mathieu.anquetin@groupe-cahors.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX
	<barebox@lists.infradead.org>, ANQUETIN Mathieu
	<mathieu.anquetin@groupe-cahors.com>
CC: Fabian Pflug <f.pflug@pengutronix.de>, Jonas Rebmann <jre@pengutronix.de>
Thread-Topic: [PATCH] ddr: imx9: fix DRAM PLL bypass
Thread-Index: AQHb+A+Yt1lNPTiFDUmZlNkXNwWyzbRL/VEy
Date: Thu, 31 Jul 2025 08:40:40 +0000
Message-ID: <AS8P251MB0388AE29B4C1C3B3F6FB5B00DC27A@AS8P251MB0388.EURP251.PROD.OUTLOOK.COM>
References: <20250718-fix_imx9_ddr_init-v1-1-b52def9e7ee5@groupe-cahors.com>
In-Reply-To: <20250718-fix_imx9_ddr_init-v1-1-b52def9e7ee5@groupe-cahors.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=groupe-cahors.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8P251MB0388:EE_|GV1P251MB0793:EE_
x-ms-office365-filtering-correlation-id: 0bf6c804-7901-49fe-217e-08ddd00dee09
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|10070799003|366016|13003099007|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?QEu7O9VwubXcwBfJsTitym/DDA536q/FkCjxasB0vq1IJW94DhH7fbOSHc?=
 =?iso-8859-1?Q?VujVQHJKjQu7o/Vp7bPCKvMnhVC0xpEfI9FvTSHxmZVE4TJMdzMjulknoT?=
 =?iso-8859-1?Q?doLy6aMzcpVfiyIjFJgEuAmohKM4pQP9NixDY3p/Jg3vZLvGZj69CVJnuE?=
 =?iso-8859-1?Q?5KV+oYGZEVf2J8lW3mSsAknMDWs5jKPSpxnnr7PNiC/WzlZEKD8J+Ymkk8?=
 =?iso-8859-1?Q?L20bEQjZ1WjnPz/9RGHmUoySPdU7IWYj3307axLQ39VGJX/5UpSTJfYrKN?=
 =?iso-8859-1?Q?gdXJyiuM9MgAG2EAD9IbfnXFmB8xg3qoan4Hu2H/Jrjq9KKdzf94+D/wzw?=
 =?iso-8859-1?Q?7Kq+d+rWhllASS+tyHjBlQrEdqvD6Plz9XJBaOE5GN0AWr+BfAl9qWCLGh?=
 =?iso-8859-1?Q?O1WnRwIUK7M/DHG2lnViGOwVixda1W8TdefkHlcTkSAO5NzFEs+OVN2CWy?=
 =?iso-8859-1?Q?V+fyJV8p1dZfx4WgW056xA+rsHTXhd5kOrmSXOPaIFdnaDGZE0aQ/hJkFw?=
 =?iso-8859-1?Q?QEILY8i03P7K9WIRz4hhziBnPSXZSp2aOw3SwoVTsqPIsIziSSR+eLTpIT?=
 =?iso-8859-1?Q?+d1qU5l3qp9GL6XqU3DQ5VyKw6MNkXx2VDzZVEsPZ3M2h/OUYgGYKRywM4?=
 =?iso-8859-1?Q?gnDUAYKiIDttInD4be5Fma7EXWQNPdYRdVuGmMma5o5Q2xsE8qGebziSOQ?=
 =?iso-8859-1?Q?MfSRqbIkyb9EY3YT/DvqfS27zDdJCmKJtvs7q+3AjVY5/yhANpxilL5z4i?=
 =?iso-8859-1?Q?9qGKwAY2sqKFdoLIIvTpXljPlAvP1eTBvncm3Q+9Bbl0DCfX3jjsPBVle6?=
 =?iso-8859-1?Q?AVn2zCNG9hBtedRvj9tYajK+taaR/CKZlfpqSQfyFWLhG2R2gg4ZDWmKIl?=
 =?iso-8859-1?Q?Lj7aWsSITyIw/2rC669nnnvsD79qc1vK85cAL6WXDKjlQ9ke3pZog14X+g?=
 =?iso-8859-1?Q?7wexfRQd+rfiokRGukdHirQCscbepv7ONu70lHSwdMsr4XROj53BMZBgdc?=
 =?iso-8859-1?Q?nQKnkSnOWZTh7P2nwUl7OxMOOjzdjpP45MhcJshWSz5S1wx8gjn/aqYUtR?=
 =?iso-8859-1?Q?60p/ltohKTJpsa/e5hdAAZrPka9r495IAMHnfVstfMz+KS3SULSaLFC8GI?=
 =?iso-8859-1?Q?3n64kWjym7/gO63c/swgkOX2Mx0DPRTjkLk8z0Cek8NGtA5n5nlKyvb2Tl?=
 =?iso-8859-1?Q?1JZrnitgzSzU8vdeQq81gExHlXkv2HfxUSIzZrRetTnVeTNqLx3asMwv0U?=
 =?iso-8859-1?Q?NmOAWpgm4i40TGn5GxfYCI8SMNth64ywCEutRvqZH5TTeLsu5oRJ2MVaX6?=
 =?iso-8859-1?Q?NbWoubfMC6xeGAKdrERyMpQtadyHnRuqeOe7vrlOj6wxI+UkE1rM+wpjdX?=
 =?iso-8859-1?Q?ekrcPndviQ8H63xwoTa8pRcLUEyjxYWxf3TlcLdo4OQKiKtxxsJ2U20fYU?=
 =?iso-8859-1?Q?x0c1pKkBRmTM6C4RvfWWJVKax1/jyTm9v9qLgqz27ufJhTcThTeRKUlyjh?=
 =?iso-8859-1?Q?s=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8P251MB0388.EURP251.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(13003099007)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Bw9M5RkDA17UaRdzk8ffwzyn7TAknF/8m63vHxjdbeZKfm8x5jJFGmtjRI?=
 =?iso-8859-1?Q?Tvof5wi0QHtMLk47M3d/s6sNZ/9kMyxr5RIeXMCF1JGtYlLpG8h48fLLWN?=
 =?iso-8859-1?Q?CPYXP2ZNIDgIeaOsdyCWltpGY5ss1N3UkKNNOUOmUmFf5BP+ZgSCz0VdBZ?=
 =?iso-8859-1?Q?WZxbI4idGCLyAEKsfiB9R3vE7ecWchodIOXpXDfSv/16J/xwZaehril4Bx?=
 =?iso-8859-1?Q?txE4TKHxdqqqH4m0LYahXmtSylask6wn+TK7kz0P2eTDttV0zJMvvxCQ4H?=
 =?iso-8859-1?Q?2GSZNKv8qjNnB+l3G9AQZEZFRzJsOkcUjt8PR1lnzO2faaEpbbOYZzq75C?=
 =?iso-8859-1?Q?6f4O6u+zhPVdlaDA8E1h9pFas8Pch4GXHTUyDjeEUswj8Ph9AfBeLb75M9?=
 =?iso-8859-1?Q?zB8+LSOsBWviZKdVHgU7jrmAJ2O1zFY3bw5u/Rlb/XyTJuQZ19KsZGlSMA?=
 =?iso-8859-1?Q?ZdD2n980NZosNql4E9zfLLUkKbKGZhe/zQa0rJANa+6BjYIumekFnk2FYC?=
 =?iso-8859-1?Q?r6chFXVwiQr8+y9OFC1Ym4myxbPN4Zn0TMgaZuuF6VQczTuCGS2fJ36OMp?=
 =?iso-8859-1?Q?olS2dpuQNorZ+5AIZFMNCCPIndtYCNqJIdWvs65jS74B1hC5CYellfvjam?=
 =?iso-8859-1?Q?ia3kny01YvUEcpR5paUp5nNKhpYKUxACSbHg6iTWvCEno85IL45CbEV7GS?=
 =?iso-8859-1?Q?IkTwjRlbW1WfbLFgE6b4W6aEawUVt8QwdWD9aqDzZp0beRvvHM1+FTLjk8?=
 =?iso-8859-1?Q?ZrK24I0j2aHCYylxcilO8s2r2+PcD9Bo7bSDVofopc9o5Xh8TR6QnST9aT?=
 =?iso-8859-1?Q?9B+uJ21ZlqkkaoTCZriCN1OHd9dQdOTMUzw5tCu38mnkPc2sJ1HbUNtt1I?=
 =?iso-8859-1?Q?CEbq80Q3Ktsrymv68rdj68d08LtRuxdrZSbXaPh/bYLptdGa+JYIdgRRms?=
 =?iso-8859-1?Q?y4EHfgAGXAFPaIyBj2UqEj0jSGkOllzVUoPnlsBw0CzTmpDW9bzsBv9tP7?=
 =?iso-8859-1?Q?4WL67XS7pmxg3qm58NCQFE+28Pm+iuVoZNQraGzGmU1+vpE37SAz3kbqph?=
 =?iso-8859-1?Q?WwlGXO5oYCghVtjCrXiPC3u8NmcJO8sGnB2mJ6YPRGteq/VPzzoAE4WZfS?=
 =?iso-8859-1?Q?zRcAwv1M2zJvRF9CGs8jppVXdaKWN7Ph+hujb9IuKOCjhvzoua0QBWuA0v?=
 =?iso-8859-1?Q?eALe7JXBAyW+MHJfVdxKZeGziCpkSWDf0ql3fkkdRWH/xup7BFfnD582CZ?=
 =?iso-8859-1?Q?cDiOKwcTjMvl+z4sIBwUUEWsmFZspgmCckMNn7eqronO3Zw+n3FJVO7dPX?=
 =?iso-8859-1?Q?PQ2eJf8SWdObWYTuTo+mTpnOHJ+DBKjKXsRuQx9P2IYEioT5++q6sVm5sb?=
 =?iso-8859-1?Q?knW/ngzdK2ADD9oJaT6TxwId/CgulMZl848FXhyZX+G7Vbvx8PEmckKwt+?=
 =?iso-8859-1?Q?+Z2QZeutg6cyxKUZwbS/7RjwV+h6Mv4ae2UjF7/WSqgkyC2kbf1uDtNMS7?=
 =?iso-8859-1?Q?7akwuFu2Tal5b/E/DVqIibC05lpMD2oVPGgChcz1vp0RJcSbOdH62ntEtM?=
 =?iso-8859-1?Q?Iyk4fyNrmYEDs7kjJrqUt78HrgGAJrDV553oTP7N0xxJkaJg7jDEt8B4J7?=
 =?iso-8859-1?Q?d9fE+sweKBmGBCHGNe1RMjEqRtbXEo+p0OnYTv7DsL3dAD5DN1kucClFaa?=
 =?iso-8859-1?Q?299FfKeQzWP/nG9EZqK9/MPc25/dXMUeJmZEUNYT2q0rij+3ZHcoSRmriS?=
 =?iso-8859-1?Q?nhmQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: groupe-cahors.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8P251MB0388.EURP251.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bf6c804-7901-49fe-217e-08ddd00dee09
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2025 08:40:40.2826
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c63d0cf2-4086-47b3-adbf-b322014182ae
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YPj4dgTtpZLafs524dTEiLiUrWvRNpLeItIXmbQ3gu92iJL+LO7IuJ2ME+wW+dK6ip6GiCw61wrrt56dtqOqqgIU2Qfq3RgDXYWh7qZsW/xns3QEP9LoyUw78Tfvv6DE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1P251MB0793
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_014052_014900_C0997129 
X-CRM114-Status: GOOD (  14.21  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: RE: [PATCH] ddr: imx9: fix DRAM PLL bypass
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Friendly ping!

Cordialement / Best regards,
--
*Mathieu ANQUETIN*
/Software Developer/

CRDE -- Groupe Cahors   | http://www.groupe-cahors.com
ZI des Grands Camps     | Phone: +33 (0)5 65 30 38 77
46090 Mercu=E8s -- France |

*GROUPE CAHORS* is a member of the UN Global Compact.

________________________________________
De : Mathieu Anquetin via B4 Relay <devnull+mathieu.anquetin.groupe-cahors.=
com@kernel.org>
Envoy=E9 : vendredi 18 juillet 2025 20:12
=C0 : Sascha Hauer; BAREBOX
Cc : Fabian Pflug; Jonas Rebmann; ANQUETIN Mathieu
Objet : [PATCH] ddr: imx9: fix DRAM PLL bypass

From: Mathieu Anquetin <mathieu.anquetin@groupe-cahors.com>

On i.MX9, clock selection for DDR PHY is done by setting/clearing bit 0
of GPR_SHARED2 register.

This is done using the generic function ccm_shared_gpr_set() which takes
two arguments, the GPR number and the value to set. However, this
function did not use the GPR number to calculate the offset of the
GPR_SHAREDn register to set in the CCM.

Therefore, it was not possible to enable/disable DRAM PLL bypass
correctly and this led to hangs when training the DDR PHY with some
frequencies (like 625MT/s).

Fixes: e6234f907416 ("ddr: Initial i.MX9 support")
Signed-off-by: Mathieu Anquetin <mathieu.anquetin@groupe-cahors.com>
---
Some DRAM timing configurations require to change the input clock signal
and to bypass the DRAM PLL. This is done by setting bit 0 of the
GPR_SHARED2 register of the CLock Controller Module. However, the
register offset to set was not calculated correctly, leading to hangs
during PHY training when PLL bypass was required.

In particular, this was the case for the configuration setting the FSP
to 625MT/s.
---
 drivers/ddr/imx/imx9_ddr_init.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/ddr/imx/imx9_ddr_init.c b/drivers/ddr/imx/imx9_ddr_ini=
t.c
index cdee18e4ad0e4cee1b13bd2aab4b53ffcb537e49..086827d9b34c49a76426289b707=
aad6fa474d065 100644
--- a/drivers/ddr/imx/imx9_ddr_init.c
+++ b/drivers/ddr/imx/imx9_ddr_init.c
@@ -352,6 +352,8 @@ static void save_trained_mr12_14(struct dram_cfg_param =
*cfg, u32 cfg_num, u32 mr

 #define MHZ(x)        ((x) * 1000000UL)

+#define SHARED_GPR(n) (0x4800 + ((n) * 0x20))
+
 #define SHARED_GPR_DRAM_CLK 2
 #define SHARED_GPR_DRAM_CLK_SEL_PLL 0
 #define SHARED_GPR_DRAM_CLK_SEL_CCM BIT(0)
@@ -376,7 +378,7 @@ static int dram_pll_init(u32 freq)

 static void ccm_shared_gpr_set(u32 gpr, u32 val)
 {
-       writel(val, IOMEM(MX9_CCM_BASE_ADDR + 0x4800));
+       writel(val, IOMEM(MX9_CCM_BASE_ADDR + SHARED_GPR(gpr)));
 }

 #define DRAM_ALT_CLK_ROOT      76

---
base-commit: f49c873d7ec78a2df7bd3c7a86f5372fb1666517
change-id: 20250718-fix_imx9_ddr_init-6ccf9db195be

Best regards,
--
*Mathieu ANQUETIN*
/Software Developer/

CRDE -- Groupe Cahors   | http://www.groupe-cahors.com
ZI des Grands Camps     | Phone: +33 (0)5 65 30 38 77
46090 Mercu=E8s -- France |

*GROUPE CAHORS* is a member of the UN Global Compact.




