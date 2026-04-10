Delivery-date: Fri, 10 Apr 2026 13:52:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wBAPC-00AdIx-2Q
	for lore@lore.pengutronix.de;
	Fri, 10 Apr 2026 13:52:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wBAPC-00007S-60
	for lore@pengutronix.de; Fri, 10 Apr 2026 13:52:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M3gT0kvzk3dQYjLpfULvSrVddn78bw/KM0xkkEgwf4c=; b=J3nFv/uDT/TnPro3vct2nRLaEX
	UYxmxqrBIt2xHy3jnxM1VBdhCtlFnoTmHUSi2KFQGhQwq9gYTUb+XfCsVmnsP/0N6NflsmPAkaGhi
	nAgJy4NAqp6+/MRmLgNqkeKgI8Orq3bTLEBDWgSy4jUdLTVx9nGKOBQsovBkxKhzmD4cCpHSAxwIC
	vw7cIqe5AR8duFQV7Ac0/fgTqYZC2Sui/kHzusEDn0iMlrBF4fdgOg/exUfpVv+XKHeo0ojw6DhGT
	Kx4PTI0VBZxIK6RnHyJ0iM+cUwzNYoge8sYKCdLs8IDR8gmw2wCloxWTkw1V6STZG88vKkiPS532m
	kZwx4Y4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBAOk-0000000C6eY-1rG3;
	Fri, 10 Apr 2026 11:51:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBAOh-0000000C6cf-2kdq
	for barebox@lists.infradead.org;
	Fri, 10 Apr 2026 11:51:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wBAOe-0008S4-7T; Fri, 10 Apr 2026 13:51:36 +0200
Message-ID: <3666e81e-4969-495e-97e2-8c7cbcd1df9f@pengutronix.de>
Date: Fri, 10 Apr 2026 13:51:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
References: <20260402-fs-ext4-buffer-overflows-v1-0-b9f8a909fe58@pengutronix.de>
 <20260402-fs-ext4-buffer-overflows-v1-2-b9f8a909fe58@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260402-fs-ext4-buffer-overflows-v1-2-b9f8a909fe58@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_045139_702644_8F5BB7BA 
X-CRM114-Status: GOOD (  15.66  )
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
Subject: Re: [PATCH 2/5] fs: ext4: reject superblocks with zero inodesz,
 gdsize or inodes_per_group
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 4/2/26 12:12 PM, Sascha Hauer wrote:
> The superblock fields inode_size, descriptor_size, and inodes_per_group
> are read from disk and used as divisors without validation:
> 
>   - inodesz == 0: division by zero in ext4fs_read_inode()
>   - gdsize == 0: division by zero in ext4fs_blockgroup()
>   - inodes_per_group == 0: division by zero in ext4fs_read_inode()
> 
> All three are trivially triggered by a crafted filesystem image.
> 
> Validate these fields are non-zero at mount time and reject the
> filesystem if they aren't.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/ext4/ext4_common.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
> index 094293a069..5d252b4a2c 100644
> --- a/fs/ext4/ext4_common.c
> +++ b/fs/ext4/ext4_common.c
> @@ -541,6 +541,15 @@ int ext4fs_mount(struct ext_filesystem *fs)
>  	      le32_to_cpu(data->sblock.revision_level),
>  	      fs->inodesz, fs->gdsize);
>  
> +	if (!fs->inodesz || !fs->gdsize ||
> +	    !le32_to_cpu(data->sblock.inodes_per_group)) {
> +		dev_err(fs->dev, "invalid superblock: inodesz=%u gdsize=%u inodes_per_group=%u\n",
> +			fs->inodesz, fs->gdsize,
> +			le32_to_cpu(data->sblock.inodes_per_group));
> +		ret = -EINVAL;
> +		goto fail;
> +	}
> +
>  	data->diropen.data = data;
>  	data->diropen.ino = 2;
>  	data->diropen.inode_read = 1;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



