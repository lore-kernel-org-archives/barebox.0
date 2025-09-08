Delivery-date: Mon, 08 Sep 2025 12:08:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYnk-000bdW-1W
	for lore@lore.pengutronix.de;
	Mon, 08 Sep 2025 12:08:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYnj-0006VR-Ed
	for lore@pengutronix.de; Mon, 08 Sep 2025 12:08:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KwiXq0WsuceexoLDYpmIpLScCsEnlmL671yEsC8T7GI=; b=ypUvDq1p3LcgNtEa1S3f/96aKl
	KAAPrYbcNr2VuYvn2XoCPdt279ZlsPzuumQjQx7LwaWNhbH4xcb7kWwAzvCywL5sEsAJzJ9GKYHDi
	o7eRQQkSqR3St5AnE6HSW8ClkhzSE3XVORDtDbJZpVhypdVw0Z1+OpPNNozNotCWIqd4GY864u+s4
	UFxWHhllBC2vXaCcl/o5auYFmjcauVajLBCaoyTvssa9PB0ABFo7/x+2Vy9tux+iyS8Ix6p9xzMb3
	B3INSCq/9sRxnMwHfhb672dhgftpQhHzDknqWOkyqFThsjj/trLyZXTaAwZFpF+Ipz1V1zdxpB8xe
	yQvY+bNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvYnF-0000000GGhF-15ew;
	Mon, 08 Sep 2025 10:08:13 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvYA0-0000000G1YT-07gu
	for barebox@lists.infradead.org;
	Mon, 08 Sep 2025 09:27:41 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-6263d0e4b94so3160515a12.3
        for <barebox@lists.infradead.org>; Mon, 08 Sep 2025 02:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1757323658; x=1757928458; darn=lists.infradead.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:to:from
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KwiXq0WsuceexoLDYpmIpLScCsEnlmL671yEsC8T7GI=;
        b=NU8/BktnpLduldouBaUHbGcD0btXzBGWbTcxTyTe0AOBnJ/R2NXfvW2otELL72BNmg
         MRetBwj6twIHmC/Gry6ffvploFB1HLHuKK+TmUXpI/QWfVUNjUpBI/p7NSlgjsCdv1JX
         XAnwk4AHxbEyPIpQJM9sdXCcsfgYCZHPxVAvDiAM6tdb/SD2Jw7LBG2ygoEdMztvtOw/
         2txOIaOpyTq2PTOWWy5d9oap3yMUWOK4rzWiQLWMXPmlX4Pp9LriVQzVgsTEb9JoknDK
         ukrSVL2V4OcXXvxrs/X9cwD9EgOLOgrgdmkB3VWhlOoPRjgBzLG1LLwdPknklaakZ85y
         8d0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757323658; x=1757928458;
        h=mime-version:message-id:date:references:in-reply-to:subject:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KwiXq0WsuceexoLDYpmIpLScCsEnlmL671yEsC8T7GI=;
        b=Pd7eJXv+X0d4Tl86tehHPE+2JlQOSWp0cHtQJUgF/Gw9+fATw2T8Q8AsYJTYlKC5o4
         7nAduRExrmxPPrzkyeArmnghl3qa87J0QwQDFOhk8hD9ftB3byfjHYJhWwH4ZNtn53vN
         X8wVYJIFYPWnb6t9v//Sw1oXn2Yq33tvuLOvErOOrLaqyPfgT/vt7ldwpwCsOJ3j6ZDE
         Dup3beQ0PoJl2anTz7127d80NaOqRAYQXlOWVWEmqnz8TYKHAACmG2C4870edFDjOsV0
         1n8DrRyDWX2HP/LVat+h4ouO+HLJXeHlXicuELNgG17dvl1IsAGFT+2sozW0I/lzWNpZ
         CjfQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNaqUy1luPyFz4uZyqWkEnFfXVGpTApo+SwtqC0nwn0GfBvF32KwqeQpv4xnwgej63oOYatlSC@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3f0jRmccD2gOWcxZgKf0Dz/9HvYGU3MkaYKss25gvvH51ogTY
	gD1JDhzDQ/C7qOciih37UU/Ol3/QqcA0XXHJK+WQhwkKmwmtdldgHXeKbv9hgXLqtCDNKNrhQs2
	dydNZ
X-Gm-Gg: ASbGncuXtKrl/JspdDMNBadK7T6eVz4Wh6e2Wp2+2kAL3PyYL+uYjZbBPI1oPUBoK1Z
	oOcJU08rEEEyH2JTsUJBaOtY9NFrjOt4P6gJlgjxZAsK675b04SFP9OEzbnMY6dKje7nmK4PAtD
	I2TDZAiZrYMUvaMp67HjgDJ7We9Edu2zPlwwwGIgUgncx6S5QGX9AmBrbohiP6LDiQ0N/T39g8G
	qD2PvwU2uI3TnTjex1GLxRE4pNyI+PyZTfK64jXdZs+tPilNQbUto7Lt6wz++SdwmwYcLO8truF
	nuW4X5eZZZBUDZ/JUgrXlpCoA/iO0Zm+zhKRCxVT1VUXTIfbO2P1gX/tuESJtiNAsI8g/rCVT9Z
	rIPlk/XMpEQuQKvxg5/t/9vj1hJ9aazY9UFTDt6Cnz4Kmuv2NGvE9
X-Google-Smtp-Source: AGHT+IHPLsasBKin0XADV2jXXw4I2nMfvQMoGdS6RKQZ3MVVOWDDGntyQsNO5wIp++wsGX6YcL/Lpg==
X-Received: by 2002:a05:6402:40ca:b0:627:f13f:5e85 with SMTP id 4fb4d7f45d1cf-627f13f6a80mr3582859a12.29.1757323658101;
        Mon, 08 Sep 2025 02:27:38 -0700 (PDT)
Received: from wkz-x13 (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6286246f887sm1992369a12.25.2025.09.08.02.27.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 02:27:37 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
In-Reply-To: <33d27821-8395-4e66-b1fc-4fe57c72042b@pengutronix.de>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <20250828150637.2222474-5-tobias@waldekranz.com>
 <33d27821-8395-4e66-b1fc-4fe57c72042b@pengutronix.de>
Date: Mon, 08 Sep 2025 11:27:37 +0200
Message-ID: <87jz292t12.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_022740_075406_8AA9F4BA 
X-CRM114-Status: GOOD (  26.85  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] test: self: dm: Add test of linear target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On fre, sep 05, 2025 at 18:50, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> On 8/28/25 5:05 PM, Tobias Waldekranz wrote:
>> Verify that the 'linear' target works as expected.
>> 
>> Do this by (1) creating a dm device with a couple of linear mappings
>> to two underlying ramdisks, and then (2) verify that data is returned
>> in the expected order when reading it through the dm device.
>
> Thanks for writing a test! :)
>
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> ---
>>  test/self/Kconfig  |   7 ++
>>  test/self/Makefile |   1 +
>>  test/self/dm.c     | 159 +++++++++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 167 insertions(+)
>
> Please add to common/boards/configs/enable_self_test.config, so CI also
> tests this.

Ah right, tests are more useful if you execute them :)

I have told SELFTEST_ENABLE_ALL to select SELFTEST_DM and all checks
pass (https://github.com/wkz/barebox/actions/runs/17545487677), but I'm
not exactly sure which job is running the selftests, and how I can see
whether the dm tests are included.

>>  create mode 100644 test/self/dm.c
>> 
>> diff --git a/test/self/Kconfig b/test/self/Kconfig
>> index 4c43dfe394..a6dfd5f9ae 100644
>> --- a/test/self/Kconfig
>> +++ b/test/self/Kconfig
>> @@ -125,4 +125,11 @@ config SELFTEST_TLV
>>  	select BASE64
>>  	select BOARD_LXA
>>  
>> +config SELFTEST_DM
>> +	bool "Device mapper selftest"
>> +	depends on DM_BLK
>> +	select RAMDISK_BLK
>> +	help
>> +	  Tests the available device mapper targets
>> +
>>  endif
>> diff --git a/test/self/Makefile b/test/self/Makefile
>> index 9aa8aab78b..3d74bf9e98 100644
>> --- a/test/self/Makefile
>> +++ b/test/self/Makefile
>> @@ -20,6 +20,7 @@ obj-$(CONFIG_SELFTEST_REGULATOR) += regulator.o test_regulator.dtbo.o
>>  obj-$(CONFIG_SELFTEST_TEST_COMMAND) += test_command.o
>>  obj-$(CONFIG_SELFTEST_IDR) += idr.o
>>  obj-$(CONFIG_SELFTEST_TLV) += tlv.o tlv.dtb.o
>> +obj-$(CONFIG_SELFTEST_DM) += dm.o
>>  
>>  ifdef REGENERATE_KEYTOC
>>  
>> diff --git a/test/self/dm.c b/test/self/dm.c
>> new file mode 100644
>> index 0000000000..e2add03a48
>> --- /dev/null
>> +++ b/test/self/dm.c
>> @@ -0,0 +1,159 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +
>> +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
>> +
>> +#include <common.h>
>> +#include <fcntl.h>
>> +#include <fs.h>
>> +#include <disks.h>
>> +#include <dirent.h>
>> +#include <libfile.h>
>> +#include <sys/stat.h>
>> +#include <unistd.h>
>> +#include <bselftest.h>
>> +#include <linux/sizes.h>
>> +#include <ramdisk.h>
>> +#include <dm.h>
>> +#include <driver.h>
>> +#include <block.h>
>> +
>> +BSELFTEST_GLOBALS();
>> +
>> +struct rdctx {
>> +	char mem[16][SECTOR_SIZE];
>> +	struct ramdisk *rd;
>> +	const char *name;
>> +};
>> +
>> +static struct rdctx rdctx[2];
>> +
>> +static int rd_create(void)
>> +{
>> +	struct block_device *blk;
>> +	struct rdctx *ctx;
>> +	char base;
>> +	int i, s;
>> +
>> +
>> +	for (i = 0, ctx = rdctx; i < 2; i++, ctx++) {
>> +		/* In case tests are run multiple times */
>> +		memset(ctx->mem, '\0', sizeof(ctx->mem));
>> +
>> +		/* Add an identifying mark ('a'-'p' and 'A'-'P') at
>> +		 * the start and end of every sector in both disks, so
>> +		 * that we have something to compare against when we
>> +		 * read them back through the DM device.
>> +		 */
>> +		base = i ? 'A' : 'a';
>> +		for (s = 0; s < 16; s++) {
>> +			ctx->mem[s][0] = base + s;
>> +			ctx->mem[s][SECTOR_SIZE - 1] = base + s;
>> +		}
>> +
>> +		ctx->rd = ramdisk_init(SECTOR_SIZE);
>> +		if (!ctx->rd) {
>> +			failed_tests++;
>> +			pr_err("Could not create ramdisk\n");
>> +			return 1;
>> +		}
>> +
>> +		ramdisk_setup_rw(ctx->rd, ctx->mem, sizeof(ctx->mem));
>> +		blk = ramdisk_get_block_device(ctx->rd);
>> +		ctx->name = cdev_name(&blk->cdev);
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static void rd_destroy(void)
>> +{
>> +	ramdisk_free(rdctx[0].rd);
>> +	ramdisk_free(rdctx[1].rd);
>> +}
>> +
>> +static void verify_read(const char *pattern, const char *buf)
>> +{
>> +	off_t first, last;
>> +	int s, len;
>> +
>> +	for (s = 0, len = strlen(pattern); s < len; s++) {
>> +		first = s << SECTOR_SHIFT;
>> +		last = first + SECTOR_SIZE - 1;
>> +
>> +		if (buf[first] != pattern[s]) {
>> +			failed_tests++;
>> +			pr_err("Expected '%c' at beginning of sector %d, read '%c'\n",
>> +			       pattern[s], s, buf[first]);
>> +			return;
>> +		}
>> +
>> +		if (buf[last] != pattern[s]) {
>> +			failed_tests++;
>> +			pr_err("Expected '%c' at end of sector %d, read '%c'\n",
>> +			       pattern[s], s, buf[last]);
>> +			return;
>> +		}
>> +	}
>> +}
>> +
>> +static void test_dm_linear(void)
>> +{
>> +	static const char pattern[] = "DEFaghijklmnopNOP";
>> +	const size_t dmsize = (sizeof(pattern) - 1) * SECTOR_SIZE;
>> +	struct dm_device *dm;
>> +	struct cdev *cdev;
>> +	char *buf, *table;
>> +
>> +	total_tests++;
>> +
>> +	if (!IS_ENABLED(CONFIG_DM_BLK_LINEAR)) {
>> +		pr_info("skipping dm-linear test: disabled in config\n");
>> +		skipped_tests++;
>> +		return;
>> +	}
>> +
>> +	if (rd_create())
>> +		return;
>> +
>> +	table = xasprintf(" 0  3 linear /dev/%s  3\n" /* "DEF" */
>> +			  " 3  1 linear /dev/%s  0\n" /* "a"   */
>> +			  " 4 10 linear /dev/%s  6\n" /* "ghijklmnop" */
>> +			  "14  3 linear /dev/%s 13\n" /* "NOP" */,
>> +			  rdctx[1].name,
>> +			  rdctx[0].name,
>> +			  rdctx[0].name,
>> +			  rdctx[1].name);
>> +
>> +	dm = dm_create("dmtest", table);
>> +	free(table);
>> +
>> +	if (IS_ERR_OR_NULL(dm)) {
>> +		failed_tests++;
>> +		pr_err("Could not create dm device\n");
>> +		goto out_destroy;
>> +	}
>> +
>> +	cdev = cdev_by_name("dmtest");
>> +	if (!cdev) {
>> +		failed_tests++;
>> +		pr_err("Could not find dm device\n");
>> +		goto out_destroy;
>> +	}
>> +
>> +	buf = xmalloc(dmsize);
>> +
>> +	if (cdev_read(cdev, buf, dmsize, 0, 0) < dmsize) {
>> +		failed_tests++;
>> +		pr_err("Could not read dm device\n");
>> +		goto out_free_buf;
>> +	}
>> +
>> +	verify_read(pattern, buf);
>> +
>> +out_free_buf:
>> +	free(buf);
>> +out_destroy:
>> +	dm_destroy(dm);
>> +	rd_destroy();
>> +}
>> +bselftest(core, test_dm_linear);
>
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |


