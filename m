Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x230.google.com ([2a00:1450:4013:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOmff-0004i3-Qa
 for barebox@lists.infradead.org; Wed, 25 Sep 2013 10:50:16 +0000
Received: by mail-ea0-f176.google.com with SMTP id q16so3090811ead.35
 for <barebox@lists.infradead.org>; Wed, 25 Sep 2013 03:49:53 -0700 (PDT)
Date: Wed, 25 Sep 2013 12:49:44 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130925104935.GA11782@omega>
References: <1380049423-30477-1-git-send-email-plagnioj@jcrosoft.com>
 <1380087080-29914-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380087080-29914-1-git-send-email-plagnioj@jcrosoft.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1 v2] fs: add uimagefs
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Christophe,

On Wed, Sep 25, 2013 at 07:31:20AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will provide the image data and information via file
> 
>  # ls -l /tmp/
> -rwxrwxrwx          3 arch
> -rwxrwxrwx         12 compression
> -rwxrwxrwx         16 name
> -rwxrwxrwx          5 os
> -rwxrwxrwx         24 time
> -rwxrwxrwx         12 type
> -rwxrwxrwx         10 load_addr
> -rwxrwxrwx         10 entry_point
> -rwxrwxrwx    2199875 data0
> -rwxrwxrwx    2199875 data
> -rwxrwxrwx         10 data.crc
> 
> if it's multi image
> 
>  # ls -l /tmp-multi/
> -rwxrwxrwx          3 arch
> -rwxrwxrwx         12 compression
> -rwxrwxrwx         16 name
> -rwxrwxrwx          5 os
> -rwxrwxrwx         24 time
> -rwxrwxrwx         16 type
> -rwxrwxrwx         10 load_addr
> -rwxrwxrwx         10 entry_point
> -rwxrwxrwx       1292 data0
> -rwxrwxrwx        983 data1
> -rwxrwxrwx       2287 data
> -rwxrwxrwx         10 data.crc
> 
> you can get the image header via an ioctl on any file
> UIMAGEFS_METADATA
> 
> if you want to check the crc do
> 
>  # crc32 -f /tmp-multi/data -V /tmp-multi/data.crc
> CRC32 for /tmp-multi/data 0x00000000 ... 0x000008ee ==> 0x88d5a0db
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> v2:
> 
> 	add data entry to expose the all data and it's crc as data.crc
> 	this will allow to check the crc32 from the check
> 
> 	as we do not have mount option
> 
> Best Regards,
> J.
>  fs/Kconfig         |   4 +
>  fs/Makefile        |   1 +
>  fs/uimagefs.c      | 554 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/uimagefs.h |  53 +++++
>  4 files changed, 612 insertions(+)
>  create mode 100644 fs/uimagefs.c
>  create mode 100644 include/uimagefs.h
> 
> diff --git a/fs/Kconfig b/fs/Kconfig
> index be4797f..d11431d 100644
> --- a/fs/Kconfig
> +++ b/fs/Kconfig
> @@ -44,6 +44,10 @@ config FS_NFS
>  source fs/fat/Kconfig
>  source fs/ubifs/Kconfig
>  
> +config FS_UIMAGEFS
> +	bool
> +	prompt "uImage FS support"
> +
>  config PARTITION_NEED_MTD
>  	bool
>  
> diff --git a/fs/Makefile b/fs/Makefile
> index bd02d94..0bc9116 100644
> --- a/fs/Makefile
> +++ b/fs/Makefile
> @@ -9,3 +9,4 @@ obj-$(CONFIG_FS_UBIFS)	+= ubifs/
>  obj-$(CONFIG_FS_TFTP)	+= tftp.o
>  obj-$(CONFIG_FS_OMAP4_USBBOOT)	+= omap4_usbbootfs.o
>  obj-$(CONFIG_FS_NFS)	+= nfs.o
> +obj-$(CONFIG_FS_UIMAGEFS)	+= uimagefs.o
> diff --git a/fs/uimagefs.c b/fs/uimagefs.c
> new file mode 100644
> index 0000000..9ed3cd5
> --- /dev/null
> +++ b/fs/uimagefs.c
> @@ -0,0 +1,554 @@
> +/*
> + * Copyright (c) 2013 Jean-Chritstophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> + *

s/Jean-Chritstophe/Jean-Christophe/

same issue which Sascha already mentioned on the bpkfs patch.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
