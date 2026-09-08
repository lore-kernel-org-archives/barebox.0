Delivery-date: Tue, 08 Sep 2026 10:52:22 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x3rZ0-001Tf2-2x
	for lore@lore.pengutronix.de;
	Tue, 08 Sep 2026 10:52:22 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=anwkYpDq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2DDB9201A75
	for <lore@pengutronix.de>; Tue, 08 Sep 2026 10:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m19RmioxX3vyT+SMDD43gLYddGXuBRIGS9pS4TCezQY=; b=anwkYpDqKl5dtf68uyjpOJBlZ3
	EISgjPTbGJ5BsxYXPEroEtXP6EKqSm/XYJHJL/RogFxLr5YR5DaGOH51z2uHS7oDOA9swSCzC9jKL
	hDcWAyN9dgZedOGFVKHFRpvZcheQaMqOyqoz6iPkg9YQkMpkYGl/+satoagvaehIxs5/Jb1COAZ5O
	UCOkwyyGpmuJyU9D8N3NG2W1awbmUKTf6T1mCQjdCv2DlqZCj4+disgxpTGkEQK2rcnfICIyVtLZY
	x4H/gF0EyNr9FAF63/ZT6UqZd9vr18JA48B8+IBE7zHZUv8E6rbQavAYre7pg35Bzd3qIB0jby7qo
	BEex+zRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3rXj-00000008TDf-42iu;
	Tue, 08 Sep 2026 08:51:03 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3rXg-00000008TC2-0kfo
	for barebox@lists.infradead.org;
	Tue, 08 Sep 2026 08:51:02 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 575B5201CD1;
	Tue, 08 Sep 2026 10:50:56 +0200 (CEST)
Message-ID: <a501d3a8-583a-4c36-acd0-839225a46672@pengutronix.de>
Date: Tue, 8 Sep 2026 10:50:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] fs: track streaming and unknown-size files in
 dedicated inode fields
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260908-fs-filesize-fixes-v1-0-8cf3e781a4d0@pengutronix.de>
 <20260908-fs-filesize-fixes-v1-1-8cf3e781a4d0@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260908-fs-filesize-fixes-v1-1-8cf3e781a4d0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_015100_376405_68F9FC13 
X-CRM114-Status: GOOD (  38.49  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 9/8/26 10:32 AM, Sascha Hauer wrote: > Streaming files
   and files of not-yet-known size carried that fact as > i_size == FILE_SIZE_STREAM,
    i.e. (loff_t)-1. Overloading i_size this way > is fragile: [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
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
X-Stat-Signature: bsashgqpse81na5b8oe7sthwkununr7w
X-Rspamd-Queue-Id: 2DDB9201A75
X-Spamd-Result: default: False [-57.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

On 9/8/26 10:32 AM, Sascha Hauer wrote:
> Streaming files and files of not-yet-known size carried that fact as
> i_size == FILE_SIZE_STREAM, i.e. (loff_t)-1. Overloading i_size this way
> is fragile: a value read from media is indistinguishable from the
> sentinel, so nothing can tell a genuine special file from a corrupted
> inode that happens to hold -1.
> 
> Two unrelated situations were hidden behind that one value:
> 
>   - a character device is a genuine sizeless stream, and
>   - a tftp transfer without a negotiated size has a real, definite size
>     that is simply not known until the file has been read to its end.
> 
> The latter is not a stream: it has an end of file and it is seekable --
> tftp_lseek() moves forward by reading and discarding and backward by
> reopening the transfer. Conflating the two would invite wrong
> conclusions such as forbidding seeks on a tftp file.
> 
> Give the inode an i_stream flag for the former and an i_size_unknown flag
> for the latter, and leave i_size at a real value in both cases. The two
> agree on the only thing that matters to the I/O layer: i_size is not a
> valid bound, so reads, writes and seeks must not be clamped to it and the
> driver reports the end of the file itself. That shared question is folded
> into the i_size_is_bound() helper. FILE_SIZE_STREAM stays only as the
> stat sentinel that stat_inode() synthesises from these flags for its
> callers.
> 
> No functional change intended; this only moves the "no i_size bound" bit
> out of i_size so it can be trusted independently of the on-media value.
> 
> Assisted-by: Claude:claude-fable-5

With S-o-b added:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/devfs.c         |  7 ++++++-
>  fs/fs.c            | 22 ++++++++++++++++++----
>  fs/tftp.c          |  2 +-
>  include/linux/fs.h |  2 ++
>  4 files changed, 27 insertions(+), 6 deletions(-)
> 
> diff --git a/fs/devfs.c b/fs/devfs.c
> index 75df330bcb..cb2980b114 100644
> --- a/fs/devfs.c
> +++ b/fs/devfs.c
> @@ -110,7 +110,12 @@ static int devfs_open(struct inode *inode, struct file *f)
>  			return -ENOENT;
>  	}
>  
> -	f->f_size = cdev_size(cdev);
> +	if (cdev_size(cdev) == FILE_SIZE_STREAM) {
> +		inode->i_stream = true;
> +		f->f_size = 0;
> +	} else {
> +		f->f_size = cdev->size;
> +	}
>  	f->private_data = cdev;
>  
>  	return cdev_open(cdev, f->f_flags);
> diff --git a/fs/fs.c b/fs/fs.c
> index ce41f23f88..85881f6cf1 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -373,6 +373,18 @@ static int fsdev_truncate(struct file *f, loff_t length)
>  		f->f_inode->i_fop->truncate(f, length) : -EROFS;
>  }
>  
> +/*
> + * Reads, writes and seeks are clamped to i_size, but only when i_size is a
> + * meaningful bound. A character device is a sizeless stream, and a file whose
> + * size is only discovered while reading (e.g. a tftp transfer without a
> + * negotiated size) starts out with i_size zero; for both, i_size must not clamp
> + * I/O and the driver reports the end of the file itself.
> + */
> +static bool i_size_is_bound(const struct inode *inode)
> +{
> +	return !inode->i_stream && !inode->i_size_unknown;
> +}
> +
>  int ftruncate(int fd, loff_t length)
>  {
>  	struct file *f = fd_to_file(fd, false);
> @@ -381,7 +393,7 @@ int ftruncate(int fd, loff_t length)
>  	if (IS_ERR(f))
>  		return -errno;
>  
> -	if (f->f_size == FILE_SIZE_STREAM)
> +	if (!i_size_is_bound(f->f_inode))
>  		return 0;
>  
>  	ret = fsdev_truncate(f, length);
> @@ -427,7 +439,7 @@ static ssize_t __read(struct file *f, void *buf, size_t count)
>  	if (fsdrv != ramfs_driver)
>  		assert_command_context();
>  
> -	if (f->f_size != FILE_SIZE_STREAM && f->f_pos + count > f->f_size)
> +	if (i_size_is_bound(f->f_inode) && f->f_pos + count > f->f_size)
>  		count = f->f_size - f->f_pos;
>  
>  	if (!count)
> @@ -487,7 +499,7 @@ static ssize_t __write(struct file *f, const void *buf, size_t count)
>  	if (fsdrv != ramfs_driver)
>  		assert_command_context();
>  
> -	if (f->f_size != FILE_SIZE_STREAM && f->f_pos + count > f->f_size) {
> +	if (i_size_is_bound(f->f_inode) && f->f_pos + count > f->f_size) {
>  		ret = fsdev_truncate(f, f->f_pos + count);
>  		if (ret) {
>  			if (ret == -EPERM)
> @@ -592,7 +604,7 @@ loff_t lseek(int fd, loff_t offset, int whence)
>  
>  	pos += offset;
>  
> -	if (f->f_size != FILE_SIZE_STREAM && (pos < 0 || pos > f->f_size))
> +	if (i_size_is_bound(f->f_inode) && (pos < 0 || pos > f->f_size))
>  		goto out;
>  
>  	if (f->f_inode->i_fop->lseek) {
> @@ -1105,6 +1117,8 @@ static void stat_inode(struct inode *inode, struct stat *s)
>  		cdev = cdev_by_name(inode->cdevname);
>  
>  		s->st_size = cdev ? cdev_size(cdev) : 0;
> +	} else if (!i_size_is_bound(inode)) {
> +		s->st_size = FILE_SIZE_STREAM;
>  	} else {
>  		s->st_size = inode->i_size;
>  	}
> diff --git a/fs/tftp.c b/fs/tftp.c
> index e8a6b62870..dc68f2c77c 100644
> --- a/fs/tftp.c
> +++ b/fs/tftp.c
> @@ -1088,7 +1088,7 @@ static struct dentry *tftp_lookup(struct inode *dir, struct dentry *dentry,
>  	if (filesize)
>  		inode->i_size = filesize;
>  	else
> -		inode->i_size = FILE_SIZE_STREAM;
> +		inode->i_size_unknown = true;
>  
>  	d_add(dentry, inode);
>  
> diff --git a/include/linux/fs.h b/include/linux/fs.h
> index d3813ad9c5..fc50d207a6 100644
> --- a/include/linux/fs.h
> +++ b/include/linux/fs.h
> @@ -129,6 +129,8 @@ struct inode {
>  	gid_t			i_gid;
>  	u64			i_version;
>  	loff_t			i_size;
> +	bool			i_stream;	/* sizeless stream, e.g. a character device */
> +	bool			i_size_unknown;	/* real size, not known until read, e.g. tftp */
>  	struct timespec		i_atime;
>  	struct timespec		i_mtime;
>  	struct timespec		i_ctime;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



