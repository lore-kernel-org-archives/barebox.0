Delivery-date: Wed, 13 Dec 2023 14:47:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDPZu-002DdH-22
	for lore@lore.pengutronix.de;
	Wed, 13 Dec 2023 14:47:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDPZu-0005Ta-Qp
	for lore@pengutronix.de; Wed, 13 Dec 2023 14:47:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k2yRzODqnUluC1JSlQDvDjEegMmDgAfamESYPaO/I+4=; b=4U+E4FHjIVDVhuwVLh0jvp8OaH
	CvSyXifEnBDyUkrsFKZ43ghqqyaI/40oTEAQ7zpgralKM08mIiYbkm/siuAOmC5ZjGIx7LK/THLh+
	KcSKSIzCGxc0RpEy3shg5my7zpZbFFzpiDYPl4ryNvAiuxuIitAuvaMTvUvyeAiiWbHUfRC7eZ9J+
	0YqcUGZCugANXqOI2aCUQwEk0eFlqKU4x8y9ckvqsWLPk5tIuIQZS8pu2RqHOGj80zjnJKjM75pNc
	8Pat2G0jcM/Q50XGvkn3wg3+mABH7WP+q6tIyO24xFtrVSjvmZzP3vKpwtXhTyniztKW1Ab5p6Ptc
	E4EV5Kjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDPYh-00Erev-2X;
	Wed, 13 Dec 2023 13:45:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDPYe-00EreQ-28
	for barebox@lists.infradead.org;
	Wed, 13 Dec 2023 13:45:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rDPYZ-00045Q-Go; Wed, 13 Dec 2023 14:45:47 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rDPYZ-00FaFO-13; Wed, 13 Dec 2023 14:45:47 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rDPYY-006nUa-V3; Wed, 13 Dec 2023 14:45:46 +0100
Date: Wed, 13 Dec 2023 14:45:46 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Yann Sionneau <ysionneau@kalrayinc.com>
Message-ID: <20231213134546.GJ1318922@pengutronix.de>
References: <20231122170323.15175-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231122170323.15175-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_054552_720088_A2C710E2 
X-CRM114-Status: GOOD (  26.20  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/3] fs: add open O_TMPFILE support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 22, 2023 at 06:03:21PM +0100, Ahmad Fatoum wrote:
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
> v1 -> v2:
>   - don't use uninitialized fsdrv
> ---
>  fs/fs.c         | 29 +++++++++++++++++++++++++++++
>  include/fcntl.h |  3 +++
>  2 files changed, 32 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 1800d6826ddc..68e7873e9c54 100644
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
> +		if (fsdev->driver != ramfs_driver) {
> +			errno = EOPNOTSUPP;
> +			return -errno;
> +		}
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
> -- 
> 2.39.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


