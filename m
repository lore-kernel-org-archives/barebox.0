Delivery-date: Sat, 06 Sep 2025 02:11:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uugWP-008dSB-0d
	for lore@lore.pengutronix.de;
	Sat, 06 Sep 2025 02:11:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uugWL-0008F1-Ih
	for lore@pengutronix.de; Sat, 06 Sep 2025 02:11:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/EhqLJF5IewVXbxT12Fpc8z5Ux2DbBFd5rEziM0TuiM=; b=hQEGswAAIFiG7nMlbu0pB9TYec
	hS04e1sDZVFrb/Si+m3F7yNrQ+E8nEArdgxXgkYeoduRqsp9jNYgJeKPH7xskMcMZzGeemKRwG5jT
	fgyng7Y9JnYLI1f2s34qbTdhbtWX+AldlDHUrAu9l/V8RN/ShpQwUktC0LqX3T7jR8LdInBMzOaVz
	nN5JH5fmoDlGZZJFbS1h6kVAXsgpL6YtKFYsdt+010auQghy4jZDCGfv7YE8zS1l9WWKiApwW2K9N
	1veFP4qzxV13dbQ+i9NNnrY2q0LXVtCXFgYFY8R01YeNjSi2VuKWbaifOslsDa7CtjnlisGhEV7Oe
	OE7OeX5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uugVc-00000005RXo-1ze2;
	Sat, 06 Sep 2025 00:10:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuaD8-00000003TMX-15Tv
	for barebox@lists.infradead.org;
	Fri, 05 Sep 2025 17:26:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uuaD6-00068S-VJ; Fri, 05 Sep 2025 19:26:53 +0200
Message-ID: <1b9efd77-7c36-4c92-ba0b-cfde134cf6ef@pengutronix.de>
Date: Fri, 5 Sep 2025 19:26:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <20250828150637.2222474-3-tobias@waldekranz.com>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250828150637.2222474-3-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_102654_299967_44592A1A 
X-CRM114-Status: GOOD (  17.12  )
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
Subject: Re: [PATCH 2/5] dm: Add initial device mapper infrastructure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 8/28/25 5:05 PM, Tobias Waldekranz wrote:
> +struct dm_device *dm_create(const char *name, const char *table)
> +{
> +	struct dm_target *ti;
> +	struct dm_device *dm;
> +	int err;
> +
> +	dm = xzalloc(sizeof(*dm));
> +
> +	dev_set_name(&dm->dev, "%s", name);
> +	dm->dev.id = DEVICE_ID_SINGLE;
> +	err = register_device(&dm->dev);
> +	if (err)
> +		goto err_free;
> +
> +	INIT_LIST_HEAD(&dm->targets);
> +	err = dm_parse_table(dm, table);
> +	if (err)
> +		goto err_unregister;
> +
> +	dm->blk = (struct block_device) {
> +		.dev = &dm->dev,
> +		.cdev = {
> +			.name = xstrdup(name),
> +		},
> +
> +		.type = BLK_TYPE_VIRTUAL,
> +		.ops = &dm_blk_ops,
> +
> +		.num_blocks = dm_size(dm),
> +		.blockbits = SECTOR_SHIFT,
> +	};
> +
> +	err = blockdevice_register(&dm->blk);
> +	if (err)
> +		goto err_destroy;

Mhm, don't we have two block caching layers this way? Is this really
something we want? For drivers/block/ramdisk.c this was deemed
unnecessary, so it opencodes the blockdevice_register.

If this makes sense here as well, we could move that code into
common/block.c and make it reusable.

For now, I think a FIXME alerting to the fact that we have an
unnecessary caching step here is enough.

Cheers,
Ahmad

> +
> +	list_add_tail(&dm->list, &dm_device_list);
> +	return dm;
> +
> +err_destroy:
> +	list_for_each_entry_reverse(ti, &dm->targets, list) {
> +		ti->ops->destroy(ti);
> +	}
> +
> +err_unregister:
> +	unregister_device(&dm->dev);
> +
> +err_free:
> +	free(dm);
> +	return ERR_PTR(err);
> +}
> +EXPORT_SYMBOL(dm_create);
> diff --git a/drivers/block/dm/dm-target.h b/drivers/block/dm/dm-target.h
> new file mode 100644
> index 0000000000..506e808b79
> --- /dev/null
> +++ b/drivers/block/dm/dm-target.h
> @@ -0,0 +1,39 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: © 2025 Tobias Waldekranz <tobias@waldekranz.com>, Wires */
> +
> +#ifndef __DM_TARGET_H
> +#define __DM_TARGET_H
> +
> +struct dm_device;
> +struct dm_target_ops;
> +
> +struct dm_target {
> +	struct dm_device *dm;
> +	struct list_head list;
> +
> +	sector_t base;
> +	blkcnt_t size;
> +
> +	const struct dm_target_ops *ops;
> +	void *private;
> +};
> +
> +void dm_target_err(struct dm_target *ti, const char *fmt, ...);
> +
> +struct dm_target_ops {
> +	struct list_head list;
> +	const char *name;
> +
> +	char *(*asprint)(struct dm_target *ti);
> +	int (*create)(struct dm_target *ti, unsigned int argc, char **argv);
> +	int (*destroy)(struct dm_target *ti);
> +	int (*read)(struct dm_target *ti, void *buf,
> +		    sector_t block, blkcnt_t num_blocks);
> +	int (*write)(struct dm_target *ti, const void *buf,
> +		     sector_t block, blkcnt_t num_blocks);
> +};
> +
> +int dm_target_register(struct dm_target_ops *ops);
> +void dm_target_unregister(struct dm_target_ops *ops);
> +
> +#endif	/* __DM_TARGET_H */
> diff --git a/include/dm.h b/include/dm.h
> new file mode 100644
> index 0000000000..255796ca2f
> --- /dev/null
> +++ b/include/dm.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#ifndef __DM_H
> +#define __DM_H
> +
> +struct dm_device;
> +
> +struct dm_device *dm_find_by_name(const char *name);
> +int dm_foreach(int (*cb)(struct dm_device *dm, void *ctx), void *ctx);
> +
> +char *dm_asprint(struct dm_device *dm);
> +
> +void dm_destroy(struct dm_device *dm);
> +struct dm_device *dm_create(const char *name, const char *ctable);
> +
> +#endif /* __DM_H */

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



