Delivery-date: Mon, 14 Apr 2025 13:46:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4IGb-000cuC-2b
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 13:46:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4IGb-0005AV-2y
	for lore@pengutronix.de; Mon, 14 Apr 2025 13:46:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bmJRcFjsPBSk6iA0BDg852F06td686FMFl2oQYCaJRM=; b=jGnAvEtUEQMYsbyx9Pl7wPV7W1
	99QfKv1Ikfjy73EPC44L+AfRkSHjo7v00H0lTJFd/x7/F5oUs7c+cBHLttXaNksxhYxobtQbQyhu2
	inExMhAdOE1oHupN4aYqTMRThkc4mCYg/XAgafyL1wFstdZ5DaMjth1uMAVwkMMf269k//eS0Tbek
	kVhrxZV0cVmAFQJ/3c7YtdFblzInDYbn4vTyS4lNpnwzP08fuOpzDtFG8/u1wNGD/It6Jl0BMdAP1
	EuqzJsM1k/ksx9rg2tkI1KzO9kPQ/7tA3fY/NKR1jbQOCdLqMzIHQcd8kAlXbOXSCk8pQvPRY71Df
	S6VAwc6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4IG2-00000001ov0-1g3S;
	Mon, 14 Apr 2025 11:45:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4I8d-00000001nEc-2XGN
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 11:38:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u4I8c-0002Kq-4C; Mon, 14 Apr 2025 13:38:06 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4I8b-000F6j-32;
	Mon, 14 Apr 2025 13:38:05 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4I8b-000HDm-2h;
	Mon, 14 Apr 2025 13:38:05 +0200
Date: Mon, 14 Apr 2025 13:38:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z_zznb872ht16gEQ@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
 <20250414063152.2736649-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250414063152.2736649-4-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_043807_648120_10755B2E 
X-CRM114-Status: GOOD (  27.64  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 03/18] partition: efi: respect DPS_TYPE_FLAG_NO_AUTO flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Apr 14, 2025 at 08:31:37AM +0200, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <a.fatoum@barebox.org>
> 
> The DPS_TYPE_FLAG_NO_AUTO flag indicates that a partition should not be
> automatically discovered by type UUID if not directly referenced.
> 
> We do auto discovery for barebox env and sate using

In case you have to resend for other reasons:

s/sate/state/

> cdev_find_child_by_gpt_typeuuid, so teach it to respect that flag.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/blspec.c    |  4 ++--
>  common/bootscan.c  | 11 +++++++++--
>  fs/devfs-core.c    | 11 +++++++++--
>  include/bootscan.h |  5 ++++-
>  4 files changed, 24 insertions(+), 7 deletions(-)
> 
> diff --git a/common/blspec.c b/common/blspec.c
> index 5223ac30f8a5..59fa40c9ff50 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -511,7 +511,7 @@ static int blspec_scan_disk(struct bootscanner *scanner,
>  		 * should be used as $BOOT
>  		 */
>  		if (cdev_is_mbr_partitioned(cdev) && partcdev->dos_partition_type == 0xea) {
> -			ret = boot_scan_cdev(scanner, bootentries, partcdev);
> +			ret = boot_scan_cdev(scanner, bootentries, partcdev, true);
>  			if (ret == 0)
>  				ret = -ENOENT;
>  
> @@ -560,7 +560,7 @@ static int blspec_scan_device(struct bootscanner *scanner,
>  	 * by the bootblspec spec).
>  	 */
>  	list_for_each_entry(cdev, &dev->cdevs, devices_list) {
> -		ret = boot_scan_cdev(scanner, bootentries, cdev);
> +		ret = boot_scan_cdev(scanner, bootentries, cdev, true);
>  		if (ret > 0)
>  			found += ret;
>  	}
> diff --git a/common/bootscan.c b/common/bootscan.c
> index 222498c609a4..813d6d242a08 100644
> --- a/common/bootscan.c
> +++ b/common/bootscan.c
> @@ -8,6 +8,7 @@
>  #include <linux/stat.h>
>  #include <linux/err.h>
>  #include <mtd/ubi-user.h>
> +#include <uapi/spec/dps.h>
>  
>  #include <bootscan.h>
>  
> @@ -80,7 +81,8 @@ static int boot_scan_ubi(struct bootscanner *scanner,
>   * error occurred.
>   */
>  int boot_scan_cdev(struct bootscanner *scanner,
> -		   struct bootentries *bootentries, struct cdev *cdev)
> +		   struct bootentries *bootentries, struct cdev *cdev,
> +		   bool autodiscover)
>  {
>  	int ret, found = 0;
>  	void *buf = xzalloc(512);
> @@ -89,6 +91,11 @@ int boot_scan_cdev(struct bootscanner *scanner,
>  
>  	pr_debug("%s(%s): %s\n", __func__, scanner->name, cdev->name);
>  
> +	if (autodiscover && (cdev->typeflags & DPS_TYPE_FLAG_NO_AUTO)) {
> +		pr_debug("auto discovery skipped\n");
> +		return 0;
> +	}
> +
>  	ret = cdev_read(cdev, buf, 512, 0, 0);
>  	if (ret < 0) {
>  		free(buf);
> @@ -144,7 +151,7 @@ static int boot_scan_devicename(struct bootscanner *scanner,
>  
>  	cdev = cdev_by_name(devname);
>  	if (cdev) {
> -		int ret = boot_scan_cdev(scanner, bootentries, cdev);
> +		int ret = boot_scan_cdev(scanner, bootentries, cdev, false);
>  		if (ret > 0)
>  			return ret;
>  	}
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index f84b34ea53ab..c69c38d6506e 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -27,6 +27,7 @@
>  #include <unistd.h>
>  #include <range.h>
>  #include <fs.h>
> +#include <spec/dps.h>
>  
>  LIST_HEAD(cdev_list);
>  
> @@ -135,8 +136,14 @@ cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, const guid_t *typeuuid)
>  		return ERR_PTR(-EINVAL);
>  
>  	for_each_cdev_partition(partcdev, cdev) {
> -		if (guid_equal(&partcdev->typeuuid, typeuuid))
> -			return partcdev;
> +		if (!guid_equal(&partcdev->typeuuid, typeuuid))
> +			continue;
> +		if (cdev->typeflags & DPS_TYPE_FLAG_NO_AUTO) {
> +			dev_dbg(cdev->dev, "auto discovery skipped\n");
> +			continue;
> +		}
> +
> +		return partcdev;
>  	}
>  
>  	return ERR_PTR(-ENOENT);
> diff --git a/include/bootscan.h b/include/bootscan.h
> index 99094dc09320..ffc67c4a90ab 100644
> --- a/include/bootscan.h
> +++ b/include/bootscan.h
> @@ -2,6 +2,8 @@
>  #ifndef __BOOTSCAN_H
>  #define __BOOTSCAN_H
>  
> +#include <linux/types.h>
> +
>  struct bootentries;
>  struct device;
>  struct cdev;
> @@ -25,7 +27,8 @@ struct bootscanner {
>  };
>  
>  int boot_scan_cdev(struct bootscanner *scanner,
> -		   struct bootentries *bootentries, struct cdev *cdev);
> +		   struct bootentries *bootentries, struct cdev *cdev,
> +		   bool autodiscover);
>  
>  int bootentry_scan_generate(struct bootscanner *scanner,
>  			    struct bootentries *bootentries,
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


