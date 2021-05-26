Delivery-date: Wed, 26 May 2021 16:41:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lluig-00011G-QR
	for lore@lore.pengutronix.de; Wed, 26 May 2021 16:41:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lluie-0002L5-8V
	for lore@pengutronix.de; Wed, 26 May 2021 16:41:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OtQfi3GBF1n20OGcZpZAMcwasqPkKFlT4CaBF8Au5KA=; b=YhsFuEbNFpMRMM
	JAGDqZIvhQVrnwBHM+Pj1umO/5EhQVthr6JTQv1vPTRYwxcPONrcwz/YbYLNBje7ejK2yGPeIQOUo
	cxeFdtBGhqKNPHMEkQdUxZnRSZ/qSP2tLbZXKMN2U5zN1QABpn5ONQuD2xFZ1qudmYvU1mJshMNxM
	iXJ4xjlrDrcaNakzj+Gpv1WpjQhQSJ7riP4Ma+3T1Q9xU9fFh3gfeHxMb/LxuA4A3YMDht72VEIMr
	CIVqgFSMs2xayqfK0a1qrcvJu9ZvUHsbcWQ/7v74PIS8HpHTXZ1WCLEYSygp/8F6rjmBML2UWKzkL
	vPzW4Ip7qCB8yk8fxhdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llugV-00EyQR-T2; Wed, 26 May 2021 14:39:00 +0000
Received: from mail-bn7nam10on2138.outbound.protection.outlook.com
 ([40.107.92.138] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llt2t-00EBf1-4c
 for barebox@lists.infradead.org; Wed, 26 May 2021 12:54:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W8pSKaeF3oZeEiePPIT79Ta1erWLiuQ/Yib5lv78ZD0d7TumGouDVLtLTAgo6gS+bRLSQp4buRMUpofqRxGBYCXbIlgON1+zT960xx0OytxxOzhu6Jlbu8Lr5yHeBvgXZICqMHmBYb2xE/ZPWQrXLZGjkMyJSQcyn5D9XvKxIdkzw1dQwXVO39BE9EJZZziQp2PlB47P4WrkftijhQRKotyDUZXxReu3OWwLqdfeHrKN+Lo+3BjlTCPP9vgM4/0nG8HWpyv2GSRveyRUx/KVXy0UkWvkUf8bH7rmqBdYxt+L4RBXUuKtXgH0Z3In9ZpeIG0bdTEaeKi28Zx9NteLyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CmlKN7+zGwXr2X5WUbWum8lh+LQeI55LD2DATFQfeHs=;
 b=ZoYwQKU5STW+EqhJDfLUx/eBMhzLS5mrq/1m5nVR+E6sLwJzcxiRe37jc2hkx6mUeSnNznvhBBs+Bbg0mEZNeLz7YadJo4ybI/1m4hY18HpLb8FODZmxzNOz3SibcZHnkDZW/nmi9KL2y96CnhTkgHqKWJp6/sGyjv/ZUjwEDyFkg0k5YMKc4idfNtuKMlpoR/7cJSX11uuXLV9WjX+PPcnN1Nu8LpdpkqB3XYNLrDprGFdE/DpryfhyPv27G7fKfcQUCAxZkaDWmjgf6J8Jfa+mHKXIP1tcNKAJe8NqR7L8/LP8DkTseGJTDpN59PcVWUi5WuJBJOn+TGqsM09p0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CmlKN7+zGwXr2X5WUbWum8lh+LQeI55LD2DATFQfeHs=;
 b=SorwmvQ0pBflk2epsxjqJZXH5AnV5OWanMfwGGZ9C0pho6QLa1YbIjMZJUIQl2uMQTCBP8I9yv+SgDJOYsCEL7m+pSwUgS36ptb8CDCCRDghOCclEkjrW5JoRNufH2kw7tB3yi4N6xjagwzgV3bWPCIH1GHvnCberktl0qjfchr1kccvBJC8RAqePO6QqVyuhGe0u5s5BPa93HOtGap2mK1PjfEfwaTOjQetb2yTDgkvK/jCMoQorfrlu+6d/SXhUzLVw7/Xu9tM3M24nPoentHP9SycRDhCn3Q7bVthzt+z9lwaGfbjkyem8Zdfk2kA6QhRg8qqv9LqBIY9y2OseQ==
Received: from MN2PR16MB3135.namprd16.prod.outlook.com (2603:10b6:208:153::31)
 by MN2PR16MB2703.namprd16.prod.outlook.com (2603:10b6:208:d7::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20; Wed, 26 May
 2021 12:53:56 +0000
Received: from MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::81cd:8060:64e:57c4]) by MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::81cd:8060:64e:57c4%6]) with mapi id 15.20.4108.041; Wed, 26 May 2021
 12:53:55 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: barebox ubifs support
Thread-Index: AddSLLADqY/99I0WTeKZBr2bUrKERw==
Date: Wed, 26 May 2021 12:53:55 +0000
Message-ID: <MN2PR16MB31351A1EC23941D33584F27291249@MN2PR16MB3135.namprd16.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=abaco.com;
x-originating-ip: [167.98.226.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ecc8e0b9-b78b-4879-8eb6-08d92045528c
x-ms-traffictypediagnostic: MN2PR16MB2703:
x-microsoft-antispam-prvs: <MN2PR16MB27032F46385B72F35771A4CF91249@MN2PR16MB2703.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /SZg+lK1I3VZvx60iihJCzmXnOdkGCSn+F2yysksWNcxB4PV6jV0xAmAS+xYHNm/1lepsBmZ8ld4OwYtOiFS9EeAiRZIESTG0u62Dp0BY7ft0ZE52Cr9KflUb8g3a3DmN0PeewWqbMfeJzGjVUd4gxMvQHlmrgDAApMBgGmhE9J5imydvXW9EYWQhq2rEPw71PpWKQH/Z3UgSDa3yN8EvzHd1ivEL01O7Tl6gggqWdgSXyDqRiEf+N1ITOvrjEmJLpp9sG5KsNZTjXllhCZFskPKxnZs5dRfRNwIVgVNCXjdCqq49SmZMYU6QFYpXbfpEh0Aa2k2TT6NHpdKqP+RqsKtL3YWA4fX60Ye7FJ+QZmHZtvLpALkDVrtPT/x0lx/1ZBzoX6SryVU+pM+BYjF4CA2mjwqvhuJIgcIrWaVlFIqXpJI+n+KgERdemwX7NqAgtb8Gk+NMKT7OAdDFpSnZR9a8B/rGCaQAZKXFP+bUCXikoUjTYe9yJJyRcURbA6LgGWfi+O0o1a7bxZhKOKHzpmA3s+XHAwl3V+B10k8J/KFYaSjcjbGpA4Asf8OgFZ5/ErKlbIOkYk+OoPHBzsdlY7zVAZTSsLVk8EsHUUykUDpm6kKxsGtt2JdZO0uM+kutSEbg/QLUJ1GnN9aEBUdmDVLIKHGaBMj6yB4e7Nhedo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR16MB3135.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(346002)(366004)(39840400004)(136003)(3480700007)(8676002)(8936002)(26005)(7696005)(33656002)(2906002)(83380400001)(52536014)(7116003)(5660300002)(76116006)(9686003)(66946007)(64756008)(66446008)(38100700002)(316002)(6506007)(122000001)(6916009)(55016002)(4744005)(478600001)(186003)(66556008)(71200400001)(86362001)(66476007)(133083001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?eG3GM08A9VJmqFghQieFW9JIkh3sr3MHnB+WcnlkDUn8HdXM9+TR2CAJm6Gd?=
 =?us-ascii?Q?B6k7+cb47IXvWSoN08IGkgCWF//0/JcJc2lNhh0Om5tIF68E/ppN+/CAWttB?=
 =?us-ascii?Q?y0TwWerytJJovXFmpI7DsAD3DqgaBrrPavmbm0GExMTBW48laEjyitX05d3B?=
 =?us-ascii?Q?2dXUO7puxCiYs/hETkmSVRA9JuC567uMk9pQfqMGH8qhRbdhxeDnSsdZi7Du?=
 =?us-ascii?Q?ImYqiGJ/QbxPyzIpmsXpufDtwIUWIFj4OIJNyPHf6DjuMQdC1yOR/xiutro0?=
 =?us-ascii?Q?OL01uMGf1zGZNpxlLwiiqVuZyKhfEjqCi1Kp+EQ5M1ansbvpO0P8pt3/PL89?=
 =?us-ascii?Q?jrH9MfiAtM+oHk6xBlRjIa68pzDckJKy2jVRCnKYKUlIkXsdqdJVujET8oex?=
 =?us-ascii?Q?dwAM1hfVip8CfPIH6wGAknbugkfx2E+gbMyyIuL/yP4lVRmHPmWieG+3FlC/?=
 =?us-ascii?Q?bwXjWXgQ7ZzYBQfRHH1SkjbFA/zIsqPUCQ/snvTBmgMVtPob7YdCo703SLA3?=
 =?us-ascii?Q?4dyY972qd/ZD51lrirAemw6Hp8nWfU5oLMQYru/uecynSll2Y9KJOJRiBubJ?=
 =?us-ascii?Q?ToTKnyabuJbXAUiyMwB9+6T3csaZD7yMDLyGYltFgkqoeGPvAxGy8+cDDaFE?=
 =?us-ascii?Q?oO5hqL5ZVbpupbMx3C/1P6dE8WQwY9tH4Tob69BoU3pPxBs+RoBTAxXwwtsV?=
 =?us-ascii?Q?/Ip9aOJ9q5DmRL+mv02ojncUgRdLgSIjqSkpAL+f+U6/fZtuUE6WWtM1AQsT?=
 =?us-ascii?Q?Y/ZUI/pjpiUpaZByHF9AHSwLRFr1eaoqqYy8c77wicWi9+RNAiMQTknqs9IJ?=
 =?us-ascii?Q?e/Pv4zARMHbDKhFe8L+VmQEM8sA2I5Tc7W1RXuTz0/o4Epipbh8MBu55oeUI?=
 =?us-ascii?Q?XGqShETOdMM0ltdY9SRUPqRoddnWxRHqTjEV/Cy3HfvNwLXG4lZ+42e6+oQ5?=
 =?us-ascii?Q?LRL6kpdluIB5/U4YOkSm/FxNAqRm0cb+vmd/c36ad7wZz/Ow2ofLV611emXe?=
 =?us-ascii?Q?ORSX/x/oA+lmRaazJF50uSxsW2iTuecyryjNO229lO+hX1xakEEZpy1S/ZiN?=
 =?us-ascii?Q?ZebR9+Aadq0IVMaOrQzBVDfqDCQNmG+XdWKDpV2/pCGFkQ9Ble1xKSo2aPnz?=
 =?us-ascii?Q?NigScyuyjg3Kz6Am79gBKqpw6exVFEEiwnpyOtRsR5FERahsOok26gt48cxc?=
 =?us-ascii?Q?joavbsS9Tl9jDwKpet65YkaxeXGotqP+9L2RG4zKtTQvp70H14rFnEQ7Yq0j?=
 =?us-ascii?Q?7Tn9/ILJ7mvOfiXMAkW1oWOIsFphvWC/gbnt6ijY1YAUkmFUt8PCxJEigZ9A?=
 =?us-ascii?Q?WK4=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB3135.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecc8e0b9-b78b-4879-8eb6-08d92045528c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2021 12:53:55.7962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4Zo9+7qYZseXh47RzwDE89KrSTqsErud0wUCSaXKNxpVMDeCx/TAI5NRbzLhyhMiHXxxKJGP4AXYaQ51yW9wdpO3e1S7kyzCKRZJ0SCliGg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR16MB2703
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_055359_386337_47DCD443 
X-CRM114-Status: UNSURE (   6.01  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: barebox ubifs support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Question on the UBIFS support

Is barebox doing the full bad block management?
i.e before booting the system to the Linux prompt, will barebox fix bad blocks?

I am asking this question because some customers may want to boot a initramfs image from NAND. In this case Linux will not mount the NAND to do the bad block fixing. 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

