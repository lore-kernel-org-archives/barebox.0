Delivery-date: Thu, 18 Sep 2025 15:06:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzELg-004TYn-00
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 15:06:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzELf-0005S3-AY
	for lore@pengutronix.de; Thu, 18 Sep 2025 15:06:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h0nWTbOvhL2Yo+1WIS1sdbuOX8tmdJSCGQ/RMIfDPOI=; b=3V0Pf1WcP7Suoip8kMpVSuBN4q
	Uu3tJ7kkXPXtkPc+M+vya9JSwmT55Xp3bPvrh59hAQQC3Cw+Ve5Fe6uCx9cXywzZBikEI/MPanxLe
	kbCpGAkreHvF3+Kg/ugP5R1EpP4xz73I7+Zgx+YZyG0MwnInbY1AUtsC3VgGwT5htoJ85F3GrRC6c
	OIQviN3dBwlBGtn8AEdf23liLUHYNmLURmmWUQo24mNEBaaIAB8t9wgfsIpyxX7+AGXokyUea7BXG
	ERgIagLyQF1Ao20sbA0xKf9zUWsa/aRXHCAX35+1ahgzGAb4nYzkaUeTlUAn2kXZ2C+kieGsLbESF
	5gGMtgpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzEKz-0000000HUd1-2AXw;
	Thu, 18 Sep 2025 13:06:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzEKt-0000000HUbC-37Re
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 13:06:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uzEKq-0005Ka-S8; Thu, 18 Sep 2025 15:06:04 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uzEKq-001wjP-1n;
	Thu, 18 Sep 2025 15:06:04 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uzEKq-00Frlv-1V;
	Thu, 18 Sep 2025 15:06:04 +0200
Date: Thu, 18 Sep 2025 15:06:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Tobias Waldekranz <tobias@waldekranz.com>
Cc: barebox@lists.infradead.org
Message-ID: <aMwDvHXzbzpaCwey@pengutronix.de>
References: <20250918074455.891780-1-tobias@waldekranz.com>
 <20250918074455.891780-4-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250918074455.891780-4-tobias@waldekranz.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_060607_790281_2E44A444 
X-CRM114-Status: GOOD (  28.19  )
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
X-Spam-Status: No, score=-1.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 03/11] dm: verity: Add transparent integrity checking
 target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 18, 2025 at 09:43:13AM +0200, Tobias Waldekranz wrote:
> Add the dm-verity target, which is compatible with the Linux
> implementation. This means that we can now create dm-verity devices on
> top of partitions containing read-only filesystems and transparently
> verify the integrity of all data is associated the verity root hash.
> 
> CRUCIALLY: The root hash still has be validated by some other means,
> which is outside of the scope of this implementation. Future changes
> will add support for validation of the root hash using a PKCS#7
> signature, again compatible with the Linux kernel implementation.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  drivers/block/dm/Kconfig     |   7 +
>  drivers/block/dm/Makefile    |   1 +
>  drivers/block/dm/dm-target.h |  14 ++
>  drivers/block/dm/dm-verity.c | 463 +++++++++++++++++++++++++++++++++++
>  4 files changed, 485 insertions(+)
>  create mode 100644 drivers/block/dm/dm-verity.c
> 
> +static int dm_verity_create(struct dm_target *ti, unsigned int argc, char **argv)
> +{
> +	struct dm_verity *v;
> +	unsigned int ver;
> +	int err;
> +
> +	if (argc != 10) {
> +		dm_target_err(ti, "Expected 10 arguments, got %u\n", argc);
> +		return -EINVAL;
> +	}

For the sake of readablity, can you do a

	const char *verity_version = argv[0];
	const char *verity_device = argv[1];
	...

and use these instead of argv[x] directly?


> +
> +	if (kstrtouint(argv[0], 0, &ver) || ver != 1) {
> +		dm_target_err(ti, "Only version 1 is supported, not \"%s\"\n", argv[0]);
> +		return -EINVAL;
> +	}
> +
> +	v = xzalloc(sizeof(*v));
> +	ti->private = v;
> +
> +	err = dm_verity_cdev_init(ti, &v->ddev, argv[1], argv[3], argv[5], NULL);
> +	if (err)
> +		goto err;
> +
> +	err = dm_verity_cdev_init(ti, &v->hdev, argv[2], argv[4], NULL, argv[6]);
> +	if (err)
> +		goto err;
> +
> +	v->digest_algo = digest_alloc(argv[7]);
> +	if (!v->digest_algo) {
> +		dm_target_err(ti, "Unknown digest \"%s\"\n", argv[7]);
> +		err = -EINVAL;
> +		goto err;
> +	}
> +
> +	v->digest_len = digest_length(v->digest_algo);
> +	if ((1 << v->hdev.blk.bits) < v->digest_len * 2) {
> +		dm_target_err(ti, "Digest size too big\n");
> +		err = -EINVAL;
> +		goto err;
> +	}
> +
> +	v->root_digest = xmalloc(v->digest_len);
> +	if (strlen(argv[8]) != v->digest_len * 2 ||
> +	    hex2bin(v->root_digest, argv[8], v->digest_len)) {
> +		dm_target_err(ti, "Invalid root digest \"%s\"\n", argv[8]);
> +		err = -EINVAL;
> +		goto err;
> +	}
> +
> +	if (strcmp(argv[9], "-")) {
> +		v->salt_size = strlen(argv[9]) / 2;
> +		v->salt = xmalloc(v->salt_size);
> +
> +		if (strlen(argv[9]) != v->salt_size * 2 ||
> +		    hex2bin(v->salt, argv[9], v->salt_size)) {
> +			dm_target_err(ti, "Invalid salt \"%s\"\n", argv[9]);
> +			err = -EINVAL;
> +			goto err;
> +		}
> +	}
> +
> +	err = dm_verity_measure(ti);
> +	if (err)
> +		goto err;
> +
> +	/* Initialize this to a value larger than the largest possible
> +	 * hash block lba to make sure that the first hash block read
> +	 * in dm_verity_verify() always misses the cache.
> +	 */
> +	v->verify.hblock.block = v->hdev.blk.num;
> +	v->verify.hblock.data = xmalloc(1 << v->hdev.blk.bits);
> +
> +	v->verify.digest = xmalloc(v->digest_len);
> +	v->verify.trusted = bitmap_xzalloc(v->hdev.blk.num);
> +	return 0;
> +
> +err:
> +	if (v->salt)
> +		free(v->salt);
> +	if (v->root_digest)
> +		free(v->root_digest);

No need to check. free() handles NULL pointers.

Sascha

> +	if (v->digest_algo)
> +		digest_free(v->digest_algo);
> +	if (v->hdev.cdev)
> +		cdev_close(v->hdev.cdev);
> +	if (v->ddev.cdev)
> +		cdev_close(v->ddev.cdev);
> +
> +	free(v);
> +	return err;
> +}
> +

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


