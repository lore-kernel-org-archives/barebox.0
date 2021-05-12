Delivery-date: Wed, 12 May 2021 07:26:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghOA-000587-2s
	for lore@lore.pengutronix.de; Wed, 12 May 2021 07:26:30 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghO9-0004Ed-AS
	for lore@pengutronix.de; Wed, 12 May 2021 07:26:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PIevt0lntjvRKh7GvQDow7cMBJf/fNih+sBNPwbrdHo=; b=QrWltf8b02lhX0b1ouLD1F9XJ
	KNvWDtXqCNBQrY6ICntOLI1INJJ4Iq0PePeB95WCSxE+bAHWHmFfQZ9rVvjg2JL5Ksp7VbfGlKiVY
	VPcEyztm5wIO5/fSAxyNsZEAn68BwLRqFZsGOQ4UWf2JNnL0skm8XeCtVkSiAvKg12L0CgVfVsz7U
	tTUiPBB7sGXshTRObKlqfO5SkVWcVmaot1seXEyQ+JlZHHAHzilLH9MMHJCpBvTR4WE5gVxuxXjyK
	hbeCje2FgKZeLnm2Fh/v8QCP0yhPPLSsAR7r7FmHTtcO6MqkfBe/vm3mqzyRn1TY7L2OApCIYGUHs
	AIOZvkIYg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lghNH-0023sF-Pp; Wed, 12 May 2021 05:25:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghNC-0023s0-TG
 for barebox@desiato.infradead.org; Wed, 12 May 2021 05:25:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=eaVBucQodIM3wwpuQ3Agy5NY3ST/Mw/mkSOyAahmm10=; b=ofQnIUjWPByEll77Y3gLDPpaQU
 OSLK9hOYfGgT63Sy/oSplOVymNVNYhN/R7TMcxQTjCjparxY6mhVVx9eGBIfKlSIJYrFp4BKv7jj1
 s/W7msKegxQ8uDqugMm7tkWdvFtx/dX6NkGJHKv+mJ6vqlmZ0MawTjob3aBPiNn3y14ha/7xRyu5t
 lmZedKYDeZ+LBipCmAF4xGYOU5LUa4l9+rkxw6RiEtAOkeElx8sxGJTZEF43w7GT41IB5q1d/HaM+
 2JwbkuJRiMxY4b7v/Zu4WJKhCoxDPBMPcD+pfUKgnKOeAMsdQBtDbN6J6hKU+0moJmJfi7wRCdi9f
 6v3MFoBA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghNA-00A7Ki-4D
 for barebox@lists.infradead.org; Wed, 12 May 2021 05:25:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lghN8-000402-IH; Wed, 12 May 2021 07:25:26 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lghN8-00030I-9O; Wed, 12 May 2021 07:25:26 +0200
Date: Wed, 12 May 2021 07:25:26 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210512052526.GJ19819@pengutronix.de>
References: <20210510102523.7147-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210510102523.7147-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:25:17 up 83 days,  8:49, 78 users,  load average: 0.13, 0.15, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_222528_188667_1B7DD42F 
X-CRM114-Status: GOOD (  26.38  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/3] driver: add flag to check if cdev is an mci device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 10, 2021 at 12:25:21PM +0200, Marco Felsch wrote:
> We need this during mount() to check if the cdev is an mmc/mci main|user
> hardware partition device. Later on we add the feature to pass
> "root=/dev/mmcblkXpN" as kernel command line.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---

Applied, thanks

Sascha

> v3:
> - no changes
> 
> v2:
> - dropped the !!
> - renamed the flag due to v1 comments
> - renamed the function to
> 
>  include/driver.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/include/driver.h b/include/driver.h
> index 0d43b36148..d84fe35d50 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -496,6 +496,7 @@ int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
>  #define DEVFS_PARTITION_READONLY	(1U << 1)
>  #define DEVFS_IS_CHARACTER_DEV		(1U << 3)
>  #define DEVFS_PARTITION_FROM_TABLE	(1U << 4)
> +#define DEVFS_IS_MCI_MAIN_PART_DEV	(1U << 5)
>  
>  struct cdev *devfs_add_partition(const char *devname, loff_t offset,
>  		loff_t size, unsigned int flags, const char *name);
> @@ -509,6 +510,11 @@ static inline void cdev_create_default_automount(struct cdev *cdev)
>  }
>  #endif
>  
> +static inline bool cdev_is_mci_main_part_dev(struct cdev *cdev)
> +{
> +	return cdev->flags & DEVFS_IS_MCI_MAIN_PART_DEV;
> +}
> +
>  #define DEVFS_PARTITION_APPEND		0
>  
>  /**
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

