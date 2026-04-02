Delivery-date: Thu, 02 Apr 2026 12:46:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8FZB-007omZ-16
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 12:46:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8FZA-0000UQ-Mi
	for lore@pengutronix.de; Thu, 02 Apr 2026 12:46:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nv8C52Jh05VmBkGSTceUkobZVE2Xg8BlZHBUZpO41U0=; b=1Snwyrw++D9POnXmC3sBz1+pqH
	FuRBGNu1YdB+WTENhHA9izUoaNaC7X0q7BkgbrvMZ3AOLPtlKxLp1ehx8XV0T2Z68CF0n1L3ntdNn
	O9ZZKEqspO2LcgqN/pR8SGrNPDY5Y9OmOfE/rfOub/kqJVtiYBpKZr2JZd4HsTdtQCrmKz1gb2h33
	Qdw0DNBBLNPr1AF7wmobQpTHFiufyjY4sYJKQg2m8BkhzxSVG7tMaQKrEDrKF/9RLD7D2k2OCs6Ih
	mrzZMgS45A7CPLkq0cVC9FB3Pe1xAsM4fzZU0vvCVTfqxLafDmdSRoKk2MdusL8Ae/jVMZtEnIBNs
	slh8Vh/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8FYk-0000000HQbX-394y;
	Thu, 02 Apr 2026 10:45:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8FYi-0000000HQbC-199V
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 10:45:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w8FYg-0000Na-Kq; Thu, 02 Apr 2026 12:45:54 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w8FYg-003ML0-0z;
	Thu, 02 Apr 2026 12:45:54 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w8FYg-00000003B1s-0tj0;
	Thu, 02 Apr 2026 12:45:54 +0200
Date: Thu, 2 Apr 2026 12:45:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
Message-ID: <ac5I4vrfPkvZUVLI@pengutronix.de>
References: <20260402-fs-ext4-buffer-overflows-v1-0-b9f8a909fe58@pengutronix.de>
 <20260402-fs-ext4-buffer-overflows-v1-3-b9f8a909fe58@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260402-fs-ext4-buffer-overflows-v1-3-b9f8a909fe58@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_034556_314649_ED64615A 
X-CRM114-Status: GOOD (  27.28  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] fs: ext4: fix OOB read and infinite loop in
 ext_iterate()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Apr 02, 2026 at 12:12:31PM +0200, Sascha Hauer wrote:
> ext_iterate() reads the entire directory into a buffer and walks it
> parsing ext2_dirent entries, but has several issues with untrusted
> on-disk data:
> 
> 1. No check that a full ext2_dirent struct fits before reading it,
>    causing an OOB read for the last partial entry.
> 
> 2. No check that fpos + sizeof(dirent) + namelen fits within the
>    buffer before passing the filename pointer to dir_emit(), causing
>    an OOB read if namelen extends past the allocation.
> 
> 3. If dirent->direntlen is 0, fpos never advances, causing an
>    infinite loop.
> 
> Fix by:
> - Checking that a full dirent struct fits before each iteration
> - Validating that the filename region is within bounds before emitting
> - Breaking out of the loop if direntlen is smaller than the minimum
>   dirent size (which also catches the zero case)
> 
> All three are triggerable from a crafted ext4 filesystem image.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>

Fixes: 76cb57b4e107 ("fs: ext4: Switch to dentry cache implementation")

Sascha

> ---
>  fs/ext4/ext_barebox.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
> index 5bee4853d4..ef1a71368d 100644
> --- a/fs/ext4/ext_barebox.c
> +++ b/fs/ext4/ext_barebox.c
> @@ -157,15 +157,20 @@ static int ext_iterate(struct file *file, struct dir_context *ctx)
>  		goto out;
>  	}
>  
> -	while (fpos < dir->i_size) {
> +	while (fpos + sizeof(struct ext2_dirent) <= dir->i_size) {
>  		const struct ext2_dirent *dirent = buf + fpos;
>  		const char *filename = buf + fpos + sizeof(*dirent);
> +		uint16_t direntlen = le16_to_cpu(dirent->direntlen);
>  
> -		if (dirent->namelen != 0)
> +		if (direntlen < sizeof(struct ext2_dirent))
> +			break;
> +
> +		if (dirent->namelen != 0 &&
> +		    fpos + sizeof(*dirent) + dirent->namelen <= dir->i_size)
>  			dir_emit(ctx, filename, dirent->namelen,
>  				 le32_to_cpu(dirent->inode), DT_UNKNOWN);
>  
> -		fpos += le16_to_cpu(dirent->direntlen);
> +		fpos += direntlen;
>  	}
>  	ret = 0;
>  out:
> 
> -- 
> 2.47.3
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


