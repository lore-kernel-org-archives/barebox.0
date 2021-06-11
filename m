Delivery-date: Fri, 11 Jun 2021 10:54:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrcvl-0002oZ-Ax
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 10:54:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrcvk-00058Q-7r
	for lore@pengutronix.de; Fri, 11 Jun 2021 10:54:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJzjOqdIPF/Z8Ij39pCnHgrVazY9uzlYRbhoT32kF+8=; b=fysQ3TRleY4rdp
	aYc3CvSwiLg5cS7PIGcDYs4L5uxdRJD0IgEbPy58rbYjKC2C3O1zPNeVAVKbXUCzX0j93nLywA8ON
	pEQU5IQHQOcOpDe9N/TGdwArgLOy+sNYmOtP8dRvGC4naasjLUoOM9Q5w+pTkD0hj2tY82NhXWUTy
	Hy1+u1bHPPPznGICTq4wA6J/LVHEhH6ZFXk96We6LVe3MI8xJyVyPRG1dsHtW98oboheosPOsv5xW
	3b+FppMKajjyTHHptR1DbHEzl2sSOntO68dflqV1MFBChetWMrCBAJVfYcrF4TwrR+k4RhVGHsFom
	22bQClJ1Odh8F/FxwVsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrcu8-004Pa7-Vw; Fri, 11 Jun 2021 08:52:41 +0000
Received: from mail-eopbgr10067.outbound.protection.outlook.com ([40.107.1.67]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrcu3-004PZI-P6
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 08:52:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a7/sbdXPsCb6GfYCvyRlgekYzdnpEi5alyYcWHgRfAUy4DGxwatOaF1tHURgWZdb/npBR3HatuUNaRG1l6tm7dxqYl1kePjfS2KUK882NaOr8ED1y0IjMGCgIKmo7+BU9CwNoRfZTiqSMD+qNlV0Xg73NZo5CFqdYq9MwivOBCX2URbFjlWoSn/3HyNKOPbWrqrR6aQz9hQl7X7NTukHz8w026vRimqcYT805zA74LPVXZXD6t/CcyGmQI7OfZSmzUgki51H5KbZ+QtXDbSW4aLEEGLc1TVhiZDpbftV8HhzYYa264mku++SiSMfcv+hd7Whgu5GZ/QDufdIm2YNNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GqJEkxjDBLW5+dfipqXv2LVsbPFUsO8mzWYoeAycj6I=;
 b=XseO7HQXAhJEP1HqhuqEhlEBTSQ8aBQR94x6h+CmcEPgJyzdiEc/4jnE8iXOgbi6bWxt5CZdOKD7bixjjEqzvh+c/MuvO6gFtqij92UWWHXR4va7QYkhMKwN72l+UjUCsR9s7dMyHmbHvYMG3rR/0VH+kgYPq37vMG6djwYQJsyL3G+b6VMnxVCqbP4RquC3a6+hiFCRbTGiBOjzJVDRfuJOrKXS3tMZJ8q1MQzgst2UZLcAnNsOdXmZ0PS5f6LEZByX0nq7oeN3BPQZw3XEZIjxBOh1DgZiRBsdamelLyMejG2+l3Sq4y/aL632IqgLjLTvTAMS0kmP87Os+EXHbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eckelmann.de; dmarc=pass action=none header.from=eckelmann.de;
 dkim=pass header.d=eckelmann.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eckelmannde.onmicrosoft.com; s=selector1-eckelmannde-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GqJEkxjDBLW5+dfipqXv2LVsbPFUsO8mzWYoeAycj6I=;
 b=EiCOhVmlh9y3SbHOdG66JQ7FVLUJGSxFSSHXdLbt951DtlcYlYSKVSW6WyQi3GYq89mWF0uVA8U0lAJCRX5qyq2pkB1IaoirLsrbs4CSHUm30KQ2673W5RUmqPOm5LEoJdH9B1XMGevoRGW/N/3DZWVVQlQvvi1l2BVGSqKk2Hk=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none
 header.from=eckelmann.de;
Received: from HE1P189MB0570.EURP189.PROD.OUTLOOK.COM (2603:10a6:7:57::33) by
 HE1P18901MB0092.EURP189.PROD.OUTLOOK.COM (2603:10a6:3:97::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4219.22; Fri, 11 Jun 2021 08:52:28 +0000
Received: from HE1P189MB0570.EURP189.PROD.OUTLOOK.COM
 ([fe80::cd13:cbd0:8792:a4a6]) by HE1P189MB0570.EURP189.PROD.OUTLOOK.COM
 ([fe80::cd13:cbd0:8792:a4a6%3]) with mapi id 15.20.4219.024; Fri, 11 Jun 2021
 08:52:28 +0000
Date: Fri, 11 Jun 2021 10:52:26 +0200
From: Gavin Schenk <g.schenk@eckelmann.de>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210611085226.5hzbvsbz2m6gcxle@NB061.eckelmann.group>
References: <20210611071351.1445370-1-u.kleine-koenig@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <20210611071351.1445370-1-u.kleine-koenig@pengutronix.de>
X-Originating-IP: [176.198.220.156]
X-ClientProxiedBy: AM0PR02CA0137.eurprd02.prod.outlook.com
 (2603:10a6:20b:28c::34) To HE1P189MB0570.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:7:57::33)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (176.198.220.156) by
 AM0PR02CA0137.eurprd02.prod.outlook.com (2603:10a6:20b:28c::34) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.20 via Frontend
 Transport; Fri, 11 Jun 2021 08:52:28 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cb78575b-423d-4cf8-12ed-08d92cb63dc3
X-MS-TrafficTypeDiagnostic: HE1P18901MB0092:
X-Microsoft-Antispam-PRVS: <HE1P18901MB009284373E9BE037F48465DDEC349@HE1P18901MB0092.EURP189.PROD.OUTLOOK.COM>
X-MS-Exchange-Transport-Forked: True
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XQVef6TCOm6B/WHO0faTt/HVFnvHjjV1hvGfeY3Cxpg0xvj55F7sIO+0b2eAEeIttzcUy7xAfMfcqOD8OULR0u13NkI6CU0YFpAhap08mGRJTX+meWDJxmDxK8OsVAdBjPzTUnlxK2torDdawcqDDBwK21wQsYyP+ru8kFqE0pU51hxxo3UJhi6SQreetiUk4cgkcZTqgOVdI44OwwAqDFAGHUPQhcJS/rj6waqADyChyikA5TJ7D843G67J4BU1VxKNQ05OGQQ2wlj5FSLYEpZ4wj6kwNkYSm703jcr/HH7+sRS+a1nuRZbMyw2siuAFmNFKd/fOIpBUtBJo3JH8UdHWjZPeA/v6v9Bk1vLBqRLGQOEcFtK4jPuBnRrk0ASqevcj4dQ4sqXN4ku5mQ2J94PbsJ7Ji2Kq3eZ8azDU3rJeEDWAAVEBAeNPMII8LEdz08sFUmJsuCE/Pjj9Cnd7kV20MexIQJ8wF3EalPcCyJR+ZULuBfV8JXwW2xS89liRaqOZ4siNffeSS89NB88lspaYYUg7UP9q6q9lPwi4LR8TAf5GRwDsqSnvpf1dhwPtH6yjfLR1i2ZhXDB/cxyqGC9IsJKRbgieZ2YXnkHt6Ix31lCT5IYqGW9hvuWNSJ9H9PsL59cXxm9Ljw15t9crQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P189MB0570.EURP189.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(136003)(366004)(396003)(39830400003)(8676002)(5660300002)(956004)(38100700002)(38350700002)(16526019)(26005)(86362001)(6496006)(66556008)(186003)(478600001)(8936002)(66476007)(66946007)(4326008)(6486002)(9686003)(316002)(1076003)(2906002)(6862004)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?WfE4yEdGDfokm1XWxgy66QtR3hBIISu/0spoPt1UaTuh9cFvpB0fRDZZRi?=
 =?iso-8859-1?Q?r5Ho4A9JgbJKjIZgBTPH+cOcxP8nBxsESl3XOeGs4SOLGw5n2qnK90Aq3D?=
 =?iso-8859-1?Q?F97UnQwhbWP/roSYcEvCXSgO/Xjd90KVwNRdW7gGbytLVuwYrV+Imn/P3a?=
 =?iso-8859-1?Q?SDbLc1ytJOOrizDKaKq6pQctsP8INYOL8V9qYDjpg+B194Z+G5t6BuH+C6?=
 =?iso-8859-1?Q?EqddeUUF0VLqaRQlB82OjC7iWPVtX5eAKEr+cq14Ub8kQatEJzVuWBohaU?=
 =?iso-8859-1?Q?xGmZDcctiftvDPUPM+cmIGGdgmFLYPEt90appPILy9QcNQDDG83MQCKTOU?=
 =?iso-8859-1?Q?XIlzp2J5B/GQpOdP9K4tmaZpM5LsLwtEHEpmkW8hy+WtL+/u976nW7Y1tT?=
 =?iso-8859-1?Q?kPBwLgGxKTWllkCjt7dAzZJCQAGnddSFGK8BhWDNtm0WJWdKWiYDBtgxoW?=
 =?iso-8859-1?Q?l27ML3OZ9MWUR1c0mXP/6U+DyjA+cyqoV3LEpUPDYdeRUa6lmOs6rMdqxU?=
 =?iso-8859-1?Q?kZ0rDFmnyzf1vGvzRWW/oPlm1XC9zRdtmL7Vpv4nWa/pjaYWOfxRsYwSf6?=
 =?iso-8859-1?Q?gbqJUAEm+tLwimIpZCP79sAXgNqff9coCJpjJHcgdDJmkTi9++Be191M+F?=
 =?iso-8859-1?Q?lx53dB0lD4fNSsG6Y5UyLZ/N7z6/QJByjU9UJxppSfLTKqLi/f5SL+vWO6?=
 =?iso-8859-1?Q?v7/p3RpEx7HxGbNW0X+/gbnJQHPvriD3XmNYIYPwzu33lD/RfPY5esSbUt?=
 =?iso-8859-1?Q?bv7OLWEpiqxcxJcnucN2YvP86m0Hdluy60vAqbu+4JaSnSTtzTO+V/jEoS?=
 =?iso-8859-1?Q?sz3Q14ZaO7TwKFriPWh6M4op1TNEdFQXOM9Cmqhs0j7E3pNWeToxj155qi?=
 =?iso-8859-1?Q?cS9w1ExI393PlWiknr8QOzGp3Bpcasv57fNL6R5cc6DJ1q7O6ja0dyjjmu?=
 =?iso-8859-1?Q?MBtjWosCPgf5by+rhZ8GA9n5VCwlpnaOOO5J5SZW92WgzyJsHty5dhixxN?=
 =?iso-8859-1?Q?eeapvyW+GiCAYlOyQ5bFZuWS6VMBlxqTBqLiGeKDvhzaab/LHlSwPvZs8H?=
 =?iso-8859-1?Q?Vf/aIWFfl01b1bkjbapGzGcukGNTbvVidhaAfvCgTb5gVA8gKkrKqByjlR?=
 =?iso-8859-1?Q?bsktfWScOianHNAvpWMKcTMVdZX79cgNvcRk0PHjdZV996BpnGOktKKCRE?=
 =?iso-8859-1?Q?rynqvDMSa/HmsXIUWqomdOvew2hHxB8oFL0sVEioTqR5e0YLcMgVeCVceg?=
 =?iso-8859-1?Q?VqxAjTR4Z5C5P52Bz002096duXNvdTGwoTubyuZWBDJO4axt9GNrRGxbmR?=
 =?iso-8859-1?Q?3RpRscFtszCxGB6X6yOXFzT90AdOkJb362hEYo0Cy0ikdfH6SOFC+8erhl?=
 =?iso-8859-1?Q?RFC9QSOu7Q?=
X-OriginatorOrg: eckelmann.de
X-MS-Exchange-CrossTenant-Network-Message-Id: cb78575b-423d-4cf8-12ed-08d92cb63dc3
X-MS-Exchange-CrossTenant-AuthSource: HE1P189MB0570.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2021 08:52:28.3319 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 62e24f58-823c-4d73-8ff2-db0a5f20156c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iTPpQU03alktyYOEbOCM7e29NCXaST1KbsOB2U9LAczKdsu3xvT5Iys4jx2kWzBn2MaKLYAmB1O6Us6z1aDMxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1P18901MB0092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_015235_837690_917DD336 
X-CRM114-Status: GOOD (  11.01  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-102.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] fs: nfs: Start earlier to resend requests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 11, 2021 at 09:13:51AM +0200, Uwe Kleine-K=F6nig wrote:
> On a customer site we're experience a bit over 1% UDP packet loss. When
> wiresharking an NFS transfer of a kernel image (with the goal to boot
> via NFS) I saw 64 of 2555 RPC calls staying unanswered. With the current
> timeout setting each of them introduces a delay of 2 seconds and the
> whole transfer takes 137s. With the timeout reduced to 0.1s the transfer
> time is not optimal (going down to approx 15 seconds) but at least it
> becomes bearable.
> =

> To still cope with a slow network (in contrast to an unreliable as
> pictured above) increase NFS_MAX_RESEND to keep NFS_TIMEOUT *
> NFS_MAX_RESEND (which defines the overall timeout before aborting the
> transfer) constant.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
Acked-by: Gavin Schenk <g.schenk@eckelmann.de>

I have tested this on the customer site with 1% UDP loss :). I am working w=
ith
the IT department to get a better network. Until that happens, this patch h=
elps
me successfully boot NFS.

Regards
Gavin Schenk

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

