Delivery-date: Wed, 17 Mar 2021 10:33:09 +0100
Received: from [2001:67c:670:201:290:27ff:fe1d:cc33] (helo=metis.ext.pengutronix.de)
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMSY9-00047O-S0
	for lore@lore.pengutronix.de; Wed, 17 Mar 2021 10:33:09 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMSXy-0007pn-WE
	for lore@pengutronix.de; Wed, 17 Mar 2021 10:32:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yjSqs4wLtIvR26z1Yrq46dZrXkm2LcMqyciFlX+i9A4=; b=oXEXpIuXUOWXK7beeniOjvv9J
	rhU8fQToZ0UfrbsIVsfC6tX4NemEIeDQsiOMWLsVv2pRGN/0Z8rV8LcE023wz82MIMvVblU4cvYos
	/U8xCbyhvPkiQolhdqyx2TNarh3+hR2wd0rA/FlbERgzTvFy0XxqKGbfYpIeos0hTOCtxShL3z5Tv
	uBtqqknorhaIYui5KcOVY4dbxqQPtzho6rrscQLxg04WCFIRS3VvQxHidPJiE+dTKLAwzVTdyrpoY
	BGtutYJt0zPb93ZR65QCohR0r16v6m96RWHJzbyKR/6m8tZjri0QG4UrofHszkX7m4UQA9A9rz4Ye
	G55oW2SuQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMSWz-002qzA-3t; Wed, 17 Mar 2021 09:31:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMSWj-002qxJ-2o
 for barebox@lists.infradead.org; Wed, 17 Mar 2021 09:31:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lMSWi-0007lH-C2; Wed, 17 Mar 2021 10:31:40 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lMSWh-0002ZT-TN; Wed, 17 Mar 2021 10:31:39 +0100
Date: Wed, 17 Mar 2021 10:31:39 +0100
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210317093139.GY23724@pengutronix.de>
References: <20210316123546.25769-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210316123546.25769-1-s.riedmueller@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:43:59 up 27 days, 12:07, 85 users,  load average: 0.12, 0.13, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_093141_224809_9C273940 
X-CRM114-Status: GOOD (  31.42  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: Fix default mount when device already mounted
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Stefan,

On Tue, Mar 16, 2021 at 01:35:46PM +0100, Stefan Riedmueller wrote:
> Let cdev_mount_default return an error in case the device is already
> mounted to a different location than the default mount point.
> 
> Otherwise the automount routine can get stuck in an infinite loop
> spamming:
> 
> mounted /dev/mmc0.0 on /mnt/mmc
> mounted /dev/mmc0.0 on /mnt/mmc
> mounted /dev/mmc0.0 on /mnt/mmc
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  fs/fs.c | 28 +++++++++++++++++++---------
>  1 file changed, 19 insertions(+), 9 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 3db24b7b6822..4f2345d22544 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -951,9 +951,10 @@ const char *cdev_get_mount_path(struct cdev *cdev)
>  /*
>   * cdev_mount_default - mount a cdev to the default path
>   *
> - * If a cdev is already mounted return the path it's mounted on, otherwise
> - * mount it to /mnt/<cdevname> and return the path. Returns an error pointer
> - * on failure.
> + * If a cdev is already mounted to the default mount path return the path
> + * it's mounted on. If it is mounted to any other path return EBUSY.
> + * Otherwise mount it to /mnt/<cdevname> and return the path. Returns an
> + * error pointer on failure.

blspec depends on the return-current-path-when-mounted part you are
removing here. I added the following patch before applying this one.

Sascha

------------------------------8<-------------------------------

>From 7dc73d3618a15f0d858d5409574f38f9f83905ef Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Mar 2021 10:25:47 +0100
Subject: [PATCH] blspec: Check if already mounted before mounting

cdev_mount_default() either mounts a cdev and returns the path it's
mounted to or directly returns the path when it already is mounted.
This will change in the next patch: When the cdev is already mounted
cdev_mount_default() will return -EBUSY instead. To let blspec
work when a cdev is already mounted check for the actual mount path
before trying to mount it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/blspec.c b/common/blspec.c
index c05d8a8297..ad80d7a8cd 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -729,7 +729,9 @@ static int blspec_scan_cdev(struct bootentries *bootentries, struct cdev *cdev)
 			found += ret;
 	}
 
-	rootpath = cdev_mount_default(cdev, NULL);
+	rootpath = cdev_get_mount_path(cdev);
+	if (!rootpath)
+		rootpath = cdev_mount_default(cdev, NULL);
 	if (!IS_ERR(rootpath)) {
 		ret = blspec_scan_directory(bootentries, rootpath);
 		if (ret > 0)
-- 
2.29.2


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

