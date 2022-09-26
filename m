Delivery-date: Mon, 26 Sep 2022 10:23:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjP3-00F9tc-QM
	for lore@lore.pengutronix.de; Mon, 26 Sep 2022 10:23:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjP2-0002Wq-9Q
	for lore@pengutronix.de; Mon, 26 Sep 2022 10:23:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2FRxuF207qaT3p2R3UkRYcfkgG7IVrFpcpVYLb+MUhQ=; b=w39+Ew4vm70YO2+Ibf5xgMzf3n
	lMbtH4gU1b1zktBL1KY62g2xSZkeUxG2rJP6VG7pJw/KG2364IWlS5QapjICbBBGt9u47P9trYOUc
	m8EDIxN/RUoxWIisbfcdQVHGMZZllwFOerFp/7rMBlLxmpywY9JlF9CSUTHJkEj7UdMiJllTut4EU
	UJkILr/lg5wKK2CGhPqRoRyFpzJ9J95tuzHHFQXZhVFayQiESKV8X1KSSjXIaTheS2sgGXOoBmLZO
	fMAjW0CgNpXAXIaqCWwLRoraBaZWKfOpgfMLQkUrYFbvggeh4YKanjnH1abHtbodZOJeOF1YcTru0
	GSRqp05w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjNr-0037N5-NA; Mon, 26 Sep 2022 08:22:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjNm-0037Ld-LF
	for barebox@lists.infradead.org; Mon, 26 Sep 2022 08:22:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ocjNk-0002S6-U7; Mon, 26 Sep 2022 10:22:28 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ocjNk-0004vR-Iu; Mon, 26 Sep 2022 10:22:28 +0200
Date: Mon, 26 Sep 2022 10:22:28 +0200
To: Johannes Zink <j.zink@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220926082228.GS986@pengutronix.de>
References: <20220922132410.2653284-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220922132410.2653284-1-j.zink@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_012230_722380_545628A6 
X-CRM114-Status: GOOD (  34.47  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] USB: gadget: fastboot: introduce optional flag for
 fastboot partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Sep 22, 2022 at 03:24:10PM +0200, Johannes Zink wrote:
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
> Changes since v1:
>  - moved check for FILE_LIST_OPTIONAL flag to fastboot_add_partition_variables().
>    This allows for cleaner error checking on error conditions (Thanks Sascha)
>  - reworded info message to indicate intended condition on skipping optional
>    partitions rather than indicating an error condition (Thanks Ahmad)
>  - added FILE_LIST_OPTIONAL flag to flags_to_str() (Thanks Ahmad

Applied, thanks

Sascha

> 
>  Documentation/user/usb.rst | 1 +
>  common/fastboot.c          | 8 ++++++++
>  common/file-list.c         | 7 ++++++-
>  include/file-list.h        | 1 +
>  4 files changed, 16 insertions(+), 1 deletion(-)
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
> index 330a06f5a3..249e953ad6 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -95,6 +95,14 @@ static int fastboot_add_partition_variables(struct fastboot *fb,
>  	}
>  
>  	if (ret) {
> +		if (fentry->flags & FILE_LIST_FLAG_OPTIONAL) {
> +			pr_info("skipping unavailable optional partition %s for fastboot gadget\n",
> +				fentry->filename);
> +			ret = 0;
> +			type = "unavailable";
> +			goto out;
> +		}
> +
>  		if (fentry->flags & FILE_LIST_FLAG_CREATE) {
>  			ret = 0;
>  			type = "file";
> diff --git a/common/file-list.c b/common/file-list.c
> index 407b312833..3bb3b39d05 100644
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
> @@ -113,7 +116,7 @@ static int file_list_parse_one(struct file_list *files, const char *partstr, con
>  
>  static const char *flags_to_str(int flags)
>  {
> -	static char str[sizeof "srcu"];
> +	static char str[sizeof "srcuo"];
>  	char *s = str;;
>  
>  	if (flags & FILE_LIST_FLAG_SAFE)
> @@ -124,6 +127,8 @@ static const char *flags_to_str(int flags)
>  		*s++ = 'c';
>  	if (flags & FILE_LIST_FLAG_UBI)
>  		*s++ = 'u';
> +	if (flags & FILE_LIST_FLAG_OPTIONAL)
> +		*s++ = 'o';
>  
>  	*s = '\0';
>  
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
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


