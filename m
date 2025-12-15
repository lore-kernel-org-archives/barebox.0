Delivery-date: Mon, 15 Dec 2025 12:26:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6iU-00Bj3i-2C
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 12:26:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6iT-0005c4-RC
	for lore@pengutronix.de; Mon, 15 Dec 2025 12:26:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V/HZnu3swxn/rx5UwvRfcoP8mpb4Oj3PqhoszqaxsHI=; b=w9dZ6xtwfunKeRnmO4PokoY3K4
	G7fQv0Jpqi2fJfW8wlzDSG1UDpA3o0lTHpgTmLdnoJZbB2Vo7o9NMG3pZwOlz63cyKMNJrz/ZuhSq
	oW1hV1Xv1Rckxcq6ghXAhMcuEsszxvP5BDV3cM5AWE2bXUgXoU6szAB5U9VBbQqLyfx1nUCMx4mLU
	p6nj+0OsgB3Za/BDRr1+Fqmajq0SDuB7RkxA9lLAlRcpr8nxDqkAZy6tISfB7tsCMKXEVGu5ZYs1I
	pblhidupU1QkDE4poFjX/qbUx5qaFucupORQtY3huRiEa+2UrcOf42uE1fnYK/YZYyyixOQHTHm4w
	Q/0nzE4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6i2-00000003WIB-1CPq;
	Mon, 15 Dec 2025 11:25:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6hy-00000003WHM-1vX9
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 11:25:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV6hw-0005Vf-LA; Mon, 15 Dec 2025 12:25:40 +0100
Message-ID: <09879850-52a9-43d7-b6d6-9064d57f5501@pengutronix.de>
Date: Mon, 15 Dec 2025 12:25:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
 <20251209-devfs-v2-9-62ae16698cff@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-9-62ae16698cff@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_032542_518031_8A7B95D3 
X-CRM114-Status: GOOD (  16.31  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 09/13] fs: include cdevname in struct stat
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 12/9/25 1:51 PM, Sascha Hauer wrote:
> In Linux struct stat contains the major/minor numbers of the underlying
> device, consequently we put the cdev name into struct stat.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/fs.c              | 1 +
>  include/linux/stat.h | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 9e2c95c6352cc63400f997bb8de53af44f4741cf..9022287dff2f4959f64eac76c544634b3978d238 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -1117,6 +1117,7 @@ static void stat_inode(struct inode *inode, struct stat *s)
>  	s->st_mode = inode->i_mode;
>  	s->st_uid = inode->i_uid;
>  	s->st_gid = inode->i_gid;
> +	s->st_cdevname = inode->cdevname;
>  }
>  
>  int fstat(int fd, struct stat *s)
> diff --git a/include/linux/stat.h b/include/linux/stat.h
> index 6ee05b52873f47e5d17a4387829187512be29ea8..84b6484a1f2149d1f2d770f0f11bf0ae0ef63744 100644
> --- a/include/linux/stat.h
> +++ b/include/linux/stat.h
> @@ -55,6 +55,7 @@ struct stat {
>  	unsigned short st_mode;
>  	unsigned short st_uid;
>  	unsigned short st_gid;
> +	const char *st_cdevname; /* barebox specific */
>  	loff_t  st_size;
>  };
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



