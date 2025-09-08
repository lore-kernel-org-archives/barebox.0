Delivery-date: Mon, 08 Sep 2025 12:08:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYnm-000beH-2M
	for lore@lore.pengutronix.de;
	Mon, 08 Sep 2025 12:08:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYnl-0006Wz-6j
	for lore@pengutronix.de; Mon, 08 Sep 2025 12:08:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=opMfKKRAtYXvnVyzNNvs1KxKVoUVnPZ8MiBVZKdHYMc=; b=UQckclo9Kw0Y42noZ15Ms2C2Wo
	WxeJ9+mvjz0yBeFrk3Mo7rQBMz/t/XVWdgsWCrs4/SDqK1yKW00vhYjeC9KCI44P1j63Kd7P9Fec6
	bk26YGbcSlXDf4DX0zWUOV/e362s9agccklW5L8Td0F3ilrhhfI41u6NTi1Zsr7ms1BMi2wtXQc15
	Zz1RKtkvDMDkzrjJyWN21zeuHh8t5uJaBJn08Nh2TPkrJiKDFLdQhybHeKRAW9b+O0Pi5ZZNR2gVU
	u3IAhUtLJ0KcZA2SKylm4ivFWelg4yyPVHh01Ulo8kRKe3BPDA7uqYcON31mgJ15IsnPOWZ27V1l0
	n0lUO+Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvYnE-0000000GGgn-3Abg;
	Mon, 08 Sep 2025 10:08:12 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvY9n-0000000G1Sm-3YPq
	for barebox@lists.infradead.org;
	Mon, 08 Sep 2025 09:27:29 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-b04163fe08dso718769666b.3
        for <barebox@lists.infradead.org>; Mon, 08 Sep 2025 02:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1757323646; x=1757928446; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=opMfKKRAtYXvnVyzNNvs1KxKVoUVnPZ8MiBVZKdHYMc=;
        b=OsGbQOvsNGP64uXFM3eOGLtE+Vs3XYMP8Z8BISJhbsVR/+/ydt1FzqoiMlwC7Po2YN
         O7Bt7X071AtU4kPRyJnQ5gAqwjyGPZwuRe2BJrew/PeaWkVfd2PWnt70ZbCGcqkojQP5
         x7oao37lDsAZg7Eg0Y2fmk11OcY1ZYzf1+ronHgl7c7O46S1BhbTu0pFzLDCAOhXwbiE
         spABOttER+XSsnjwa3eTmaC2xZ7fBQNBKVH/MEPqjmwFgmteHVgOYkjOHJ+SCr9mOBx1
         0ZGdo1L27FVz/gCScMlBO5fzzI+zSCzad/joNen3Ww5dW+3nvVfEuqq2bJEsUD4Te8JV
         2psA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757323646; x=1757928446;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:to:from:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=opMfKKRAtYXvnVyzNNvs1KxKVoUVnPZ8MiBVZKdHYMc=;
        b=PFDwhAg3QcN1sFU1f9XtcMxS4Ia0EolDGQK/lle73pNsQ8klQFLRUlBN6sxGbTrCqM
         5vob7ObITYkiP2nIHejeEmzyAPDqBgumwWMq+fqY1HRThAVvSvAPi6OAJfp1uO+InAq3
         V9JtkGa/JsIeC/GM73StDAyTzNgVgLCOg7LVcel7R4NHvVG2aWPdsI2iZuBfpl5xwzGj
         lXoekvXEMTxSWj98CV4n2PJKVTlG20iKDHBXI7SH1AIMzNhmZr56eSyjGkNCK/6a29oD
         XrGfCjCR8/E9JoCC5sRaCi2T9HfGcDJJwSneuPyAWCGgDx501o11vX1laQb5iovF8EJB
         MoEA==
X-Forwarded-Encrypted: i=1; AJvYcCXx8XnAXjw/cx3ppxvONrLYzYfabSX2XRkwAjvyLpHyzFC9QxGaYIUphSXwZI2SAGOrr2wPuHjZ@lists.infradead.org
X-Gm-Message-State: AOJu0Ywn8zTovwHiYao2uq9JQ/odsP/EdY7EZGvfYgo0cB4FxzeloyVE
	lxcF15h0iZ9bX6UWlv/vuM98I3mAbj/uFXCwYF7LoELVv6dEH/iETV+TaYEwgDKgebcvEkQZVjN
	Hw1Zt
X-Gm-Gg: ASbGncvirPLQJHfNbzMaqqTfKLIo8+LWNwWwSNIM34hadmDkp681oOufwt6xVPl2KtN
	xeJT4KMQsOIEeyDv9rVyobqIO3oc3dYP16OSaJmc5oySXVQt8cnvDrI5IB/95FXQkuDgZq8Xjiu
	b4WKU+QDkN2WbpaxK6N84bDfW98MR9cc7d3JjZE1NCv6C4lni1WXEpLiBV6mtwKGZ7VGp3wurEl
	7mXv1Lo0xqeaL9lu1obpxofM2NpRB9LbVclIhJKeKTi/tPBkYzwtbDL6Yjq54E0H21iMS13tGEx
	8b6UVT8TPsTHaXrbJExdAvLaHFGqSrwwXv4D2YSxuJPsXmoObIP3LnaOOY943VZsMiWV7dMGl6U
	7CsN5EJjUwvZRmvwaeViXCFh0j5i8b00aznz9mKVmNieJgyRsndrYC+HwI8XQnZk=
X-Google-Smtp-Source: AGHT+IGYwzM22v0I47Zo6GtFA8QhtgTftX5EdZ0CklRd+GQ/lj5Eq7qvd1g7pUGyqJuwuIxEcYoRbg==
X-Received: by 2002:a17:907:c09:b0:b04:4975:e648 with SMTP id a640c23a62f3a-b04b1547774mr684611166b.35.1757323645708;
        Mon, 08 Sep 2025 02:27:25 -0700 (PDT)
Received: from wkz-x13 (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b046e6c630fsm1236847466b.55.2025.09.08.02.27.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 02:27:25 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
In-Reply-To: <8c5841c8-cbe4-4aab-8c5b-c75f119f5bc0@pengutronix.de>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <20250828150637.2222474-3-tobias@waldekranz.com>
 <8c5841c8-cbe4-4aab-8c5b-c75f119f5bc0@pengutronix.de>
Date: Mon, 08 Sep 2025 11:27:24 +0200
Message-ID: <87ldmp2t1f.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_022727_895499_5D4E289C 
X-CRM114-Status: GOOD (  38.02  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] dm: Add initial device mapper infrastructure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On fre, sep 05, 2025 at 18:14, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> Hi,
>
> On 8/28/25 5:05 PM, Tobias Waldekranz wrote:
>> Add initial scaffolding for a block device mapper which is intended to
>> be compatible with the corresponding subsystem in Linux.
>>=20
>> This is the foundation of several higher level abstractions, for
>> example:
>>=20
>> - LVM: Linux Volume manager. Dynamically allocates logical volumes
>>   from one or more storage devices, manages RAID arrays, etc.
>>=20
>> - LUKS: Linux Unified Key Setup. Transparent disk
>>   encryption/decryption.
>>=20
>> - dm-verity: Transparent integrity checking of block devices.
>>=20
>> Being able to configure dm devices in barebox will allow us to access
>> data from LVM volumes, access filesystems with block layer integrity
>> validation, etc.
>>=20
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> ---
>>  drivers/block/Kconfig        |   2 +
>>  drivers/block/Makefile       |   1 +
>>  drivers/block/dm/Kconfig     |   7 +
>>  drivers/block/dm/Makefile    |   2 +
>>  drivers/block/dm/dm-core.c   | 393 +++++++++++++++++++++++++++++++++++
>>  drivers/block/dm/dm-target.h |  39 ++++
>>  include/dm.h                 |  16 ++
>>  7 files changed, 460 insertions(+)
>>  create mode 100644 drivers/block/dm/Kconfig
>>  create mode 100644 drivers/block/dm/Makefile
>>  create mode 100644 drivers/block/dm/dm-core.c
>>  create mode 100644 drivers/block/dm/dm-target.h
>>  create mode 100644 include/dm.h
>>=20
>> diff --git a/drivers/block/Kconfig b/drivers/block/Kconfig
>> index 5b1b778917..dace861670 100644
>> --- a/drivers/block/Kconfig
>> +++ b/drivers/block/Kconfig
>> @@ -32,3 +32,5 @@ config RAMDISK_BLK
>>          help
>>  	  This symbol is selected by testing code that requires lightweight
>>  	  creation of anonymous block devices backed fully by memory buffers.
>> +
>> +source "drivers/block/dm/Kconfig"
>> diff --git a/drivers/block/Makefile b/drivers/block/Makefile
>> index 6066b35c31..8f913bd0ad 100644
>> --- a/drivers/block/Makefile
>> +++ b/drivers/block/Makefile
>> @@ -2,3 +2,4 @@
>>  obj-$(CONFIG_EFI_BLK) +=3D efi-block-io.o
>>  obj-$(CONFIG_VIRTIO_BLK) +=3D virtio_blk.o
>>  obj-$(CONFIG_RAMDISK_BLK) +=3D ramdisk.o
>> +obj-y +=3D dm/
>> diff --git a/drivers/block/dm/Kconfig b/drivers/block/dm/Kconfig
>> new file mode 100644
>> index 0000000000..f64c69e03d
>> --- /dev/null
>> +++ b/drivers/block/dm/Kconfig
>> @@ -0,0 +1,7 @@
>> +menuconfig DM_BLK
>> +        bool "Device mapper"
>> +        help
>
> Spaces/Tabs mixed up.
>
>> +	  Composable virtual block devices made up of mappings to
>> +	  other data sources. Modeled after, and intended to be
>> +	  compatible with, the Linux kernel's device mapper subsystem.
>> +
>> diff --git a/drivers/block/dm/Makefile b/drivers/block/dm/Makefile
>> new file mode 100644
>> index 0000000000..9c045087c0
>> --- /dev/null
>> +++ b/drivers/block/dm/Makefile
>> @@ -0,0 +1,2 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
>> +obj-$(CONFIG_DM_BLK) +=3D dm-core.o
>> diff --git a/drivers/block/dm/dm-core.c b/drivers/block/dm/dm-core.c
>> new file mode 100644
>> index 0000000000..cf92dac94c
>> --- /dev/null
>> +++ b/drivers/block/dm/dm-core.c
>> @@ -0,0 +1,393 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +// SPDX-FileCopyrightText: =C2=A9 2025 Tobias Waldekranz <tobias@waldek=
ranz.com>, Wires
>> +
>> +#include <block.h>
>> +#include <common.h>
>> +#include <disks.h>
>> +#include <dm.h>
>> +#include <string.h>
>> +
>> +#include "dm-target.h"
>> +
>> +static LIST_HEAD(dm_target_ops_list);
>> +
>> +static struct dm_target_ops *dm_target_ops_find(const char *name)
>> +{
>> +	struct dm_target_ops *ops;
>> +
>> +	list_for_each_entry(ops, &dm_target_ops_list, list) {
>> +		if (!strcmp(ops->name, name))
>> +			return ops;
>> +	}
>> +	return NULL;
>> +}
>> +
>> +int dm_target_register(struct dm_target_ops *ops)
>> +{
>> +	list_add(&ops->list, &dm_target_ops_list);
>> +	return 0;
>> +}
>> +
>> +void dm_target_unregister(struct dm_target_ops *ops)
>> +{
>> +	list_del(&ops->list);
>> +}
>> +
>> +struct dm_device {
>> +	struct device dev;
>> +	struct block_device blk;
>> +	struct list_head list;
>> +	struct list_head targets;
>> +};
>> +
>> +static LIST_HEAD(dm_device_list);
>
> I think DEFINE_DEV_CLASS would be more fitting here. Can also be listed
> with the class command this way.

Nice. Yes, that is much better.

>> +
>> +struct dm_device *dm_find_by_name(const char *name)
>> +{
>> +	struct dm_device *dm;
>> +
>> +	list_for_each_entry(dm, &dm_device_list, list) {
>> +		if (!strcmp(dev_name(&dm->dev), name))
>> +			return dm;
>> +	}
>> +
>> +	return ERR_PTR(-ENOENT);
>> +}
>> +EXPORT_SYMBOL(dm_find_by_name);
>> +
>> +int dm_foreach(int (*cb)(struct dm_device *dm, void *ctx), void *ctx)
>> +{
>> +	struct dm_device *dm;
>> +	int err;
>> +
>> +	list_for_each_entry(dm, &dm_device_list, list) {
>> +		err =3D cb(dm, ctx);
>> +		if (err)
>> +			return err;
>> +	}
>> +
>> +	return 0;
>> +}
>> +EXPORT_SYMBOL(dm_foreach);
>> +
>> +void dm_target_err(struct dm_target *ti, const char *fmt, ...)
>> +{
>> +	struct dm_target *iter;
>> +	va_list ap;
>> +	char *msg;
>> +	int i =3D 0;
>> +> +	list_for_each_entry(iter, &ti->dm->targets, list) {
>> +		if (iter =3D=3D ti)
>> +			break;
>> +		i++;
>> +	}
>> +
>> +	va_start(ap, fmt);
>> +	msg =3D xvasprintf(fmt, ap);
>> +	va_end(ap);
>> +
>> +	dev_err(&ti->dm->dev, "%d(%s): %s", i, ti->ops->name, msg);
>
> If someone looks at this code, because they have seen this error, they
> won't necessarily know how to interpret the %d.

My intention was that it could be correlated with the first column from
the table generated by dm_asprint()...

> Can you either add a comment above the iteration or rename the i to a
> more telling name?

...i.e., it is just an index (i). I'll add a comment describing that.

>> +	free(msg);
>> +}
>> +EXPORT_SYMBOL(dm_target_err);
>> +
>> +static int dm_blk_read(struct block_device *blk, void *buf,
>> +		       sector_t block, blkcnt_t num_blocks)
>> +{
>> +	struct dm_device *dm =3D container_of(blk, struct dm_device, blk);
>> +	struct dm_target *ti;
>> +	blkcnt_t tnblks, todo;
>> +	sector_t tblk;
>> +	int err;
>> +
>> +	todo =3D num_blocks;
>> +
>> +	list_for_each_entry(ti, &dm->targets, list) {
>
> Took me a while to understand this. I think a comment would be nice, e.g.:

Agreed.

> /* We can have multiple non-overlapping targets and a read may span
>  * multiple targets. Fortunately, targets are ordered by base address,
>  * so we iterate until we find the first applicable target and read on.
>  */
>
> Or something like that.

Great, thanks!

>
>> +		if (block < ti->base || block >=3D ti->base + ti->size)
>> +			continue;
>> +
>> +		if (!ti->ops->read)
>> +			return -EIO;
>> +
>> +		tblk =3D block - ti->base;
>> +		tnblks =3D min(todo, ti->size - tblk);
>> +		err =3D ti->ops->read(ti, buf, tblk, tnblks);
>> +		if (err)
>> +			return err;
>> +
>> +		block +=3D tnblks;
>> +		todo -=3D tnblks;
>> +		buf +=3D tnblks << SECTOR_SHIFT;
>
> We don't support different block sizes right now and you hardcode
> SECTOR_SIZE below anyway, but we like to pretend we could, so
> blk->blockbits would be more apt here.

I made a conscious decision to use hardcode these everywhere as Linux
defines that a DM block _is_ 512B. You see these constants all over the
place in the target implementations in the kernel as well.

>From dmsetup(8):
| Devices are created by loading a table that specifies a target for
| each sector (512 bytes) in the logical device.

So while Barebox might one day support other block sizes, I do not think
that DM ever will.

What I also should have done is to have a comment detailing this, above
the hardcoded block size. If I add this, do you think we should stick
with the constants, or change to blk->blockbits?

>> +		if (!todo)
>> +			return 0;
>> +	}
>> +
>> +	return -EIO;
>> +}
>> +
>> +static int dm_blk_write(struct block_device *blk, const void *buf,
>> +			sector_t block, blkcnt_t num_blocks)
>> +{
>> +	struct dm_device *dm =3D container_of(blk, struct dm_device, blk);
>> +	struct dm_target *ti;
>> +	blkcnt_t tnblks, todo;
>> +	sector_t tblk;
>> +	int err;
>> +
>> +	todo =3D num_blocks;
>> +
>> +	list_for_each_entry(ti, &dm->targets, list) {
>> +		if (block < ti->base || block >=3D ti->base + ti->size)
>> +			continue;
>> +
>> +		if (!ti->ops->write)
>> +			return -EIO;
>> +
>> +		tblk =3D block - ti->base;
>> +		tnblks =3D min(todo, ti->size - tblk);
>> +		err =3D ti->ops->write(ti, buf, tblk, tnblks);
>> +		if (err)
>> +			return err;
>> +
>> +		block +=3D tnblks;
>> +		todo -=3D tnblks;
>> +		buf +=3D tnblks << SECTOR_SHIFT;
>> +		if (!todo)
>> +			return 0;
>> +	}
>> +
>> +	return -EIO;
>> +}
>> +
>> +static struct block_device_ops dm_blk_ops =3D {
>> +	.read =3D dm_blk_read,
>> +	.write =3D dm_blk_write,
>> +};
>> +
>> +static blkcnt_t dm_size(struct dm_device *dm)
>> +{
>> +	struct dm_target *last;
>> +
>> +	if (list_empty(&dm->targets))
>> +		return 0;
>> +
>> +	last =3D list_last_entry(&dm->targets, struct dm_target, list);
>> +	return last->base + last->size;
>> +}
>> +
>> +static int dm_n_targets(struct dm_device *dm)
>> +{
>> +	struct dm_target *ti;
>> +	int n =3D 0;
>> +
>> +	list_for_each_entry(ti, &dm->targets, list) {
>> +		n++;
>> +	}
>> +
>> +	return n;
>> +}
>> +
>> +char *dm_asprint(struct dm_device *dm)
>> +{
>> +	char **strv, *str, *tistr;
>> +	struct dm_target *ti;
>> +	int n =3D 0, strc;
>> +
>> +	strc =3D 1 + dm_n_targets(dm);
>> +	strv =3D xmalloc(strc * sizeof(*strv));
>
>
> Meh, maybe we should have a growable string type...

I have taken a stab at this in v2 with rasprintf(), "the realloc()ing
sprintf()". Let me know what you think.

> Anyways, we have <stringlist.h> for what you are doing here, but I leave
> it up to you whether to use it or not. Current code looks ok too.
>
>> +
>> +	strv[n++] =3D xasprintf(
>> +		"Device: %s\n"
>> +		"Size: %llu\n"
>> +		"Table:\n"
>> +		" #       Start         End        Size  Target\n",
>> +		dev_name(&dm->dev), dm_size(dm));
>> +
>> +	list_for_each_entry(ti, &dm->targets, list) {
>> +		tistr =3D ti->ops->asprint ? ti->ops->asprint(ti) : NULL;
>> +
>> +		strv[n] =3D xasprintf("%2d  %10llu  %10llu  %10llu  %s %s\n",
>> +				    n - 1, ti->base, ti->base + ti->size - 1,
>> +				    ti->size, ti->ops->name, tistr ? : "");
>> +		n++;
>> +
>> +		if (tistr)
>> +			free(tistr);
>> +	}
>> +
>> +	str =3D strjoin("", strv, strc);
>> +
>> +	for (n =3D 0; n < strc; n++)
>> +		free(strv[n]);
>> +
>> +	free(strv);
>> +
>> +	return str;
>> +}
>> +EXPORT_SYMBOL(dm_asprint);
>> +
>> +static struct dm_target *dm_parse_row(struct dm_device *dm, const char =
*crow)
>> +{
>> +	struct dm_target *ti;
>> +	char *row, **argv;
>> +	int argc;
>> +
>> +	row =3D xstrdup(crow);
>> +	argc =3D strtokv(row, " \t", &argv);
>> +
>> +	if (argc < 3) {
>> +		dev_err(&dm->dev, "Invalid row: \"%s\"\n", crow);
>> +		goto err;
>> +	}
>> +
>> +	ti =3D xzalloc(sizeof(*ti));
>> +	ti->dm =3D dm;
>> +
>> +	ti->ops =3D dm_target_ops_find(argv[2]);
>> +	if (!ti->ops) {
>> +		dev_err(&dm->dev, "Unknown target: \"%s\"\n", argv[2]);
>> +		goto err_free;
>> +	}
>> +
>> +	if (kstrtoull(argv[0], 0, &ti->base)) {
>> +		dm_target_err(ti, "Invalid start: \"%s\"\n", argv[0]);
>> +		goto err_free;
>> +	}
>> +
>> +	if (ti->base !=3D dm_size(dm)) {
>> +		/* Could we just skip the start argument, then? Seems
>> +		 * like it, but let's keep things compatible with the
>> +		 * table format in Linux.
>> +		 */
>> +		dm_target_err(ti, "Non-contiguous start: %llu, expected %llu\n",
>> +			      ti->base, dm_size(dm));
>> +		goto err_free;
>> +	}
>> +
>> +	if (kstrtoull(argv[1], 0, &ti->size) || !ti->size) {
>> +		dm_target_err(ti, "Invalid length: \"%s\"\n", argv[1]);
>> +		goto err_free;
>> +	}
>> +
>> +	argc -=3D 3;
>> +
>> +	if (ti->ops->create(ti, argc, argc ? &argv[3] : NULL))
>> +		goto err_free;
>> +
>> +	free(argv);
>> +	free(row);
>> +	return ti;
>> +
>> +err_free:
>> +	free(ti);
>
> Nitpick: initialize as zero and combine the labels.
>
>> +err:
>> +	free(argv);
>> +	free(row);
>> +	return NULL;
>> +}
>> +
>> +static int dm_parse_table(struct dm_device *dm, const char *ctable)
>> +{
>> +	struct dm_target *ti, *tmp;
>> +	char *table, **rowv;
>> +	int i, rowc;
>> +
>> +	table =3D xstrdup(ctable);
>> +	rowc =3D strtokv(table, "\n", &rowv);
>> +
>> +	for (i =3D 0; i < rowc; i++) {
>> +		ti =3D dm_parse_row(dm, rowv[i]);
>> +		if (!ti)
>> +			goto err_destroy;
>> +
>> +		list_add_tail(&ti->list, &dm->targets);
>> +	}
>> +
>> +	free(rowv);
>> +	free(table);
>> +	return 0;
>> +
>> +err_destroy:
>> +	list_for_each_entry_safe_reverse(ti, tmp, &dm->targets, list) {
>> +		ti->ops->destroy(ti);
>> +		list_del(&ti->list);
>> +	}
>> +
>> +	free(rowv);
>> +	free(table);
>> +
>> +	dev_err(&dm->dev, "Failed to parse table\n");
>> +	return -EINVAL;
>> +}
>> +
>> +void dm_destroy(struct dm_device *dm)
>> +{
>> +	struct dm_target *ti;
>> +
>> +	list_del(&dm->list);
>
> If you use a device class, this can be dropped.
>
>> +
>> +	blockdevice_unregister(&dm->blk);
>> +
>> +	list_for_each_entry_reverse(ti, &dm->targets, list) {
>> +		ti->ops->destroy(ti);
>> +	}
>> +
>> +	unregister_device(&dm->dev);
>> +
>> +	free(dm);
>> +}
>> +EXPORT_SYMBOL(dm_destroy);
>> +
>> +struct dm_device *dm_create(const char *name, const char *table)
>> +{
>> +	struct dm_target *ti;
>> +	struct dm_device *dm;
>> +	int err;
>> +
>> +	dm =3D xzalloc(sizeof(*dm));
>> +
>> +	dev_set_name(&dm->dev, "%s", name);
>> +	dm->dev.id =3D DEVICE_ID_SINGLE;
>> +	err =3D register_device(&dm->dev);
>> +	if (err)
>> +		goto err_free;
>
> Add a devinfo_add(dev, dm_devinfo), which calls dm_asprint()?
> That makes it easy to inspect the virtual devices using the devinfo
> command on the shell.

Very nice, thank you!

>> +
>> +	INIT_LIST_HEAD(&dm->targets);
>> +	err =3D dm_parse_table(dm, table);
>> +	if (err)
>> +		goto err_unregister;
>> +
>> +	dm->blk =3D (struct block_device) {
>> +		.dev =3D &dm->dev,
>> +		.cdev =3D {
>> +			.name =3D xstrdup(name),
>> +		},
>
> .cdev.name =3D xstrdup(name)
>
>> +
>> +		.type =3D BLK_TYPE_VIRTUAL,
>> +		.ops =3D &dm_blk_ops,
>> +
>> +		.num_blocks =3D dm_size(dm),
>> +		.blockbits =3D SECTOR_SHIFT,
>> +	};
>> +
>> +	err =3D blockdevice_register(&dm->blk);
>> +	if (err)
>> +		goto err_destroy;
>> +
>> +	list_add_tail(&dm->list, &dm_device_list);
>> +	return dm;
>> +
>> +err_destroy:
>> +	list_for_each_entry_reverse(ti, &dm->targets, list) {
>> +		ti->ops->destroy(ti);
>> +	}
>> +
>> +err_unregister:
>> +	unregister_device(&dm->dev);
>> +
>> +err_free:
>> +	free(dm);
>> +	return ERR_PTR(err);
>> +}
>> +EXPORT_SYMBOL(dm_create);
>> diff --git a/drivers/block/dm/dm-target.h b/drivers/block/dm/dm-target.h
>> new file mode 100644
>> index 0000000000..506e808b79
>> --- /dev/null
>> +++ b/drivers/block/dm/dm-target.h
>> @@ -0,0 +1,39 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +/* SPDX-FileCopyrightText: =C2=A9 2025 Tobias Waldekranz <tobias@waldek=
ranz.com>, Wires */
>> +
>> +#ifndef __DM_TARGET_H
>> +#define __DM_TARGET_H
>> +
>> +struct dm_device;
>> +struct dm_target_ops;
>> +
>> +struct dm_target {
>> +	struct dm_device *dm;
>> +	struct list_head list;
>> +
>> +	sector_t base;
>> +	blkcnt_t size;
>> +
>> +	const struct dm_target_ops *ops;
>> +	void *private;
>> +};
>> +
>> +void dm_target_err(struct dm_target *ti, const char *fmt, ...);
>> +
>> +struct dm_target_ops {
>> +	struct list_head list;
>> +	const char *name;
>> +
>> +	char *(*asprint)(struct dm_target *ti);
>> +	int (*create)(struct dm_target *ti, unsigned int argc, char **argv);
>> +	int (*destroy)(struct dm_target *ti);
>> +	int (*read)(struct dm_target *ti, void *buf,
>> +		    sector_t block, blkcnt_t num_blocks);
>> +	int (*write)(struct dm_target *ti, const void *buf,
>> +		     sector_t block, blkcnt_t num_blocks);
>> +};
>> +
>> +int dm_target_register(struct dm_target_ops *ops);
>> +void dm_target_unregister(struct dm_target_ops *ops);
>> +
>> +#endif	/* __DM_TARGET_H */
>> diff --git a/include/dm.h b/include/dm.h
>> new file mode 100644
>> index 0000000000..255796ca2f
>> --- /dev/null
>> +++ b/include/dm.h
>
> I'd prefer device-mapper.h for the header to avoid confusion with driver
> model. No need to change the symbol names though.

Reasonable, I'll rename it.

>> @@ -0,0 +1,16 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +
>> +#ifndef __DM_H
>> +#define __DM_H
>> +
>> +struct dm_device;
>> +
>> +struct dm_device *dm_find_by_name(const char *name);
>> +int dm_foreach(int (*cb)(struct dm_device *dm, void *ctx), void *ctx);
>> +
>> +char *dm_asprint(struct dm_device *dm);
>> +
>> +void dm_destroy(struct dm_device *dm);
>> +struct dm_device *dm_create(const char *name, const char *ctable);
>> +
>> +#endif /* __DM_H */
>
> --=20
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |


