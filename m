Delivery-date: Tue, 12 Oct 2021 09:54:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCc6-0002mY-CW
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 09:54:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCc5-0008O7-8s
	for lore@pengutronix.de; Tue, 12 Oct 2021 09:54:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VimZAN1bhAdIgCFYzjXHjnyL+WIvOsvQ5bHJPUHYYs8=; b=ghx/mCCRv7LQrTjS1kiJxP9uXK
	6D3iCBv1P5AKJ6QJfNEVVxw4cBqZ/bkvc9188JAljj/zql9H4+qbzIvC47SXGz0eTcG/CMvUDhHtb
	ohol3NKXwSuSk5gX+LPRnyZ09DfoxJjxuDxKAmg1toSBvU3ZT/P597SY5EhPYwQ6D+2kHDS8f9mft
	7vcxM0rPsSE3tnqpE33+EkA0FF8FAIfyxOHoEmPIn81Yl5o8YA2H7ecioK+VC5OfXetIKhQIBv673
	f0Z2tHTdibF0o5F39KLUkgNJzgRG2Shh1ov7upuIFHhKYzxrWZAcrit//H7ByNNht6rC827bHewF7
	owDB4I1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maCap-00BrtJ-HX; Tue, 12 Oct 2021 07:52:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maCak-00Brrc-Tv
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 07:52:56 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1maCah-00088p-RD; Tue, 12 Oct 2021 09:52:51 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20211012073352.4071559-1-s.hauer@pengutronix.de>
 <20211012073352.4071559-8-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <05f86cbe-ad12-f957-8e51-58e7d9b3b830@pengutronix.de>
Date: Tue, 12 Oct 2021 09:52:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211012073352.4071559-8-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_005254_999262_B1C82660 
X-CRM114-Status: GOOD (  26.02  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 7/8] cdev: Add function to get unallocated start of device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 12.10.21 09:33, Sascha Hauer wrote:
> On several SoCs barebox is written to the raw device in front of the
> first partition. So far we blindly trust that there is enough space
> available for the barebox image. Start changing this by adding a
> function that retrieves the available space.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/partitions.c | 28 ++++++++++++++++++++++++++++
>  include/driver.h    |  1 +
>  2 files changed, 29 insertions(+)
> 
> diff --git a/common/partitions.c b/common/partitions.c
> index d80878e065..e36341fc1e 100644
> --- a/common/partitions.c
> +++ b/common/partitions.c
> @@ -156,3 +156,31 @@ int partition_parser_register(struct partition_parser *p)
>  
>  	return 0;
>  }
> +
> +/**
> + * cdev_unallocated_start - return unallocated space
> + * @name: The cdev name
> + *
> + * This function returns the space that is not allocated by any partition
> + * at the start of a device.
> + *
> + * Return: The unallocated space at the start of the device in bytes
> + */
> +loff_t cdev_unallocated_start(const char *name)

That name is a bit misleading. It's either cdev_allocated_start
or cdev_unallocated_space. Also cdev_ for a function not taking a cdev
is unexpected. Perhaps define devpath_to_cdev(s) as
cdev_by_name(devpath_to_name(s)) and have the caller pass in the cdev?

> +{
> +	struct cdev *cdev, *partcdev;
> +	loff_t start;
> +
> +	cdev = cdev_by_name(name);
> +	if (!cdev)
> +		return 0;
> +
> +	start = cdev->size;
> +
> +	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
> +		if (partcdev->offset < start)
> +			start = partcdev->offset;
> +	}
> +
> +	return start;
> +}
> diff --git a/include/driver.h b/include/driver.h
> index c7f5903fce..38aa3cf8f5 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -494,6 +494,7 @@ ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulo
>  ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
>  int cdev_ioctl(struct cdev *cdev, int cmd, void *buf);
>  int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
> +loff_t cdev_unallocated_start(const char *name);
>  
>  #define DEVFS_PARTITION_FIXED		(1U << 0)
>  #define DEVFS_PARTITION_READONLY	(1U << 1)
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

