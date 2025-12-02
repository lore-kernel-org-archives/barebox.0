Delivery-date: Tue, 02 Dec 2025 10:38:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQMq0-0077QN-2t
	for lore@lore.pengutronix.de;
	Tue, 02 Dec 2025 10:38:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQMq0-0006hF-B3
	for lore@pengutronix.de; Tue, 02 Dec 2025 10:38:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GFhJKaea+89HLbmiNZQ/fkcMxdCQPx9d1d13sxTn9Vg=; b=NEjoLpkiga/7pIa4emZf0w/HqN
	VpM2KBg60jbEsx1p7GTcXRIuIUyPJmPmTvW98XaY/sA3mntl1Y1YzHQxY5z4WmbhkYRS/0EzVYIqB
	b/415eHnTC2HNFIe8JIpawAYuGyGNtANcyjDMWwaxgzdTI7qT1yvWpG3QPMOyBNSs2WC86+9Wv0He
	ffZBgdqWtvDdIX1wt6iupyAeYLqS2yjYJFMqScowMkvFOpOEbEDM74q5vaooNINopa6OZpevxG7DH
	huu6GW1qxm02wI4mtJSSqvtiNHh9+f0rx6u/PJ5lg78Hx0WGM17VgecN+lkeLwsPyfgs1/LsiiltU
	+BaxZ5+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQMpR-000000059T0-20By;
	Tue, 02 Dec 2025 09:37:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQMp9-0000000591U-3nQm
	for barebox@lists.infradead.org;
	Tue, 02 Dec 2025 09:37:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQMp8-0006Sy-8C; Tue, 02 Dec 2025 10:37:30 +0100
Message-ID: <a990caa7-38d0-4ff6-9d2c-58f8dde494bd@pengutronix.de>
Date: Tue, 2 Dec 2025 10:37:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20251202092256.1565823-1-s.hauer@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251202092256.1565823-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_013731_980754_52BAF2F8 
X-CRM114-Status: GOOD (  22.16  )
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
Subject: Re: [PATCH] fs: fix automount when last filename component is a
 automountpoint
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 12/2/25 10:22 AM, Sascha Hauer wrote:
> When opening a directory in openat() as indicated with the O_DIRECTORY
> flag, pass the LOOKUP_DIRECTOY flag to filename_lookup() to make sure
> the target is actually a directory. By doing this we can skip the check
> afterwards.
> 
> filename_lookup() only triggers the automount on the last component when
> the LOOKUP_DIRECTORY flag is set, so with this change when /mnt/mmc2.3/
> is a automountpoint a
> 
> stat /mnt/mmc2.3/
> 
> now triggers automounting. This also fixes tab completion with
> "ls /mnt/mmc2.3/<tab>" which previously didn't trigger autmounting.
> 
> Fixes: a1da0079d1 ("fs: implement opendir in terms of fdopendir")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks for debugging!
Ahmad

> ---
>  fs/fs.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 528299e039..d884726187 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -2680,7 +2680,12 @@ int openat(int dirfd, const char *pathname, int flags)
>  	}
>  
>  	if (!(flags & O_CREAT) || error == -EEXIST) {
> -		error = filename_lookup(dirfd, getname(pathname), LOOKUP_FOLLOW, &path);
> +		unsigned f = LOOKUP_FOLLOW;
> +
> +		if (flags & O_DIRECTORY)
> +			f |= LOOKUP_DIRECTORY;
> +
> +		error = filename_lookup(dirfd, getname(pathname), f, &path);
>  		dentry = path.dentry;
>  	}
>  
> @@ -2710,9 +2715,6 @@ int openat(int dirfd, const char *pathname, int flags)
>  		}
>  
>  		flags |= O_DIRECTORY;
> -	} else if (flags & O_DIRECTORY) {
> -		error = -ENOTDIR;
> -		goto out1;
>  	}
>  
>  	inode = d_inode(dentry);

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



