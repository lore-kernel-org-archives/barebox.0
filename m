Delivery-date: Tue, 23 Mar 2021 15:45:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOiI4-0005Bm-WB
	for lore@lore.pengutronix.de; Tue, 23 Mar 2021 15:45:53 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOiI4-0008I5-0f
	for lore@pengutronix.de; Tue, 23 Mar 2021 15:45:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0zZoG4CKMm7wS694PQ1JuNVLwzZ3dTq8J6w9J/tBF9I=; b=dy/2rXNjXeaNzjp+dWro2JPHo
	komcIQebRqKrza4ABXkPnSnWTjhN2iXC0Cd+aTx6lOW0R7Uo7EaOZJb9XH/r9p5MwW8FYlIglCV5i
	fYTzhQ7c9vWAxQX2vzMVgwX5JmxNYsPzV6wxBW5zTZYkITF7BWWrFTviZSyIExLgdDHrbnAcMuagB
	YoS/t8jcwTm85JaslkZBCgh8Vctb1tZwAXWnBRx+RuK/3AYlhlvh8rbDgXYwV/QAbPUTdII7OyGsi
	JOU8zVMH3pK8hU7RcSizeCWkrNIJumfawfuZ9I87Iuz8Z1UyiHlbezBKIEzHRFSi/wYN6rds89HQ6
	hG9LC1e8Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOiGm-00FC4h-8E; Tue, 23 Mar 2021 14:44:32 +0000
Received: from mail-mw2nam08on2092.outbound.protection.outlook.com
 ([40.107.101.92] helo=NAM04-MW2-obe.outbound.protection.outlook.com)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOiGg-00FC4E-QD
 for barebox@lists.infradead.org; Tue, 23 Mar 2021 14:44:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EmFts/BnV+4a5X1ywGKojznIKtCqFIClFsrJCLxhRWV8tf6NWlndxY8fOuepJSd5cl8E0Lo99pon0gDR7lXEWBJWWbUbF0bIuCe4zV/NTF6FR5PignwwvMgSgmPo80PBUjcI75WV5H+ysBfEmB/oilbGxFTpB84g709ajO0GdBmRcoUkAc4gcPmHlDoikNciw87IHmMtA6UEqRTCZkCCeACqddKoGDiVKgIiyICtPlN9/NhV4etk+pGu+edJ0eiA4a37PhXCk5Z18o/0i105tXBeUNvBU5tIPA0vz930Loqn/6YMA7myIMCzvc3KmLIknz0njC8S3gReZV5LWBdUVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=46G9jr0rzoRomwG+GaCzqbKnXEHXvhPVUwZYAzWIr/w=;
 b=F3UaWEKQUNkd1cxt5zg7HI7XZ6u1u/618F7P15t11/GYFFoMIiL+uGMgJao6zZd6vEAScgZyND9Dak7CTdoIg0E2mCMTNdlxTnfRdsI18Gq8yL/q2u9NJlv0Gv892tsmbyLhymjQRWqocSwKUT84qczYqR27BS1k6/NcVl7L3JifrGQF3yYfGvYyupEy7HIWZoqZkTMqEHwqIhCwg/lpgkae7AyMOePzDDk32H5pdDf8LH5xN9rx3mgwjigni5nSPqPv01hohskt+qSkpzuk2SBw/BBj8SsDvHzn7bxNzjpnhH+xs/Rvo5WrK7ZAKBIuDZtP671mJ3zI3Cyrx0cnNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=46G9jr0rzoRomwG+GaCzqbKnXEHXvhPVUwZYAzWIr/w=;
 b=dU+QXh86LWWjWBZqPcdnXy2M/DtKlGk4XZJ/l2xc11Yqp/gUR9Ny+au3ncPrKVzH9MqMEKBdGbNuEbDdz4+FTnN5nZNXM0b0KUwMe1StgxyCld2Ht8lVE4drLGdWO92bqZrXsOIjETLq7v8NGPSnKQgV1eumIEQhtfdKrzJMi280LuMh/iY6/ulV7qLYoqg2HxCQzt17+V6VTISzKirzsFdJiAQohk0J+wPNz+7EwSboTJ2U0i938Swje2TwKu0lbpMl0J7QM1h/R0c7IXp+djAR6Y/2Xetor6z0980B+PuUZ1Tq/x39t+E3iE2rzpX4tNu8wl+Nw2Z4Cpi09OqMwg==
Received: from MN2PR16MB3135.namprd16.prod.outlook.com (2603:10b6:208:153::31)
 by MN2PR16MB3280.namprd16.prod.outlook.com (2603:10b6:208:13a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Tue, 23 Mar
 2021 14:44:18 +0000
Received: from MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::c5a8:5a36:6b4d:afdb]) by MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::c5a8:5a36:6b4d:afdb%7]) with mapi id 15.20.3955.025; Tue, 23 Mar 2021
 14:44:18 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
 <barebox@lists.infradead.org>, Roland Hieber <rhi@pengutronix.de>
Thread-Topic: bareboxenv-target
Thread-Index: AdatGe97fRoxbKuGSpyHrzEp645uFRyxtDSAAAQGQxA=
Date: Tue, 23 Mar 2021 14:44:17 +0000
Message-ID: <MN2PR16MB3135E3998BF7EA4489AE059891649@MN2PR16MB3135.namprd16.prod.outlook.com>
References: <MN2PR16MB3135009790C9E05DD2D996BB91170@MN2PR16MB3135.namprd16.prod.outlook.com>
 <70a0b276-296e-f8b9-dcf5-22293209d55d@pengutronix.de>
In-Reply-To: <70a0b276-296e-f8b9-dcf5-22293209d55d@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=abaco.com;
x-originating-ip: [88.108.84.30]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d89ef681-f3d8-4c98-3e36-08d8ee0a2344
x-ms-traffictypediagnostic: MN2PR16MB3280:
x-microsoft-antispam-prvs: <MN2PR16MB3280B1913A5B67E397EE9D1891649@MN2PR16MB3280.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: njY4Lug2/cb8eXkka1qurTz6pxdkYmsV6wr3V1wh1PnAGuh5xSzPYSMuJJ8WnHTkRhUR410QvqC8eU6OxFbf7Nk1QvNBtbVEEGTZlT46Qr4mSDH+Zdr+dJXK414LotFsTXRBdfx7talzvQ8cFJ76i/SMabCo5aums7Nh9DJpFhbeeHCzt5M2E5NDBOZTstGyIhid5dVzyWYGxrH4cRgiaA3I7BsqMgQrocBYDChOpuWc44rwQXE/BqppaujpPpkQ5ZYaRmf03p/MQPub/FiLzjsAwtzLE54RRaYkDKSjp67zGrm6D5iEJSrjjNxqJETTE9Hod7/NntxMh+hXxCC7jTpSUPEtBH8u/tOdibeXN5gpD5NKAxodVfhpsE+3gAzBoN7EPU9jBS/WfvLSnq+twyUlUjNvXhy2J+kx7nKvZSt5ak7p/A22bA6f9nscu+x/QirUYEwUjAuXrwUsn5Wb2Wk0JJbHm5LEx9HNnEPWoKm16MpXk5JHCRd4xn4dJ8MfJNnRlaT3RqgcO6kkQLcYnsLawfrd5B7JLtQyHKDo3nh8M55Y5ndrfAd1mryUhg1FtrlRtSBRH2Ww0qWLAJ3+4RPADVT+dErGI/ZS3WCsQTxgFx0LSoZ/PSRdwYyXTqG3gdBciXbIhtjhegq7gBmmmig2N428mi4hINk16JpkjhA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR16MB3135.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39850400004)(366004)(346002)(376002)(136003)(396003)(66446008)(186003)(26005)(66946007)(6506007)(64756008)(33656002)(7696005)(66476007)(76116006)(478600001)(9686003)(53546011)(8676002)(8936002)(38100700001)(86362001)(71200400001)(2906002)(5660300002)(52536014)(110136005)(83380400001)(3480700007)(55016002)(66556008)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?W6YpK6GZ6b8+i00LzRbwWZXhxObewgrkWj9eAWjifaxQ5BAQCEIhbRiZHAMy?=
 =?us-ascii?Q?4MDrIzazCAUTT4K8hJzRA3YSCgeYQSB4okOW2PawbSZFPvXtozXvvpddFLF6?=
 =?us-ascii?Q?NQR+j8oKiMSxyCJgYPRZzD6dLvnMTOWEXQTYUJpO4Zrbg1jF3izUYId9d0Tn?=
 =?us-ascii?Q?WgJtawAkhb4Rc9X/MOCqdXu4F7V3w2eMsx3EeG0TnUCXg04YxBv94mN+AL4t?=
 =?us-ascii?Q?Ppk3vzoHWljnQTcupgkNU7e7M3iSh8qbw0Es8NGLCMKNH8CfFvu3Eq9Dwzax?=
 =?us-ascii?Q?4bP/ERqUIPtkbY3GSNMzom+PRtbxmU0w19QVs/ynvJza1naQxVDa5PLdJJFy?=
 =?us-ascii?Q?gh6dZkjK8bUXsJp4ZKtQnOkgdaY+AIRBYIiWC7bxTYtd5xWXB998iflIyPqH?=
 =?us-ascii?Q?QXvSYJ6wRj8HyqaFoYk/KmvXWAGGZ8DESmFBbS0Co6IviIQ/u4euJl4Un1Tz?=
 =?us-ascii?Q?19pXpC0f/VQVokFEjppApM4UmT1VeS4En4z3uhaZZVtgSl8AT4SCASfNcJ+g?=
 =?us-ascii?Q?ODKU4M7xbh5wyxUrGHSOsG0zrCTKmi7E3Qzvs6JTFjevC52c332h+nXHMl9V?=
 =?us-ascii?Q?qTJYOMcpEGmxJ3/3btW9tUmlXjLhIFqxqqZh/U9Oe61Q7A/yc6+7OfOMctwF?=
 =?us-ascii?Q?/crsnGOSiY54qzy9Xd5Q2+PxtK3/OxsLF4ZakKpl8H+bhMU7R/ZiSePZDXrz?=
 =?us-ascii?Q?S1VthYqvmDpVL6ziHSiVAeh5IE6o+Az9LCopQBGQv4Wr/bR5UzdtqbqpN68e?=
 =?us-ascii?Q?QyVjwhG9MMXM9VMlCzUvig07Dz5tdORh8B0jR17bGB49Uo9Nr21b4+5CwSRP?=
 =?us-ascii?Q?6+Z9Ye/YcR8GDYdoza3BQcTO4rnVpbG9mT5e8GLgylOwK4zRQo6hg7EatZB+?=
 =?us-ascii?Q?BI/wXt7qxrXkmSSYLIfJ4tTiYvFQiSeWW1t91bCK7tf8owhAtZWT3dr4vQ/X?=
 =?us-ascii?Q?lG08LzvEf9bcpWB4HhIAZGXduvqfc55FgcrDf0tscuT8v0Yc8H8+HCyXVPh2?=
 =?us-ascii?Q?EKz8AjQMQ3CdljWRQUSXtysA6PJQg95mhP6zwGYHF+AHp1nF6qMfb7j0NdMg?=
 =?us-ascii?Q?BSHDkad+NhXTrr51lvUWN77CqOJxRHhHvlzPYFbOAqPdwRZBJbCJRhcDuK02?=
 =?us-ascii?Q?+Obl8Bzk6F0YV/+Sex0VacQSk042Ig3DyzZgTfZw1yXP8XcOxCHG3aVsBA9K?=
 =?us-ascii?Q?5UM+pnfpYJSWf/47Ov2PHVdBA2o52cPewZLHqHMAHEaEeM3MsQWrK6Qq23cZ?=
 =?us-ascii?Q?v9z//cxO+zeHR1722CRi2CICOMafsYy8LgHhDOJoFGvctYmnPcxoqdDjtsOH?=
 =?us-ascii?Q?J2k=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB3135.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d89ef681-f3d8-4c98-3e36-08d8ee0a2344
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2021 14:44:18.0674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h219D9wQPOWfw83wkGU3Rd7olpjh+Nnqk/8Ol89YbKGHhcBD74rPl1io2kFb+sI7tC0GY8gUDpRB4nPts2/ljjXOQHTTq+kNv7s1gY70JMY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR16MB3280
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210323_144427_126352_47AF12D7 
X-CRM114-Status: GOOD (  17.02  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: bareboxenv-target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



> -----Original Message-----
> From: Ahmad Fatoum [mailto:a.fatoum@pengutronix.de]
> Sent: 23 March 2021 12:34
> To: Barbier, Renaud <renaud.barbier@abaco.com>;
> barebox@lists.infradead.org; Roland Hieber <rhi@pengutronix.de>
> Subject: Re: bareboxenv-target
> 
> 
> 
> [**EXTERNAL SOURCE**]:Please verify the source before clicking link or
> opening attachment.
> 
> Hello Renaud,
> 
> On 28.10.20 12:09, Barbier, Renaud wrote:
> > I am building bareboxenv-target for a  cortex-A9 board (not present
> upstream) with gcc 9.3.0 and got this error:
> >
> > arm-oe-linux-gnueabi-gcc -Wp,-MMD,scripts/.bareboxenv-target.d -Wall -
> Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89
> -I /mnt/projects/all/openware-
> core/home/renaud/sandbox/bootloader/barebox-rebase/scripts/include      -o
> scripts/bareboxenv-target scripts/bareboxenv-target.c
> > In file included from scripts/bareboxenv-target.c:1:
> > scripts/bareboxenv.c:17:10: fatal error: stdio.h: No such file or directory
> >    17 | #include <stdio.h>
> >       |          ^~~~~~~~~
> >
> >
> > It looks like sysroot is missing as when I add to scripts/Makefile:
> > ifdef SDKTARGETSYSROOT
> >     userccflags += --sysroot=$(SDKTARGETSYSROOT)
> > endif
> >
> > It builds.
> >
> > Not much came out from search on google but one thread that refers to this
> problem when building with Yocto.
> >
> > Could it it be related to  how our toolchain got build?
> 
> Just ran into the same issue. Cause is as Roland describes the lack of --sysroot
> as default and that it comes in via $CC, which Kbuild doesn't expect.
> 
> I guess this would break building kernel host tools too or how do they solve it?
> > 
> > Not working either:
> >  [renaud@ediowsrv01]$ make tools/leds
> >   DESCEND  leds
> > arm-oe-linux-gnueabi-gcc -Wall -Wextra -g -I../../include/uapi -o uledmon uledmon.c
> > uledmon.c:14:10: fatal error: fcntl.h: No such file or directory
> >    14 | #include <fcntl.h>
> >       |          ^~~~~~~~~

> 
> Cheers,
> Ahmad


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

