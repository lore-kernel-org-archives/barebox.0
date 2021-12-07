Delivery-date: Tue, 07 Dec 2021 19:54:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mufbx-0001Yq-H2
	for lore@lore.pengutronix.de; Tue, 07 Dec 2021 19:54:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mufbw-0001z6-Fn
	for lore@pengutronix.de; Tue, 07 Dec 2021 19:54:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=luXkTiZxTuarTQdOExiEdmgoHjsRZuVeHEiNjYH4/uo=; b=LAn1Z2lUddJm8V
	0x77jYXnooPP/xJjSZ0C7l7S9EYPLZ6Vwyap58IPCVMy9sMpByQPljE7Y4e5GL1sdEEqpWF0LeHwC
	dZcaF1CNEidlBSHvoQmOf8BSVZ/hIIxusySpMFrOSfTNJ+XXp6t0eCXCxSU6K9J6iNzb7xtLQ9x08
	c5O261K8YhMx1dJ1dBq7+A7v4RU8Y2QVKCSYfU0EkfbDoiVrGYSVCztMVwMe0SLv7ZZ8QDZXSHDSQ
	2PK2R+Eus2finc0n2JvOMkDKRqLTuYTphHWreQp4+N4BLMjTpBVOPrh8bfcKVqlFcR7sbnDyiqLDw
	aWPN1V/gWgnSgUf7b4pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mufYX-009qdV-UT; Tue, 07 Dec 2021 18:51:14 +0000
Received: from mail-bn7nam10on2112.outbound.protection.outlook.com
 ([40.107.92.112] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mufYP-009qcT-RZ
 for barebox@lists.infradead.org; Tue, 07 Dec 2021 18:51:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H7NQY2Z7jmV1saaHaKYkSS8IrzRFScmsgZsN8oonRkbNtUhnLISXDKkTj2P/zPoUlSdKPh50raMm7JTiHFttGHOD+NaXvTFmoOV8HqIVXM3JE8ygv1/6CyHi0exusdDEiexy1tb1vrKu0eXkmw9E6dmwktRrx2susDh6bkSBGKQldWPR/8VvKB3T+vmZg7FAHZ01VQk3Mr13Mgm9qC63STzbRiN6exXXLazpLs4EzYpyeK5stu0Z7QaUXpRB/t1zO+ZMGXMT15Y0v0WEyZi1wZeh4teEtxZS2GYVTmN2Ngs1dgJu1jRltr0fJoMK4KY5UQvRpI0wauJqUYZhxI95Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UfkGTBr/NzMh7ojETtmluNAjWVxguMaPG+d86crjI9s=;
 b=auN+IAQ8PFMcnKOXDZvF/Fc0jJu5yB+xy14HJeK7XvCVPsbfrMa8pzDJV8CLnJWavNtv5gER+OorQNf93C5LbtBntfNXVzzz6se5kWJJGzEIP2w3yknWrrqy+JGdCSgrdMiNfO9f/YuMgF1pQ4KxBruPmXv4xis14hv+RroFNepd7CfG6JL6ZJvAz1g2n+91iF00bnwKF/sRhZHeFos2eU7rPb6A5pMk2hq1K97vfIY3FJRvrMXh+ChpepELVzEkJURll1C1eWg+1HjP8lWzJDI2LLkMeu3TXCNkgXwxYmAyS0iruCy6JzH92VGj93Sbv1xpLdkGu2cBfOwWcHlNAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UfkGTBr/NzMh7ojETtmluNAjWVxguMaPG+d86crjI9s=;
 b=YAyzuv8FalEPxakehx0ZofKG4DJo075Pc3+YdAa+kkWw4C5PYWl3KPKr2qxkj12vrtosV0w3C+14Yjh+hFzLhbV9jpKEFb/FbytchNqINTOhGNKtrlMiyHif5NTSIKxSdYwGjmFCaz4NYPARO3wB3nK7LuAVDagNNNLSKa5jUBSXwS6NwsUFdOuY5ArWFbzQYu+5FhiQKMttPBugR+YzQDI7QPaoIMjm0n8A4fnx0jN4p5BtYe6rh9BDR8Ln09w2a/l8MbbkHGTKVQ8IkkSBAkOQ94hfNPnvps11u1vZtG/s+zT8mx06hKCRYhC3M/CcAHgH8k8lS57r6wNkcKlwKg==
Received: from MN2PR16MB3135.namprd16.prod.outlook.com (2603:10b6:208:153::31)
 by MN2PR16MB2958.namprd16.prod.outlook.com (2603:10b6:208:d5::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Tue, 7 Dec
 2021 18:51:02 +0000
Received: from MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::491b:ac96:afe6:1700]) by MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::491b:ac96:afe6:1700%5]) with mapi id 15.20.4755.022; Tue, 7 Dec 2021
 18:51:02 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: phy driver
Thread-Index: AdfrmR40hgJCM1nZT6e4XrMNXTGfsg==
Date: Tue, 7 Dec 2021 18:51:02 +0000
Message-ID: <MN2PR16MB31359DA7F9096A1202445668916E9@MN2PR16MB3135.namprd16.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=abaco.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c736a106-4451-4400-99df-08d9b9b2843a
x-ms-traffictypediagnostic: MN2PR16MB2958:EE_
x-microsoft-antispam-prvs: <MN2PR16MB29589D7A9CF6D9182665FB34916E9@MN2PR16MB2958.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lXH48RaHb/34ojXSpQg+9AiOXSi5IrfLrLgGnRnB+tUUfl7LRZtWxsryMizR5s7aenYLRDIRNyJTkKCSgjG8xJXnuq9YqqNP75mWUOVcgiJtQMxCcN+O6nkc46AkbjksbGyWxFKRIq9alKjK5Kucp1l2L/dgzBi7WGa05O8oR8a3amiv/v3jhClGp82HU1zKJ1zVZvdg0pvVpYiuJmItyuJP1Kw3LnMOPcFmqwWRKENFUU/xw4kIb6ClVc8Dh5OzOFs7s/ecSc3tEl5UrVvhBypoRxymWIX5sl4Y3vwA76kKquqnHhOLpYu1c5MYqeuQ3im/AISbbujffCXMpQdSzO5HYepbAeu3yJd1KS57CTk28bYSH76p3SVqmduDFtoxENlHbOYC6tdMuyZxKgadyc4SbSQe9tfhcNdIs+r/cMjSw3yhIagJVtukmUFLaW8Hd9FmQVSeL41lhyt3skqEAAbwA10Wmhm/4BcnWkbgrd/PCLqObnqNpTBaDM8pixRAVhi/oU71c4Inmi7y2THMxzI+nzSb/KPl1SUUyycKxpbxhW8YLq2Zr0sC3ylU2VpP7OJzsWqr0/SmF+HW/+WdxkhBDmnjSnNR2KcMtoACd+8A+A7u+V3ygdAqb2WwjIItlM/ZydE7P1g39T3yaV/ct2v2/MPYvq/YNDsxyI+nlB3C4QSZifKM3Gze2t6m1OtdFWgUN/ZyK/yjkIvWUwybKg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR16MB3135.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(64756008)(3480700007)(71200400001)(122000001)(7116003)(66446008)(2906002)(7696005)(66476007)(38100700002)(66946007)(76116006)(66556008)(86362001)(33656002)(55016003)(316002)(52536014)(6506007)(186003)(4744005)(26005)(38070700005)(9686003)(6916009)(8676002)(8936002)(508600001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3bhvYx8IlDZ4CCXnN17n8R7u291BX6z3PAA4D1YwawMXQHsKbaIKNRDJEhrs?=
 =?us-ascii?Q?Aca1LlvXjm4AD9x80yADKhw+uKab9Fumpe2MYO9JDZihxYCwLTbgmsWWYVlM?=
 =?us-ascii?Q?Ka+OFkx3/xNVPPoutQr9qHwMKfsx7JGoISyCW0OCt8MJXOiKZ8LSQ5GhYY5/?=
 =?us-ascii?Q?/jTV+mk/K2bFYk4Wj1j2EMCjuma4lPGB81voX/5SY5VX+QlpJ0LeviYV1sS7?=
 =?us-ascii?Q?5qXBJQt48A5sQQZ03ku16xxel8iNi3wSO87d6dU7W4KYs5xSBOMG8OItbhgR?=
 =?us-ascii?Q?9WmyPzXhZw5Kk1J1jcuboQdNA+Obp1UytmQian4IGiPDaZBOOHLoImXs4cc0?=
 =?us-ascii?Q?mjq01ThehNF9gKOCaHvw/ZYND0qBuukWiv9rKjBGUf6gQlhx+ESVFzKTudeq?=
 =?us-ascii?Q?JsurifW4MXh5FbE9mXlSugmc28gEjXVAdVsVBXSLgrSeZ5jn8WdDVd7Oqjks?=
 =?us-ascii?Q?cU0mG8QchHcbOQiLMNQqUVlqYxDJtqRLWNaeLtA1Qim6s4JtMirA/I1zsaK7?=
 =?us-ascii?Q?dn0Gp4RjhsiIHSKb7EU4Ad/YgGvlrSTz9waVHmRjWCSOmGT2DLBz3LOunrzF?=
 =?us-ascii?Q?ytNTgWpg/eh570rpDo5laA1dpSge++PLB3P9QV3kTkEzSubggfu6NkUh6Gzu?=
 =?us-ascii?Q?6hwOdpvCl9d9i+m4+Iukb1P5a81dUj0bj7djxjNEQSi8Z5CnR/jMD5YD3UZX?=
 =?us-ascii?Q?ddtlg5nlhcY29ta9HTidCG9ZQlAx81wUUgEgwY/JOIBmhCrKsmxh73s8LLAl?=
 =?us-ascii?Q?G81qo4MChH/kbE2DQcb2k3t4xtBGGZQGN7AohkNn/YO+FGWsIJQ4JXvhGuoU?=
 =?us-ascii?Q?2Cz0KByYcKyNi/4KWtON3OOhGguya1HBZcND9cDHzOvO9/qsua4rzikMfgrE?=
 =?us-ascii?Q?xbD/P37LdoUSKnsnUwNdYNZCsju+njaivZV0kF86A3LGkPACZefudR5Q4zwU?=
 =?us-ascii?Q?KJj9e/NJBhEE8jEi8Hvjf6MDmuam1Fgerk1NkudZnVe8PhISp38f4zfAOocN?=
 =?us-ascii?Q?OskVVw615HxmKi0dtoL84kAQ/k0WffaGD9mqZslKC6JYAwLXEo62oJV2u5v7?=
 =?us-ascii?Q?g7RWXmry/DqkpHXGodeoAEt1FR9j+4ddDMvS614+VD2XGFl4qZdccJIG8dKp?=
 =?us-ascii?Q?cVVaxCHAWUvHXyFnXPLpfqF8ek2tZEHD18+ccW/cIpgicF6LMb0ePbsDmijw?=
 =?us-ascii?Q?PXZhUSWIwbqSIX/Jcp19wgriTYDWy66P30GBYws99i279Fd0UgIpArK2ziw3?=
 =?us-ascii?Q?e8cO1wOhs8ET8NA/cWtplmIWLDBjKBBN/jbhxg/017QoCqnAeLE8MFtshhYW?=
 =?us-ascii?Q?SFVfqsy1ZbTByR7h0GIdlkj4zN+uL6hyr51mejvtaaMt5tbLMJDcLo0pRepN?=
 =?us-ascii?Q?1OFTuWu8RBOEFv8kMHKinYqA6AzUMHTERKiD1VL3SPf2l11NGLthUxgL4eFe?=
 =?us-ascii?Q?zYOoDjfNdNo5W3Z6vg3acjYj6GnmtGIu1bItsTNl3VJj32xRJ/KP/gLpsG8E?=
 =?us-ascii?Q?zTOLSjlnK1d9VD1krcTIG1qZTcfq/1LLPertNwrWaI/D+uHqGETxKPkOk7Bs?=
 =?us-ascii?Q?q7oxINcnZrL7AsCwqsNlAfvDry+fd0OhrvrldiXvlbeC3lFUAZ0cMPmnTwQb?=
 =?us-ascii?Q?mXf3KwN+rrlWVDm0oeCh1RFdWDdKtD3Kgo+W+sc626SYaGzukx+7Za1eHDyp?=
 =?us-ascii?Q?xSS2qA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB3135.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c736a106-4451-4400-99df-08d9b9b2843a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2021 18:51:02.2136 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v4oQfraatVAWc73iW2sN9tOhI6mxoe+uPV2OuKK5UAIEU/fd/skJVldK8Xq9kwbVoqxQqWSJmOSNzPiSPZQLK5cm5f6iBQThbhiv+hdCS4g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR16MB2958
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_105106_048985_96CD547E 
X-CRM114-Status: UNSURE (   6.94  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: phy driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I am working on a LS1021A currently booting from SPI NOR. 
I am having difficulties to get the network port working.
Issue is that the PHY AR8033 is not initialized properly and even though I get the correct speed/duplex at first (1000FD), no data go through.
Clearing/writing 0x100 to the phy control register then gives the lowest speed/duplex(10HD) and ping works.

The at803.c phy driver is now enabled but I do not see the driver probe function being called and neither mdio_bus_match.
I see a few examples of device trees to add the properties found in the driver. What else am I missing for the at803 to be used.

Cheers,
Renaud



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

