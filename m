Delivery-date: Thu, 06 May 2021 14:20:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leczW-00024C-Dp
	for lore@lore.pengutronix.de; Thu, 06 May 2021 14:20:30 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leczV-0004o4-Fz
	for lore@pengutronix.de; Thu, 06 May 2021 14:20:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pkUALJ209fY2ef9cmf21ErkJ6oR+QfkTRc6FekaVmxE=; b=osF2yPFsFbPS0fAYVkbd2grMx
	Wlp+NTLID69WFYUGxqtuk4OKftMgMRQlpkqiGPreMBq0vp/+IoGNLStTUZeER3XncGXBCWWSY09Im
	/MGoQoiBxjv/sobJ1hxc/w/LBEnsGeoY1lBUANOz20WAHeXQY/OTJ1QTjb2fJUxDLUN19vycVPN3q
	RGg0EzEqfIwb5z/LNhJa2OjCvpHt34dw8YnwOoiQH10xMR6yOoYwIA7YsEArm3hboH/Y1WcgetWXN
	yo+HvXk4BOcQYSHvE4gga3vCOGKHIg/jcR9iXd42rjurvJXfXFTUUT9I6Apgb7tAbY16KZMhBDPXO
	dJ0SrEPZQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lecyV-004DWu-M1; Thu, 06 May 2021 12:19:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lecyR-004DWk-3x
 for barebox@desiato.infradead.org; Thu, 06 May 2021 12:19:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=e2Uv9CWaFRnApcreA2U1x0ZnOPEhZxS/Xb25UtLasPs=; b=FTUgAjwIAXK25JARnaRXN0BaPe
 pqbrv5anyUzEC8E6gGSl4aPZfpwbA8Apvi4Ehzz0Kwn8V19jww+MxthWSoRSXva+7wFuRH/hNG7f3
 KlTC97qb+42QXjCp7Zgd0au6bhiyU+WtkCZEyziZ9vw0HFMA/DspzY3brknQZbtSin8SwP8iiCNuv
 i9z0AJEfljdM4wV/025Xfy+rM2eXdBRL6cDXiKEM+/jNsaUjM0Xk+7MKjSFeYlcvYQ2NXzUuuASSi
 pgS2ZlS+1IzZB1KM1sr8QQcBVPE5d4LOG7NzJ2ydcpAmsIDcD/VktCKRHp75vKFJCJUsnN3hRbs9L
 dpC4ydHg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lecyO-0061Ai-0q
 for barebox@lists.infradead.org; Thu, 06 May 2021 12:19:21 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lecyM-0004ho-ED; Thu, 06 May 2021 14:19:18 +0200
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20210506112219.27114-1-m.felsch@pengutronix.de>
 <20210506112219.27114-3-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <a948f7d9-8ec3-8467-88af-08138319f89d@pengutronix.de>
Date: Thu, 6 May 2021 14:19:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210506112219.27114-3-m.felsch@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_051920_103459_9962DACF 
X-CRM114-Status: GOOD (  42.85  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] fs: add linux_rootarg 'root=mmcblkXpN' support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Marco,

On 06.05.21 13:22, Marco Felsch wrote:
> Since commit fa2d0aa96941 ("mmc: core: Allow setting slot index via
> device tree alias") the kernel supports stable mmc device names. Since
> the barebox mmc device names matches the one from the kernel we can pass
> the 'root=mmcblkXpN' argument on commandline to refer to the correct
> boot medium.
> 
> This patch adds the support to store the above commandline as
> linux_rootarg if enabled. Use the partuuid as fallback since it is not
> as unique as the mmcblkXpN scheme. Add a own build option since the
> system integrator needs to check if the used kernel contains the above
> commit.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> Hi all,
> 
> I know that:
> 8<-----------------
> +		if (!str && fsdev->cdev->partuuid[0] != 0)
> +			str = basprintf("root=PARTUUID=%s", fsdev->cdev->partuuid);
> 8<-----------------
> is longer than 80char but for the sake of readability I kept that
> oneliner. Should we update checkpatch accordingly to match the new linux
> rule?

Yes, I already adhere to the new Linux convention in my barebox code.

> 
> Regards,
>   Marco
> 
> 
>  common/Kconfig | 15 +++++++++++++++
>  fs/fs.c        | 48 ++++++++++++++++++++++++++++++++++++++++++++----
>  2 files changed, 59 insertions(+), 4 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 6b3c1701be..a09a1d9456 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -700,6 +700,21 @@ config FLEXIBLE_BOOTARGS
>  	  to replace parts of the bootargs string without reconstructing it
>  	  completely.
>  
> +config MMCBLKDEV_ROOTARG
> +	bool
> +	prompt "Support 'root=mmcblkXpN' cmdline appending"
> +	help
> +	  Enable this option to append 'root=mmcblkXpN' to the kernel cmdline
> +	  instead of 'root=PARTUUID=XYZ'. Don't enale this option if your used
> +	  kernel don't contain commit [1].

Could you add the first mainline Linux release that includes the commit?

> +
> +	  The appending only happen if barebox 'linux.bootargs.bootm.appendroot'
> +	  variable is set or the used blspec entry contains 'linux-appendroot'.
> +
> +	  [1] fa2d0aa96941 ("mmc: core: Allow setting slot index via device tree
> +	      alias")
> +
> +
>  config BAREBOX_UPDATE
>  	bool "In-system barebox update infrastructure"
>  
> diff --git a/fs/fs.c b/fs/fs.c
> index 881dc2fca0..8ee1e7febe 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -2831,6 +2831,39 @@ out:
>  }
>  EXPORT_SYMBOL(chdir);
>  
> +static char *get_linux_mmcblkdev(struct fs_device_d *fsdev)
> +{
> +	struct cdev *cdevm, *cdev;
> +	int id, partnum;
> +	bool found = false;
> +
> +	cdevm = fsdev->cdev->master;
> +	id = of_alias_get_id(cdevm->device_node, "mmc");
> +	if (id < 0)
> +		return NULL;
> +
> +	partnum = 1; /* linux partitions are 1 based */
> +	list_for_each_entry(cdev, &cdevm->partitions, partition_entry) {
> +
> +		/*
> +		 * Partname is not guaranteed but this partition cdev is listed
> +		 * in the partitions list so we need to count it instead of
> +		 * skipping it.
> +		 */
> +		if (cdev->partname &&
> +		    !strcmp(cdev->partname, fsdev->cdev->partname)) {
> +			found = true;

You can return the basprintf() here directly

> +			break;
> +		}
> +		partnum++;
> +	}
> +
> +	if (!found)
> +		return NULL;
> +
> +	return basprintf("root=/dev/mmcblk%dp%d", id, partnum);

Then you can return NULL here and drop found.

> +}
> +
>  /*
>   * Mount a device to a directory.
>   * We do this by registering a new device on which the filesystem
> @@ -2919,11 +2952,18 @@ int mount(const char *device, const char *fsname, const char *pathname,
>  
>  	fsdev->vfsmount.mnt_root = fsdev->sb.s_root;
>  
> -	if (!fsdev->linux_rootarg && fsdev->cdev && fsdev->cdev->partuuid[0] != 0) {
> -		char *str = basprintf("root=PARTUUID=%s",
> -					fsdev->cdev->partuuid);
> +	if (!fsdev->linux_rootarg && fsdev->cdev) {
> +		char *str = NULL;
> +
> +		if (IS_ENABLED(CONFIG_MMCBLKDEV_ROOTARG) &&
> +		    cdev_is_mci_dev(fsdev->cdev->master))
> +			str = get_linux_mmcblkdev(fsdev);
> +
> +		if (!str && fsdev->cdev->partuuid[0] != 0)
> +			str = basprintf("root=PARTUUID=%s", fsdev->cdev->partuuid);
>  
> -		fsdev_set_linux_rootarg(fsdev, str);
> +		if (str)
> +			fsdev_set_linux_rootarg(fsdev, str);

This assumes that barebox aliases align with those of the kernel. I think this
is at least worth a mention in the Kconfig text.

For an alternative, see f382be77f8c0 ("boot: introduce option to pass
barebox-enabled watchdog to systemd"), which parses the aliases out of the
kernel device tree without depending on the barebox ones.

Cheers,
Ahmad


>  	}
>  
>  	path_put(&path);
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

