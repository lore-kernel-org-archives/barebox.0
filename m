Delivery-date: Wed, 19 Feb 2025 17:49:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tknGQ-004Nnv-1M
	for lore@lore.pengutronix.de;
	Wed, 19 Feb 2025 17:49:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tknGP-0005os-1X
	for lore@pengutronix.de; Wed, 19 Feb 2025 17:49:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PE8wDczk35FJ/6sRtOqAvcDdLTw9/10tAUryW45baU0=; b=Uk0gSS/Lk3eGQaPvtbB8IWgcSX
	qaSDFLkKUsmsfbZy+LbcoqDBh5JKBNW8rF982RkB0z/wJb5Bi3smMZkAVgtlJtwV5hbaExswsVang
	5ddQ+nkZvzIh1Z7AqFio/1xDd1HbK5l2VXirH5p2kdvvIJupQgUflcfd8nXofQHKtCXrdiWy0PYET
	dwHAptrp92jTRzR+svSiXpc9n8ZtiVV96TJI9peHwpsoze5V3azssMmqviKo6rSCSKqzcOxJj0F5c
	YHIWtKHwjSVmQnpRMMOufoHCbfM4sro1lwbjpJuKpTo9Evm7ju7ILAV5p18aNdVGyqjuNbpsCMa9J
	8qYzyOmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tknG1-0000000Dvb5-3TaW;
	Wed, 19 Feb 2025 16:49:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tknFy-0000000DvYa-41ud
	for barebox@lists.infradead.org;
	Wed, 19 Feb 2025 16:49:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tknFx-0005dz-PH; Wed, 19 Feb 2025 17:49:05 +0100
Message-ID: <61270515-e726-4447-b924-b9c1f919cf74@pengutronix.de>
Date: Wed, 19 Feb 2025 17:49:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Jonathan Bar Or <jonathanbaror@gmail.com>
References: <20250219141844.1912413-1-s.hauer@pengutronix.de>
 <20250219141844.1912413-2-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250219141844.1912413-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_084907_015645_5ED2EA0F 
X-CRM114-Status: GOOD (  24.36  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] CVE-2025-26722: fs: squashfs: Ensure positive inode
 length
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 19.02.25 15:18, Sascha Hauer wrote:
> In squashfs_get_link() we have:
> 
> 	int length = min_t(int, i_size_read(inode), PAGE_SIZE);
> 
> The inode size is a 64bit number directly read from the device which
> is interpreted as a 32bit signed number above. An inode size with the
> lower 32bits set to 0xffffffff results in length being -1. Later we
> do a:
> 
> 	symlink = malloc(length + 1);
> 
> With length being -1 this results in allocating a zero size buffer which
> is then overwritten by following code.
> 
> Fix this by first making sure that the inode length is positive.
> Afterwards limit the length to the desired range, explicitly using
> loff_t as the type to compare to make sure we do not truncate the
> original data type during comparison.
> 
> Reported-by: Jonathan Bar Or <jonathanbaror@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/squashfs/symlink.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/squashfs/symlink.c b/fs/squashfs/symlink.c
> index 40b9bdcc8b..cb14eb20a5 100644
> --- a/fs/squashfs/symlink.c
> +++ b/fs/squashfs/symlink.c
> @@ -43,16 +43,20 @@
>  static const char *squashfs_get_link(struct dentry *dentry, struct inode *inode)
>  {
>  	struct super_block *sb = inode->i_sb;
> -	int index = 0;
>  	u64 block = squashfs_i(inode)->start;
>  	int offset = squashfs_i(inode)->offset;
> -	int length = min_t(int, i_size_read(inode) - index, PAGE_SIZE);
> +	size_t length;
>  	int bytes;
>  	unsigned char *symlink;
>  
>  	TRACE("Entered squashfs_symlink_readpage, start block "
>  			"%llx, offset %x\n", block, offset);
>  
> +	if (i_size_read(inode) < 0)
> +		return NULL;
> +
> +	length = min_t(loff_t, i_size_read(inode), PAGE_SIZE);
> +
>  	symlink = malloc(length + 1);
>  	if (!symlink)
>  		return NULL;


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


