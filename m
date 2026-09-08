Delivery-date: Tue, 08 Sep 2026 10:56:01 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x3rcW-001TiW-2b
	for lore@lore.pengutronix.de;
	Tue, 08 Sep 2026 10:56:01 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DP5nbipk;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=B1AMGZDt;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A1AA220177F
	for <lore@pengutronix.de>; Tue, 08 Sep 2026 10:56:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3QHLOTCMFQRQB/ZTm/4BuT0KSPeir+KhniO4oJu6Y0A=; b=DP5nbipk8BDHYLwWErmQfTl5Z5
	4S5UadoGacz0AWMKd+MzXUE44519aWY4xDae1TSx3YCG4wD1joCdC9zO0+LjGCAUPfHmQXp373uOZ
	OTKCS7866aFgIuqFovRLejI0n0pBeL3gfE1+oQFBf41at8nez4xdU7ySD48qfy6vQLtnpIo5j9odo
	h/67+K+SdZVuWUFMndqnVe2ETdBwyc5ggAm+oYnBsmKY4ukUZgHUD3QFl9lduzb1TyQPE7F8MCszg
	vkwrSaNsbaXLmTV/8mPZpV23cQkAeL7km1ONyckwMo1+BPfIghyKhThCwvZ5aLiuJnFz2LlP+mVH+
	hmg1hutg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3rcA-00000008Tl2-2Z37;
	Tue, 08 Sep 2026 08:55:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3rc9-00000008Tko-116V
	for barebox@bombadil.infradead.org;
	Tue, 08 Sep 2026 08:55:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=3QHLOTCMFQRQB/ZTm/4BuT0KSPeir+KhniO4oJu6Y0A=; b=B1AMGZDtuafqZGM5Is9HMELWKc
	DZeAneWxoaP6lL3Py0hiInyriqTkHIKI2vuOzujBotTJQ7X2REAFTsu+Ji6x+TbM4VYliBdAIlj75
	8C1zDyEUjTqYld4TmKbm96yur1Rq7tWV1vvbWXWUfRR/r/qCWydkoJiMN4ZGCAVtWB+Rf6T2esj5I
	QkWBlTHT48KZ4qePXN9t+qrhj1Tisl5WKTiK26MhE00uc0qKpS7pFs01yagh33xq+QYmJIe70fbxu
	vpsbp7kFQhZbtKAxto3+uCELQwuMt6KJ1txJMtAYlRIY0p8TmbHVG3M9AVOBW+KvYXEYFbUOs46R9
	D9aP/OtQ==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x3rc5-0000000H9bR-38lz
	for barebox@lists.infradead.org;
	Tue, 08 Sep 2026 08:55:36 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6274F20177F;
	Tue, 08 Sep 2026 10:55:31 +0200 (CEST)
Message-ID: <600f1970-d0c9-40eb-bbd0-b7ac243b49dd@pengutronix.de>
Date: Tue, 8 Sep 2026 10:55:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] fs: reject inodes whose size the superblock cannot
 address
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260908-fs-filesize-fixes-v1-0-8cf3e781a4d0@pengutronix.de>
 <20260908-fs-filesize-fixes-v1-2-8cf3e781a4d0@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260908-fs-filesize-fixes-v1-2-8cf3e781a4d0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_095534_019555_249CF9BA 
X-CRM114-Status: GOOD (  25.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 9/8/26 10:32 AM, Sascha Hauer wrote: > f_size is an alias
    for the inode's i_size, and filesystems read that > size straight from untrusted
    media. ext4's ext4_isize() builds it as > ((loff_t)size_hi [...] 
 
 Content analysis details:   (-0.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: 4actt1t3am3hkfjxo14xksobjm9jx5g3
X-Rspamd-Queue-Id: A1AA220177F
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action



On 9/8/26 10:32 AM, Sascha Hauer wrote:
> f_size is an alias for the inode's i_size, and filesystems read that
> size straight from untrusted media. ext4's ext4_isize() builds it as
> ((loff_t)size_high << 32) | size, so bit 31 of size_high lands in the
> sign bit; squashfs takes an unchecked le64 for LREG inodes. A negative
> i_size then feeds the offset arithmetic in __read(), __write() and
> friends, where it either wraps a size_t count to something huge or --
> depending on whether size_t is 32 or 64 bit -- turns the comparison
> unsigned and skips the EOF clamp altogether.
> 
> Catch this the way Linux does: give the superblock a ceiling and refuse
> sizes beyond it, instead of hardening every arithmetic site. Default
> s_maxbytes to MAX_LFS_FILESIZE in init_super(), which runs before the
> driver probe, so the filesystems that already lower it (jffs2, ubifs,
> squashfs, 9p) keep doing so and everyone else stops sitting at zero.
> 
> The check goes into do_dentry_open() rather than into iget: ten drivers
> only learn the size in their ->open() callback and write it to the
> inode through file->f_size, so a lookup time check would miss them.
> Casting to u64 makes a negative size exceed any sane s_maxbytes, so the
> sign is covered too; streaming files carry no size of their own and are
> exempted on the i_stream flag rather than on an i_size value.
> 
> Assisted-by: Claude:claude-opus-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/fs.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 85881f6cf1..29478cb419 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -998,6 +998,7 @@ int fsdev_open_cdev(struct fs_device *fsdev)
>  static void init_super(struct super_block *sb)
>  {
>  	INIT_LIST_HEAD(&sb->s_inodes);
> +	sb->s_maxbytes = MAX_LFS_FILESIZE;
>  }
>  
>  static int fsdev_umount(struct fs_device *fsdev)
> @@ -2627,6 +2628,14 @@ static int rmdirat(int dirfd, const char *pathname)
>  	return errno_set(error);
>  }
>  
> +static bool i_size_valid(struct inode *inode)
> +{
> +	if (inode->i_stream)
> +		return true;
> +
> +	return (u64)inode->i_size <= inode->i_sb->s_maxbytes;
> +}
> +
>  static int do_dentry_open(struct file *f)
>  {
>  	int error;
> @@ -2642,6 +2651,12 @@ static int do_dentry_open(struct file *f)
>  			return error;
>  	}
>  
> +	if (!i_size_valid(f->f_inode)) {
> +		dev_warn(&f->fsdev->dev, "%s: bad i_size value: %lld\n",
> +			 f->path, f->f_size);
> +		return -EUCLEAN;
> +	}
> +
>  	if (f->f_flags & O_TRUNC) {
>  		error = fsdev_truncate(f, 0);
>  		f->f_size = 0;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



