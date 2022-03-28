Delivery-date: Mon, 28 Mar 2022 10:57:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYlBi-008oh6-Vz
	for lore@lore.pengutronix.de; Mon, 28 Mar 2022 10:57:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYlBk-00016S-Pv
	for lore@pengutronix.de; Mon, 28 Mar 2022 10:57:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aKTba16MJk+HykaQk72oVEXHQlPcu5YJvaxhwe5Dprg=; b=mvr0hb4VDeqSXwIuApSE09yc2X
	JlbmaTgWvx9i/xIU1aS0jxcatblhAwrSkxvfLKuqNUijYKbWMCePD0emvMvx7B4O56t+1olVo5pYt
	n8k+1Z9REJjo6WZGUtAnMryb7C+aPSpMFy8JI6C8N7wSh5kRap3zW6YFr5GGt07VMrLBnoAKAA6wH
	du6w24AhfpihghCE9jL3XQRm01jCYmZxq9NIr+8MwpNoPo9ZRTw9URZIEQhSkT85YRB6xYHpH33qJ
	f51B11Z9tj4woDP9F3w3d+OugvVMSsg3EutOpqyPMmdy1C3jUUSa0FInMqEi2581ArSWwja232hIQ
	pQeUW6YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYlAa-007wWH-78; Mon, 28 Mar 2022 08:56:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYlAT-007wUA-Mn
 for barebox@lists.infradead.org; Mon, 28 Mar 2022 08:56:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYlAS-0000oo-FX; Mon, 28 Mar 2022 10:56:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYlAS-0005nL-5k; Mon, 28 Mar 2022 10:56:04 +0200
Date: Mon, 28 Mar 2022 10:56:04 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220328085604.GM12181@pengutronix.de>
References: <20220318144924.497993-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220318144924.497993-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:55:41 up 107 days, 17:41, 85 users,  load average: 0.42, 0.30,
 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_015605_767487_C2BB915D 
X-CRM114-Status: GOOD (  22.04  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] scripts: constify wirte_full input buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 18, 2022 at 03:49:24PM +0100, Ahmad Fatoum wrote:
> Buffer written is read-only, so align prototype with <libfile.h>.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/common.c | 2 +-
>  scripts/common.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Applied with s/wirte_full/write_full/, thanks

Sascha

> 
> diff --git a/scripts/common.c b/scripts/common.c
> index 2be41615ea9e..0eb263d041a5 100644
> --- a/scripts/common.c
> +++ b/scripts/common.c
> @@ -148,7 +148,7 @@ int read_full(int fd, void *buf, size_t size)
>  	return insize;
>  }
>  
> -int write_full(int fd, void *buf, size_t size)
> +int write_full(int fd, const void *buf, size_t size)
>  {
>  	size_t insize = size;
>  	int now;
> diff --git a/scripts/common.h b/scripts/common.h
> index 820108c52c2d..399729c338f3 100644
> --- a/scripts/common.h
> +++ b/scripts/common.h
> @@ -5,6 +5,6 @@ int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_si
>  void *read_file(const char *filename, size_t *size);
>  int write_file(const char *filename, const void *buf, size_t size);
>  int read_full(int fd, void *buf, size_t size);
> -int write_full(int fd, void *buf, size_t size);
> +int write_full(int fd, const void *buf, size_t size);
>  
>  #endif /* __COMMON_H */
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

