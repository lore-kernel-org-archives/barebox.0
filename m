Delivery-date: Thu, 10 Jun 2021 19:10:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrOBy-00046K-7J
	for lore@lore.pengutronix.de; Thu, 10 Jun 2021 19:10:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrOBw-0004J1-WF
	for lore@pengutronix.de; Thu, 10 Jun 2021 19:10:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qM6Jga1dL7jp1Z28DJxR0gIE3c+Ld6ZUqHlUHJQQa5M=; b=DDpqozyiJv3NP0
	AS5doMf1NGb77Hjibj2aU1raOuvxxS7V00mzixYsTdaP7SQL3J3cBQV70EJuCfqld/OBpZnHzcdzW
	ndNeaadTM+mMnPMSh1ThqqyW89UEjzKxSv9m6GKSDICIKbVbyOBmtttU/+35tOuUwKlUcfBiHboCY
	Wq+/01BVVz6sL9u3caVi0WWVe0eaYJ7hrKiej6PEF97zLap/3ovN0hi0pLpeSXInso/vVRpZclIAI
	ITgCG1LalzGKF3ANBWm7VWWgYxyiO7Sht3Gjg6ySO9BnAigmoFIJKFCGALJsGbpXnTJF3s/kIzJBW
	t9baqckYis99ib7yFrKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrOAT-001tU8-Dl; Thu, 10 Jun 2021 17:08:33 +0000
Received: from mail-dm6nam11on2119.outbound.protection.outlook.com
 ([40.107.223.119] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrOAM-001tSZ-Ak
 for barebox@lists.infradead.org; Thu, 10 Jun 2021 17:08:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SdK+cLMHsRGpttA9MQ0rTYvHHBM/5eTUqFcY82JepDJ7EeAMea1zW3HjziwAkDPKSSPQEkHUXiBhduZUmuG4UNtat7HS0uUVCLIibYrPEFWllsG9Cps5YwZP+dZ7go/BIObEmNygyVyLNVQEjxEdb9hUM4SPiRT+KuHLyruWoEUvei9IzpzB1tvqI2MAXDcp4+4LKmZFrotr+mtnotXST/bjTOMmWpjJZx+fCLpzcUmSmKwPBxn2xGOaGxtPjiAa2XWlOtH0RmJvMGW10yl8uY/rjspjMDJqUBvJcYzBXCPxJVeZJJaNO205mZugD9tRze6xnJCDnEYAjLORrmuCGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SVr/RaxOsv7Yj4CsKm1KfLQ60/nHpAp4XFUyh/mxMKM=;
 b=g7fBQgAwlH3O31c+9U/AFOgLbahTAbFDIhi5mO9sINPYwiPjZ0JDxc+mqGCIkb/jmOEx0pp+g27e6S2niXc/OPcqOOnnebhtTRjZunUwcqrfdrwueLCdOWn+f+yO+4Z/n+fYBvnhKNPmwqTIKPDLWix5gD0Vk5bQwwwDZcGQikUDTZoyddJuUB4XMVo8sjKB26RZngVM46okSo/M9wnaAbCcijMALPiHc9cn5puV3uo0AG+dedfR+4y5JcHQV5TYMRWuTAztTk+8CaZsilzTIjYXS07j93YP2b00IrzYJIJyUBQf6ZyF+yeSjIsy1Y2Q5DdD9UUFg6338ydBkGufgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SVr/RaxOsv7Yj4CsKm1KfLQ60/nHpAp4XFUyh/mxMKM=;
 b=jEggyHKHTPLhVjRUvgGgDoV1YWYA1GO2/pYjxwJtJEpibndIPkVqUcRCWuhANss8seRqHT4rLYVnmq7a5GN8V+1zZDArM5I/JrGeIOVS++sBfCI7xCP6JZ620BAqe0O+DT0ibYJbWoq2pafd23UfCu1eZaY6qh14dCxLpkN+o2qTHSETN9FBfmMlEqE9Jtlz6BKA6ZhBxht7cM9XGSLKMfZ+eVy0OC1YtHWRMVcgoBxadZP97TvuqjZ25+mH6tNG70/SLPoWkMDTrlfbTiJFVGr0dTTUpCQ4PvYPPpDPpMig6z+N6+wjE2lgijvB0iyI04lgeVVVy9mDP6Mt7/qNSQ==
Received: from MN2PR16MB3135.namprd16.prod.outlook.com (2603:10b6:208:153::31)
 by MN2PR16MB2749.namprd16.prod.outlook.com (2603:10b6:208:de::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.22; Thu, 10 Jun
 2021 17:08:22 +0000
Received: from MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::81cd:8060:64e:57c4]) by MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::81cd:8060:64e:57c4%6]) with mapi id 15.20.4219.021; Thu, 10 Jun 2021
 17:08:22 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Barebox List
 <barebox@lists.infradead.org>
Thread-Topic: NXP Layerscape
Thread-Index: Addd/MoIpx587SOMTFWl0TiwuVIYLgABV7gAAAYmFFA=
Date: Thu, 10 Jun 2021 17:08:22 +0000
Message-ID: <MN2PR16MB3135197908605566F1C65C4B91359@MN2PR16MB3135.namprd16.prod.outlook.com>
References: <MN2PR16MB31351CB3C8DDCAA07DB9E25591359@MN2PR16MB3135.namprd16.prod.outlook.com>
 <ad0091c0-2919-de80-01d5-41cea68d5550@pengutronix.de>
In-Reply-To: <ad0091c0-2919-de80-01d5-41cea68d5550@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=abaco.com;
x-originating-ip: [167.98.226.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f771edbc-4ab7-436c-0b79-08d92c325a64
x-ms-traffictypediagnostic: MN2PR16MB2749:
x-microsoft-antispam-prvs: <MN2PR16MB27498DA34D22A14277C0C05991359@MN2PR16MB2749.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XIq5D4y/DmLemuw+HAWfNPRR4Vi7ogH4/DAWXC1BzT3mZ8dcI4iV+Q3Irtoe5JURY5aQQeYFrLe7tuszNIaEeN2ijI752VUZ+rTSRmGNzDkn2NkQscvXqXNNJVCFq7Ocbd1lyDZ3W14mQV5iHHMZ1relzkgQnc8x45QJJwlt2ScuaiDmmlXCwjTO1y/Q3CzLErNfoLM0X5VgXPzIeNZ9SxVl0E77TZbp/xEMMN9i2cLh1oGuyqQ8I+sm6xnN2Ott7JiPTVnFSWrDQFwnEYuGPf9catHtGXT93uEl7h2BhhAeKmDYrSWCDK39rVdip6TOj7vTz3ubwt+aHu+ih9/bw3pbGHWXK2QVA08qaY0vxNorBocsorOKumDfoNkWnT+cyIdC4OJW7O1AWQsgtBSmpf6zeO6PtGtEpI/wc0cCnqbWVkBrvimORF7km3txcgYrMk2MlO56blTMGigiV90HWIJbr+K6EhvmfWaRoMN59Wyj1Cj7KSemCs/XQhamuRMARw91G9OAs8uAHGwdUmN39YQ7ecP2/xko7wT7XyzQy9rwo/rcSBFcQcNOhnn6p3DQ/JChuyGTZIlWSKlIQCciiLEizk0RI/zd3+6ahJ+xQ2AIdLSkkiRtGvhF3R2QofG9aULR6jA2tJDQ+j/yaWjpLJ0BUqbndFqcdhup8Ran5HAG4tWD3FIIizXweEmVZih9IMH3tRFhZWvU+ef9dbpo/yddRtKA9XgW3B44plqpUog=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR16MB3135.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(376002)(39850400004)(346002)(136003)(2906002)(478600001)(71200400001)(9686003)(3480700007)(7696005)(45080400002)(52536014)(55016002)(33656002)(66946007)(110136005)(6506007)(186003)(53546011)(76116006)(5660300002)(86362001)(8936002)(26005)(83380400001)(8676002)(7116003)(66556008)(64756008)(66476007)(966005)(66446008)(122000001)(316002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9EkCbg7pOD/A0KubvG5u2RIkaf2QYE3FodAH3z2hR3ccYb4vwMGSgIap5N3l?=
 =?us-ascii?Q?TM4a5xmzUwO0hJ++AIq6frgRQ7cDjud+fYQ1J5eClwf5b9qIt9RV9pAm4zfr?=
 =?us-ascii?Q?SDffkoehHnYWoXSQGlqbjRHlEp+NOjqZGR5sTJaD/ZHlNXr6A1RrqMsRZTYF?=
 =?us-ascii?Q?Uy6DIrrpzmIkm1uRcpp9FmF1HpdX0/9OvGqxazXMrRlb5OjAckc40h8OwGWS?=
 =?us-ascii?Q?4aCQ+J5Ps5AH1ufAgWntuBA2JYZIB0SEnGVmGFn5lWF9f2yRGdR1SN7x2zam?=
 =?us-ascii?Q?7Zy1153TnM8SqqaUgiZRvyUgo4xOYNakvsv8clseCwY3aTGWLSoLQcCrWbqL?=
 =?us-ascii?Q?Gp0u65wKBfl6sOMkgiTpOXnd5T3uLmdFi68+et657zx62GqunXw0c27zC5EI?=
 =?us-ascii?Q?JqoSnQQm6HqpRiWqLZxVD2Ldk0AL/g7uOOShRLEXleycIfbVipBIF+W7ss38?=
 =?us-ascii?Q?rNXYwwl7E0OWQ8qzH8Iw9kV+oa5gFkU+6geMPliCkKeOpyT+8XldFMtD2M5v?=
 =?us-ascii?Q?D4MqT4t5euiHpTvyufuo1M5MH+ywjVk5zFWdFk6hyztKxefEVg0eaRVP55cl?=
 =?us-ascii?Q?GawKv/GFYYFgeERMXsVKdUsGLyWYpe7D47rqSIKqWdJtiRmWhIFutS/AP1al?=
 =?us-ascii?Q?8OdO15d8LSr0AvEftcgRP7EOvXQJBjL3J2qwkm8nRhwzg+k9d2doViGA9FPs?=
 =?us-ascii?Q?cr4VU0Vn9reCSu9vsx3cr6w5VJLwZp9uHuajbwRtxyNdKc3HA3xZt59vyZGP?=
 =?us-ascii?Q?SfxDGYrkURVhj60cgc5WFKuGf8DZg7c+7Mh4Lovlt1I2r0NidNyTyeeMuFAU?=
 =?us-ascii?Q?NzI91uD+U0QwAkyk9h4WyxkSsX3y+tYqo2JKbLr6xNMdokhgwAZKOGOmRrbx?=
 =?us-ascii?Q?MlvzCqLREdnW7SP8PRvVo1fOy4gNG78DblB/iKU2XZgHd9UWdSc/nd9VXgJ1?=
 =?us-ascii?Q?llGK5hcwTIpSVvJmdoAaX7CrzrE4QOvyrogV1ym/fklJ3s1l7o9GBXtJMkyF?=
 =?us-ascii?Q?wolu5QW139NhsOafFxr8PoXCEFn3f4vwjmoG6fB/4HgQ2BB4G74eW2+wU9aK?=
 =?us-ascii?Q?y9FKejPu/qEQON2kSv/RkNQUhEWJu9KAhSPpAeZ+e2UbIWRhTbbJYDcFI7S2?=
 =?us-ascii?Q?6ohPgtT1mESL94LY8BfCsVrmgvcUPujJIOpIQxanhDex/jPSztZALj0BFniZ?=
 =?us-ascii?Q?ZBVrkd3RsILJsJZ4YNNOai7AlY2nFkt1j0qKIp3B/TppJyP1kkTA+88hbZkc?=
 =?us-ascii?Q?SZrtlznmQDblwF3kw0W+eKsJfmX3CrInBVC9eAhAydXc8fxkHGwziD8FZ2ZK?=
 =?us-ascii?Q?jcMjgpq14E+RFL24xlkhRjzZ?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB3135.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f771edbc-4ab7-436c-0b79-08d92c325a64
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2021 17:08:22.5279 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TpqUYSXywd5OsnyWt3FCPpYS0xlqjPS+Tw/zLfN8VPBGCZkt+Z72IG0LgYFxe1BqZpUfQwu/bl50axYphQ1tcOCRUFkG94Ql+LOEDnm8i2M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR16MB2749
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_100826_563134_757B8A9C 
X-CRM114-Status: GOOD (  21.20  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: NXP Layerscape
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

After reprograming the barebox image and change the DIP switch to boot from flash 1 instead of using the U-Boot  CPLD command, I got some garbage output on the serial. This is what you mention below.

Some hope.

-----Original Message-----
From: Ahmad Fatoum <a.fatoum@pengutronix.de> 
Sent: 10 June 2021 15:09
To: Barbier, Renaud <renaud.barbier@abaco.com>; Barebox List <barebox@lists.infradead.org>
Subject: Re: NXP Layerscape



[**EXTERNAL SOURCE**]:Please verify the source before clicking link or opening attachment.

Hello Barbier,

On 10.06.21 15:49, Barbier, Renaud wrote:
> I received a NXP  LS1046A-RDB

It doesn't reboot cleanly with a USB serial adapter attached!
Jfyi, gave me a scare first time, when I thought I broke something ^^.

>
> I built barebox for the LS1046A and got the image barebox-ls1046ardb-qspi.image.
> I programmed the image in the alternative SPI bank as per NXP instructions:
> =>    tftp $load_addr
> =>    sf erase 0 +$filesize && sf write $load_addr 0 $filesize
>
> Barebox does not boot.
>
> I did notice that u-boot is at address 0x40100000 while the RCW is at 0x40000000.
> My understanding is that barebox is one image and shall be programmed 
> at offset 0 of the SPI (0x40000000)

Can't comment on that. Sascha did the integration.

> At present I cannot connect my I.C.E. due a pin stuck in my MIPI connector.
>
> Any return on experience is welcome.

Can comment on that: Last time I did this, I wrote some documentation:
https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.barebox.org%2Fdoc%2Flatest%2Fboards%2Flayerscape.html&amp;data=04%7C01%7Crenaud.barbier%40abaco.com%7Cdf668f5e5f2d497d54cb08d92c194c3e%7Ce6f27451899d4d0db8fa88baafa551a7%7C0%7C0%7C637589309423979193%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=SnXT0WYjQMJL%2FwK1LaOK1h7OMUcLiL37cojY2hzP89s%3D&amp;reserved=0

There I flashed barebox from another barebox booted from SD-Card.
I'd assume that should still work. I can't recall how the CPLD needed to be tickled, but it would be helpful to know whether doing it like described in the documentation doesn't work for you.

Cheers,
Ahmad

>
> Cheers,
> Renaud
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists
> .infradead.org%2Fmailman%2Flistinfo%2Fbarebox&amp;data=04%7C01%7Crenau
> d.barbier%40abaco.com%7Cdf668f5e5f2d497d54cb08d92c194c3e%7Ce6f27451899
> d4d0db8fa88baafa551a7%7C0%7C0%7C637589309423989184%7CUnknown%7CTWFpbGZ
> sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3
> D%7C1000&amp;sdata=ORpVZlyPk2o7%2FyVYOkJPeAWNnq2%2FkxKauxep7gvDJ%2Bo%3
> D&amp;reserved=0
>

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pengutronix.de%2F&amp;data=04%7C01%7Crenaud.barbier%40abaco.com%7Cdf668f5e5f2d497d54cb08d92c194c3e%7Ce6f27451899d4d0db8fa88baafa551a7%7C0%7C0%7C637589309423989184%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=hB2sfEPHomEzn0ICOo9o%2BfRwu3kpXuSvyGZ%2FP%2FnRmpc%3D&amp;reserved=0  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

