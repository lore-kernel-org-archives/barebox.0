Delivery-date: Fri, 09 Jun 2023 09:56:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7Wz3-00GuWH-Oa
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 09:56:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7Wz1-0004Kt-94
	for lore@pengutronix.de; Fri, 09 Jun 2023 09:56:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6FLhLuu/nXxM+mKT0doelEi3ynyH5qDozNPcmXg/SIQ=; b=tYFsUsLw778m9snisvLRHwgJrB
	kEG+F89nvL3aRP0UB4sq9JvmZZcCnu0s381vlubRXB8jw8TjflUoJa/q4wsIRGEBZ7YLyzaJkWNo5
	ee6cwBK3b1FcB27Z0R1RtBUlKo8IesYKAF1/3rfYOiXVEjU+OIREGsiew412wdzOO/hTcMj7W9iJk
	/Y6JMhu0dRbh4AVRpBNdbMeJDrQGa1R+w9yiE+YEckOk388VwaMp97xn+yk8l029ESxy5cpgLeoZY
	v05Njv3OAbPtUtsyGCruPpt3cfK+fk/1VFonwd1ezpOPI3HSah1JXtrfAiGl+oRluqresfWzGIMM+
	8SSh/D9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Wxw-00C86c-14;
	Fri, 09 Jun 2023 07:55:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Wxt-00C84O-0l
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 07:55:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q7Wxr-0003u4-Uq; Fri, 09 Jun 2023 09:55:20 +0200
Message-ID: <0e98130c-7c06-fa5e-3833-6a10d63f9e7b@pengutronix.de>
Date: Fri, 9 Jun 2023 09:55:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20230609075229.1093397-1-a.fatoum@pengutronix.de>
 <20230609075229.1093397-2-a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230609075229.1093397-2-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_005521_279024_C5C5B763 
X-CRM114-Status: GOOD (  30.22  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/2] file-list: support special 'auto', 'block'
 specifiers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 09.06.23 09:52, Ahmad Fatoum wrote:
> Best practice is for each board to populate $global.system.partitions
> or $global.fastboot.partitions with a string exporting its flashable
> devices in a descriptive manner, e.g. "/dev/mmc0(eMMC),/dev/mmc1(SD)".
> 
> This often goes into BSPs though, so upstream boards are left without
> default partitions, making use a bit cumbersome. Make this easier
> by providing three new magic specifiers:

Typo: s/three/two/

> 
>   - block: exports all registered block devices (e.g. eMMC and SD)
>   - auto:  currently equivalent to "block". May be extended
>            to EEPROMs, raw MTD and UBI in future
> 
> This makes it easy to export devices on any board:
> 
>   usbgadget -A auto -b
> 
> or
> 
>   usbgadget -S auto,/tmp/fitimage(fitimage)c
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> 2:
>   - dropped nvmem specifier (Sascha). Can add it back later
>     limited to only EEPROMs
>   - reordered code in file_list_handle_spec to make future extension
>     easier (Sascha)
> ---
>  Documentation/user/usb.rst | 16 ++++++++++++++++
>  common/block.c             | 16 ++++++++++++++++
>  common/file-list.c         | 24 ++++++++++++++++++++++--
>  include/block.h            |  6 ++++++
>  4 files changed, 60 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
> index f2f57ead98d4..eaee342956f9 100644
> --- a/Documentation/user/usb.rst
> +++ b/Documentation/user/usb.rst
> @@ -73,6 +73,22 @@ Example:
>  
>    /dev/nand0.barebox.bb(barebox)sr,/kernel(kernel)rc
>  
> +Board code authors are encouraged to provide a default environment containing
> +partitions with descriptive names. For boards where this is not specified,
> +there exist a number of **partition** specifiers for automatically generating entries:
> +
> +* ``block`` exports all registered block devices (e.g. eMMC and SD)
> +* ``auto``  currently equivalent to ``block``. May be extended to other flashable
> +            devices, like EEPROMs, MTD or UBI volumes in future
> +
> +Example usage of exporting registered block devices, barebox update
> +handlers and a single file that is created on flashing:
> +
> +.. code-block:: sh
> +
> +     detect -a # optional. Detects everything, so auto can register it
> +     usbgadget -A auto,/tmp/fitimage(fitimage)c -b
> +
>  DFU
>  ^^^
>  
> diff --git a/common/block.c b/common/block.c
> index f6eeb7f9c85f..3a4a9fb73149 100644
> --- a/common/block.c
> +++ b/common/block.c
> @@ -11,6 +11,7 @@
>  #include <linux/err.h>
>  #include <linux/list.h>
>  #include <dma.h>
> +#include <file-list.h>
>  
>  #define BLOCKSIZE(blk)	(1 << blk->blockbits)
>  
> @@ -458,3 +459,18 @@ int block_write(struct block_device *blk, void *buf, sector_t block, blkcnt_t nu
>  
>  	return ret < 0 ? ret : 0;
>  }
> +
> +unsigned file_list_add_blockdevs(struct file_list *files)
> +{
> +	struct block_device *blk;
> +	unsigned count = 0;
> +	int err;
> +
> +	list_for_each_entry(blk, &block_device_list, list) {
> +		err = file_list_add_cdev_entry(files, &blk->cdev, 0);
> +		if (!err)
> +			count++;
> +	}
> +
> +	return count;
> +}
> diff --git a/common/file-list.c b/common/file-list.c
> index 5c7020111145..7ecc8d00bb9e 100644
> --- a/common/file-list.c
> +++ b/common/file-list.c
> @@ -9,6 +9,7 @@
>  #include <stringlist.h>
>  #include <linux/err.h>
>  #include <driver.h>
> +#include <block.h>
>  
>  #define PARSE_DEVICE	0
>  #define PARSE_NAME	1
> @@ -59,12 +60,28 @@ int file_list_add_cdev_entry(struct file_list *files, struct cdev *cdev,
>  				     xasprintf("/dev/%s", cdev->name), flags);
>  }
>  
> +static bool file_list_handle_spec(struct file_list *files, const char *spec)
> +{
> +	unsigned count = 0;
> +	bool autoadd;
> +
> +	autoadd = !strcmp(spec, "auto");
> +	if (autoadd || !strcmp(spec, "block"))
> +		count += file_list_add_blockdevs(files);
> +	else
> +		return false;
> +
> +	pr_debug("'%s' spcifier resulted in %u entries\n", spec, count);
> +	return true;
> +}
> +
>  static int file_list_parse_one(struct file_list *files, const char *partstr, const char **endstr)
>  {
>  	int i = 0, state = PARSE_DEVICE;
>  	char filename[PATH_MAX];
>  	char name[PATH_MAX];
>  	unsigned long flags = 0;
> +	bool special = false;
>  
>  	memset(filename, 0, sizeof(filename));
>  	memset(name, 0, sizeof(name));
> @@ -115,7 +132,10 @@ static int file_list_parse_one(struct file_list *files, const char *partstr, con
>  		partstr++;
>  	}
>  
> -	if (state != PARSE_FLAGS) {
> +	if (state == PARSE_DEVICE)
> +		special = file_list_handle_spec(files, filename);
> +
> +	if (!special && state != PARSE_FLAGS) {
>  		pr_err("Missing ')'\n");
>  		return -EINVAL;
>  	}
> @@ -124,7 +144,7 @@ static int file_list_parse_one(struct file_list *files, const char *partstr, con
>  		partstr++;
>  	*endstr = partstr;
>  
> -	return file_list_add_entry(files, name, filename, flags);
> +	return special ? 0 : file_list_add_entry(files, name, filename, flags);
>  }
>  
>  static const char *flags_to_str(int flags)
> diff --git a/include/block.h b/include/block.h
> index da258f509b41..44037bd74c61 100644
> --- a/include/block.h
> +++ b/include/block.h
> @@ -7,6 +7,7 @@
>  #include <linux/types.h>
>  
>  struct block_device;
> +struct file_list;
>  
>  struct block_device_ops {
>  	int (*read)(struct block_device *, void *buf, sector_t block, blkcnt_t num_blocks);
> @@ -51,11 +52,16 @@ static inline int block_flush(struct block_device *blk)
>  
>  #ifdef CONFIG_BLOCK
>  struct block_device *cdev_get_block_device(const struct cdev *cdev);
> +unsigned file_list_add_blockdevs(struct file_list *files);
>  #else
>  static inline struct block_device *cdev_get_block_device(const struct cdev *cdev)
>  {
>  	return NULL;
>  }
> +static inline unsigned file_list_add_blockdevs(struct file_list *files)
> +{
> +	return 0;
> +}
>  #endif
>  
>  static inline bool cdev_is_block_device(const struct cdev *cdev)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



