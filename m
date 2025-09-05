Delivery-date: Sat, 06 Sep 2025 02:11:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uugWS-008dTE-2y
	for lore@lore.pengutronix.de;
	Sat, 06 Sep 2025 02:11:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uugWR-0008HL-EQ
	for lore@pengutronix.de; Sat, 06 Sep 2025 02:11:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wCIXiUZ5H2YMO7pJaOQrjvDEh0d7LusyX5MVstu40Cs=; b=XeBKcdPspB29GbsnzgBR+brZMF
	Z4Xj2qXhy0Jb9DJN6thRUYtwHgmA9k0kkNv46ltiQjkaWVQj4ObVoXXbhyOQzK+WYImlDCgP1+dOA
	YUhPlU3MOMvl5N3qCSxd1nvVEiHwoSfWgzTEpVw0wTapAMAx0iw/MEmyFGqUKFeqIaNosfLPxbz3z
	OyG4EzH3JUbCaYFuvhFRb7/rKcRc6VFvT8zttQaN/o7Q1BRcoMcdWFx8tPEovvouNObj6nNjvqnx6
	wFt6O8Zr5lL1A2MELT2WhM3EDouUp9cyMSoT6hVwcYfuJOAGXafkcqrWoAQRBJAeFhAR75xbpbfS1
	71NNdkzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uugVT-00000005RF1-0BdW;
	Sat, 06 Sep 2025 00:10:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuZdS-00000003FMS-3hrJ
	for barebox@lists.infradead.org;
	Fri, 05 Sep 2025 16:50:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uuZdR-0000fd-K4; Fri, 05 Sep 2025 18:50:01 +0200
Message-ID: <33d27821-8395-4e66-b1fc-4fe57c72042b@pengutronix.de>
Date: Fri, 5 Sep 2025 18:50:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <20250828150637.2222474-5-tobias@waldekranz.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250828150637.2222474-5-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_095002_946084_22518491 
X-CRM114-Status: GOOD (  29.21  )
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
Subject: Re: [PATCH 4/5] test: self: dm: Add test of linear target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 8/28/25 5:05 PM, Tobias Waldekranz wrote:
> Verify that the 'linear' target works as expected.
> 
> Do this by (1) creating a dm device with a couple of linear mappings
> to two underlying ramdisks, and then (2) verify that data is returned
> in the expected order when reading it through the dm device.

Thanks for writing a test! :)

> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  test/self/Kconfig  |   7 ++
>  test/self/Makefile |   1 +
>  test/self/dm.c     | 159 +++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 167 insertions(+)

Please add to common/boards/configs/enable_self_test.config, so CI also
tests this.

>  create mode 100644 test/self/dm.c
> 
> diff --git a/test/self/Kconfig b/test/self/Kconfig
> index 4c43dfe394..a6dfd5f9ae 100644
> --- a/test/self/Kconfig
> +++ b/test/self/Kconfig
> @@ -125,4 +125,11 @@ config SELFTEST_TLV
>  	select BASE64
>  	select BOARD_LXA
>  
> +config SELFTEST_DM
> +	bool "Device mapper selftest"
> +	depends on DM_BLK
> +	select RAMDISK_BLK
> +	help
> +	  Tests the available device mapper targets
> +
>  endif
> diff --git a/test/self/Makefile b/test/self/Makefile
> index 9aa8aab78b..3d74bf9e98 100644
> --- a/test/self/Makefile
> +++ b/test/self/Makefile
> @@ -20,6 +20,7 @@ obj-$(CONFIG_SELFTEST_REGULATOR) += regulator.o test_regulator.dtbo.o
>  obj-$(CONFIG_SELFTEST_TEST_COMMAND) += test_command.o
>  obj-$(CONFIG_SELFTEST_IDR) += idr.o
>  obj-$(CONFIG_SELFTEST_TLV) += tlv.o tlv.dtb.o
> +obj-$(CONFIG_SELFTEST_DM) += dm.o
>  
>  ifdef REGENERATE_KEYTOC
>  
> diff --git a/test/self/dm.c b/test/self/dm.c
> new file mode 100644
> index 0000000000..e2add03a48
> --- /dev/null
> +++ b/test/self/dm.c
> @@ -0,0 +1,159 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> +
> +#include <common.h>
> +#include <fcntl.h>
> +#include <fs.h>
> +#include <disks.h>
> +#include <dirent.h>
> +#include <libfile.h>
> +#include <sys/stat.h>
> +#include <unistd.h>
> +#include <bselftest.h>
> +#include <linux/sizes.h>
> +#include <ramdisk.h>
> +#include <dm.h>
> +#include <driver.h>
> +#include <block.h>
> +
> +BSELFTEST_GLOBALS();
> +
> +struct rdctx {
> +	char mem[16][SECTOR_SIZE];
> +	struct ramdisk *rd;
> +	const char *name;
> +};
> +
> +static struct rdctx rdctx[2];
> +
> +static int rd_create(void)
> +{
> +	struct block_device *blk;
> +	struct rdctx *ctx;
> +	char base;
> +	int i, s;
> +
> +
> +	for (i = 0, ctx = rdctx; i < 2; i++, ctx++) {
> +		/* In case tests are run multiple times */
> +		memset(ctx->mem, '\0', sizeof(ctx->mem));
> +
> +		/* Add an identifying mark ('a'-'p' and 'A'-'P') at
> +		 * the start and end of every sector in both disks, so
> +		 * that we have something to compare against when we
> +		 * read them back through the DM device.
> +		 */
> +		base = i ? 'A' : 'a';
> +		for (s = 0; s < 16; s++) {
> +			ctx->mem[s][0] = base + s;
> +			ctx->mem[s][SECTOR_SIZE - 1] = base + s;
> +		}
> +
> +		ctx->rd = ramdisk_init(SECTOR_SIZE);
> +		if (!ctx->rd) {
> +			failed_tests++;
> +			pr_err("Could not create ramdisk\n");
> +			return 1;
> +		}
> +
> +		ramdisk_setup_rw(ctx->rd, ctx->mem, sizeof(ctx->mem));
> +		blk = ramdisk_get_block_device(ctx->rd);
> +		ctx->name = cdev_name(&blk->cdev);
> +	}
> +
> +	return 0;
> +}
> +
> +static void rd_destroy(void)
> +{
> +	ramdisk_free(rdctx[0].rd);
> +	ramdisk_free(rdctx[1].rd);
> +}
> +
> +static void verify_read(const char *pattern, const char *buf)
> +{
> +	off_t first, last;
> +	int s, len;
> +
> +	for (s = 0, len = strlen(pattern); s < len; s++) {
> +		first = s << SECTOR_SHIFT;
> +		last = first + SECTOR_SIZE - 1;
> +
> +		if (buf[first] != pattern[s]) {
> +			failed_tests++;
> +			pr_err("Expected '%c' at beginning of sector %d, read '%c'\n",
> +			       pattern[s], s, buf[first]);
> +			return;
> +		}
> +
> +		if (buf[last] != pattern[s]) {
> +			failed_tests++;
> +			pr_err("Expected '%c' at end of sector %d, read '%c'\n",
> +			       pattern[s], s, buf[last]);
> +			return;
> +		}
> +	}
> +}
> +
> +static void test_dm_linear(void)
> +{
> +	static const char pattern[] = "DEFaghijklmnopNOP";
> +	const size_t dmsize = (sizeof(pattern) - 1) * SECTOR_SIZE;
> +	struct dm_device *dm;
> +	struct cdev *cdev;
> +	char *buf, *table;
> +
> +	total_tests++;
> +
> +	if (!IS_ENABLED(CONFIG_DM_BLK_LINEAR)) {
> +		pr_info("skipping dm-linear test: disabled in config\n");
> +		skipped_tests++;
> +		return;
> +	}
> +
> +	if (rd_create())
> +		return;
> +
> +	table = xasprintf(" 0  3 linear /dev/%s  3\n" /* "DEF" */
> +			  " 3  1 linear /dev/%s  0\n" /* "a"   */
> +			  " 4 10 linear /dev/%s  6\n" /* "ghijklmnop" */
> +			  "14  3 linear /dev/%s 13\n" /* "NOP" */,
> +			  rdctx[1].name,
> +			  rdctx[0].name,
> +			  rdctx[0].name,
> +			  rdctx[1].name);
> +
> +	dm = dm_create("dmtest", table);
> +	free(table);
> +
> +	if (IS_ERR_OR_NULL(dm)) {
> +		failed_tests++;
> +		pr_err("Could not create dm device\n");
> +		goto out_destroy;
> +	}
> +
> +	cdev = cdev_by_name("dmtest");
> +	if (!cdev) {
> +		failed_tests++;
> +		pr_err("Could not find dm device\n");
> +		goto out_destroy;
> +	}
> +
> +	buf = xmalloc(dmsize);
> +
> +	if (cdev_read(cdev, buf, dmsize, 0, 0) < dmsize) {
> +		failed_tests++;
> +		pr_err("Could not read dm device\n");
> +		goto out_free_buf;
> +	}
> +
> +	verify_read(pattern, buf);
> +
> +out_free_buf:
> +	free(buf);
> +out_destroy:
> +	dm_destroy(dm);
> +	rd_destroy();
> +}
> +bselftest(core, test_dm_linear);

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



