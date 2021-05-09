Delivery-date: Sun, 09 May 2021 15:34:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lfjZN-0002r5-DP
	for lore@lore.pengutronix.de; Sun, 09 May 2021 15:34:05 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lfjZM-0007aG-DL
	for lore@pengutronix.de; Sun, 09 May 2021 15:34:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y6r+ZddPgCm+Mn1EYOzwDRAYa0Gj9w63Bb5wCxUcL5M=; b=Zaup2Na8lMRsw1QftIihc9SU7
	gZ+AvJnIK6EkYuRsp73nQlJZ6lMAfum0CEHj50ysUxUZucbqVb8j/eXeuUD2MjarpykLWFudXHzjp
	d0ZdeO1B9HAl2nn6i/9tF4LO+SE22M5EdVDH6brbwAGcHYb4crCw2544m0KqmB/LgFEGlvK9L4hp2
	LCgLf3GgMWD9VyDXUAThOTfpczxg6HJXeM4jTYsm0k09BoB0Q0jerqgRHSZbpDm5zjWDjW/9x2bky
	12Ik6izEWYSIt07oBZHFDuP6o5rSsjXS82CAmKKat3c7U/7Q3dK5smMFdMt5q9959mnLTad0XIs/j
	e+zhj7lQg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfjY5-00Bf7p-BZ; Sun, 09 May 2021 13:32:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfjY0-00Bf7f-7o
 for barebox@desiato.infradead.org; Sun, 09 May 2021 13:32:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Xa8Dz7ycvy34UZezCt3zWJMtrRyGLhWlfQEoWKimmtk=; b=bHvCsY18At9sOUvQgIKIck4JuA
 reZXNebItEOIKSJ4Zky3vonEWqUXI6/fNuKs2Xs/w+UK/5YQEzpc98SDpOXcTqc4fCwDn+lRx+B6y
 Nr95l7ws8kTo9OVuQo54U0Y7dIQLW0NG4gmKDTSRUX1cKvBUXHnBLHx1Y1/smIPk8vS0WIlhHWx1L
 1+W9kWv7zD5FO/FoCQLgbPDKAx577++K4gRz/3VEQNC7jsc9vRvDGlgzcXSCYPthIrhWddkvsrKQn
 v3jaBlWJGHoO1VbjNumpqTOeaZ58n66pMMmAWUJfD1NvUV3QQ0SDvN/YL7bzGkFFmYCLfoujjNHkg
 JhnL3dMA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfjXx-007z7i-0T
 for barebox@lists.infradead.org; Sun, 09 May 2021 13:32:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1lfjXr-0007Wf-BE; Sun, 09 May 2021 15:32:31 +0200
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1lfjXr-00070U-1g; Sun, 09 May 2021 15:32:31 +0200
Date: Sun, 9 May 2021 15:32:31 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210509133230.lcqn7bgitmr5axcg@pengutronix.de>
References: <20210506162616.11593-1-m.felsch@pengutronix.de>
 <20210506162616.11593-3-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210506162616.11593-3-m.felsch@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210509_063237_084983_F5132028 
X-CRM114-Status: GOOD (  40.40  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/3] fs: add linux_rootarg 'root=mmcblkXpN' support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 06, 2021 at 06:26:16PM +0200, Marco Felsch wrote:
> Since commit fa2d0aa96941 ("mmc: core: Allow setting slot index via
> device tree alias") the linux kernel supports stable mmc device names.
> Barebox has stable names since years so now we can connect both which
> allows us to pass 'root=mmcblkXpN' as argument for the cmdline. Note: it
> is crucial that the kernel device tree and the barebox device tree uses
> the same mmc aliases.
> 
> This patch adds the support to store the above cmdline as linux_rootarg
> if enabled. The partuuid is now used as fallback since it is not as
> unique as the mmcblkXpN scheme. It is added as build option since the
> system integrator needs to check if the used kernel contains the above
> commit.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> v2:
> - improved Kconfig deps
> - improved Kconfig help message
> - minimal get_linux_mmcblkdev() simplifications
> 
>  common/Kconfig | 21 +++++++++++++++++++++
>  fs/fs.c        | 42 ++++++++++++++++++++++++++++++++++++++----
>  2 files changed, 59 insertions(+), 4 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 6b3c1701be..5815ea06f0 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -700,6 +700,27 @@ config FLEXIBLE_BOOTARGS
>  	  to replace parts of the bootargs string without reconstructing it
>  	  completely.
>  
> +config MMCBLKDEV_ROOTARG
> +	bool
> +	prompt "Support 'root=mmcblkXpN' cmdline appending"
> +	depends on FLEXIBLE_BOOTARGS
> +	depends on MCI
> +	depends on OFTREE
> +	help
> +	  Enable this option to append 'root=mmcblkXpN' to the cmdline instead
> +	  of 'root=PARTUUID=XYZ'. Don't enale this option if your used linux
> +	  kernel don't contain commit [1]. The first linux kernel release

Nit: s/enale/enable/; s/don't/doesn't/ (can probably fixed during git-am).

 - Roland

> +	  containing that commit is v5.10-rc1.
> +
> +	  The appending only happen if barebox 'linux.bootargs.bootm.appendroot'
> +	  variable is set or the used blspec entry contains 'linux-appendroot'.
> +
> +	  Note: It is crucial that the kernel device tree and the barebox device
> +	  tree uses the same mmc aliases.
> +
> +	  [1] fa2d0aa96941 ("mmc: core: Allow setting slot index via device tree
> +	      alias")
> +
>  config BAREBOX_UPDATE
>  	bool "In-system barebox update infrastructure"
>  
> diff --git a/fs/fs.c b/fs/fs.c
> index 881dc2fca0..91feee03e6 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -2831,6 +2831,33 @@ out:
>  }
>  EXPORT_SYMBOL(chdir);
>  
> +static char *get_linux_mmcblkdev(struct fs_device_d *fsdev)
> +{
> +	struct cdev *cdevm, *cdev;
> +	int id, partnum;
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
> +		    !strcmp(cdev->partname, fsdev->cdev->partname))
> +			return basprintf("root=/dev/mmcblk%dp%d", id, partnum);
> +		partnum++;
> +	}
> +
> +	return NULL;
> +}
> +
>  /*
>   * Mount a device to a directory.
>   * We do this by registering a new device on which the filesystem
> @@ -2919,11 +2946,18 @@ int mount(const char *device, const char *fsname, const char *pathname,
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
> +		    cdev_is_mci_main_part_dev(fsdev->cdev->master))
> +			str = get_linux_mmcblkdev(fsdev);
> +
> +		if (!str && fsdev->cdev->partuuid[0] != 0)
> +			str = basprintf("root=PARTUUID=%s", fsdev->cdev->partuuid);
>  
> -		fsdev_set_linux_rootarg(fsdev, str);
> +		if (str)
> +			fsdev_set_linux_rootarg(fsdev, str);
>  	}
>  
>  	path_put(&path);
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
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

