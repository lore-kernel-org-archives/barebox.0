Delivery-date: Mon, 16 Mar 2026 18:20:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2BcR-001Vcs-0U
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 18:20:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2BcQ-0004Xp-FM
	for lore@pengutronix.de; Mon, 16 Mar 2026 18:20:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0hfsE8fVRvM6HkIK34ngRP5fg8MMlg0BIiEpvlxVwT4=; b=arQmwqEgcKz8Yq
	/ZD4YAnL5i7ekGcujT33AvNoliLTySsIYy4J9e9nlMkquRuOwrVQFAIFfeBA/o4pI/WOdx7vwF6ed
	5OM8mU1jvnRAPBssY/x7KwXUXkt7OaSKYYdIFW+O1OhDdVVuWb3qiCWjmfnwRfiizPDxxLYYoagDQ
	rHDKXEtvdaaJEorGijrJ6jFQk44Fw1qlPs8StVbovaqWsYjQErCyvB0zwESNgsCz41jDaU3SVhXQv
	rvunRpOTqZhbGGkSlRrZvtgolo/xTs3Rf0uFjImLCUDfponXfmOsGwY+mnyRzcN9LynR9KGQQR7RM
	zCcaFSfKUhF960YMYESA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bbm-00000004Xkf-0gBc;
	Mon, 16 Mar 2026 17:20:02 +0000
Received: from mail-koreacentralazolkn190100000.outbound.protection.outlook.com ([2a01:111:f403:d40f::] helo=SLXP216CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bbk-00000004Xk5-1F5B
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 17:20:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W0bZbEb0J7vN57mFp3StEcpqzXo9pcRU4SwG601Tt69PtY0R6O+Syn/+FA1VjXdBD5xelTCqSmaGVkpsmZ9fgTeMH7zrYv2Zg9OgjNFK+lmXW5YwPY8u4juyq7RYHclrtEF6qE8SW2LPOLuYocMsxdia+qBsnjej1ZHPAu8uMYFWFZ9bbzhUF2+zrjjt6VnoDr+I7F4zI+0v0eIZYQSEcK/QH70aCyY45PZloXiYMHVWX6uh5OgDEpqUPdZ8o3/XYZKO6ej66NMqjh9eMHNKu+//LpW0vscWnl9Xmgzr5DnsWUvRNhfKKGFq9zrph8ZprmMYJ5J1Rgy9r8KCP0pl5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0hfsE8fVRvM6HkIK34ngRP5fg8MMlg0BIiEpvlxVwT4=;
 b=cU2SGDzX4lDHn9Q1dC6ZvO8LoQUTdv+rJCLxYSimZ7qxpmvOwvXgR5fd4WVVth74JmzZwGfwefs84doKcvBFBJZ9saUdCvLHhb6LiV7XTJ7mxnUmGRQmvPtbIGU5aajJPxGZcR+K8qgUUJYP/HbWSTlol8E50flKvJQKvm2401RyKn1wR7evyMR7sZImG6JDyhwtGXfDBMVp/OGw7hFH3yTaxtMArbFoXO++3+9PVQsEGnl4rZXUqH8ewAKLOk0H+hI0w/sn1SPf7uFanu9kWoGYEAgXx7VJ4/Lyb2kk+nB5PDvXY505J+kmBBOu8mlYpe+9qdVag9gxwPMfUK+9RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0hfsE8fVRvM6HkIK34ngRP5fg8MMlg0BIiEpvlxVwT4=;
 b=nIhCrFiZc0wfgThQ5vv9ZGOQQ2p/cfNBBgA3fkTa1igTleQqIF9zN3wUpE6tEHH3j9CK2qxEiYrWqXbp5CY+dfZYR8FO1GaTnJHVYJiWu1eJ0mwksp2L9DSb6GoWw46yC7v82A52T7Xf66/joVvyur/AacXtre0uygnzRw+Iy7nNrgzi9CqcbECZ+S2NKWyQ4Bl8C3kK8oev4YgB5jgldUi1qH5sCXI6xYjzdXXQ9FcveSffOrbrI0KgKVlLZwndO0+E7HXy+DQyD/px+nd7CyR44e3dyrxTEVwsHcCIMIocSXYEApuivVFC3xDEDuYRPDOuQT0/tutn0SGleRf6Jw==
Received: from PUWP216MB2399.KORP216.PROD.OUTLOOK.COM (2603:1096:301:13d::11)
 by SL2P216MB2929.KORP216.PROD.OUTLOOK.COM (2603:1096:101:285::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.25; Mon, 16 Mar
 2026 17:19:51 +0000
Received: from PUWP216MB2399.KORP216.PROD.OUTLOOK.COM
 ([fe80::a26e:7614:c059:a19e]) by PUWP216MB2399.KORP216.PROD.OUTLOOK.COM
 ([fe80::a26e:7614:c059:a19e%4]) with mapi id 15.20.9700.024; Mon, 16 Mar 2026
 17:19:50 +0000
From: Lily Easton <lily.b2bdata@outlook.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: Capture decision-makers actively engaged in NAB 2026 events
Thread-Index: Ady1aRbOfVTjV0euRlKZbMYL6asibA==
Date: Mon, 16 Mar 2026 17:19:49 +0000
Message-ID: <PUWP216MB2399A3E1E36CB3B538ED9104C040A@PUWP216MB2399.KORP216.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PUWP216MB2399:EE_|SL2P216MB2929:EE_
x-ms-office365-filtering-correlation-id: 5133d4d5-0f4f-4c12-8ae9-08de83803aec
x-microsoft-antispam: BCL:0;ARA:14566002|39105399006|20031999003|37011999003|13091999003|24121999003|22091999003|24071999003|19110799012|8060799015|8062599012|41001999006|12121999013|15080799012|461199028|31061999003|40105399003|3412199025|440099028|102099032;
x-microsoft-antispam-message-info: =?us-ascii?Q?alQ1hkIE8KZq0AKj0kzjQ55bqPSwebysG5o9MyOJ/GLvjjvsdJBfb3c/DRRy?=
 =?us-ascii?Q?kvxJ1TiIYM6KxUMq5+WUOcud+RMziZ1VQHFUN7xNXO35qnQhKxuOEQ1NCmXw?=
 =?us-ascii?Q?na+qnpccFIOsUnQoPWBsuo5iLbhpTsU0Gkhetf2w2UWKAjkwgEaOtyTWqlU5?=
 =?us-ascii?Q?B4IZGqxzw4yMzSUs+/+uY6U6Mj/FI8WeNoFuyVt+TsWsAhjKXYCD46JF8pgI?=
 =?us-ascii?Q?LWWT1ma/6WbfMGf/6hWbC1mSaJqMO7fDne9fd7qMM/N89t+Vk8T+FhF15m18?=
 =?us-ascii?Q?yNf6NGmOf3NwyIqtdzZlnqNEZyJb9mTU68sT9+4RDPmEcaNLTOVKUy0/t9b5?=
 =?us-ascii?Q?Md9CCZWmTyeTUi0/rO52af5e3+2f1hZ6ltfCxXhlFHe7om4ksP7hyCUIsfGT?=
 =?us-ascii?Q?naMmP/2z9LIb9IJ2FP6hT8Dhtnz5ftmtEQR7cAJu1RNF+lP2EyNVE6e6bC+/?=
 =?us-ascii?Q?p3ZStLrmMulT68oeLu1sDiv+SuuJXRJqD03WnkdqCk3J38NE/LNQswXBmBs8?=
 =?us-ascii?Q?6lTitLbtbm/CotGucrIuvhEHVsXl70C+ZCK5XTXZmdCTb7b+siefixhL8Sx8?=
 =?us-ascii?Q?q8SpOgspS7M0rXFX5p9fGRbJXJHItgqdffrhFGrDl4Tao0ox2MMua7fLtcK5?=
 =?us-ascii?Q?vIjp2C1dtkQb2dKLLXA5t3TDONICAAwix30doiKGapp4YJD23GInz+ExyQaE?=
 =?us-ascii?Q?hwgxjydYkiQeKmQOI3RYeEDsbpcaq8gdhsiSNs3p8WnsjSOIMKv6bqaIfb++?=
 =?us-ascii?Q?Bo6yU3gSG4Q8nlbgSFAtHZ3/PuHefqmHcGzxtX3bNTYXV2euWpRLfIAxEQ43?=
 =?us-ascii?Q?H3nNbMbWs7zHd4zElTaynBFMFGjSoK1jqjxytiT4IWKUeOAv6PdCMLiTXIlr?=
 =?us-ascii?Q?ggr7TWSjnpORxihGrnUxNHWU4A3NyDP468aXSr+EzI4BCC/1NwyQtS2Ju43D?=
 =?us-ascii?Q?lOLtOk3tZANR7xwtYUA0/xJiD3zZUZoDn/WwEVjZGK1g5Bz5lxwiad3cRc+c?=
 =?us-ascii?Q?H/I5QGP7e16kV8m3oicGKjuUwUVrtdVKQcrfMpt06728jOq3iLgDoIU3bbhA?=
 =?us-ascii?Q?jwoovihafVqZUhV8UoGpRKwsO8tO2kNrJ/Ib8nt+AFoPVGmIc7mkejMstjU6?=
 =?us-ascii?Q?BVv82M5/+s+nqJxCY+u7zaL7ce7EJCIpVg=3D=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wHBRF6LPSsEb2l7/NAJxkpxNac6wAuGNIgAaOqw8ci1het0kynNuLruSd2S/?=
 =?us-ascii?Q?K5XuRKfb5WxYdoH9Xm+0qwBaUUcy5atemN4hgd+Z7YxCg6a2dLr4BxVHdD+E?=
 =?us-ascii?Q?HcG2cmYxvFdLCbhjBXJHRrdi+hHXBm9AojplOF08DkmzYa1wg9uWUaWznqRS?=
 =?us-ascii?Q?Baw9a5t6DZ4OTRioqg6jNmJHZjHrH3sc2CZfmk4WBL60lGOxzDZHrYDPNlaD?=
 =?us-ascii?Q?vTFDkhVszFuzGURMlP5VIOm+FxWmtk/9aLuavgLLMNB42RbIRgzF0K/ToKV5?=
 =?us-ascii?Q?DncngZ4r3hS+ttLQrWMPgdpPgOeoohihnFDmXzKxSW6gvycBje+OLFfdXjbX?=
 =?us-ascii?Q?jbfgCCO6DqlX3g2mWlZ93IWK/2FN5e9VzT7KRKAPiIzcOkH1uIfGIWpnh2Bt?=
 =?us-ascii?Q?uifkzS+7C5+lfFHj4r16k2V9+kNkfb6bX7izlKn1EJkYMEaSLwBr2kPrje2q?=
 =?us-ascii?Q?8aj5JlNpq1vSfhKRfJ/GF2PK0jczsw1UEBl97efIigT0QlqKuA59TV231bXH?=
 =?us-ascii?Q?p4ndp8gqbCwE8lDTNtowpg8rBHTMg/ncFxs9Af8q7dwCC0QqpW/843DNoapG?=
 =?us-ascii?Q?+qGmAwf+9dfWRwz6pM5ave/tCpLaE3nUFBDuvlv0WM2OsnCHb/QHr3X+8cNF?=
 =?us-ascii?Q?8ZdtjVaVpYWFR4fpjsjZouuYRxfMxQJRi2jje2cLPb0xo3p6YHgiXJ4Es/XT?=
 =?us-ascii?Q?LdZDjgYgVC+3nkbwjFg8ouetuqmdY5J5kG1P4TWtAGB1hJYNRo68vNpBdj8C?=
 =?us-ascii?Q?1qVYgQ0PxIhCy0Of0qldqOxFTKUoRJdfsZJIoT88NOHi2bJ3Cn6gnV/OXme0?=
 =?us-ascii?Q?1EIEAWWwLxb34aXAmYHKCITvHtWBSdNSydHgrcdu3GFxH5pF0RspT9pSXqLp?=
 =?us-ascii?Q?Wtwg8w2PhH4LiXc03y3mt3/PDBZimMfMcduEF92cvwBAaAbQBkevZg7Dqis0?=
 =?us-ascii?Q?borzpsQ6mrgbNHOs8dUGIh6EU+j+SR4uhdSlVPf7UnsxFcIWKQT1TEzozVI5?=
 =?us-ascii?Q?G5wRncoawzZSFoZyEJwLUSczCrRYHmCeXpkTcUMuLWKDMpmhg5WoVP7ENY1t?=
 =?us-ascii?Q?kMucpoFcNGS+Cie9V7/VAyHZGfrd03cq736H7VdslxYbw2wWkqKs28dWQ+cw?=
 =?us-ascii?Q?LM+xhJOMFWd4alIkCCyGl2XsH4lQa4phEToHCIZ/Ye5DNz/rTLJAp8auo5rV?=
 =?us-ascii?Q?ZzSIV1GXLueM7wl2lAts32MURUfgKz5SYIby6BwFnlSMfho6kmVIPmO11DH4?=
 =?us-ascii?Q?7syT0LnppQRQLQNqSkg5OsIc5FlVx8ZBbPCREhG7m1a6oW/JPCcU763URBV/?=
 =?us-ascii?Q?PVAqt1VyZ9TfwN/ASbScEeHuyE0D9QEwkqFV36SaXRf1YFeYYb3w9ESk3vmo?=
 =?us-ascii?Q?L+1KAPAK12l1Nk/x84qYCj+hDXkmDKfO8cHu6pD2WmcMkZ7RztCb7t+oz3Fr?=
 =?us-ascii?Q?tr0UMTit84CkVtyV+fAFWZaoZgk7AHvr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PUWP216MB2399.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 5133d4d5-0f4f-4c12-8ae9-08de83803aec
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2026 17:19:49.9572
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SL2P216MB2929
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_102000_345387_7E34D1C8 
X-CRM114-Status: UNSURE (   1.09  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Capture decision-makers actively engaged in NAB 2026 events
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi ,

I trust things are going smoothly

Is the idea of buying the NAB Show 2026 attendees data appealing to your co=
mpany for increased ROI?

Expo Name: National Association of Broadcasters Show 2026
Total Number of records: 41,500 records
List includes: Company Name, Contact Name, Job Title, Mailing Address, Phon=
e, Emails, etc.

Augment marketing outcomes using our top-notch B2B data solutions.

If the data sets pique your interest for purchase, please drop me a message=
, and I'll share unique counts and pricing particulars.

Thank you for your time and consideration

Regards
Lily Easton
Demand Generation Manager
B2B Data Inc.,

Please reply with REMOVE if you don't wish to receive further emails=


