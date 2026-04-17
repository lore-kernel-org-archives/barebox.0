Delivery-date: Fri, 17 Apr 2026 11:29:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfVZ-00D8qF-25
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 11:29:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfVZ-0000kJ-2k
	for lore@pengutronix.de; Fri, 17 Apr 2026 11:29:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mpbZtQDQcs8O/VOD1uR/SrSEp17zCQJRQ3GC79pC0cU=; b=1lM8DULYfX7h81/ldZjhhGQESL
	lLHJMrz8AHFCAb2d7PvqFLsXHb0f5YFEfI/myt6cJZryhbfF9EDsoIA/9BUPk5hVnMRRaSvjrexbW
	CFrwjsxsXCsudcSSLpQneoxJjU5qx+ys0aVgxOtBlPJR6sGtifdemjdhTBY8ZcxF8qxhKoYX/86gX
	r9pWITQOCZT46i0bpdX3RKJL++UV74Zr8P1CfVY1ohmiKRcYovPkK+v/peCA4B9V9z+i7zcf7U09t
	uqTOSIPQH+7VnOyFuDgy4TbbMpnuy0dGFbVPhxA9n34vn4TdUoQ8j5Hpb774jFFTypKw5vQnsPt4Q
	XqJOzB4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfVA-00000003ot2-3j75;
	Fri, 17 Apr 2026 09:28:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfUh-00000003oAt-1fqb
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 09:28:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDfUf-0000Nl-8y; Fri, 17 Apr 2026 11:28:09 +0200
Message-ID: <92b29190-41a5-4cbf-9ec8-2bdc1fe5ea81@pengutronix.de>
Date: Fri, 17 Apr 2026 11:28:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
References: <20260402-net-tftp-buffer-overflows-v1-0-0a18aa8ea19e@pengutronix.de>
 <20260402-net-tftp-buffer-overflows-v1-2-0a18aa8ea19e@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260402-net-tftp-buffer-overflows-v1-2-0a18aa8ea19e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_022811_863893_B780E4F2 
X-CRM114-Status: GOOD (  20.59  )
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
Subject: Re: [PATCH 2/4] fs: tftp: fix OACK option parsing bounds check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 4/2/26 9:21 AM, Sascha Hauer wrote:
> The bounds check in tftp_parse_oack() uses 'val > s + len' to detect
> when the value pointer exceeds the packet. Since 's' advances through
> the buffer while 'len' stays constant, 's + len' always points past
> 'pkt + len', making the check always false — it is dead code.
> 
> The forced null at pkt[len - 1] provides partial protection, but when
> the last option key ends exactly at pkt[len - 1], val equals pkt + len
> and the subsequent strlen(val) reads past the packet boundary into
> uninitialized packet buffer data.
> 
> Fix by checking 'val >= pkt + len' instead, which correctly bounds val
> against the actual end of the packet data. Using >= because when val
> equals pkt + len there is no room for a value string.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/tftp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/tftp.c b/fs/tftp.c
> index 1b15bc18e7..03e9d552aa 100644
> --- a/fs/tftp.c
> +++ b/fs/tftp.c
> @@ -370,7 +370,7 @@ static int tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
>  	while (s < pkt + len) {
>  		opt = s;
>  		val = s + strlen(s) + 1;
> -		if (val > s + len)
> +		if (val >= pkt + len)
>  			break;
>  		if (!strcmp(opt, "tsize"))
>  			priv->filesize = simple_strtoull(val, NULL, 10);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



