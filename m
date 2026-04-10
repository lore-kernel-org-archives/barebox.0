Delivery-date: Fri, 10 Apr 2026 13:34:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wBA7o-00Ad3S-0I
	for lore@lore.pengutronix.de;
	Fri, 10 Apr 2026 13:34:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wBA7n-00068s-Go
	for lore@pengutronix.de; Fri, 10 Apr 2026 13:34:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R7Hj/Pjn4z6GerEWN+CKxJMiDuALZ1HYSvukjDOCnSo=; b=25jg8YugUA6Y8aMtj8yiWtavWR
	Ym7pgKsoIcAgSmtk+KR4WFZfSfZoKFq/UyaiSW0usRpvtTdGmyjHRW+E/thxTxwpqA3JRKbYZgrb3
	ypuBFegaQXkWfPMCijNeK+C3OdCW2twM5YY7TrVF0nn5Kex9IIpAkP66FacBmz1bhK/h6lqFL1v5w
	lvrGLbLmLY91eCj848v4tpThkPZLYD/jrvmHJZRNqR1bynBjUoD1F4ryzHpwRHqcf9HrEYOt/2Gbe
	sA+pINbA8MCZhoZxKlrjuvLGdJvYvsHrgI5l6aohz8NaLC5nBuYwV4ZxTTi/Ca2z2fatwLXyH6Ht6
	bUnOkyKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBA7Q-0000000C5aM-2mMH;
	Fri, 10 Apr 2026 11:33:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBA7N-0000000C5Zu-2TzI
	for barebox@lists.infradead.org;
	Fri, 10 Apr 2026 11:33:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wBA7L-00062t-KP; Fri, 10 Apr 2026 13:33:43 +0200
Message-ID: <54065682-b075-4e83-8598-6709328d74e2@pengutronix.de>
Date: Fri, 10 Apr 2026 13:33:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
References: <20260402-fs-ext4-buffer-overflows-v1-0-b9f8a909fe58@pengutronix.de>
 <20260402-fs-ext4-buffer-overflows-v1-1-b9f8a909fe58@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260402-fs-ext4-buffer-overflows-v1-1-b9f8a909fe58@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_043345_637713_58E7B90F 
X-CRM114-Status: GOOD (  20.07  )
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
Subject: Re: [PATCH 1/5] fs: ext4: validate log2_block_size from superblock at
 mount
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 4/2/26 12:12 PM, Sascha Hauer wrote:
> The superblock's log2_block_size field is read from disk and used
> throughout the ext4 code without validation. EXT2_BLOCK_SIZE() computes
> 1 << (log2_block_size + 10), so a crafted value of 22 or larger causes
> undefined behavior from shifting an int by >= 32 bits.
> 
> This leads to wrong allocation sizes for indirect block buffers and
> enables downstream buffer overflows in every function that reads
> block-sized data.
> 
> Validate that log2_block_size does not exceed the maximum defined by
> EXT2_MAX_BLOCK_LOG_SIZE (65536 byte blocks) at mount time, rejecting
> the filesystem early if it does.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

This is analogous to Linux commit 62aeb94433fc ("ext2: Check block size
validity during mount"), which addressed a Syzbot report in 2023.

> ---
>  fs/ext4/ext4_common.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
> index a38593105f..094293a069 100644
> --- a/fs/ext4/ext4_common.c
> +++ b/fs/ext4/ext4_common.c
> @@ -514,6 +514,14 @@ int ext4fs_mount(struct ext_filesystem *fs)
>  		goto fail;
>  	}
>  
> +	if (le32_to_cpu(data->sblock.log2_block_size) >
> +	    EXT2_MAX_BLOCK_LOG_SIZE - EXT2_MIN_BLOCK_LOG_SIZE) {
> +		dev_err(fs->dev, "invalid block size %u\n",> +		
le32_to_cpu(data->sblock.log2_block_size));
> +		ret = -EINVAL;
> +		goto fail;
> +	}
> +
>  	if (le32_to_cpu(data->sblock.revision_level) == 0) {
>  		fs->inodesz = 128;
>  		fs->gdsize = 32;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



