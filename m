Delivery-date: Thu, 10 Jun 2021 15:51:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrL5U-0000fA-7h
	for lore@lore.pengutronix.de; Thu, 10 Jun 2021 15:51:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrL5P-0003j5-BZ
	for lore@pengutronix.de; Thu, 10 Jun 2021 15:51:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o9Qw9XhlCWrQ/V6JIvdutdhl8dvR3pVc6QiJKJxe44o=; b=xEOKgAB2ivAS1S
	WI+plqTF2aaeYCYxHJbZA3YwYQEX9pDZ8DTnqk62xMKNGFNpPKZCLxSpPGs+pny2eWCXt06clvRFl
	CnLHaRyTKkB986uhfEAyoQhz4nsPjj/lcMJadUwbUy7CAkBp1hJnr1HCgbMhwTp6Xp5gSZa70vmnz
	TWR77olnoStPeScYCqhN0mHb3SRXbfdsPTLmempmBvmRJWwYi7yrzNZ7iPlARm9B7LzSGCoCKJhTZ
	RFmceSb4JaNgZQZ0onZAke+0hdc+Ev9HmSvuQELsdCFIuaTjR72JLJw+srMO9CCnj7xB3eHSN/Iwq
	2kxpXIukQE4ScLTh0jkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrL3e-000yUK-16; Thu, 10 Jun 2021 13:49:19 +0000
Received: from mail-bn8nam11on2118.outbound.protection.outlook.com
 ([40.107.236.118] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrL3S-000yT5-As
 for barebox@lists.infradead.org; Thu, 10 Jun 2021 13:49:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cWCdzG5DC+NAUUnaHeAH8/h6LPgVfOjZOfUBUb1yEQKZd577obc8I5BE5mhzy1VzUBojacu3QM0gvbHXNY2wz9wvEz5wB6DFNei7HmaNrUYd14z3QlKKN71RQ1qeExo2pcI3tHWOdGEQwOQPllQmOouL4NcXDtz8hooLC7R5BvPVS2p30lnGaPpZvxcrIk54v4s8SaOHtp01AWtLQ2Lv1V9Cu8DhGszzfgF8aHcubcB60YP/w5CjizL+Bjt7TUzwSIbvQ8BFoA+wr6s8qAQiLBZdoVvLhnyXWSl9Q2yBPFjK8vMzGLv5QyeQGbANQ9KCN57qGfxMfnaVFzzjzFcxow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aMXyXO5ixJZFr6FI+uKsan63qBI2zxBN2rRKT2n0nIs=;
 b=DT6mkQKkhCOWoQeU78L3RwLrTT7bBInRDPvVKddcpQRnnGMQWYr+segkBgfKcrOvwigHH5T0VGX15viPrDs1ft/5yQkjb0gJrgdj0B8UuYlwhTbrRtzXGolUfDNqtaF/ROQosU1FhU/SyZhCCQOHXqN59oGXYc41YuZwfLQGwMONKrX6DXoYJY6Pt8Awgioj5avQxYGqPz+xcSs94nuoDognyV56pTfPvF/zNpxxAO9joW3nmjZH6foH9XgFAE0wX8ccvPt4sVYCsWmPv25dlbJ0ZkmnWm0BzxqtQhzjfZMaYicTc6ABxm/RMUw8Y8jy8F6JflkPkecZ3fjkFiKLLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aMXyXO5ixJZFr6FI+uKsan63qBI2zxBN2rRKT2n0nIs=;
 b=c5jq9Y/pTT9WtOIOqkLmNUZ0QInL79GAnSz0l/7x8SzaVeTJmC2FyqAqtMvtBy8FYGWZjyI6x0vivGOdurmqHJ7wFz0fM6Zu2Bdnm2hVeu5FZKOuORtz2XUR9J9wS4mbkXo0nxXAOAYYs8dgPMtuHbeopLFsbbzAVLRFufiqbDiakGhA6k6j176Q2mPRxL9+aonf7GlZ6VDrtZQQiH0S+iIATgad+Qd7moCmBxGZZsKCkkBzoZibiURl3JMUh4Xpm0Hx0NkKN7dXd/W5qE8zW3xhM5xaEjDNQewSO2lQBsnSJtFRzNt1Uuv3fhSUpS9KmlaNdFOGsKpAamGd/9ZQOQ==
Received: from MN2PR16MB3135.namprd16.prod.outlook.com (2603:10b6:208:153::31)
 by MN2PR16MB2751.namprd16.prod.outlook.com (2603:10b6:208:e3::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.27; Thu, 10 Jun
 2021 13:49:03 +0000
Received: from MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::81cd:8060:64e:57c4]) by MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::81cd:8060:64e:57c4%6]) with mapi id 15.20.4219.021; Thu, 10 Jun 2021
 13:49:03 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
To: Barebox List <barebox@lists.infradead.org>
Thread-Topic: NXP Layerscape
Thread-Index: Addd/MoIpx587SOMTFWl0TiwuVIYLg==
Date: Thu, 10 Jun 2021 13:49:03 +0000
Message-ID: <MN2PR16MB31351CB3C8DDCAA07DB9E25591359@MN2PR16MB3135.namprd16.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=abaco.com;
x-originating-ip: [167.98.226.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 239a16ee-d978-4467-f4cf-08d92c168231
x-ms-traffictypediagnostic: MN2PR16MB2751:
x-microsoft-antispam-prvs: <MN2PR16MB2751EE3EA225EC826AEC814691359@MN2PR16MB2751.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k+2gI9TLw/hr1QDrq5aLAFtfV9XnOZD+TgptK86ddIk3B/oYtlN2KUKyqrySvEHaH9+bpzfXlGsh3H3V3NsfxqJB5rclJmN5OGM0cVTon5uyukvUxJUD5tNCco59BMy4BzvfUV5FwuKycYZATlqea12G0hc8LOFP2/TdCiJymzk57gW46U1JRddpC8pmOFecik9NiZ+YHZBDNu8CNHPDMi9faaG4ZqtuAGUPd9KTpH/JKcM8TFB9o+KULtuNG7r3GX5LPmmt0MfM06/K8lD4tVvIV2VEBe1mHw/V0NjOlHfJgMzBhqTWmJvwe0mmI/M2LIcRM3MozspaNOQu/SEBLGtlKCCVrpedjSV8+xV2veSU+/FRuCCaaNcIRGrNeAnnAS3D7lex5fCLQKK3W216C7AbFh1mbcNdUTleWQSLxaRyZilcpmV30iadZGV19ENn0vLd/zwtPneIDl1xswCzC443i4BXlKOk9n0NhmIO87p2LeFuXAM+RFyQfd0M4JiepxAEWR4QCop+/jy4w7A8buayt88EY3EjF+kUGlqzSsTfQsbRD4cVbBv+THarf/mfwN2wUGbHChsPOGajRtlQZr5v74omaRtDpcqa1GS7iD8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR16MB3135.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(346002)(396003)(39840400004)(366004)(66446008)(66946007)(3480700007)(76116006)(66476007)(8676002)(9686003)(4744005)(7116003)(8936002)(186003)(26005)(6506007)(6916009)(33656002)(122000001)(71200400001)(38100700002)(316002)(7696005)(5660300002)(478600001)(52536014)(83380400001)(64756008)(2906002)(66556008)(55016002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VSzMtc92tFYEsAD5SG5+9xw0opCJ7BjZ7NZD4KXL0qgB8GkutaW9spNOPGQ0?=
 =?us-ascii?Q?gUoM8pmSFfdKljL3XQpAiLtUy+QDjfUijnZP48tUmHRHGdcG2Ao/Q2+ObZVX?=
 =?us-ascii?Q?Zb4olMph41ZivWhgNMtgBXwVMbx386UaJErKv8tyiPj2mWpWRR6v+h+dQ+f/?=
 =?us-ascii?Q?EWq9DqaJxc8SKh+EXDe6lAzRe54m5IfSo/nUqzMppQQxRlmAvob5GNZHklJm?=
 =?us-ascii?Q?bpYCHsugg5akSkku86kbN0NVNPFA0iPB95TR84hZfePc/Kta2Pio3uN8MlAs?=
 =?us-ascii?Q?UomNJfZEakKlfHUn3eJLg89p97dHJgN3wtpem+3DFrfzSuxZLsDN9Zkv2CI6?=
 =?us-ascii?Q?WL20636PgCeGlfJo6Txls9FezT6cWl+sxzOIwtiZTzjA8CPikz/GTMyXpV6p?=
 =?us-ascii?Q?SsuMQJpQwHbLcdCHQhV9qVTPnQoFm62J/L0JUvZIXqGTds+wHBUoJfhuICdw?=
 =?us-ascii?Q?kk4H6XKEDeCum7sCM7Z2P1k7ydRvh7G2a/K6+jDq2BEIYh/dLn86dp4GniAe?=
 =?us-ascii?Q?/ZcMwqTitK7iusIYNPZtU0ukEDRA9FjctKyMigZO7fO5un9nZzUuwsV01xVg?=
 =?us-ascii?Q?7QHCXzgHJeBp2tzPdZP3QCtQYy8Y8MA1YUJEYsh3R6KuYwFeY7AHF89DnWk3?=
 =?us-ascii?Q?0fz3+MB4UXpxU0Mv2nAmQnZYj1z/cJjpGWGrF97HDhhW8mBAHcdwO0K2VkS0?=
 =?us-ascii?Q?8O+ekG/xZgGr21ABu7Is0zZQ0/ouyFUJoDWqXk0ZjjojRNS5J/S/+gwff2Sb?=
 =?us-ascii?Q?u6mX/8NMahyIEjZXISS8RVVcu3bzUFEnEg+vbe/eySzFlAnqHGU5GrPUzrt6?=
 =?us-ascii?Q?6nTgJ43VnHGNI8LcKNtig5sGQ9dklvUnvm+Fn/CUItolQGkVorlyms7dNkYg?=
 =?us-ascii?Q?PsE6822ji/GkYxzS3slclihsSG8IKV5wUjw0DDR3eXwKhjg28qOZhnB8sUUo?=
 =?us-ascii?Q?W6KIcqXFAW/H1oGmVQABbIYVcpk5p93meGGNxVJ6YsmOeyX55YIZ42dugXhA?=
 =?us-ascii?Q?3uc2cborUnE3PEXpNKzipyL8SXQXmoO4XuYkP2xeqNxB9uL7ca3FM0rN6e6U?=
 =?us-ascii?Q?WiOgECc7jkN4JzLYJmM60A2c03CCijNnl4pYDdKO2gS1F0PUcXk/deSOdo4N?=
 =?us-ascii?Q?2S9elGKOm5ccSUCLSOoUVRpuK+HMV9P7cQKkU07lRMDMxSNnYexHD15gpCyF?=
 =?us-ascii?Q?v+QJxwljUTwoZ9t+nL65PszhigMxAR/nRbagSktupHVpOEwj0Gej4fFal16W?=
 =?us-ascii?Q?hHo9/sLR7cp5lKEKMOy6KnPjlY7makrEPWIdemHUvpVXCBxlGouSWvGgRY09?=
 =?us-ascii?Q?CNOz7bg08kBU/Y/Af9yEfxhm?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB3135.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 239a16ee-d978-4467-f4cf-08d92c168231
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2021 13:49:03.2661 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MPOOCCfjU6/LURLTdk020MkZINFz7SLdiLZxI0xqKMmZY2OfsAwGMLgLpGk1D+nCySSQWzTAWQrhARfCVaaePsHMzmWaXQYEqb23cLj7HGQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR16MB2751
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_064906_411766_0242AED0 
X-CRM114-Status: UNSURE (   4.87  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: NXP Layerscape
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I received a NXP  LS1046A-RDB

I built barebox for the LS1046A and got the image barebox-ls1046ardb-qspi.image.
I programmed the image in the alternative SPI bank as per NXP instructions:
=>	tftp $load_addr
=>	sf erase 0 +$filesize && sf write $load_addr 0 $filesize

Barebox does not boot.

I did notice that u-boot is at address 0x40100000 while the RCW is at 0x40000000.
My understanding is that barebox is one image and shall be programmed at offset 0 of the SPI (0x40000000)


At present I cannot connect my I.C.E. due a pin stuck in my MIPI connector.

Any return on experience is welcome.

Cheers,
Renaud


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

