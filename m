Delivery-date: Fri, 18 Oct 2024 18:53:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1qEF-005xKx-3A
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 18:53:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1qEF-0004i0-CJ
	for lore@pengutronix.de; Fri, 18 Oct 2024 18:53:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S4SPm5qdOKuCHklEAczUJPC3L41AhCCZw6T6QcqvDuw=; b=lYBvIB5jlRlMSfj/8Vo0gZbrL+
	SMd275JWoAB1qGKobuwhMx+he4JbwrLlVDGlidsD5T5ClqxGH2Iz+0hmf+OLb9QwbULi8Q+OKnpya
	83ZT060tk5GFKqvG/rl2RqdQwKLJ4wNKPXJ2zhbw/kNcHiOKSoxZC2m4ZCL8zr/IHg1PuAcyTsnZ+
	IUQ+3i2yPiQ8AIxWmyqMqhPhNv0EKsn7f0F9Bwzi1KGU2qH+unZQCLCik7bWXlJqdh4OVdAeuNeek
	9W55yLertIfM6hPL+fdOKd1oxCOUdg7fxJIuVTiZpm36B6oyHTBsqi9kw7jMRH/VtrI3lwla6HxN3
	CvPG1u0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1qDd-00000001PIE-0i6b;
	Fri, 18 Oct 2024 16:52:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1qDa-00000001PHo-0DsP
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 16:52:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t1qDY-0004eF-LT; Fri, 18 Oct 2024 18:52:48 +0200
Message-ID: <46f7ed30-f14d-4753-bb42-71eee9cff4a3@pengutronix.de>
Date: Fri, 18 Oct 2024 18:52:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: abdelrahmanyossef12@gmail.com, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20241018-overflow-v4-1-b0aed7711dc6@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241018-overflow-v4-1-b0aed7711dc6@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_095250_127005_4EFC94E2 
X-CRM114-Status: GOOD (  21.51  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4] common: buffer access out-of-bounds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 18.10.24 18:24, Abdelrahman Youssef via B4 Relay wrote:
> From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> 
> in file_detect_type() to detect file of type socfpga_xload you need at least
> 68 bytes bytes, so we need to check if we have enough bufsize.
> So I moved it after checking if `bufsize >= 256`.
> 
> Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
> This patch is a replacement of the last one because there were some issues with it

As mentioned in the v3 feedback, it's customary to write a changelog here.

Cheers,
Ahmad

> ---
> To: Sascha Hauer <s.hauer@pengutronix.de>
> To: open list:BAREBOX <barebox@lists.infradead.org>
> Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> ---
>  common/filetype.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/common/filetype.c b/common/filetype.c
> index 3690d4ae07..67ae4916d1 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -374,9 +374,6 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
>  	if (le32_to_cpu(buf[5]) == 0x504d5453)
>  		return filetype_mxs_bootstream;
>  
> -	if (buf[16] == 0x31305341)
> -		return filetype_socfpga_xload;
> -
>  	if (is_barebox_arm_head(_buf))
>  		return filetype_arm_barebox;
>  	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
> @@ -388,6 +385,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
>  	if (bufsize < 256)
>  		return filetype_unknown;
>  
> +	if (buf[16] == 0x31305341)
> +		return filetype_socfpga_xload;
> +
>  	if (strncmp(buf8, "STM\x32", 4) == 0) {
>  		if (buf8[74] == 0x01) {
>  			switch(le32_to_cpu(buf[63])) {
> 
> ---
> base-commit: 9d47ff66c3892c5a6ddd4704993365a797fbeb68
> change-id: 20241018-overflow-dc42def7e4f6
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


