Delivery-date: Wed, 17 Jul 2024 08:17:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTxz4-0005RK-1U
	for lore@lore.pengutronix.de;
	Wed, 17 Jul 2024 08:17:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTxz3-0003LG-SM
	for lore@pengutronix.de; Wed, 17 Jul 2024 08:17:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YooYu9rv1rz8KJy9iLvJ9yXd6yqaaG6wr0Kb2bZpEYw=; b=gQKwLHQZcBd/4vFcKnGm9qF15f
	lrpYC+Xadb3L5WZ2EIJDmUGzDdDiOSmQawsyhZSwNh24zGECzNq7XQZZDyjzHNlSWdHO1UPaJajMG
	gbm7/guP2FWAnVs3dBrkSXnG9XsWPGrtV7pHpfqw+pgl4sylsGziZGaSdvWbkmnYRx89u2v81Sne6
	gId5wbxgy1KBCA5Ap+pWlqZf61yMAZk/mOKxiiNd3rQ8cUdLSsiK4mUVD7pKEYibfj7Ssf/CDX9op
	wwvt/ZOMBNmUUJs1a5xqxn5Hor+BfjnJVqhXmHzVc5ytE4G4logMmV2rUiXKQi0tGfJM7mess1hEU
	aIu98sbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTxyM-0000000Cn20-38Gb;
	Wed, 17 Jul 2024 06:17:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTxyI-0000000Cn1N-1eG6
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 06:17:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTxyG-0003Ih-Ed; Wed, 17 Jul 2024 08:17:00 +0200
Message-ID: <b9a5fa57-0362-4995-ac55-875001a09083@pengutronix.de>
Date: Wed, 17 Jul 2024 08:17:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Richard Weinberger <richard@nod.at>, barebox@lists.infradead.org
Cc: upstream+barebox@sigma-star.at
References: <20240702194427.936-1-richard@nod.at>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240702194427.936-1-richard@nod.at>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_231702_468139_09CF082A 
X-CRM114-Status: GOOD (  22.02  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ext4: Fix integer overflow in ext4fs_read_symlink()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 02.07.24 21:44, Richard Weinberger wrote:
> While zalloc() takes a size_t type, adding 1 to the le32 variable
> will overflow.
> A carefully crafted ext4 filesystem can exhibit an inode size of 0xffffffff
> and as consequence zalloc() will do a zero allocation.
> 
> Later in the function the inode size is again used for copying data.
> So an attacker can overwrite memory.
> 
> Avoid the overflow by using the __builtin_add_overflow() helper.
> 
> Signed-off-by: Richard Weinberger <richard@nod.at>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
> I have found and verified this bug in u-boot.
> But Barebox uses the same code, so it is most likely affected too.
> 
> Thanks,
> //richard
> ---
>  fs/ext4/ext4_common.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
> index 4bfb55ad0d..a38593105f 100644
> --- a/fs/ext4/ext4_common.c
> +++ b/fs/ext4/ext4_common.c
> @@ -369,13 +369,18 @@ char *ext4fs_read_symlink(struct ext2fs_node *node)
>  	char *symlink;
>  	struct ext2fs_node *diro = node;
>  	int status, ret;
> +	size_t alloc_size;
>  
>  	if (!diro->inode_read) {
>  		ret = ext4fs_read_inode(diro->data, diro->ino, &diro->inode);
>  		if (ret)
>  			return NULL;
>  	}
> -	symlink = zalloc(le32_to_cpu(diro->inode.size) + 1);
> +
> +	if (__builtin_add_overflow(le32_to_cpu(diro->inode.size), 1, &alloc_size))
> +		return NULL;
> +
> +	symlink = zalloc(alloc_size);
>  	if (!symlink)
>  		return 0;
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



