Delivery-date: Thu, 22 Sep 2022 10:15:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obHMe-00C1dN-Fx
	for lore@lore.pengutronix.de; Thu, 22 Sep 2022 10:15:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obHMc-0001v6-Uc
	for lore@pengutronix.de; Thu, 22 Sep 2022 10:15:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8sFMyfFDDhq+Gj/Q/cptWPIPq1PebAoAEdgFvfaKyp4=; b=i4nYvofKs2faIDb40YK6sRej69
	elmFMmLG0MqabfQMfg9kqW87LkluAMzWTCvEQkLOw9psjSgBWVQCwhXyBo5MhN6slq6qno7lPhTzZ
	w59H2vNukjayzRWex1lCQycGGtMrM2+mZ7XCQmCZEycks8Nozom7+GASJR6bdzHcsulIizfO0T32A
	58MVGikY+YvzStDFYDdiv1IU9YlSUHSMDL9p169Pu4UG8xxplrlARAaAR94FaWRJxZHJSoUTN3tvw
	7wJDrVruESEOc9+W7DpmLnR8WW6LGxNDMutAnKZVlWfLl9KJmns6N7i0aco1LynLExzB/dpenOG+S
	SYCR8h2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obHLH-00E39w-MM; Thu, 22 Sep 2022 08:13:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obHL9-00E373-Cs
	for barebox@lists.infradead.org; Thu, 22 Sep 2022 08:13:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1obHL8-0001Qe-62; Thu, 22 Sep 2022 10:13:46 +0200
Message-ID: <5ffe5490-4c93-f183-28d5-2f127da3fd9d@pengutronix.de>
Date: Thu, 22 Sep 2022 09:13:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, barebox@lists.infradead.org
References: <20220922072723.1559333-1-j.zink@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220922072723.1559333-1-j.zink@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_011347_466115_1E745DED 
X-CRM114-Status: GOOD (  31.14  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] USB: gadget: fastboot: introduce optional flag for
 fastboot partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 22.09.22 08:27, Johannes Zink wrote:
> On some boards, some partitions exposed to fastboot may become
> unavailable under certain circumstances, e.g. if an SD-Card exposed to
> fastboot is removed.
> 
> Previously, this lead to an error and the fastboot gadget did not
> initialize the remaining partitions exposed via fastboot, e.g. an
> eMMC which usually is permanently soldered on the board.
> 
> This patch allows to append an optional flag 'o' to the description of a
> fastboot partition. If this partition is unavailable at the
> initialization of the fastboot gadget, said partition is skipped, while
> the remaining available partitions are still exposed.
> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
>  Documentation/user/usb.rst | 1 +
>  common/fastboot.c          | 6 +++++-
>  common/file-list.c         | 3 +++
>  include/file-list.h        | 1 +
>  4 files changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
> index 2479efe9d6..f2f57ead98 100644
> --- a/Documentation/user/usb.rst
> +++ b/Documentation/user/usb.rst
> @@ -65,6 +65,7 @@ Several **flags** are supported, each denoted by a single character:
>  * ``r`` Readback. The partition is allowed to be read back (DFU specific)
>  * ``c`` The file shall be created if it doesn't exist. Needed when a regular file is exported.
>  * ``u`` The partition is a MTD device and shall be flashed with a UBI image.
> +* ``o`` The partition is optional, i.e. if it is not available at initialization time, it is skipped instead of aborting the initialization
>  
>  Example:
>  
> diff --git a/common/fastboot.c b/common/fastboot.c
> index 330a06f5a3..6bd1191325 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -177,7 +177,11 @@ int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
>  	file_list_for_each_entry(fb->files, fentry) {
>  		ret = fastboot_add_partition_variables(fb, fentry);
>  		if (ret)
> -			return ret;
> +			if((fentry->flags & FILE_LIST_FLAG_OPTIONAL))
> +				pr_info("failed to add optional partition %s to fastboot gadget\n",

s/failed to add/skipping unavailable/

to make this more in line with the chosen log level.

> +					fentry->filename);
> +			else
> +				return ret;

Please avoid dangling else here, either with braces or by having an 
if (ret && fentry->flags & FILE_LIST_FLAG_OPTIONAL)) as first condition.

>  	}
>  
>  	return 0;
> diff --git a/common/file-list.c b/common/file-list.c
> index 407b312833..68a7768696 100644
> --- a/common/file-list.c
> +++ b/common/file-list.c
> @@ -88,6 +88,9 @@ static int file_list_parse_one(struct file_list *files, const char *partstr, con
>  			case 'u':
>  				flags |= FILE_LIST_FLAG_UBI;
>  				break;
> +			case 'o':
> +				flags |= FILE_LIST_FLAG_OPTIONAL;
> +				break;
>  			default:
>  				pr_err("Unknown flag '%c'\n", *partstr);
>  				return -EINVAL;

When adding new flags, search for all instances of a similar flag and add
your new flag there as well. You're missing flags_to_str().

> diff --git a/include/file-list.h b/include/file-list.h
> index 5090313739..bcb06979c8 100644
> --- a/include/file-list.h
> +++ b/include/file-list.h
> @@ -8,6 +8,7 @@
>  #define FILE_LIST_FLAG_READBACK	(1 << 1)
>  #define FILE_LIST_FLAG_CREATE	(1 << 2)
>  #define FILE_LIST_FLAG_UBI	(1 << 3)
> +#define FILE_LIST_FLAG_OPTIONAL (1 << 4)
>  
>  struct file_list_entry {
>  	char *name;

Cheers,

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


