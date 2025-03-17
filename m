Delivery-date: Mon, 17 Mar 2025 11:46:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu7zX-000a9W-0E
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 11:46:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu7zV-0000HN-Nz
	for lore@pengutronix.de; Mon, 17 Mar 2025 11:46:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IjYv+DwJuipQ/M23UF1Bk79EjK25I6mHvKo0Xuazwq8=; b=qLQK57nxp9Os/IZnEGE8CgwIqP
	4+MOxHa/1gufQkb0j1R3MQKCrf75Q2PbTvX44d/DIPHbU5RS/HeqczU6sMVX/SKF0ZtBxDzHnaup/
	WCb2zuYj+hNJQ4efWt6A0JzJGfSc0qJy/9xXC4g0aaIgqeU5oOSOx+eQt8qzQkaUqBaZOhFUPIMx2
	3xFtKUBCiQpemaMHx98MogER03CFVuVBSWFJC8Ea/UUKxEBXZVcWpjmK6QZhatINFrX/Tjt36Pvxf
	k/A+F6kT5mDCPK+oz+we/Ynfa4LwvhtePYWxyjf5GA8Baf5D/2wWB21K8cpnyUCXQO1Ut1iMpRAxy
	BGUabyPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu7yu-00000002EVN-3k3V;
	Mon, 17 Mar 2025 10:46:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu7vD-00000002DTP-1GrT
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 10:42:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tu7vA-0007dL-Ov; Mon, 17 Mar 2025 11:42:12 +0100
Message-ID: <6d6d7a57-e716-48c0-86a6-9a91b337db3f@pengutronix.de>
Date: Mon, 17 Mar 2025 11:42:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Licht <jonas.licht@gmail.com>, barebox@lists.infradead.org
References: <20250311141713.30947-1-jonas.licht@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250311141713.30947-1-jonas.licht@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_034215_349331_BC1F0713 
X-CRM114-Status: GOOD (  25.35  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] environment: support reading and writing of efivar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

Thanks for your patch. Please see the comments inline.

On 3/11/25 15:17, Jonas Licht wrote:
> scripts/bareboxenv: skip file creation to allow reading the destination
> file, when existing.

Can you elaborate a bit on what's done here? e.g. On EFI, barebox
environment can be stored into an EFI variable. An EFI variable's value
as read from Linux efivarfs is preceded by four bytes of metadata, which
we need to maintain when rewriting the variable.

> Signed-off-by: Jonas Licht <jonas.licht@gmail.com>
> Fixes #29

Link: https://github.com/barebox/barebox/issues/29

> ---
>  common/environment.c | 62 +++++++++++++++++++++++++++++++++++++++-----
>  scripts/bareboxenv.c | 11 +-------
>  2 files changed, 57 insertions(+), 16 deletions(-)
> 
> diff --git a/common/environment.c b/common/environment.c
> index 37adb5d678..dee746a6b2 100644
> --- a/common/environment.c
> +++ b/common/environment.c
> @@ -305,9 +305,10 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
>  	struct envfs_super *super;
>  	int envfd, size, ret;
>  	struct action_data data = {};
> -	void *buf = NULL, *wbuf;
> +	void *buf = NULL, *wbuf, *bufWithEfi;

barebox is written in kernel coding style, so please use snake case
for variables.

>  	struct envfs_entry *env;
>  	const char *defenv_path = default_environment_path_get();
> +	uint32_t magic;
>  
>  	if (!filename)
>  		filename = defenv_path;
> @@ -342,7 +343,9 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
>  		}
>  	}
>  
> -	buf = xzalloc(size + sizeof(struct envfs_super));
> +	bufWithEfi = xzalloc(size + sizeof(struct envfs_super) +
> +			     4); // four byte efi attributes

Nit: #define EFIVAR_ATTR_SIZE 4 at the top of the file and use it here
instead of the comment.

> +	buf = bufWithEfi + 4;
>  	data.writep = buf + sizeof(struct envfs_super);
>  
>  	super = buf;
> @@ -370,7 +373,7 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
>  	super->crc = ENVFS_32(crc32(0, buf + sizeof(struct envfs_super), size));
>  	super->sb_crc = ENVFS_32(crc32(0, buf, sizeof(struct envfs_super) - 4));
>  
> -	envfd = open(filename, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);
> +	envfd = open(filename, O_RDWR | O_CREAT, S_IRUSR | S_IWUSR);
>  	if (envfd < 0) {
>  		printf("could not open %s: %m\n", filename);
>  		ret = -errno;
> @@ -385,6 +388,34 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
>  		goto out;
>  	}
>  
> +	wbuf = buf;
> +
> +	/* check if we writing efi vars */

I think it will be more readable to factor this out into a helper
function. That function should also have an early exit with:

	if (!IS_ENABLED(CONFIG_EFI))
		return buf;

So, non-EFI platforms can skip this code altogether.

> +	ret = pread(envfd, &magic, sizeof(uint32_t),
> +		    4); // four byte efi var attributes
> +	if (ret == -1 && errno == ENOENT) {
> +		// skip as file don't exist
> +		goto skip_efi_read;
> +	}
> +	if (ret < sizeof(u_int32_t)) {
> +		perror("read of destination file failed");

perror("pread") is enough given that there are no instances of perror.

> +		ret = -errno;
> +		goto skip_efi_read;
> +	}
> +
> +	if (ENVFS_32(magic) == ENVFS_MAGIC) {
> +		pr_info("looks like we writing efi vars, keep attributes\n");

"Assuming EFI variable. Keeping attributes\n"

> +		ret = pread(envfd, bufWithEfi, sizeof(uint32_t), 0);
> +		if (ret < sizeof(uint32_t)) {
> +			perror("read of efi attributes failed");
> +			ret = -errno;

errno could be clobbered by perror before, so you need to record it
before doing anything else (including calling perror).


> +			goto out;
> +		}
> +		size += sizeof(uint32_t);
> +		wbuf = bufWithEfi;
> +	}
> +
> +skip_efi_read:
>  	ret = erase(envfd, ERASE_SIZE_ALL, 0, ERASE_TO_WRITE);
>  
>  	/* ENOSYS and EOPNOTSUPP aren't errors here, many devices don't need it */
> @@ -395,8 +426,6 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
>  
>  	size += sizeof(struct envfs_super);
>  
> -	wbuf = buf;
> -
>  	while (size) {
>  		ssize_t now = write(envfd, wbuf, size);
>  		if (now < 0) {
> @@ -425,7 +454,7 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
>  out:
>  	close(envfd);
>  out1:
> -	free(buf);
> +	free(bufWithEfi);
>  #ifdef __BAREBOX__
>  	unlink_recursive(TMPDIR, NULL);
>  #endif
> @@ -449,6 +478,7 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
>  	int envfd;
>  	int ret = 0;
>  	size_t size, rsize;
> +	uint32_t magic;
>  
>  	if (!filename)
>  		filename = default_environment_path_get();
> @@ -466,6 +496,26 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
>  		return -1;
>  	}
>  
> +	/* check if we reading efi vars */
> +	ret = pread(envfd, &magic, sizeof(uint32_t),
> +		    4); // four byte efi var attributes
> +	if (ret < sizeof(u_int32_t)) {
> +		perror("read");
> +		ret = -errno;
> +		goto out;
> +	}
> +
> +	if (ENVFS_32(magic) == ENVFS_MAGIC) {
> +		pr_info("looks like we reading efi vars, skip attributes\n");
> +		ret = read(envfd, &magic,
> +			   sizeof(uint32_t)); // simply reuse the memory
> +		if (ret < sizeof(uint32_t)) {
> +			perror("read");
> +			ret = -errno;
> +			goto out;
> +		}
> +	}
> +
>  	/* read superblock */
>  	ret = read(envfd, &super, sizeof(struct envfs_super));
>  	if ( ret < sizeof(struct envfs_super)) {
> diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
> index e954447015..6b9b8d90c4 100644
> --- a/scripts/bareboxenv.c
> +++ b/scripts/bareboxenv.c
> @@ -117,7 +117,7 @@ static void usage(char *prgname)
>  int main(int argc, char *argv[])
>  {
>  	int opt;
> -	int save = 0, load = 0, pad = 0, err = 0, fd;
> +	int save = 0, load = 0, pad = 0, err = 0;
>  	char *filename = NULL, *dirname = NULL;
>  	unsigned envfs_flags = 0;
>  	int verbose = 0;
> @@ -156,15 +156,6 @@ int main(int argc, char *argv[])
>  		exit(1);
>  	}
>  
> -	if (save) {
> -		fd = open(filename, O_CREAT | O_TRUNC | O_WRONLY, 0644);
> -		if (fd < 0) {
> -			perror("open");
> -			exit(1);
> -		}
> -		close(fd);
> -	}

Did you verify proper operation in the non-EFI case?

Thanks,
Ahmad

> -
>  	if (save && pad) {
>  		if (truncate(filename, pad)) {
>  			perror("truncate");



