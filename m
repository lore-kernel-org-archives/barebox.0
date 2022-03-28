Delivery-date: Mon, 28 Mar 2022 10:57:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYlCB-008oiV-T2
	for lore@lore.pengutronix.de; Mon, 28 Mar 2022 10:57:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYlCE-0001N2-9T
	for lore@pengutronix.de; Mon, 28 Mar 2022 10:57:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EANpkxiosFbz2N52997H2KXr4oNqDF+0yOfpntdFWsg=; b=4AfCLnASxqLazBbFbBlkjVAUjt
	CMhpL57O4L0idVf1s82BY+Wbg+QS0Q2cg0Gb55TYT07liivmw9icHLh3CwFZZpnXnXlNwABCJNE5n
	rMaJRHG1snmR/GL609O/bJxQ4cyuKom6RLTzGKFAM/Eu0fJ8c8+kH+BIk6jBK8ZraRy/oNEjXFWYb
	EM3iyOInbUYSILACZh4bElgf4r2esZqWkt76k8rHyRAZkqsUBQ5rdoyXJh2Rb3fmlMlmluWbryxBW
	GA0A7DhZFmIB1UomjDZxL8XzfRmIgsKK9uZquE5kMaopuEuaoyBCn7YxeUr0lO+Ok2yRtBVZ93y4n
	kNquPDaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYlB2-007wiA-Uz; Mon, 28 Mar 2022 08:56:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYlAx-007wh0-Oi
 for barebox@lists.infradead.org; Mon, 28 Mar 2022 08:56:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYlAw-0000xW-IH; Mon, 28 Mar 2022 10:56:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYlAw-0005pR-8M; Mon, 28 Mar 2022 10:56:34 +0200
Date: Mon, 28 Mar 2022 10:56:34 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220328085634.GN12181@pengutronix.de>
References: <20220318144942.498124-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220318144942.498124-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:56:23 up 107 days, 17:41, 85 users,  load average: 0.37, 0.30,
 0.23
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_015635_834797_E66DB991 
X-CRM114-Status: GOOD (  27.35  )
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
Subject: Re: [PATCH] libfile: implement new pread_full
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 18, 2022 at 03:49:42PM +0100, Ahmad Fatoum wrote:
> We already have pwrite_full, add pread_full for symmetry.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/libfile.h |  1 +
>  lib/libfile.c     | 25 +++++++++++++++++++++++++
>  2 files changed, 26 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/libfile.h b/include/libfile.h
> index 3c2fe1714dcb..a353ccfa9ea9 100644
> --- a/include/libfile.h
> +++ b/include/libfile.h
> @@ -2,6 +2,7 @@
>  #ifndef __LIBFILE_H
>  #define __LIBFILE_H
>  
> +int pread_full(int fd, void *buf, size_t size, loff_t offset);
>  int pwrite_full(int fd, const void *buf, size_t size, loff_t offset);
>  int write_full(int fd, const void *buf, size_t size);
>  int read_full(int fd, void *buf, size_t size);
> diff --git a/lib/libfile.c b/lib/libfile.c
> index 6b373f05ca72..1f533133c593 100644
> --- a/lib/libfile.c
> +++ b/lib/libfile.c
> @@ -75,6 +75,31 @@ int write_full(int fd, const void *buf, size_t size)
>  }
>  EXPORT_SYMBOL(write_full);
>  
> +/*
> + * pread_full - read to filedescriptor at offset
> + *
> + * Like pread, but this function only returns less bytes than
> + * requested when the end of file is reached.
> + */
> +int pread_full(int fd, void *buf, size_t size, loff_t offset)
> +{
> +	size_t insize = size;
> +	int now;
> +
> +	while (size) {
> +		now = pread(fd, buf, size, offset);
> +		if (now == 0)
> +			break;
> +		if (now < 0)
> +			return now;
> +		size -= now;
> +		buf += now;
> +	}
> +
> +	return insize - size;
> +}
> +EXPORT_SYMBOL(pread_full);
> +
>  /*
>   * read_full - read from filedescriptor
>   *
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

