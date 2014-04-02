Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22b.google.com ([2a00:1450:4008:c01::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WVMO6-00062r-Rr
 for barebox@lists.infradead.org; Wed, 02 Apr 2014 14:43:36 +0000
Received: by mail-bk0-f43.google.com with SMTP id v15so51047bkz.2
 for <barebox@lists.infradead.org>; Wed, 02 Apr 2014 07:43:12 -0700 (PDT)
Date: Wed, 2 Apr 2014 16:35:05 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140402143500.GA25539@omega.Speedport_W_921V_1_24_000>
References: <1396448321-11342-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1396448321-11342-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [RESEND PATCH] ppc: P2020RDB: add environment partition support
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Wed, Apr 02, 2014 at 03:18:41PM +0100, Renaud Barbier wrote:
> Add an environment partition and support commands so that the system
> configuration can be permanent.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  arch/ppc/boards/freescale-p2020rdb/env/bin/init |  2 ++
>  arch/ppc/boards/freescale-p2020rdb/env/config   |  2 ++
>  arch/ppc/boards/freescale-p2020rdb/p2020rdb.c   |  9 +++++----
>  arch/ppc/configs/p2020rdb_defconfig             | 21 ++++++++++++++++++++-
>  4 files changed, 29 insertions(+), 5 deletions(-)
>  create mode 100644 arch/ppc/boards/freescale-p2020rdb/env/bin/init
>  create mode 100644 arch/ppc/boards/freescale-p2020rdb/env/config
> 
> diff --git a/arch/ppc/boards/freescale-p2020rdb/env/bin/init b/arch/ppc/boards/freescale-p2020rdb/env/bin/init
> new file mode 100644
> index 0000000..4d7b03e
> --- /dev/null
> +++ b/arch/ppc/boards/freescale-p2020rdb/env/bin/init
> @@ -0,0 +1,2 @@
> +#!/bin/sh
> +source /env/config
> \ No newline at end of file
> diff --git a/arch/ppc/boards/freescale-p2020rdb/env/config b/arch/ppc/boards/freescale-p2020rdb/env/config
> new file mode 100644
> index 0000000..23e0ba2
> --- /dev/null
> +++ b/arch/ppc/boards/freescale-p2020rdb/env/config
> @@ -0,0 +1,2 @@
> +#!/bin/sh
> +export bootargs="root=/dev/nfs rw ip=bootp"
> \ No newline at end of file
> diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
> index 4d2ff22..229ae41 100644
> --- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
> +++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
> @@ -83,7 +83,10 @@ struct i2c_platform_data i2cplat = {
>  static int devices_init(void)
>  {
>  	add_cfi_flash_device(DEVICE_ID_DYNAMIC, CFG_FLASH_BASE, 16 << 20, 0);
> -
> +	devfs_add_partition("nor0", 0xf60000, 0x8000, DEVFS_PARTITION_FIXED,
> +			"env0");
> +	devfs_add_partition("nor0", 0xf80000, 0x80000, DEVFS_PARTITION_FIXED,
> +			"self0");

I think this should be:

	devfs_add_partition("nor0", 0xf60000, SZ_512K, DEVFS_PARTITION_FIXED,
			"self0");
	devfs_add_partition("nor0", 0xf60000 + SZ_512K, SZ_32K, DEVFS_PARTITION_FIXED,
			"env0");

or your version is still correct? Or why you placed the env before self0 with a
little room there?

And maybe we can use SZ_512K and SZ_32K.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
