Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22a.google.com ([2a00:1450:400c:c05::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6lkd-0005YX-BF
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 18:12:56 +0000
Received: by mail-wi0-f170.google.com with SMTP id hi8so3078653wib.1
 for <barebox@lists.infradead.org>; Tue, 06 Aug 2013 11:12:33 -0700 (PDT)
Date: Tue, 6 Aug 2013 20:16:16 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130806181614.GA30507@x61s.8.8.8.8>
References: <1375794428-29577-1-git-send-email-s.hauer@pengutronix.de>
 <1375794428-29577-9-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1375794428-29577-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 8/8] fs: Add ubifs support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

I take only a fast first look, it's a nice pretty huge patch :-)

On Tue, Aug 06, 2013 at 03:07:08PM +0200, Sascha Hauer wrote:
> This adds ubifs support from u-boot-2013.07. This is taken
> mostly as-is, only the necessary adjustments to attach to the
> barebox fs layer have been made.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/Kconfig             |    1 +
>  fs/Makefile            |    1 +
>  fs/ubifs/Kconfig       |   17 +
>  fs/ubifs/Makefile      |    4 +
>  fs/ubifs/budget.c      |  113 ++
>  fs/ubifs/crc16.c       |   60 ++
>  fs/ubifs/crc16.h       |   29 +
>  fs/ubifs/debug.c       |  156 +++
>  fs/ubifs/debug.h       |  392 +++++++
>  fs/ubifs/io.c          |  316 ++++++
>  fs/ubifs/key.h         |  557 ++++++++++
>  fs/ubifs/log.c         |  104 ++
>  fs/ubifs/lprops.c      |  842 +++++++++++++++
>  fs/ubifs/lpt.c         | 1105 +++++++++++++++++++
>  fs/ubifs/lpt_commit.c  |  171 +++
>  fs/ubifs/master.c      |  341 ++++++
>  fs/ubifs/misc.h        |  311 ++++++
>  fs/ubifs/orphan.c      |  318 ++++++
>  fs/ubifs/recovery.c    | 1225 +++++++++++++++++++++
>  fs/ubifs/replay.c      | 1070 +++++++++++++++++++
>  fs/ubifs/sb.c          |  346 ++++++
>  fs/ubifs/scan.c        |  362 +++++++
>  fs/ubifs/super.c       |  907 ++++++++++++++++
>  fs/ubifs/tnc.c         | 2767 ++++++++++++++++++++++++++++++++++++++++++++++++
>  fs/ubifs/tnc_misc.c    |  435 ++++++++
>  fs/ubifs/ubifs-media.h |  775 ++++++++++++++
>  fs/ubifs/ubifs.c       |  654 ++++++++++++
>  fs/ubifs/ubifs.h       | 2151 +++++++++++++++++++++++++++++++++++++
>  28 files changed, 15530 insertions(+)
>  create mode 100644 fs/ubifs/Kconfig
>  create mode 100644 fs/ubifs/Makefile
>  create mode 100644 fs/ubifs/budget.c
>  create mode 100644 fs/ubifs/crc16.c
>  create mode 100644 fs/ubifs/crc16.h
>  create mode 100644 fs/ubifs/debug.c
>  create mode 100644 fs/ubifs/debug.h
>  create mode 100644 fs/ubifs/io.c
>  create mode 100644 fs/ubifs/key.h
>  create mode 100644 fs/ubifs/log.c
>  create mode 100644 fs/ubifs/lprops.c
>  create mode 100644 fs/ubifs/lpt.c
>  create mode 100644 fs/ubifs/lpt_commit.c
>  create mode 100644 fs/ubifs/master.c
>  create mode 100644 fs/ubifs/misc.h
>  create mode 100644 fs/ubifs/orphan.c
>  create mode 100644 fs/ubifs/recovery.c
>  create mode 100644 fs/ubifs/replay.c
>  create mode 100644 fs/ubifs/sb.c
>  create mode 100644 fs/ubifs/scan.c
>  create mode 100644 fs/ubifs/super.c
>  create mode 100644 fs/ubifs/tnc.c
>  create mode 100644 fs/ubifs/tnc_misc.c
>  create mode 100644 fs/ubifs/ubifs-media.h
>  create mode 100644 fs/ubifs/ubifs.c
>  create mode 100644 fs/ubifs/ubifs.h
> 
> diff --git a/fs/Kconfig b/fs/Kconfig
> index 21d3434..be4797f 100644
> --- a/fs/Kconfig
> +++ b/fs/Kconfig
> @@ -42,6 +42,7 @@ config FS_NFS
>  	prompt "nfs support"
>  
>  source fs/fat/Kconfig
> +source fs/ubifs/Kconfig
>  
>  config PARTITION_NEED_MTD
>  	bool
> diff --git a/fs/Makefile b/fs/Makefile
> index cc59da7..bd02d94 100644
> --- a/fs/Makefile
> +++ b/fs/Makefile
> @@ -5,6 +5,7 @@ obj-y			+= devfs-core.o
>  obj-$(CONFIG_FS_DEVFS)	+= devfs.o
>  obj-$(CONFIG_FS_FAT)	+= fat/
>  obj-y	+= fs.o
> +obj-$(CONFIG_FS_UBIFS)	+= ubifs/
>  obj-$(CONFIG_FS_TFTP)	+= tftp.o
>  obj-$(CONFIG_FS_OMAP4_USBBOOT)	+= omap4_usbbootfs.o
>  obj-$(CONFIG_FS_NFS)	+= nfs.o
> diff --git a/fs/ubifs/Kconfig b/fs/ubifs/Kconfig
> new file mode 100644
> index 0000000..76612fd
> --- /dev/null
> +++ b/fs/ubifs/Kconfig
> @@ -0,0 +1,17 @@
> +menuconfig FS_UBIFS
> +	bool

select UBI here?
We use sometimes the ubi_read function.

> +	prompt "ubifs support"
> +
> +if FS_UBIFS
> +
> +config FS_UBIFS_COMPRESSION_LZO
> +	bool
> +	select LZO_DECOMPRESS
> +	prompt "LZO compression support"
> +
> +config FS_UBIFS_COMPRESSION_ZLIB
> +	bool
> +	select ZLIB
> +	prompt "ZLIB compression support"
> +
> +endif

Is this for a full compressed ubi volume? I know that in ubifs exists
some extended attributes to enable compression for a special file. How
barebox deal with that? I think barebox hasn't a support for xattr yet. :(

But I think it's only for some small files kernel, env, etc... so it doesn't
matter.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
