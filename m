Delivery-date: Mon, 19 Jan 2026 10:51:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhlv3-002zFK-2c
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 10:51:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhlv2-00054k-Qp
	for lore@pengutronix.de; Mon, 19 Jan 2026 10:51:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nysK43tfAF42bzQLhfUxaMLM6ebIkAnn4A+Vizse2XQ=; b=4xtgnA+lCTtj0r1dvaFI5HLaLD
	Bc07nxpowk7B44TxRRrNN0siP8Kmq2lx0QRdu96bcV0vFoDgyRz6m6f3nYbeZXeabHuksUcNnr2kn
	8w9UN5oN84IRPfU+2YAGg14rKqcYh+a0TfYvKFNn8T/nzwcvQTr1hdxOFmO9a82NXXc6EhFTey4Oa
	FRTPnAuxU3KIdOCBEiB9P6nxZ2NoA8ga6QRz5K8quzjcpQojCxOaKve+fvM6CLJO+KSVZFyin+HTd
	2eloJlgCPZNt33ucJlsQ478uAzTxhJAV5CRiFdzBHrvQDdRyhquGPo6tADlYxkBq317ldAlOLz3LE
	cUZYXL/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhluV-00000001fPX-2Y83;
	Mon, 19 Jan 2026 09:50:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhluS-00000001fOq-1FsB
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 09:50:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vhluP-0004u0-2U; Mon, 19 Jan 2026 10:50:53 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vhluP-001OCT-1n;
	Mon, 19 Jan 2026 10:50:52 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vhluO-003MDM-2S;
	Mon, 19 Jan 2026 10:50:52 +0100
Date: Mon, 19 Jan 2026 10:50:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <aW3-fMZcPO8QcCBp@pengutronix.de>
References: <20260119094617.891594-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260119094617.891594-1-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_015056_356498_A91CE79E 
X-CRM114-Status: GOOD (  20.63  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: tmpfile_create(): add missing mntget()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 19, 2026 at 10:46:17AM +0100, Sascha Hauer wrote:
> tmpfile_create() assigns the parentpath->mnt to the new file's path
> without mntget() it, so we'll get unbalanced reference count when
> the tmpfile is closed. Add the missing mntget().

git blame points to:

e5591127b7 ("fs: allocate inodes for O_TMPFILE-created files")

I am not really sure though if the issue was there before the patch.

Sascha

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/fs.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 75fd3a3ef9..43840c3a7a 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -2675,6 +2675,7 @@ static struct file *tmpfile_create(const struct path *parentpath,
>  	if (!f)
>  		return ERR_PTR(-EMFILE);
>  
> +	mntget(parentpath->mnt);
>  	f->f_path.mnt = parentpath->mnt;
>  	f->f_path.dentry = d_alloc_anon(&fsdev->sb);
>  	f->f_flags = flags;
> -- 
> 2.47.3
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


