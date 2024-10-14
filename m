Delivery-date: Mon, 14 Oct 2024 15:59:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0Lbn-004HgB-34
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:59:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0Lbn-000709-Ba
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:59:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Po7zWHe1FFCPLoVtHTk2U1CAIANadinvDjcZPLi+8t8=; b=qHnbSyg77aHHZoU8umWWGX/xFY
	5xEV6h0eC5yNiFX0JmnsbNszTjhXGrxqLSn7es2gb8kABxINPwFTzOrRzNxqhmggrTI0ofo6A5WX/
	pTucuyA/xeCzrNR+L1mJhiyQgfa+lHCHth56T9NYVug6R9NkGCxX+UMdZ/sSgZ97yt/LZoBmm/CWZ
	OeGijb9dNkDbHtavqnLSqj9/ZAiJgunvleg9WodWzUi1s/Kmmq9RdOvlEtKb+q8YHIc9k0tC8p0j3
	JIPTXAbt7Lt6p28SebQbPYfdSnd8Ho8oK7nGERhEEBF9fvpg01/jzOYvo2g70yiwvv/wplajBsrIb
	XMsrhq7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LbL-00000005OVj-0wgM;
	Mon, 14 Oct 2024 13:59:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Kqg-00000005DEI-3NZG
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 13:11:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t0Kqf-0008RG-7k; Mon, 14 Oct 2024 15:10:57 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1t0Kqe-001ngd-Mb; Mon, 14 Oct 2024 15:10:56 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t0Kqe-00AvPr-20;
	Mon, 14 Oct 2024 15:10:56 +0200
Date: Mon, 14 Oct 2024 15:10:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Rashidwi <rashidwinter@gmail.com>
Message-ID: <Zw0YYLx7CjIEYYfI@pengutronix.de>
References: <20241002160714.2423842-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241002160714.2423842-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_061058_900501_9715128E 
X-CRM114-Status: GOOD (  24.16  )
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
Subject: Re: [PATCH] uimage: fix CRC32 verification on NFS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Oct 02, 2024 at 06:07:15PM +0200, Ahmad Fatoum wrote:
> Reading a file over NFS is prone to return short reads as the file
> content is split over multiple UDP packets and reads won't return
> more than the number of bytes that have gathered in the FIFO.
> 
> The uImage verification code didn't account for this and handled neither
> short reads or the file prematurely ending.

Short reads shouldn't be a problem in the code you are touching here.
Have you moved this part to "uimage: use read_full where appropriate"
and didn't adjust the commit message?

> 
> Address both to fix this unexpected result:
> 
>   uimage -v /mnt/nfs/uImage
>   verifying data CRC... Bad Data CRC: 0x56474aa2 != 0x6b8f0a9c
> 
>   cp /mnt/nfs/uImage .
>   uimage -v uImage
>   verifying data CRC... ok
> 
> Fixes: 390249968c4e ("reimplement uImage code")
> Closes: https://github.com/barebox/barebox/issues/28
> Reported-by: Rashidwi <rashidwinter@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/uimage.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/common/uimage.c b/common/uimage.c
> index 140a08c1e426..c578edae2606 100644
> --- a/common/uimage.c
> +++ b/common/uimage.c
> @@ -272,7 +272,9 @@ int uimage_verify(struct uimage_handle *handle)
>  		ret = read(handle->fd, buf, now);
>  		if (ret < 0)
>  			goto err;
> -		crc = crc32(crc, buf, now);
> +		if (!ret)
> +			break;

Should we have an extra error message in this case? The information that
a uImage is shorter than expected might be valuable for the user.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


