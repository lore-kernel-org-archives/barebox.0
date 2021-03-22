Delivery-date: Mon, 22 Mar 2021 05:55:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOCbF-0002wt-1v
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 05:55:33 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOCbE-0003C8-9H
	for lore@pengutronix.de; Mon, 22 Mar 2021 05:55:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fniSJrGb3jyrFG9JnaWXytttVf/hxBReyW9A49rKagQ=; b=jaBZAvXjJvUT5IKCNhbncKgaU
	ZYjB9gQgMRJE6pjonF52bhFVlW1BasCrPQhAL9XXoY/q1O3iRg1fnKdjysoEBEAO62dhKcyNEbxk8
	k1TdllksFb+f90KXRITX9YanhXagS+zMltZyoZm8F7DdUa7LyFawZkw4PiBwDSb+Sxl3L/oLuAp6z
	lFV1mgHE/hbtk549lzmoeR3NkBm6ZGj21ErkwkGA9taoOgZH8Uu5lTKjVbeXD1GsA9UPiIfBwQJ+b
	gb6Y1W2FredJEdGmM4k8a1GfeebrDHpCzj5TsOEfljpfanLEqbUGNJQaGrwY2P21ViyF8qCfL0Fgl
	mYI+YTYoQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOCa9-00AtM8-U4; Mon, 22 Mar 2021 04:54:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOCa3-00AtKw-U2
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 04:54:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOCa3-00035s-9d; Mon, 22 Mar 2021 05:54:19 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOCa2-00049w-QL; Mon, 22 Mar 2021 05:54:18 +0100
Date: Mon, 22 Mar 2021 05:54:18 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210322045418.GI23724@pengutronix.de>
References: <20210321150050.3566868-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210321150050.3566868-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 05:53:29 up 32 days,  8:17, 49 users,  load average: 0.00, 0.03, 0.07
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_045420_274047_08BF91C5 
X-CRM114-Status: GOOD (  23.60  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! common: introduce bthreads, co-operative barebox
 threads
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Mar 21, 2021 at 04:00:50PM +0100, Ahmad Fatoum wrote:
> Specifying __aligned for a struct member only ensures a relative
> alignment to the start of the struct. To get an absolute alignment,
> we must ensure the struct itself is aligned suitably as well. Do so.
> 
> This fixes an issue where printf("%llu" printed bogus values when
> run from a bthread, because gcc va_arg on RISC-V requires 16-bit
> stack alignment.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  common/bthread.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/bthread.c b/common/bthread.c
> index 80b486c99af7..ece02e091da9 100644
> --- a/common/bthread.c
> +++ b/common/bthread.c
> @@ -88,7 +88,7 @@ struct bthread *bthread_create(int (*threadfn)(void *), void *data,
>  	va_list ap;
>  	int len;
>  
> -	bthread = malloc(struct_size(bthread, stack_space, CONFIG_STACK_SIZE));
> +	bthread = memalign(16, struct_size(bthread, stack_space, CONFIG_STACK_SIZE));

Wouldn't it be clearer to make the stack an extra allocation instead of
attaching it to struct bthread?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

