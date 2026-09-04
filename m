Delivery-date: Fri, 04 Sep 2026 13:06:39 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2Rkk-00Ai6E-2a
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 13:06:39 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="anlcU/vm";
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5334220590C
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 13:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=96a8lomL1vej06mLWiYBaMCA8uxc20fu9WBO2aABIZk=; b=anlcU/vmCMLGwVCAHKG2oskqfI
	YmHrf/yiYGaRjI7bEAT38bgp6kFB0zB7xzw3IT7p+XQzT/fcCTVF7/HE/IsPA2X08k7g5nJ6D6hQx
	pGTVQd00ajwee8jGFEZ/Dhd6lfihkfdzqF++pyXsGPXo72SeG7crz8k1X79Pv1LCLyFt/RsYhmpXc
	XEt7CAUvWtWF4xuyC7vepiVvh6gSOvrnw75s2wLdxsBKUNiS5pI1gm1b1KUY6+51NDifgKJi8o53t
	vMGz6KIXAxglqetEu/OkECtn5LKFvLBeDUAFr92PieNxWfmT+LlkiwKuAH3awRyobWYnyRfldIRdm
	8Gs/axfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2RjT-00000001loG-1VjS;
	Fri, 04 Sep 2026 11:05:19 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2RjP-00000001lmb-10bG
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 11:05:17 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4090520177F;
	Fri, 04 Sep 2026 13:05:13 +0200 (CEST)
Message-ID: <d7196138-b6c4-47ec-b405-bd5e2160c6e3@pengutronix.de>
Date: Fri, 4 Sep 2026 13:05:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] fs: reject inodes whose size the superblock cannot
 address
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
References: <20260904091551.3713729-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260904091551.3713729-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_040515_434965_9BE66D2F 
X-CRM114-Status: GOOD (  26.66  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 9/4/26 11:15 AM, Sascha Hauer wrote: > f_size is an alias
    for the inode's i_size, and filesystems read that > size straight from untrusted
    media. ext4's ext4_isize() builds it as > ((loff_t)size_hi [...] 
 
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: wb7b3n51irom13bigs5498qq9p65zr1e
X-Rspamd-Queue-Id: 5334220590C
X-Spamd-Result: default: False [-57.51 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]



On 9/4/26 11:15 AM, Sascha Hauer wrote:
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
> sign is covered too; FILE_SIZE_STREAM is negative on purpose and has to
> be excluded.
> 
> Assisted-by: Claude:claude-opus-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/fs.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index ce41f23f88..9518f28539 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -986,6 +986,7 @@ int fsdev_open_cdev(struct fs_device *fsdev)
>  static void init_super(struct super_block *sb)
>  {
>  	INIT_LIST_HEAD(&sb->s_inodes);
> +	sb->s_maxbytes = MAX_LFS_FILESIZE;
>  }
>  
>  static int fsdev_umount(struct fs_device *fsdev)
> @@ -2613,6 +2614,14 @@ static int rmdirat(int dirfd, const char *pathname)
>  	return errno_set(error);
>  }
>  
> +static bool i_size_valid(struct inode *inode)
> +{
> +	if (inode->i_size == FILE_SIZE_STREAM)
> +		return true;

Is FILE_SIZE_STREAM not a barebox convention? Couldn't a file system
have on disk FILE_SIZE_STREAM and trigger misbehavior this way?

> +
> +	return (u64)inode->i_size <= inode->i_sb->s_maxbytes;
> +}
> +
>  static int do_dentry_open(struct file *f)
>  {
>  	int error;
> @@ -2628,6 +2637,12 @@ static int do_dentry_open(struct file *f)
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

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



