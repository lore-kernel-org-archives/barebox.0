Delivery-date: Fri, 17 Apr 2026 11:48:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfny-00D9AG-0e
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 11:48:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfnx-00076k-Ki
	for lore@pengutronix.de; Fri, 17 Apr 2026 11:48:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fsG2H5LvlFpxjfoFuY9qirK1IeCFkqGmCtYwSS1aREk=; b=BVv08EGnJ626GNvtxb447+09+X
	wXV8XBm1kGks6C1Bxnom/7Ctem4nGH+8J/hZpFikmJBCOG/xrK1II4hmK7RrAYnc+A8prc2xHnrBt
	gUMsJUEXyv5NgPbct420QwgkmH5q0USf/TwvwRoKKOzSTU+3DeS8sab4MSXCeg7XTEguu3uVmFSMc
	7hHDmAVffjGkaQAd4AmVOlXHiLDNIT278rVDGe3lifhOxbDDZYOOYaOTLEiFKSzACyQryBlSyReN+
	gNADLhh58BhGjucBLsCbkpGidmJU8ShbzChCBJ50MK/Trc71RUURcVjTgGizCDx2sNWqbZicrQ+zL
	ylqVgF4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfnb-00000003r1K-3Zax;
	Fri, 17 Apr 2026 09:47:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfnZ-00000003r0t-2YKL
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 09:47:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDfnY-0006x1-1M; Fri, 17 Apr 2026 11:47:40 +0200
Message-ID: <4d2eec0f-4527-4e9d-8bad-62e275a7df17@pengutronix.de>
Date: Fri, 17 Apr 2026 11:47:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
References: <20260402-net-dhcp-buffer-overflows-v2-0-fe4ca7c4b718@pengutronix.de>
 <20260402-net-dhcp-buffer-overflows-v2-2-fe4ca7c4b718@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260402-net-dhcp-buffer-overflows-v2-2-fe4ca7c4b718@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_024741_684510_415C836E 
X-CRM114-Status: GOOD (  18.86  )
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
Subject: Re: [PATCH v2 2/3] net: dhcp: use xstrndup for bp_file to prevent
 read past field
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 4/2/26 8:59 AM, Sascha Hauer wrote:
> bootp_copy_net_params() uses strlen() and xstrdup() on bp->bp_file,
> which is a fixed 128-byte field in the BOOTP packet. If a DHCP server
> sends a packet where all 128 bytes are non-null, strlen() reads past
> the field boundary into the options data looking for a null terminator,
> and xstrdup() then copies the oversized result.
> 
> Use a simple bp->bp_file[0] check for the non-empty test and
> xstrndup() bounded by sizeof(bp->bp_file) to ensure we never read
> past the field.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  net/dhcp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/net/dhcp.c b/net/dhcp.c
> index 1cb3fef5d7..f4e4033351 100644
> --- a/net/dhcp.c
> +++ b/net/dhcp.c
> @@ -158,8 +158,8 @@ static void bootp_copy_net_params(struct bootp *bp)
>  	dhcp_result->ip = net_read_ip(&bp->bp_yiaddr);
>  	dhcp_result->serverip = net_read_ip(&bp->bp_siaddr);
>  
> -	if (strlen(bp->bp_file) > 0)
> -		dhcp_result->bootfile = xstrdup(bp->bp_file);
> +	if (bp->bp_file[0] != '\0')
> +		dhcp_result->bootfile = xstrndup(bp->bp_file, sizeof(bp->bp_file));
>  }
>  
>  static int dhcp_set_string_options(int option, const char *str, u8 *e)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



