Delivery-date: Wed, 19 Feb 2025 17:51:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tknIV-004Ntn-0v
	for lore@lore.pengutronix.de;
	Wed, 19 Feb 2025 17:51:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tknIU-0006F8-4Q
	for lore@pengutronix.de; Wed, 19 Feb 2025 17:51:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cg5WXS1ieXe4FjsV+Z+qn2sC5y8wwB7W6Mz7lP4k05E=; b=Yl1P1urJMqRhj2Ds2Q5WZx/p0E
	kxhZXU7mhZ5vMfXe2l/FJd1CN4dCNPQpkImKckS3B55GG4gHePQGmxE2RWCr3eDqA7ZVyjH3Ff+TG
	y1BCDcR9L7gnBwgischSshQKc/MEqNqgy7weeSarnmsh2o9+c11JL9S6F9ufe8PJf89eTbBblqw7F
	N1EJ4r10/v2NOwB30ivGNpI42o1Y2nTp45oUUwd4A+q/XVkcrq5pDXieDgpv/pSsQGRDtEFdk2SHv
	uCVruYMRUkVmnDULt4nVCfocvNdgR0Sxwy7YdnNfP8uNSM9LEQEyrOwL7+HW4P2ce7slRxLfKpf22
	mMVSwpfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tknI6-0000000DwP9-2sOi;
	Wed, 19 Feb 2025 16:51:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tknI4-0000000DwOA-1DBi
	for barebox@lists.infradead.org;
	Wed, 19 Feb 2025 16:51:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tknI3-00066k-3S; Wed, 19 Feb 2025 17:51:15 +0100
Message-ID: <4d1d9746-0f83-4c4b-b239-8001939b6d46@pengutronix.de>
Date: Wed, 19 Feb 2025 17:51:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Jonathan Bar Or <jonathanbaror@gmail.com>
References: <20250219141844.1912413-1-s.hauer@pengutronix.de>
 <20250219141844.1912413-4-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250219141844.1912413-4-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_085116_329287_152EA7B9 
X-CRM114-Status: GOOD (  18.34  )
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
Subject: Re: [PATCH 3/5] CVE-2025-26723: fs: ext4: fix malloc(size + constant)
 buffer overflow issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 19.02.25 15:18, Sascha Hauer wrote:
> The pattern malloc(size + constant) is dangerous when size can be
> manipulated by an attacker. In that case 'size' can be manipulated
> in a way that 'size + constant' is 0 due to integer overflow. The
> result is a zero sized buffer to which is then data written to.
> 
> Avoid this by using size_add() instead.
> 
> Reported-by: Jonathan Bar Or <jonathanbaror@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/ext4/ext_barebox.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
> index 163c4d2fe1..7480c045d7 100644
> --- a/fs/ext4/ext_barebox.c
> +++ b/fs/ext4/ext_barebox.c
> @@ -189,7 +189,7 @@ static const char *ext_get_link(struct dentry *dentry, struct inode *inode)
>  
>  	BUG_ON(inode->i_link);
>  
> -	inode->i_link = zalloc(inode->i_size + 1);
> +	inode->i_link = zalloc(size_add(inode->i_size, 1));
>  
>  	ret = ext4fs_read_file(node, 0, inode->i_size, inode->i_link);
>  	if (ret == 0) {


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


