Delivery-date: Mon, 22 Aug 2022 11:09:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oQ3Qd-0077wW-L2
	for lore@lore.pengutronix.de; Mon, 22 Aug 2022 11:09:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oQ3QZ-00075O-1K
	for lore@pengutronix.de; Mon, 22 Aug 2022 11:09:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1G04XHQR0IokUV/c0mDYKs//j+lVDxkDp23J2GqHd0s=; b=czI7inyvWhXzXsnVWTmiRcoKK3
	wdwkwFQ1eUfZvbtAkQBF7vpUzVhfLn7S9PAJkFsiUgLBt9E36BYkbOgoLpqZ7HO2fS1CaYORVjr31
	qYldXqrCIL+JpSG/mWAIMubtzbbGJ/rt/uPoGvJXROuqW4g00D2L+rGy8FMqfzqjCtoALbAEmj4YH
	ShbmsGDIoiJWWeeUAfxB5N3AgTKpBpxMlh8rbdAYl+aJj91vtXdE1DSH00Juzh3btLEYfPrBp5vW1
	yUobQJnTRl8BJFhC69oFl1BU/dIY1OYr+E0QC9oGpFpcGnL4HnKHh+r6RRJ0lbRD4dCnOdahGI1ls
	A2EJ36Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ3Oj-006oS5-OB; Mon, 22 Aug 2022 09:07:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ3Cs-006hZn-Dk
	for barebox@lists.infradead.org; Mon, 22 Aug 2022 08:54:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oQ3Cq-0004xL-Nf; Mon, 22 Aug 2022 10:54:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oQ3Cq-0002Jx-FL; Mon, 22 Aug 2022 10:54:48 +0200
Date: Mon, 22 Aug 2022 10:54:48 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220822085448.GG17485@pengutronix.de>
References: <20220819105521.3848169-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220819105521.3848169-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_015450_539613_7E73FB7B 
X-CRM114-Status: GOOD (  20.01  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] fs: ubootvarfs: fix double-free unlinking U-Boot
 variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 19, 2022 at 12:55:21PM +0200, Ahmad Fatoum wrote:
> We free the struct ubootvarfs_inode::var as part of destroy_inode. In
> case we have unlinked the U-Boot variable beforehand, we will end up
> double-freeing. Set the member to NULL, so it's skipped in
> destory_inode. We keep the free in destroy_inode, because that's still
> needed for all the other inodes that aren't unlinked.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/ubootvarfs.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/fs/ubootvarfs.c b/fs/ubootvarfs.c
> index 475e4b7a79c4..147fee1ea631 100644
> --- a/fs/ubootvarfs.c
> +++ b/fs/ubootvarfs.c
> @@ -259,6 +259,7 @@ static int ubootvarfs_unlink(struct inode *dir, struct dentry *dentry)
>  
>  		list_del(&var->list);
>  		free(var);
> +		node->var = NULL;
>  	}
>  
>  	return simple_unlink(dir, dentry);
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


