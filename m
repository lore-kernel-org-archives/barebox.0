Delivery-date: Tue, 24 Jun 2025 14:19:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU2ch-00Ab7K-20
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 14:19:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU2ch-0000Mk-0W
	for lore@pengutronix.de; Tue, 24 Jun 2025 14:19:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CswsxeiNHmqIE11YRNmZFhFLOGQCFWybAtQfih657cI=; b=b8Ty7lyHXFtDZ6KqGhhrYIQFQS
	Ed6b4DDyDIlp0AIDd/s2rKROnnshlUJaUJ9vBAXVsvS8xce2XyFIJxe0DuXimY8bYZ4JOKWF8qd3v
	CkVj0RAZmNsmm+L9UbR+3Fq+Agc3kOyj4Sb32E0jrEbsVU2uHySG4GUF0cYfNQvKkYRQZneZD8e8s
	vUrXZqL/X/MmsnE1UbJpXTYrC5Lpl5iwudnMhFQwrbWXmaepCSOSV/uerMawALTnoaMvn7Qvc79Cs
	ale647QFUE9VDMfTV3UsXBFd51HurRBj1qO4Z3Ljku3XAX3YMAMoEvKyztPOFTvsHqa2UPzVlnzfH
	a19Z1GrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU2c0-00000005XSZ-1lw5;
	Tue, 24 Jun 2025 12:18:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU1xR-00000005ReI-3kkr
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 11:36:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uU1xQ-0005jU-JH; Tue, 24 Jun 2025 13:36:56 +0200
Message-ID: <d705d530-413d-4dd9-b07c-d16d7f4fd4e6@pengutronix.de>
Date: Tue, 24 Jun 2025 13:36:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20250611115635.3341350-1-s.hauer@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250611115635.3341350-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_043657_938082_5F6FA525 
X-CRM114-Status: GOOD (  24.66  )
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
Subject: Re: [PATCH 1/2] fs: unreference path on file close
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/11/25 13:56, Sascha Hauer wrote:
> Since commit 83ffe89840e8 ("fs: use filename_create/filename_lookup
> instead of open-coding") we no longer open-code the file lookup during
> openat(). Unlike the open-coded variant filename_lookup() keeps a
> reference to the file which is now leaked and the filesystem cannot be
> unmounted anymore:
> 
> umount: Device or resource busy
> 
> Since commit a1da0079d162 ("fs: implement opendir in terms of fdopendir")
> this also happens when just a directory is opened.
> 
> The original code was not quite correct: After calling terminate_walk()
> we no longer held a reference to the path for an opened file. Transfer
> the path to the already existing f_path in struct file and unreference
> it a close() time.

Unfortunately, this introduced a regression to v2025.06.0:

Before:

  barebox@TI AM335x BeagleBone black:/ rm /mnt/mmc0.0/barebox.env
  barebox@TI AM335x BeagleBone black:/ saveenv
  saving environment to /mnt/mmc0.0/barebox.env
  barebox@TI AM335x BeagleBone black:/ saveenv
  saving environment to /mnt/mmc0.0/barebox.env

After:

  barebox@TI AM335x BeagleBone black:/ rm /mnt/mmc0.0/barebox.env
  barebox@TI AM335x BeagleBone black:/ saveenv
  saving environment to /mnt/mmc0.0/barebox.env
  could not open /mnt/mmc0.0/barebox.env: Invalid argument
  saveenv: Invalid argument
  barebox@TI AM335x BeagleBone black:/ saveenv
  saving environment to /mnt/mmc0.0/barebox.env

The -EINVAL comes from fat_open being called with / as filename.
I am not yet sure what the proper fix is. At least we have a test
now to avoid the old regression from reocurring...

Cheers,
Ahmad

> 
> Fixes: 83ffe89840e8 ("fs: use filename_create/filename_lookup instead of open-coding")
> Fixes: a1da0079d162 ("fs: implement opendir in terms of fdopendir")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/fs.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index d401268c1e..18343552a7 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -330,7 +330,7 @@ static void put_file(struct file *f)
>  	f->path = NULL;
>  	f->fsdev = NULL;
>  	iput(f->f_inode);
> -	dput(f->f_dentry);
> +	path_put(&f->f_path);
>  }
>  
>  static struct file *fd_to_file(int fd, bool o_path_ok)
> @@ -2550,7 +2550,7 @@ int openat(int dirfd, const char *pathname, int flags)
>  	int error = 0;
>  	struct inode *inode = NULL;
>  	struct dentry *dentry = NULL;
> -	struct path path;
> +	struct path path = {};
>  
>  	if (flags & O_TMPFILE) {
>  		error = filename_lookup(dirfd, getname(pathname), LOOKUP_DIRECTORY, &path);
> @@ -2628,11 +2628,12 @@ int openat(int dirfd, const char *pathname, int flags)
>  	f = get_file(fsdev);
>  	if (!f) {
>  		error = -EMFILE;
> +		path_put(&path);
>  		goto out1;
>  	}
>  
>  	f->path = dpath(dentry, d_root);
> -	f->f_dentry = dentry;
> +	f->f_path = path;
>  	f->f_inode = iget(inode);
>  	f->f_flags = flags;
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



