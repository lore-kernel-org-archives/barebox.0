Delivery-date: Wed, 08 Dec 2021 10:33:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mutKN-0000Tp-0X
	for lore@lore.pengutronix.de; Wed, 08 Dec 2021 10:33:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mutKL-000527-Ss
	for lore@pengutronix.de; Wed, 08 Dec 2021 10:33:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e0HxQLOKdqnxvCwC/BfZ7FipcTSyzjS2qXGd0n91K7k=; b=Bhv1BfRkroeiQd
	GHIKp6W0VYVfL9BiZMqyGJTf3ghCJMg/ug1kUS/ugkRKynEVqwQgKuKTcLchm0LHv9EaC8MByC1Ed
	8SmA2QfzIoesO+EN+8KX+MtUMlRqw/ajZAivMuWrFmJjJwOw3E89wrO88NHenefCRiF54gxQ5L1mZ
	Htou8y2P1tpYxg09htW0giHUpOsaTL6DYPPMt8Pi31amS55cYG2JaIXdHm+veNF3ip2S0GyQ+JnGW
	LTs+1hTI7xcrrFQTOjpi3lOmOxu2jANHsZea0bup3J2qcLQ4HGYbJWuMUQfM2koT9BerX8r2hBKRJ
	8VrvcNuEcEsvXB8Lx+zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mutHq-00Bujc-SF; Wed, 08 Dec 2021 09:30:55 +0000
Received: from mail-dm6nam10on2136.outbound.protection.outlook.com
 ([40.107.93.136] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mutHl-00Buia-6m
 for barebox@lists.infradead.org; Wed, 08 Dec 2021 09:30:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HsQRJ7cShgdOJzS+Qd5TlKM4mqXAwkXzd1kgd7Rmk396qI5u561ZBZ3cZOFoH9aXFASHcTN76RHsBsPjRfFp2qAgiMOc4N+ANOs3dxqSLyQJ4ZlAJwSDpvWvS6r6fJr+3l5SlZRQzCTx0qpBsBnCjQabMrQU6Hz4Z3eMiUp7YEDX16xxyMmTbyxPGx1PgBFxHGV+obQ0TlOXx036M+X+5iri9IFkPOJgwARnpteHvsvJ+KZwRe4rey0vAO5VX4rq3ldePdGwdWbKuPKJJDx5TRz2Tfj62coPhH2WbZ+GwVZTrOA9p9ZlTUG/XxS90EPA2BB2OyW/bwK4NQU9+fJTTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T0VvT8g/JkFLClSKGPx30r+I0Eqj/uREbqVSgUt+FYU=;
 b=kRHCkiH/rKrFW8olH5JYfMeZCdBNFYktnGxxQRQWymNxmHqPddSuzdmLCqTgivyfBfmjbj1Ha7QA0WClXUoq4Ybps6fI9PjTt1y0LhcgBA7qZWCpJXcF1glPz4f6B+gkYTPZGzJ/8ZZh77SeQgwCQAdmvS7OXPLbjv/8WJ0r0Q38rRzNOpjA+qiYdwdnRI+ikSrLymicrPyzSCfpUGGGh/ruUeQRRJPlPhmSlh4W1WJ9B8Pn7hNwrBHy7sL9wEl3VijgvdGlA8GxXhMK3S6bLj3h2yIU98nMMy0spdMzAhdK1szHfLu3JSThMz1k/re2HwhrrcnTnzjQTT7NxygbGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T0VvT8g/JkFLClSKGPx30r+I0Eqj/uREbqVSgUt+FYU=;
 b=ZmU9/TZIrX7e8lVHUFnV9p7ytzOz5ovij6mPR2cPTD5XLxtIo0kxPyIzfL0UY+i1Xmi3Gyu4kiVwsIbcPb+mJpELS5GeFt4Zpbs4StemCC7DA4shvUKQRKY/FzBUElng31M6/r4kStHYoB78M770LeGNFLah5V7ZA/8Kz1B5qqIlQMUGKB0J91tG8fZ9d8Fxi7NezHdTDLddoeNqhCVh4Eoaa6B/lUSK/NCM1mTFr6sQ84zsGuT2OgLL+fEuDmt3eNKFRjpPY9VORLMB1dB2q15OoASSM/9TcWj3WPM1bAzoOdBDoHQBcGBIGhJX4unujLyPUGHQlS8Ljv7GWZtUCw==
Received: from MN2PR16MB3135.namprd16.prod.outlook.com (10.255.181.31) by
 MN2PR16MB3166.namprd16.prod.outlook.com (20.179.150.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4755.20; Wed, 8 Dec 2021 09:30:46 +0000
Received: from MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::491b:ac96:afe6:1700]) by MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::491b:ac96:afe6:1700%5]) with mapi id 15.20.4755.022; Wed, 8 Dec 2021
 09:30:46 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
To: "Barbier, Renaud" <renaud.barbier@abaco.com>, Barebox List
 <barebox@lists.infradead.org>
Thread-Topic: phy driver
Thread-Index: AdfrmR40hgJCM1nZT6e4XrMNXTGfsgAfSBUA
Date: Wed, 8 Dec 2021 09:30:46 +0000
Message-ID: <MN2PR16MB3135F4BBAE3D8D41BB3BDA05916F9@MN2PR16MB3135.namprd16.prod.outlook.com>
References: <MN2PR16MB31359DA7F9096A1202445668916E9@MN2PR16MB3135.namprd16.prod.outlook.com>
In-Reply-To: <MN2PR16MB31359DA7F9096A1202445668916E9@MN2PR16MB3135.namprd16.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=abaco.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: da233687-7303-4576-e171-08d9ba2d6a45
x-ms-traffictypediagnostic: MN2PR16MB3166:EE_
x-microsoft-antispam-prvs: <MN2PR16MB3166706730CD9E1FFB5B9402916F9@MN2PR16MB3166.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PmT/jYgy97OkSRETcBIaFDDLZIrqnp9UoqR7fD6j/bvMF9NBXy5ImAFqft/WEzoFgE8VXBf+ApVxl/Lk9hTf6t1WGCrdcRRWLgvaRQNgqRH28viV1NaSWV5gYes4e2KbzrI7h05zN/LxoeYRVIddFL6jkB8vo4TtM5utXg/M98QZc4+YaK1qRdG1NFPrS5sBy6eKxSSxADGNYgUGHA2tieiyQE8w0GoN0PJ+SXAwEU1dotA1xFQnzWT6vOWiUZveXMwV1jxj5O3N9kI7DVQwtJuK8eAS0gTwbXcx/pgG8nlHpr9C/deoBcgm2VvmUlWmpBSTd/khJb1B6DJv/7LHySzgaLpZieuu/I13vwqlooYB+uufN4Ohthqevy550ezwURifNKxdmENofsFABdcegfE6ciMxnLHbvpPTCv8pwnHmK2JZRsgO2NMHYbRsoeFoZ8WsJJ6iULsFVN5x/DbXsVS0w77vnTDc079TSVJ152e3jMBzEx9Y6mWgYV8duAh++Xc1zN/ssz2dy9JdzQPF9tvsM3eumFQU/8GtV/kMGjr4Rl/U7jbrqUQr+Mo0nOFSBVbfAZXVKS2Nup1vvkxqVzbZ/WTAhr5qLGM0VDn7o1L89n2pWmlPphDjN93FEZAVUO4C+L5baeOu4F0pJqNZeTKiih1Vz4rA3llFX+nr/nmmFb2pqW+kgCQCQEuMdpDZc1xB2XHNuiRTrrkReP8NwpZskirp2VXYGd6EeVJalfMgOH1Yb12lykwbSw38moPGD1vNlZb7KbuY+pOQ+3FmBC6ih2rHfywvvrh0orrckFo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR16MB3135.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(508600001)(7116003)(966005)(71200400001)(45080400002)(110136005)(5660300002)(86362001)(2906002)(122000001)(26005)(38100700002)(76116006)(6506007)(66946007)(3480700007)(66446008)(8676002)(64756008)(53546011)(66556008)(66476007)(8936002)(316002)(55016003)(7696005)(33656002)(52536014)(9686003)(83380400001)(38070700005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8OUknIBT4PlusI/nITM9m52iVdWrKgJ613+N9d2iGh47jtvs1aBXHkHQFjkc?=
 =?us-ascii?Q?XfWZ0JrT9xocN35NaWB6YgIjlAUB3uT6fJR3tHARCxxPIW91cZmWiAisisxI?=
 =?us-ascii?Q?fPKQh0zak4/qs9LfRNEdfBlsB7ZSk7xfzMaFKiPmVMb+24nt8mIXGh+5pe/f?=
 =?us-ascii?Q?NKQ977r7J9FyfWiXcRBwYs82mRSZVXtRQK9/AGLshRLw3rC4fF5IUwaDtHTO?=
 =?us-ascii?Q?o10aE2GOvFhCZZ3aGEHCGdzFPnoisyy1x1+dXPlIt8fDhcVbgDD+rEXgk89e?=
 =?us-ascii?Q?b55OGpYE9yOfP7qfZC2HH5MvG8WpkBcbxw6gC5BIYdTqLZmdRFOyZ1xNs8+B?=
 =?us-ascii?Q?bVOA3FqKwTo9h/rkiKTG07JM88ZzFmzR/o1frDaPl0fmHBqA2PE8ykFBCy+X?=
 =?us-ascii?Q?RCBVGkntcY1LpvK/JqKI0zSAZgsB/LAzpxBeTtg2C6aBYKj2Xel3+poFxL10?=
 =?us-ascii?Q?6oZrdoQNFYgIislctqq8WoHCr0tHuOg/xbdGH768st3r70i55RvLPnLFGVz5?=
 =?us-ascii?Q?hwlKj9mkx7xF3Aqvan90Kah3S4G8rDpVDsBrIqQVS+X3YiR98xkKMnFfrSym?=
 =?us-ascii?Q?l1MS55W9FomfECf0GsSpCppFqZmO/yNpVltb3UnoxrxF8NtjrrWZ8t6WD28Y?=
 =?us-ascii?Q?BvcATAn6swWaf/cdC42YmIhA9TO7HLToOhnmyvfdx8Hz4kyFxrobGxXBioOX?=
 =?us-ascii?Q?E7+VxMBycKEvVBT0xcKup4QCYwjIMbpdeEdYvPA/lxegKjTu08EmYhcH44lz?=
 =?us-ascii?Q?3PvHc4S0LO+eFJOX3nJhyw1O4fcvWHX4rYMuVYV0FBucNfywqqk9LBfn8pRr?=
 =?us-ascii?Q?On0N0BOg1Uz9twFQfth/LaWKADJ3Ged1QSjSroRQ5R88BrHJstsAM6Nt3HCC?=
 =?us-ascii?Q?qffo5Cl6MB2euGNUGWZMQBfkj4e1WIWdlj3P4bOwnt7p1LDRf1/Z8wDzYF1A?=
 =?us-ascii?Q?ZmC5zkANmMPbBQpgcHBz6SJDg3mTh9yJd9gdBhKI2Y9P8+ObOHRQbSG/bhS/?=
 =?us-ascii?Q?v+742vsJGMkwMXgiIb1f1KPSCXbDdYgGo/ut6DBDmMmzwBy5CAWWtHb3gswN?=
 =?us-ascii?Q?hd++XOvxMRXtcM/QN/NuOglG1TkAJqOdiBwWfXKGv3YumUj0cRz0WOOGnuqV?=
 =?us-ascii?Q?b1JC6MtOxN3B+GFSyIrb9CqcU+903Dywmy4SgjecPujlXVb66UR/oihrUZjx?=
 =?us-ascii?Q?mg5VSxd1GGADmzkQM2cAhnw8Hz/Bgo3ULvFl4D0xU5MOhFLgN2nogYqll3b8?=
 =?us-ascii?Q?dTWEt1MOsM1x13ic+5mHrFenPZLPc8FQxuB/bx3xq3u0JcL5JIfgHTh3XNwL?=
 =?us-ascii?Q?HZznSnnhnxlSzb8OeX5smn2EVqDR8iWKJRKxFIDJbClFZw/v1M7VKGIcupkB?=
 =?us-ascii?Q?l3wW/t6eq56JqaPc1W4V+0tS8bjJ0HYmLIwN3jaxPGREtG7sjzeTkHDYIf21?=
 =?us-ascii?Q?IKTVohZpbHj0NpSI7xh9TmRK9EAq7DEJfZZF4z0+DjTb5CuFkXajgDQ/jIHb?=
 =?us-ascii?Q?L7g514hesQ8iTa9L75B7XMjcx1Uo8NN9/N1+d51AMyYGunbiYLxWCG8JuSBH?=
 =?us-ascii?Q?XGWB9nx1tqBxpRQi3KHHYKJtoI9K9V7j5ya/fZxeWzMMn4e4c6HC+/+LAQVI?=
 =?us-ascii?Q?WRBqSG/3sRQDqkr7OFAOEHpjJdkPpm/OJ1+lmxgI4FRbQ+WqF3IL60jTRDc6?=
 =?us-ascii?Q?Mb7GcA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB3135.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da233687-7303-4576-e171-08d9ba2d6a45
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2021 09:30:46.7332 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ccXfvN5Ciuos+QA3IU+IGFYFqHVq+Dekn5oCymWVcnVDckWsVQDovP+5M1yXIt8u69qhn9XSr9DeS9zgYjL62aShtsCQAfRF6apVjReXiYQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR16MB3166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_013049_430473_EF0CE0BE 
X-CRM114-Status: UNSURE (   9.11  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: phy driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I found a few boards support that fixup. It is likely it will work for the LS1021 AR8033

-----Original Message-----
From: barebox <barebox-bounces@lists.infradead.org> On Behalf Of Barbier, Renaud
Sent: 07 December 2021 18:51
To: Barebox List <barebox@lists.infradead.org>
Subject: phy driver



[**EXTERNAL SOURCE**]:Please verify the source before clicking link or opening attachment.

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
https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infradead.org%2Fmailman%2Flistinfo%2Fbarebox&amp;data=04%7C01%7Crenaud.barbier%40abaco.com%7C06b9c64b270c4397a42108d9b9b2c183%7Ce6f27451899d4d0db8fa88baafa551a7%7C0%7C0%7C637744999676441621%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=OxSU%2BM3PvBjZKm4hJ9vK7Km%2Fjq2dLj3k%2BZUbLdsDv0Q%3D&amp;reserved=0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

