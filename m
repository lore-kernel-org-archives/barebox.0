Delivery-date: Fri, 18 Oct 2024 17:35:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1p0k-005w47-2U
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 17:35:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1p0k-0007wk-3J
	for lore@pengutronix.de; Fri, 18 Oct 2024 17:35:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=seAFK3sCraqofmTvwO9wv4VtjM/EEUZ7xpX9Z5bZoqw=; b=kP2sVf1Xz9Ilr+uFWWbGvT8vi7
	ab+ckCLpeCn9Qe9QwHczr9IVBdRNEInvBCV3oF2kPpqI4C4JDzBlWhT6B2gg2ditzgVoRZm2aEBla
	vy1GwFLAKZViLeyi5LLvAM8FOPPnZN2eQJ4MLiowPOzWgrfyUlTR+qa2khjnRw/Iwj+5ZCxz2/44+
	vvQqUqDkffERge8c2/sX1ceaPOVy11EM0OZbVkaLGofGhPv3Yh0NnL54LZ3nS2eOu3yuJIWoHE22T
	g++JCSE6d32qm1nTW8wrapcS36RNgJvqERDUe2ojSnsoi2vtwb5vQTPNvTMlpEOpsUlT6SugilMD+
	GnN3uDdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1p09-00000001DGN-42Bq;
	Fri, 18 Oct 2024 15:34:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1p06-00000001DFX-4ByW
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 15:34:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t1p04-0007pK-TG; Fri, 18 Oct 2024 17:34:48 +0200
Message-ID: <8933223a-4e5e-443d-892e-2b128a117502@pengutronix.de>
Date: Fri, 18 Oct 2024 17:34:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: abdelrahmanyossef12@gmail.com, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20241018-overflow-v3-1-30dc98fe930a@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241018-overflow-v3-1-30dc98fe930a@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_083451_093469_CC5E4210 
X-CRM114-Status: GOOD (  22.46  )
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
Subject: Re: [PATCH v3] common: buffer access out-of-bounds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Abdelrahman,

Thanks for your patch!

On 18.10.24 17:26, Abdelrahman Youssef via B4 Relay wrote:
> From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> 
> in file_detect_type() to detect file of type socfpga_xload you need at least
> 68 bytes bytes, so we need to check if we have enough bufsize.
> So I moved it after checking if `bufsize >= 256`.
> 
> Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> ---
> This patch is a replacement of the last one because there were some issues with it

Please list the concrete changes done in the revision.

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

This line should still not be in the diff. If you look closely, you'll
see that you replaced tabs with spaces. While this may sound overly
picky, it's quite important not to introduce random unrelated changes
into commits to make review easier and not needlessly complicate
use of git blame.

Cheers,
Ahmad

>  		if (buf8[74] == 0x01) {
>  			switch(le32_to_cpu(buf[63])) {
>  			case 0x00000000:
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


