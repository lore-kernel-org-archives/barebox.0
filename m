Delivery-date: Wed, 22 Feb 2023 12:17:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUn7N-00FG27-VI
	for lore@lore.pengutronix.de; Wed, 22 Feb 2023 12:17:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUn7M-000180-HA
	for lore@pengutronix.de; Wed, 22 Feb 2023 12:17:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WLfW2xqkjg6YYtIr4IGJUQ4/9CCWUuztbokfwoySHVM=; b=TsMCoDyJ2HZXtvUxQtiZgt0Xho
	OQbWZuT5F8BS0rRATvQ0Fsu46zbJnc7pnRUTKYxePdpha6r1HPfARqlTLqRbqjSlKebDaR7Un5OTt
	+TkKi4/CAsh/p8w2OnzEj8H27K2rcrgK8/gW/hSq+3EsMH6b6MadDdJHxaKb14ZDYPeW0o04iEmWg
	2msGUPZrKP7swCoqvQewr7yipiUlqmQ3A1+kNsRcfRYgEL00F4fFzND2EZIs1TFwmqE4BETnov6YN
	usk/OOEgfeQ1ECrPndpa0ID9BrbJxFRW1wZAB9iCPtZCa+h+iDvnTbyvdRb23qv6vbRbDPpFBQZ7P
	jEaGC6JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUn5z-00C8Wk-Ru; Wed, 22 Feb 2023 11:15:36 +0000
Received: from mail-db8eur05on20712.outbound.protection.outlook.com ([2a01:111:f400:7e1a::712] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUn5v-00C8Vg-0j
	for barebox@lists.infradead.org; Wed, 22 Feb 2023 11:15:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MFmqaxsC6o2E7xYtrPmMJTr4P7Yb2J/v9IYfNLjf0mKJ4DopjvkI0g+GmgcZv/rdvkd57apqkBxIeKTpK9Z1e4hnuvhXWq3dEgDdHFckdDdd2X+2ZUm0RNc3wQkmqjowVwHB3VrdXaQvtOBoM1WqBsx4ykQIS8vamVK7DNUy22o6MEaQXwiz//Gj6kwvgoW18GNV84lno3LlLt4Fy72NAE8uBHfqSQLewrbG8mxoyONCg5dXfoS63rzoZM5M3CCy1zrDhL6kcLOdY9eDeRUTrbsJh36kWpYhNuZS2eQuHnuH0FnMpOtYyjppviaLqMVhGrgHi5piuJKpqkan0NMcvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WLfW2xqkjg6YYtIr4IGJUQ4/9CCWUuztbokfwoySHVM=;
 b=Y5/iusTzB15Au4kJ6S1sw64/9o9qXwzoMnBzF43UTzpj2P+1QsCFJKjlBBQFKpusrPuRWrmyn/P9kgEcbRXnzA8heefjmi3YAYECzOYGx8y7JFNgd+Sk88V0tbYIjDX4fB6JgH6HMzSPzxgbwL0wv0+FUPS5F1X45L4RxDNXfQqVh4YA4B7LABys6TEaJVXvxer4CPmort9BkE+4yqG+gnz51GcJ6Aeg03XSYNfDarwNpgegee+GIt0JbPdPAmhvpbuu1kESmShCAvc9RCO3JP1sOy0qInBJNvrEHungE6IsCQD3ypcj1mGlTc9laW/VYJnodFTgAJKKfev+3oV2yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vahle.com; dmarc=pass action=none header.from=vahle.com;
 dkim=pass header.d=vahle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vahle.onmicrosoft.com;
 s=selector2-vahle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WLfW2xqkjg6YYtIr4IGJUQ4/9CCWUuztbokfwoySHVM=;
 b=LV66E7TlpwPmj6RxVs+gCC1P0OA8MmhBVQgR9kEguhiqKbIPIW3O6rqwOOltzp7NEXGCBAjbZBvXR38hXXS2EAedIp/I5PdpyZUP1rNtT98FIGKXiPAcMwb8IXaAbq1TVqE1CWWX1rNaSv0Rv+cdmVmEXCp73JtAjd4HyD8/puE=
Received: from AM6PR04MB6503.eurprd04.prod.outlook.com (2603:10a6:20b:ff::21)
 by PAXPR04MB8832.eurprd04.prod.outlook.com (2603:10a6:102:20f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.21; Wed, 22 Feb
 2023 11:15:25 +0000
Received: from AM6PR04MB6503.eurprd04.prod.outlook.com
 ([fe80::5680:8906:65f8:4dc6]) by AM6PR04MB6503.eurprd04.prod.outlook.com
 ([fe80::5680:8906:65f8:4dc6%6]) with mapi id 15.20.6134.018; Wed, 22 Feb 2023
 11:15:24 +0000
From: Kopfensteiner_Michael <michael.kopfensteiner@vahle.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH 2/3] ARM: IMX8MP: add initial support for Variscite
 DT8MCustomBoard with iMX8MP
Thread-Index: AQHZRQqgesQ0HYBrP0W5pX1JCIT3iK7ZIVaAgAGx3Po=
Date: Wed, 22 Feb 2023 11:15:24 +0000
Message-ID:  <AM6PR04MB650360BA128BCF51CF7A18FCE1AA9@AM6PR04MB6503.eurprd04.prod.outlook.com>
References: <20230220090615.4451-1-michael.kopfensteiner@vahle.com>
 <20230220090615.4451-2-michael.kopfensteiner@vahle.com>
 <20230221092017.GY10447@pengutronix.de>
In-Reply-To: <20230221092017.GY10447@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vahle.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR04MB6503:EE_|PAXPR04MB8832:EE_
x-ms-office365-filtering-correlation-id: 4e3d2d70-5773-45ff-f60f-08db14c6182c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  U68L7b9K7e3w+8oce9YnZFRlDrC2LKYn3d1XkF2Fc4mQ6IasEi80bSJW2jncsDTMUAbND7PeCtJgtu9GPO1Xo7SWVcTA812jn2KPZHjd3yaYYr6dMEWMqsKmD8MIYTHbf0fz6Xyv86R5xTcZvVN0YJZb3lgOY5aPn7lu3Js1zZTapYxCQegd6NS8TrO7brJIZTy9UZE9vKQmLa8jtvl2aqhHQg4wJZQqgol0lHZlEDPdT1SZSsVXhA9EQhx0N6ArIeAAfWJ4lyu6jYmBPyyCuph/Uhvl1+jXHg4lA9s2mfLbKEwSjIxbMxYJZUHzG9IOP1G4hMr0tIbdNkn2IPZkYgeijqQf4Gw1y4Gr/aKKO3HXeX6WKPeGi0ToLNqRy2c6b2hpQ7zakIKj4f+PljRHkJwZiHGgWoNUnp2Y2KmGX+RTvjk+OrX0/EXKi9vvoVjRAd0MtruBBEQtTIYnDD9P6Ny6KLHwk0H9PhiQeVWTrfV527Evn0lbw79lnV+OaWC3uprHyZuvIN3Q4aMQdHLRBu5vh2SHFee775tG5xFam1jbwnijOhgUvCLMpfBPYUElHvEjtRGaa/rqv+TSFgFi0Pz0MrhuXBGZmvNYxXdIjhUtdRJZtS39UENdcEwE4eXoaS31d1j1jxE5ZB4bsAqq4sfHJDP/0p15XS8ZsZKkcuUIR70fUR/R9+vGTj7WKn/u8Nklo8pGGp7mDpj4g2DMfd0ojzWnrHzWXeVh+m0CIAo=
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB6503.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(376002)(366004)(396003)(136003)(39850400004)(451199018)(122000001)(38100700002)(2906002)(52536014)(5660300002)(8936002)(26005)(33656002)(9686003)(186003)(41300700001)(83380400001)(76116006)(64756008)(6916009)(66556008)(66446008)(66946007)(8676002)(66476007)(91956017)(38070700005)(7696005)(86362001)(6506007)(316002)(478600001)(55016003)(71200400001)(32563001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?v8SZ4efg99ehUgGBeppLWf3IFfsQPP88o83QeWmVkOjFiLYM2yWMBHiz5Z?=
 =?iso-8859-1?Q?qYK4RJYXuB+VABDyQd1be9t0KEPDxkVL3yd3RYmVbOZt+ATmXrFnQUs5HN?=
 =?iso-8859-1?Q?hWhyhJDzgb0GPx4vRajuWb067D74uewFxNYesqxNFFz0imb2P8IJgqFhKI?=
 =?iso-8859-1?Q?+WikFrfh4NHIz+UQ/BtyPj2rGH/bUOMZRE4NLmxvKCA2B88ppAJqcqlEj7?=
 =?iso-8859-1?Q?fdvlO9uMAbEp66uhasdVRdYVAIy6Tr5uXZvMsOZXpKuGBaiyKPsPIrBh1p?=
 =?iso-8859-1?Q?sFQMDxZfQ4GfxBfVQe88qOEvk+wVtcujhnDIHEbgasG0+h0KhQrndkXtxn?=
 =?iso-8859-1?Q?uMY9Hld1sFxbWG8KM9MUrFOt5kdyyOZ0ZTplJpXpTLjziK2ScS0RzjS8vd?=
 =?iso-8859-1?Q?sJvRre/okXEf7aMjvhf5rLGY2nb0PLdtYpsZQMVwR95uQ5pcPi31AODsgJ?=
 =?iso-8859-1?Q?r7Jk6GYn50rN3SM5Arv/8ZT2eCOQLiVWe2GpzobSF/8qdb6ZJ2+24qDQjO?=
 =?iso-8859-1?Q?C1CwZ54T3vY4U22SyeUYOpGRxT05gPz1N1Xd93BP3N3QjbzWQkZ+lVGjP1?=
 =?iso-8859-1?Q?7HRtOTIwixE81tugzidK2lwMCK1hNWmq/b2EgM1Ht9sAtA5X3b1g1RR2qw?=
 =?iso-8859-1?Q?kXDQld/qMRpFM+lYmbtmgjblOfSoEPEjPXJ2fI6h2B27yEBxSdXxFGWODV?=
 =?iso-8859-1?Q?/wwZtSQhYQuJc8ctLZ0gbHdRuzoJFsdw3xxQij6jOmZTBZsRNpFweyWdRI?=
 =?iso-8859-1?Q?DHkARy7PRESXJuOG4UvC44V5DDv+xurwCmtOZkbNBgSyUMLyvgGWAlBbYp?=
 =?iso-8859-1?Q?PSG1adjYUEHidwRDMh+7wuNMigsQmIrRd/NL2vusvHEY44Ihopq5zXkFZM?=
 =?iso-8859-1?Q?zsLWN/npt/FPs9/FWknvvZAwBgSvbPMFot9hi1WKdf+pk3wZets4qZLpI6?=
 =?iso-8859-1?Q?YnDIjyCBc8XWGNm4IxU2bAHKKxOVwexUuum1zIhUKC/Qfa3VS/vY5PxiF9?=
 =?iso-8859-1?Q?KNGdF76T/PVa8NJHxyZz3i1mEHuIeDXZj2/TTGPzW1U4lSTMztVKjCsx1s?=
 =?iso-8859-1?Q?6iaQ65Yzv7rGI7jTdX75hm472Nsth7ZQInRE2s3+l8t+4NvxzaE7FNJXzf?=
 =?iso-8859-1?Q?sy3GLkyiZKfAnSJAmmpEfGFZhEK2xZzMA1TyfjrGgXaCs6LbVuoq762lFn?=
 =?iso-8859-1?Q?oBXTrBhJ5SuXYTJYSx3wvSI0aTSPXaok1tLLYzZlC2ygIAuCCyE452llEu?=
 =?iso-8859-1?Q?bYWriYAOgvMvrNar6FaxvmTLzp+dTBkCIasqaqniHfLaRBNyibYDAszxqM?=
 =?iso-8859-1?Q?pPE0/tIDosB38JfxLPyzlmenUJO13+aFhhpaWHyZIS3gDgEbtjE7CBUCi6?=
 =?iso-8859-1?Q?4LMhdA1qaQ08AenVSTOdeOBkfSmoWaJxjR0ozuxCizLhhqAcKc12hojHvc?=
 =?iso-8859-1?Q?wYg/u6CrCOVvvMLEP0PC0fRChgA+cxs9nVhMeoJTW/FlI4U6kO3f2H3DAo?=
 =?iso-8859-1?Q?XDJQ8RS8ZITJbMs+yK3GFBqdP3wMelRObMyrrwd1I3nRghd05Se2rny0aw?=
 =?iso-8859-1?Q?D4YT7ksXqz/AMJqnNdMxXJF6XS8AQbgIKh5uHr6LXUE7V6vn1lZUCp490i?=
 =?iso-8859-1?Q?WdAeklzdgS+z++gW3oLPReXxCtrX+/GUa3Q6A9mealfDnO2cop1VEsZA?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: vahle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB6503.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e3d2d70-5773-45ff-f60f-08db14c6182c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2023 11:15:24.4580
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 251574ce-9f08-4528-b17a-70ad2956ff08
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fnFM7AJHjgeuXpV4vnZHC9t11a4IAvjUqMQ/eep3Lu2czPLWjrlGx1JTp6b51yS4Z6R/55dPcBcifCfwuiALG2svA9xyg3qsHB6NEtx2N8Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8832
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_031531_319729_B2A26274 
X-CRM114-Status: GOOD (  16.77  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] ARM: IMX8MP: add initial support for Variscite
 DT8MCustomBoard with iMX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sasha,=0A=
=0A=
thanks for your remarks on my patches. I agree with your comments.=0A=
I will rework the patches and submit a second version soon.=0A=
=0A=
I added a small reply to the memory node remark to point out,=0A=
that I have no possibility to test my solution with other hardware=0A=
configurations and I am unsure whether I choose the best solution.=0A=
=0A=
On Tue, Feb 21, 2023 at 10:20AM +0100, Sascha Hauer wrote:=0A=
=0A=
[snip]=0A=
=0A=
>> diff --git a/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts b/arch/arm=
/dts/imx8mp-var-dart-dt8mcustomboard.dts=0A=
>> new file mode 100644=0A=
>> index 0000000000..704289aa0b=0A=
>> --- /dev/null=0A=
>> +++ b/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts=0A=
>> @@ -0,0 +1,680 @@=0A=
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)=0A=
>> +/*=0A=
>> + * Copyright 2019 NXP=0A=
>> + * Copyright 2020-2021 Variscite Ltd.=0A=
>> + * Copyright 2023 VAHLE Automation GmbH=0A=
>> + */=0A=
>> +=0A=
>> +#include "imx8mp-var-dart.dtsi"=0A=
>> +=0A=
>> +/ {=0A=
>> +     model =3D "Variscite DART-MX8M-PLUS on DT8MCustomBoard 2.x";=0A=
>> +=0A=
>> +     // use the memory controller instead=0A=
>> +     /delete-node/ memory@40000000;=0A=
>=0A=
> Better don't add this node to the dtsi file. Is the memory size detected=
=0A=
> correctly? The dtsi file describes 6 GiB of memory which is rather=0A=
> unusual. Is that what your board has?=0A=
>=0A=
=0A=
I will delete the memory node.=0A=
=0A=
As for the memory size:=0A=
Those modules are sold with RAM ranging from 1 to 8 GiB, my module actually=
=0A=
has 4GiB of RAM. The dtsi used was taken from Variscites provided linux sou=
rces.=0A=
Hence I thought it might be nice to rely on the memory controller to figure=
 the actual=0A=
configuration out. I ran "memtest" successfully and used "devinfo mem0" to=
=0A=
validate, that it does see 4GiB of RAM for this node.=0A=
But I haven't checked whether some other RAM size option gets detected corr=
ectly=0A=
as well, as I only have this one SOM at hand.=0A=
=0A=
>> +&edacmc {=0A=
>> +     status =3D "okay";=0A=
>> +};=0A=
>=0A=
> You can drop this. It's already enabled in imx8mp.dtsi.=0A=
>=0A=
=0A=
[snip]=0A=
=0A=
By the way, I have base those patches on the "next" branch, but I realized=
=0A=
that I have no clue what is preferred by the project's maintainers.=0A=
Shall I base those patches on "master" instead?=0A=
=0A=
Michael=


