Delivery-date: Mon, 20 Nov 2023 14:34:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r54Pj-001VkC-0A
	for lore@lore.pengutronix.de;
	Mon, 20 Nov 2023 14:34:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r54Pj-0001oG-1D
	for lore@pengutronix.de; Mon, 20 Nov 2023 14:34:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Re/VZekaqD+kGVQ5eBe0Ni2aG5evW4P5ow6dUYHx6nI=; b=1AHV5I2bm03c17lN6VCmRF8JcN
	CHRvhYokVtJ1w/S4CLIwzMtFbYeJ7J8REFb9MTZ4PNXRVGpdy71MaOvVxcsDE8u0vQaptGJBQeo+a
	MCF7K0pAleLOiu6VDq0K1inEVJP60sqr/1VjyinMPIuuzKYSK9E1vKPsyJg6PM6z7lU1KGWphdGNC
	Hw4OT8qurqxHU6EhMQxVcZgXLdPvw2Ald4m/0bsN7SzOGe3xoI3286Cqzx3tlVo7doaYu/DQ+oLs7
	DP4ipCA6uvvLkwXsqlKILfQoiBVuCT4VynHA8loYaukjiqK3Z/sDtJuJQqNkj/B4AeW92weQ5dSSg
	iknCAiaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r54Ny-00CA1S-0q;
	Mon, 20 Nov 2023 13:32:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r54Nr-00C9zk-2w
	for barebox@lists.infradead.org;
	Mon, 20 Nov 2023 13:32:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r54Nk-0001OC-Cd
	for barebox@lists.infradead.org; Mon, 20 Nov 2023 14:32:08 +0100
Message-ID: <a66ea1c8-0484-802f-d7f9-39dffa2e7c84@pengutronix.de>
Date: Mon, 20 Nov 2023 14:32:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20231120083750.3967831-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231120083750.3967831-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_053215_969196_4845C434 
X-CRM114-Status: GOOD (  23.93  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH RFC 1/3] fs: add open O_TMPFILE support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 20.11.23 09:37, Ahmad Fatoum wrote:
> barebox dentry cache is never cleared with the assumption that there
> should be enough RAM anyway to cache all lookups until boot.
> 
> When fuzzing barebox however, there is no limit to how many dentries
> are added to the cache. This is e.g. problematic when fuzzing the FIT
> parser: FIT images can have compressed payloads. Compressed payloads are
> passed to uncompress_buf_to_buf, which uses a new random file in ramfs
> as destination. A fuzzer would thus create a dentry for every iteration,
> rapidly depleting memory.
> 
> A general solution for that would be dropping the dentry cache on memory
> pressure. In the special case of uncompress_buf_to_buf, it would already
> be enough though to sidestep the dentry cache and create an anonymous
> file. Linux provides this with the O_TMPFILE option, so let's add the
> equivalent to barebox.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/fs.c         | 29 +++++++++++++++++++++++++++++
>  include/fcntl.h |  3 +++
>  2 files changed, 32 insertions(+)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 1800d6826ddc..6bd3c2df3c31 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -2539,6 +2539,35 @@ int open(const char *pathname, int flags, ...)
>  	const char *s;
>  	struct filename *filename;
>  
> +	if (flags & O_TMPFILE) {
> +		fsdev = get_fsdevice_by_path(pathname);
> +		if (!fsdev) {
> +			errno = ENOENT;
> +			return -errno;
> +		}
> +
> +		if (fsdrv != ramfs_driver) {
> +			errno = EOPNOTSUPP;
> +			return -errno;
> +		}

Ouch should be fsdev->driver. Will retest and resend.

> +
> +		f = get_file();
> +		if (!f) {
> +			errno = EMFILE;
> +			return -errno;
> +		}
> +
> +		f->path = NULL;
> +		f->dentry = NULL;
> +		f->f_inode = new_inode(&fsdev->sb);
> +		f->f_inode->i_mode = S_IFREG;
> +		f->flags = flags;
> +		f->size = 0;
> +		f->fsdev = fsdev;
> +
> +		return f->no;
> +	}
> +
>  	filename = getname(pathname);
>  	if (IS_ERR(filename))
>  		return PTR_ERR(filename);
> diff --git a/include/fcntl.h b/include/fcntl.h
> index 2e7c0eed3479..1b4cd8ad3783 100644
> --- a/include/fcntl.h
> +++ b/include/fcntl.h
> @@ -16,6 +16,9 @@
>  #define O_APPEND	00002000
>  #define O_DIRECTORY	00200000	/* must be a directory */
>  #define O_NOFOLLOW	00400000	/* don't follow links */
> +#define __O_TMPFILE	020000000
> +
> +#define O_TMPFILE       (__O_TMPFILE | O_DIRECTORY)
>  
>  /* barebox additional flags */
>  #define O_RWSIZE_MASK	017000000

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



