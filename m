Delivery-date: Mon, 24 Nov 2025 13:01:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNVFr-004NWs-0N
	for lore@lore.pengutronix.de;
	Mon, 24 Nov 2025 13:01:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNVFq-0005Ng-4b
	for lore@pengutronix.de; Mon, 24 Nov 2025 13:01:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gsq2disIAwsY0b9FcnLlwva3RZR7Fqnoc/TZmiuQ1Ns=; b=2h13rRkY8tX0SCeYlo6w9W6eAP
	8nGbcJKztAESiFf85i1ISho3KarvOGEyN2xRRoGdmeodp0OOgenO+p2CyNMhDR4uYuUBFY0GAFB3Y
	EdrqXRNJR+KeNbnzhuKTR3yKFaYWdWKlSLXz42UzNrCAQi6YCUCpEPaStuuLWDqWq98dtYvIythKR
	iR4VLs65O4KLJlW9gh8rK++KD+yt0fQg6TrisdfSJjX5s9KlbtcidUGUQpYTEm0NaaG7C98BZk47P
	SiMjEbWMfdTbiPc83BPu/N0eq+VomrWZmR5nv7rmFZ3pUCd/B2NqzGPK8IKb+uhKwKPozrGIxe12Y
	D4F0blfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNVF6-0000000Bb10-2hE1;
	Mon, 24 Nov 2025 12:00:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNVF2-0000000Bb0M-3PnG
	for barebox@lists.infradead.org;
	Mon, 24 Nov 2025 12:00:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vNVEz-0005Cy-QB; Mon, 24 Nov 2025 13:00:21 +0100
Message-ID: <29c84edc-9619-4524-a698-1edd3a60ac89@pengutronix.de>
Date: Mon, 24 Nov 2025 13:00:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
References: <20251124101631.3467908-1-f.pflug@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251124101631.3467908-1-f.pflug@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_040025_016961_F9A44835 
X-CRM114-Status: GOOD (  38.16  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: setting the root= command line parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Fabian,

On 11/24/25 11:16 AM, Fabian Pflug wrote:
> In verified boot settings, it might not be wanted to have a root=
> command line parameter for the kernel, because if the initramfs is not
> configured, or barebox boots the kernel directly due to
> misconfiguration, the device might boot correctly, but without verified
> boot, because the kernel will parse root=
> 
> Allowing to change the parameter name will help circumvent such errors,
> as there now needs to be multiple misconfigurations for the verified
> boot to go wrong and the initramfs can use a the different name from the
> commandline to get the rootfs.

Thanks for your patch!

This is a useful thing to have, but I think deciding replacement of
root= across all functionality at compile-time is too invasive:

Imagine you use the same barebox both for development and in release
mode (or you support runtime unlocking with a token).
When booting securely, you want to use verity_root= for example, but
when you do boot /mnt/nfs, you'll want barebox to fix up root= as before.

I thus think that this should be a $global.bootm.root_arg evaluated at
runtime instead.

By adding it to bootm_data_restore_defaults(), its value will then be
restored after the boot script has done executing.

What do you think?

Cheers,
Ahmad

> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  common/Kconfig         | 13 +++++++++++++
>  common/block.c         |  3 +--
>  common/bootm.c         |  8 ++++----
>  drivers/mci/mci-core.c |  2 +-
>  fs/9p/vfs_super.c      |  2 +-
>  fs/nfs.c               |  2 +-
>  fs/squashfs/squashfs.c |  2 +-
>  fs/ubifs/ubifs.c       |  2 +-
>  8 files changed, 23 insertions(+), 11 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index d923d4c4b6..62797a9e69 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1252,6 +1252,19 @@ config SERIAL_NUMBER_FIXUP_SYSTEMD_HOSTNAME
>  	  This option without effect if global.bootm.provide_hostname
>  	  is unset.
>  
> +config ROOT_COMMANDLINE_PARAMETER
> +	string "parameter name for root partition"
> +	default "root"
> +	help
> +	  When setting the root partition on the commandline string to the os, use
> +	  this name as an indicator of the root partition.
> +
> +	  Changing this could be useful in verified boot contexts to not give the
> +	  kernel the chance to boot a non-secure image, but still use the power of
> +	  barebox to get the right disk for the rootfs.
> +
> +	  If unsure, leave as default (root)
> +
>  config SYSTEMD_OF_WATCHDOG
>  	bool "inform devicetree-enabled kernel of used watchdog"
>  	depends on WATCHDOG && OFTREE && FLEXIBLE_BOOTARGS
> diff --git a/common/block.c b/common/block.c
> index ca2ed37dbd..bb8b01c0a0 100644
> --- a/common/block.c
> +++ b/common/block.c
> @@ -601,11 +601,10 @@ char *cdev_get_linux_rootarg(const struct cdev *partcdev)
>  	if (blk->ops->get_rootarg)
>  		rootarg = blk->ops->get_rootarg(blk, partcdev);
>  	if (!rootarg && partcdev->partuuid[0] != 0)
> -		rootarg = basprintf("root=PARTUUID=%s", partcdev->partuuid);
> +		rootarg = basprintf(CONFIG_ROOT_COMMANDLINE_PARAMETER "=PARTUUID=%s", partcdev->partuuid);
>  
>  	if (IS_ENABLED(CONFIG_ROOTWAIT_BOOTARG) && blk->rootwait)
>  		rootarg = linux_bootargs_append_rootwait(rootarg);
>  
>  	return rootarg;
>  }
> -
> diff --git a/common/bootm.c b/common/bootm.c
> index 17792b2a1d..4549bfeb8b 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -852,10 +852,10 @@ int bootm_boot(struct bootm_data *bootm_data)
>  				rootarg = ERR_PTR(-EINVAL);
>  
>  				if (!root_cdev)
> -					pr_err("no cdev found for %s, cannot set root= option\n",
> +					pr_err("no cdev found for %s, cannot set " CONFIG_ROOT_COMMANDLINE_PARAMETER "= option\n",
>  						root_dev_name);
>  				else if (!root_cdev->partuuid[0])
> -					pr_err("%s doesn't have a PARTUUID, cannot set root= option\n",
> +					pr_err("%s doesn't have a PARTUUID, cannot set " CONFIG_ROOT_COMMANDLINE_PARAMETER "= option\n",
>  						root_dev_name);
>  			}
>  
> @@ -866,7 +866,7 @@ int bootm_boot(struct bootm_data *bootm_data)
>  		}
>  
>  		if (IS_ERR(rootarg)) {
> -			pr_err("Failed to append kernel cmdline parameter 'root='\n");
> +			pr_err("Failed to append kernel cmdline parameter '" CONFIG_ROOT_COMMANDLINE_PARAMETER "='\n");
>  		} else {
>  			pr_info("Adding \"%s\" to Kernel commandline\n", rootarg);
>  			globalvar_add_simple("linux.bootargs.bootm.appendroot",
> @@ -1165,7 +1165,7 @@ BAREBOX_MAGICVAR(global.bootm.dryrun, "bootm default dryrun level");
>  BAREBOX_MAGICVAR(global.bootm.verify, "bootm default verify level");
>  BAREBOX_MAGICVAR(global.bootm.verbose, "bootm default verbosity level (0=quiet)");
>  BAREBOX_MAGICVAR(global.bootm.earlycon, "Add earlycon option to Kernel for early log output");
> -BAREBOX_MAGICVAR(global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from (default, device can be overridden via global.bootm.root_dev)");
> +BAREBOX_MAGICVAR(global.bootm.appendroot, "Add " CONFIG_ROOT_COMMANDLINE_PARAMETER "= option to Kernel to mount rootfs from the device the Kernel comes from (default, device can be overridden via global.bootm.root_dev)");
>  BAREBOX_MAGICVAR(global.bootm.root_dev, "bootm default root device (overrides default device in global.bootm.appendroot)");
>  BAREBOX_MAGICVAR(global.bootm.provide_machine_id, "If true, append systemd.machine_id=$global.machine_id to Kernel command line");
>  BAREBOX_MAGICVAR(global.bootm.provide_hostname, "If true, append systemd.hostname=$global.hostname to Kernel command line");
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 57825bc849..79cebe19f3 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -2691,7 +2691,7 @@ static char *mci_get_linux_mmcblkdev(struct block_device *blk,
>  		 * skipping it.
>  		 */
>  		if (cdev_partname_equal(partcdev, cdev))
> -			return basprintf("root=/dev/mmcblk%dp%d", id, partnum);
> +			return basprintf(CONFIG_ROOT_COMMANDLINE_PARAMETER "=/dev/mmcblk%dp%d", id, partnum);
>  		if (cdev->flags & DEVFS_PARTITION_FROM_TABLE)
>  			partnum++;
>  	}
> diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
> index 6a451d9ef5..39a8529a4e 100644
> --- a/fs/9p/vfs_super.c
> +++ b/fs/9p/vfs_super.c
> @@ -70,7 +70,7 @@ static void v9fs_set_rootarg(struct v9fs_session_info *v9ses,
>  	trans = v9ses->clnt->trans_mod->name;
>  	path = v9ses->aname;
>  
> -	str = basprintf("root=%s rootfstype=9p rootflags=trans=%s,msize=%d,"
> +	str = basprintf(CONFIG_ROOT_COMMANDLINE_PARAMETER "=%s rootfstype=9p rootflags=trans=%s,msize=%d,"
>  			"cache=loose,uname=%s,dfltuid=0,dfltgid=0,aname=%s",
>  			tag, trans, v9ses->clnt->msize, tag, path);
>  
> diff --git a/fs/nfs.c b/fs/nfs.c
> index 5c2476cd88..9db23c5d18 100644
> --- a/fs/nfs.c
> +++ b/fs/nfs.c
> @@ -1558,7 +1558,7 @@ static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device *fsdev)
>  	char *str, *tmp;
>  	const char *bootargs;
>  
> -	str = basprintf("root=/dev/nfs nfsroot=%pI4:%s%s%s", &npriv->server, npriv->path,
> +	str = basprintf(CONFIG_ROOT_COMMANDLINE_PARAMETER "=/dev/nfs nfsroot=%pI4:%s%s%s", &npriv->server, npriv->path,
>  			  rootnfsopts[0] ? "," : "", rootnfsopts);
>  
>  	/* forward specific mount options on demand */
> diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
> index e30372627a..8267e3cba0 100644
> --- a/fs/squashfs/squashfs.c
> +++ b/fs/squashfs/squashfs.c
> @@ -60,7 +60,7 @@ static void squashfs_set_rootarg(struct fs_device *fsdev)
>  	ubi_get_device_info(vi.ubi_num, &di);
>  	mtd = di.mtd;
>  
> -	str = basprintf("root=/dev/ubiblock%d_%d ubi.mtd=%s ubi.block=%d,%d rootfstype=squashfs",
> +	str = basprintf(CONFIG_ROOT_COMMANDLINE_PARAMETER "=/dev/ubiblock%d_%d ubi.mtd=%s ubi.block=%d,%d rootfstype=squashfs",
>  			vi.ubi_num, vi.vol_id, mtd->cdev.partname, vi.ubi_num, vi.vol_id);
>  
>  	fsdev_set_linux_rootarg(fsdev, str);
> diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
> index 37986acbb2..34151a0c9f 100644
> --- a/fs/ubifs/ubifs.c
> +++ b/fs/ubifs/ubifs.c
> @@ -442,7 +442,7 @@ static void ubifs_set_rootarg(struct ubifs_priv *priv,
>  
>  	mtd = di.mtd;
>  
> -	str = basprintf("root=ubi0:%s ubi.mtd=%s rootfstype=ubifs",
> +	str = basprintf(CONFIG_ROOT_COMMANDLINE_PARAMETER "=ubi0:%s ubi.mtd=%s rootfstype=ubifs",
>  			  vi.name, mtd->cdev.partname);
>  
>  	fsdev_set_linux_rootarg(fsdev, str);

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



