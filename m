Delivery-date: Fri, 18 Oct 2024 14:09:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1lna-005sSp-2y
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 14:09:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1lna-0006r0-B6
	for lore@pengutronix.de; Fri, 18 Oct 2024 14:09:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WO6PUf3vbVF6qA0RvmPyp3mzKpOVRgb30JblNHaK2ZE=; b=N3bxzc79uXPqAgbVz8txH2ZikP
	kMHbWwkBduzVD/o0leWZL166LA/tBeaow/6u+IpYXOeZoVRdnVL0yPjXn+gZUkwUnHbs304BnmKIr
	mqTONXeuiHrXxSY1Ts2qBwcIhRp1rJNWF3/iC/jYjy2LeKf2b2Ip0WxllRWf0X4rMWaOiqSvyZcx3
	uY3qzShL+IiKSH2nYA33FpLTqqK0eE8/apLNXzQ44cl/pOoJlY4Kc1wx7PIajKpEE22SpGr0eul5x
	k0CgHknWItIZhm3P/JYlEK+2x7FXzE8+liJQwnehDKY/oUb6hw4BPlJIF9vPb7JgvEz52eiq0/Mu1
	H8IzUmUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ln6-00000000ibD-0Zky;
	Fri, 18 Oct 2024 12:09:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1lk4-00000000iAY-01B3
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 12:06:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t1lk2-0006MZ-Or; Fri, 18 Oct 2024 14:06:02 +0200
Message-ID: <e1790030-409b-4b14-9580-72ed64a60598@pengutronix.de>
Date: Fri, 18 Oct 2024 14:06:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: abdelrahmanyossef12@gmail.com, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20241018-errors_fixes-v2-0-7f49d5a0087b@gmail.com>
 <20241018-errors_fixes-v2-2-7f49d5a0087b@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241018-errors_fixes-v2-2-7f49d5a0087b@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_050604_076895_88B7100C 
X-CRM114-Status: GOOD (  18.21  )
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
Subject: Re: [PATCH v2 2/2] common: buffer access out-of-bounds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 18.10.24 13:45, Abdelrahman Youssef via B4 Relay wrote:
> From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> 
> in file_detect_type() to detect file of type socfpga_xload you need at least
> 68 bytes bytes, so we need to check if we have enough bufsize.
> So I moved it after checking if `bufsize >= 256`.
> 
> Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>

Given that there's a small thing to fix with this patch, please resend
it separately with below point addressed.

> ---
>  common/filetype.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/common/filetype.c b/common/filetype.c
> index 3690d4ae07..3f74871d7f 100644
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
> @@ -388,7 +385,10 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
>  	if (bufsize < 256)
>  		return filetype_unknown;
>  
> -	if (strncmp(buf8, "STM\x32", 4) == 0) {
> +	if (buf[16] == 0x31305341)
> +		return filetype_socfpga_xload;
> +
> +    if (strncmp(buf8, "STM\x32", 4) == 0) {

This whitespace change is unrelated to your fix.

>  		if (buf8[74] == 0x01) {
>  			switch(le32_to_cpu(buf[63])) {
>  			case 0x00000000:
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


