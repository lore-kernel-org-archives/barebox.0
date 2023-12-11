Delivery-date: Mon, 11 Dec 2023 10:42:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rCcnl-000ITS-1W
	for lore@lore.pengutronix.de;
	Mon, 11 Dec 2023 10:42:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rCcnl-0008MN-O4
	for lore@pengutronix.de; Mon, 11 Dec 2023 10:42:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/2rhUR+2lByHUKg0XbK8AR95AYIx4Kp9kkL7Ke3HiHA=; b=c4HkkUkOgeFWyXa5CTPj/ZPSYt
	LOpuGVFJTVQq1cFgCrNzCPt18UP/VpWtKeBaqSpLkdU8s4CFCegHBa6364GIyyfFiWjWrgUsa8CxR
	Mm6CODK3sFrmGVOpLu+feACEfRZhOFusx3C6s73gVG+RYgWlYQykhzL9N3eyPd+bJO5T3RgJii5WL
	z5FtKRgneq0gRvHDhN+78CMyoKOxMxqq6J41Ux6JpQby2YHIfI4IwGqb3BNxIKCcZ8WOOVqaDN/X4
	XNOQBycE2bIkFMj4CVRUvCszQMMPfTDfLpCIzO2uf5dtDVu+hGiiA6mS4aBvxxNJzJohilGKiO+Xg
	ql09divQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCclt-004Unh-2p;
	Mon, 11 Dec 2023 09:40:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCcle-004Uiy-2i
	for barebox@lists.infradead.org;
	Mon, 11 Dec 2023 09:40:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1rCclZ-0007y3-PN; Mon, 11 Dec 2023 10:39:57 +0100
Message-ID: <d350f741-f7c5-4ca0-8fca-1d8967f1047b@pengutronix.de>
Date: Mon, 11 Dec 2023 10:39:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20231208140630.1986278-1-a.fatoum@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20231208140630.1986278-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_014002_985036_2057BC11 
X-CRM114-Status: GOOD (  19.10  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fastboot: sparse: print descriptive error on overflowing
 destination
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 12/8/23 15:06, Ahmad Fatoum wrote:
> Fastboot flash of both regular files and barebox update handlers will
> print a message if the file being written doesn't fit the destination:
> 
>    barebox update:  "Image (%zd) is too big for device (%lld)\n"
>    fastboot:        "write: No space left on device\n"
> 
> With sparse images however, not the write will fail, but the lseek to
> the new offset, triggering a cryptic:
> 
>    "writing sparse image: Invalid argument"
> 
> Let's improve upon this a bit by translating lseek -EINVAL to -ENOSPC,
> so we get:
> 
>    "writing sparse image: No space left on device"
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Tested-by: Bastian Krause <bst@pengutronix.de>

Thanks!

Bastian

> ---
>   common/fastboot.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/fastboot.c b/common/fastboot.c
> index 65d1d30f9092..261283d50a3a 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -598,7 +598,7 @@ static int fastboot_handle_sparse(struct fastboot *fb,
>   
>   			pos = lseek(fd, pos, SEEK_SET);
>   			if (pos == -1) {
> -				ret = -errno;
> +				ret = errno == EINVAL ? -ENOSPC : -errno;
>   				goto out;
>   			}
>   

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



