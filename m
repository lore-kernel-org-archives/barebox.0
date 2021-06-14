Delivery-date: Mon, 14 Jun 2021 17:18:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lsoLz-0006lb-EU
	for lore@lore.pengutronix.de; Mon, 14 Jun 2021 17:18:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lsoLy-0000Sn-6O
	for lore@pengutronix.de; Mon, 14 Jun 2021 17:18:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzXtS4HBhHMLFPCkTxIJpMQ1lCqkigPB3gp2u8SZcwA=; b=qblE/R6MsahgrI
	J4GKcONZgKEg9UnvYwfTwxGbCpnlsPdn8C6XQlngbVO8VKIF/hxvBJJgUMJJ5dXvcVIu3dojzbP4d
	PX9yOxwnXVPH5AXeJTjKpHwbE1lPqjEBcD1ruKvA9XhXk1X+VKVQ3PoCIcUSiubtRarQhqRriEhDO
	zXDm5H3EOFYC+WMlrKpFIEci0bWDnnCgGoRdjNou4Y7whxeYfiReTGXjEGXws5x17tHZK1qEDvRbX
	2v6jOnSF7dadBU/X1rjUfbp7RjQ0wTCdjHNJzOh3yVsA0bcNFji0gdm9Ed1UH9VShxBvM24y3sPSi
	wY6tw2lcdWotSvdpmAyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsoKM-00EgoM-4e; Mon, 14 Jun 2021 15:16:38 +0000
Received: from mail-bn1nam07on2118.outbound.protection.outlook.com
 ([40.107.212.118] helo=NAM02-BN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsoKG-00EgnH-Hl
 for barebox@lists.infradead.org; Mon, 14 Jun 2021 15:16:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MwuyCBBr18oO+tUmuuf8FIk1ayu1IseOIu6GYtoA9pFa2AihGLyEG+4Fwg57w6pPJbHgFHDFedsxzPiW1lPnov6bpOav8wRB4ZfPpgKlyHzsRD81t4qPMPAA3oDdLEBkeQqvbP0qc5+BIQmEGWn/WSkVRi44HYmE7HN/WV54Mi9d2N0vVwDlvxtGYH6+SRuJrRzBp8JEuOwydqMuSMwFhhAkWVjapFXioPLAzQtsFJvlqn7QFrs3hWL9MuKe9QLva8cnt72J3pDhR17RguowZ5DH4dGJNXy6psRgM3d1N5rEVBwGNBD8JVO9SKmoH/diBNwT4qa7JzBLc/DKMeXLtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/7B8OiQjL4fti/tvn3g3RAIQJEM8bkqev3duw2n8Vm0=;
 b=WNMGBGtTfG/bSRCNKkGi1oQovrucHkFtNmLh9i3TR5wyO4/x39DA4M0S1OuF9NJUdkVRjoaWIUu/vOS/DVMonrJUwhbIb4rjYgTpdhPG1bAgBGlMNrhahUE9ebMz7xp0P5on/khBsrfutgxUij4m7RE++70jFmNB3WAiq6uKEgakb64IvkdiwmGNqF2XCMMbez5ATYNTWERq86h+7Ey7WrskpZv56fxP8CU03icPxAadqyII6H4RdapjoOcv60DZgAC7UE5P53HeBt+HmgQnVUD3HV3TLAhidI20H9hq9H0DMPaTojcTAQpmdi8t7K4zHQ/uuAbWhmaGbEXMWRkstQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/7B8OiQjL4fti/tvn3g3RAIQJEM8bkqev3duw2n8Vm0=;
 b=bxpAaHtahR4DKUaHv/O6LmvfFC0ImqiAdLXiAyUqxkJpdidRxdrlXKPlLmHagyzgflB4fnj+61puvdoiCV6xPfEE+YvKLqSK1YMUHUJscHsyRk6j7yJG6Cd+JFp9TUewUM2b0yxH/1vpnmdn2yRfxJVyKHTxnG6qPDMTySjzYZw0NvXBJAZ5DVxtmVArsKL+MQKuDImp+uzoBag71zL3LvmJInvtzd5GZVMlglDEx+qM3jkpzY6DheDcv/u3LZMdMIyAdHE8fU/0UNmUuG8Pw7C9YfNADwrfkaPBCgA/GmUQ5OLZEB9QRu02T1Z1lorW+2ZzfWgzfRUsa6/Vnx01Hg==
Received: from MN2PR16MB3135.namprd16.prod.outlook.com (2603:10b6:208:153::31)
 by MN2PR16MB3069.namprd16.prod.outlook.com (2603:10b6:208:152::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.20; Mon, 14 Jun
 2021 15:16:28 +0000
Received: from MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::81cd:8060:64e:57c4]) by MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::81cd:8060:64e:57c4%6]) with mapi id 15.20.4219.025; Mon, 14 Jun 2021
 15:16:28 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Barebox List
 <barebox@lists.infradead.org>
Thread-Topic: NXP Layerscape
Thread-Index: Addd/MoIpx587SOMTFWl0TiwuVIYLgABV7gAAMrMTIA=
Date: Mon, 14 Jun 2021 15:16:27 +0000
Message-ID: <MN2PR16MB3135E10CC5F4B532EDA547D291319@MN2PR16MB3135.namprd16.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 845b3560-bd05-4483-c873-08d92f4761f0
x-ms-traffictypediagnostic: MN2PR16MB3069:
x-microsoft-antispam-prvs: <MN2PR16MB306948FA51871E2F24C4881591319@MN2PR16MB3069.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j3T92UdEttsTjinGk8mzRIA/kzQZJxhJdO+GFMHMZg0Lx45JTD0c6No10r523BmytoLzTgGS5mp44svqsOcaTmQeigPqz2yC4A651+CB6eLUceZaX7hSBSDYLUB0nEMtrwU2TLMOmXNjiCV35J9TTRKmtAJyOpoKrazYpS9LTiR5XuYlCabmQZVV3sVDUzII1kqcxTYlYGRUcRwW8MMFOEXRgMFsUs7BcGDb+4ZbR4FNLsqtuW0xB0CbrNCESVtOeoNFK/PNw2gxnsLnk/vILYJtpsSqedmQdWTOGbgIdE9QDudlVwro5JgjRoTDgCIwS0/MhV4z9bVb2DC18J18QzuxZuNZ9eGEhYvv11ZARPP/Z0g7VDyy9QyquUzqN+q7DWhr1ezFXE5DWf1GcPUH7TVpx7YpXZcTOKjh7cs2YdchIhIkjkhzZXnUwxzFOJCPuG8c3hGA9PywL1ZDwDOlW99lzu1enHecfhslBOfcDtg08/+2kL5v1VCpI23fJhkzpJbtC7OBg24AdKQXl+uvxln8wetDe5QtpvX9gVTXXtVvT0MyYNMn5/S/dnvLjgnuuW3AruTaDg4C6CVE/IXr8K7nA9kqr5wo2rZr/PclDA9nnZI4cTb9UO0bPuscoZ/G7p/S53rDFpUzPaCJYUwWyeP0nTxgSZndnxRwIfK1qJ/mxacnP/O2JnKbe4BTR6hoPbUdGxH7uUmYBM6j0ZjrLw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR16MB3135.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(376002)(396003)(366004)(39840400004)(186003)(5660300002)(52536014)(45080400002)(53546011)(83380400001)(8676002)(478600001)(2906002)(9686003)(966005)(6506007)(71200400001)(7696005)(55016002)(3480700007)(8936002)(66556008)(66946007)(64756008)(7116003)(38100700002)(66446008)(110136005)(66476007)(122000001)(26005)(76116006)(33656002)(86362001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?v1wT2MxFiG0LWFOrQQXBu20jIw5r/RNXt/8kSo2pGQMxIP3aEY9bRikDGU5c?=
 =?us-ascii?Q?oc2SM58xnkujJS8KH94OmqaN1w415g07/PjndrsqYYVBHPT/FHcucBbhoX7s?=
 =?us-ascii?Q?Lv0sgGJ3nueTNqkhPq4T4Ji/EhpXcmouVcggo8eWwRwiFwYTYCmqRKXOMRZZ?=
 =?us-ascii?Q?NZkIU6OuApy2cchUHXHfVfAwde/KpxoJnOafmkhDkSAfOCjHOEgnUKdDs/o4?=
 =?us-ascii?Q?+Bxme318osVrx42Aqbl2CMvqhTm5BV1SfuT4ks5JK4IgAy+IVdyYCGHjsFnk?=
 =?us-ascii?Q?mHbmBuZjMyZ0hwqdj4/dIcHxrU6NWC0+Baa+OeCl2L3LrlkDOtelo+ROxK+l?=
 =?us-ascii?Q?EWicsekJiNJXzqBaU0TFHt8QcWPi7o5q2xaa+DccN7g8WtvlsEgIgGgZnfcQ?=
 =?us-ascii?Q?0PEbyaT6nzGu9/UqI/OKxBsdZCiJCvQ7Q+q+p/l8sfjJkezArbWR6ADynPlJ?=
 =?us-ascii?Q?PwTOFooATYv2/dCq4CoS6ROxaAOoV8AMU9Ff1gYG9zjt4aTqg26Hz8bwIctX?=
 =?us-ascii?Q?LP7aOhGDiztaO2et718dygOX687M9CXwUT/I1krJ3tl3tb9iMUXiNlmTFKPn?=
 =?us-ascii?Q?Xcgh4P7KNob9NSvEZv1OriQd2vbkZNc37iENDqFHNopxRGpD+RzDjy/44eMD?=
 =?us-ascii?Q?AXLGV1hVQRsdORZmXjH6AUj90HnW9u6bQ6P9+/KA4f1UTcL8qqGwgbkwViFe?=
 =?us-ascii?Q?XzDgldVMpkl0RAhKk+Reqs7tmQ/S3PiNNqHjm2xaw6BduGxgOGKFPIAxq0XD?=
 =?us-ascii?Q?pSop8bpJ5aVubpe3BztvJXKJyplSQhSWnKiv3QlgXHRB7A4NJumpB8f4ls3T?=
 =?us-ascii?Q?amNi3+C/gh97vaoGsc4i7fvwJ7V5eD07hCG45qGo5IzeaCdH5C3/mY9xwgUG?=
 =?us-ascii?Q?wyIhzBcaUcWTVI0jDYw755GyNH+fY57Z01M0wV/e0Tlxund+i/0tpil8JgTU?=
 =?us-ascii?Q?qdtvHCupGxzar1kuwsftZveLKQs1ShhxMbCLRJubbyr+B0jNA/88mO04P3a8?=
 =?us-ascii?Q?psoDVxlWtn/DxKgqI+zP5elv7NWg0fBSBRuhF3RHDqrpy3BxgvvJsZxhN1du?=
 =?us-ascii?Q?mHKKxYKaz+ek5M2MRHuJH25xAlB5dRzpMHmzu3wogpYFf9Juo8AfA0MjJzSE?=
 =?us-ascii?Q?Puswa8GND0jhJwU8VBI3bUaYlfTJ3tbNsFrjem/jqpv3neiqs/E0EgT7rFh7?=
 =?us-ascii?Q?7V+ULs28CxtLloLW+iCq0Yf+satzDcDfqdpHFnTAf/5nP4po4FnUiTwDRn4l?=
 =?us-ascii?Q?oS6tOjx8Ques5rZ89QtDUl323sTa2/ptjGfmY4f9C9UW7lGuQlVIwiXneYBz?=
 =?us-ascii?Q?zBc=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB3135.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 845b3560-bd05-4483-c873-08d92f4761f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2021 15:16:27.9090 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wTcNRtFK66PtiMmJF+pDNQyP4/1rKKEh/BCljS8Fwiy7cYgSemkUPBIdm2Qm2G+bgXazX4rc7ELxBdvKvBRJAAM6M/qPf55wBvpxNxPQseA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR16MB3069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_081632_766098_701DE165 
X-CRM114-Status: GOOD (  21.55  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: NXP Layerscape
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I am a bit confused on how the QSPI image is built.
>From images/Makefile.layerscape
$(obj)/barebox-ls1046ardb-qspi.image: $(obj)/start_ls1046ardb.pblb \
          $(board)/ls1046ardb/ls1046ardb_rcw_qspi.cfg \
         $(board)/ls1046ardb/ls1046ardb_pbi.cfg

It makes use of the file ls1046ardb/ls1046ardb_pbi.cfg not ls1046ardb/ls1046ardb_qspi_pbi.cfg. 
ls1046a_qspi_pbi.cfg contains an endian swap that I can see in the U-boot rcw+pbi data.

When I take an hex dump of the barebox-ls1046ardb-qspi.image, I see that the scratchpad register 2 (BOOTLOCPTR) in the PBI section points to 0x10000000 (as in the PBI file), not the PBL address start address.
How can this work?

Renaud





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

