Delivery-date: Mon, 03 May 2021 14:47:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXz7-0003ET-Hl
	for lore@lore.pengutronix.de; Mon, 03 May 2021 14:47:37 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXz6-0007kZ-MW
	for lore@pengutronix.de; Mon, 03 May 2021 14:47:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=43vSdkjj59WXD7HVvZpEZGyI4MYp4hujhceknkSZQYE=; b=ku0oX8Ef6kh3jwokD9SqLmXcL
	zTokPRsXwYm6Dmeg+IPu58sLMQ7cKEiqV5paes6BlbwGY3iXYB1R62/zeaWdLf/3zSCPEWvY1rmnG
	niIH8U3OMtESqciorPWWt1dGtUAAudCnbrp6rn/OaP14dqmoG45SrLcdhXFAFfNmfMuTVe5Kjaq2j
	qkWNQj/r06Unp9CkL4iGKPCCwPlhbv4WHMUUeh6l3Fo1zhKE0m/8AqQBMrk7byW1uE/WnXJ9PM0RD
	1WzsGeUjbGh+Xg2sppX3sGDtTt+ViKi7J23++YH2shmT9i4qDCZq/n1wJZVeoUkerZLe1F8tCM6IA
	YuCIgZbug==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldXxw-00DtO6-Dg; Mon, 03 May 2021 12:46:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXxQ-00DtHE-A0
 for barebox@desiato.infradead.org; Mon, 03 May 2021 12:45:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=9MsOE0MB9rzrU21i2cK1sZnFgwNiJeK12ePmfLSVyDA=; b=K3EafTvtq39/x59iKnKn9YEorC
 Qy+jtEZbzuVCvzsOzSbuNtM6OWXUZfqx/C5ZruzWmHaK/NlN1NpKYH+um880AyOoMahD7cEoidLyo
 T6lJF5F3iHR2eLEa0DyChvJOYVJhhMHN8qp0Rf/cch+zrUyIw3oKwtjvWTw+R+PI/5aOD4trP6nay
 iMz4XCvdzrXhey+Xe5xt6bnEs2Ixq9kbLNX1GrPIWoBVzE94X/5zsNkDXL95PDguZnOSEQawgJIvO
 6dJ8q6emiHPa1wGqxtU4AFaI2URaa5Nkklk8IlsIJhaCQEJlPPe3ayjyzl2I+NBCjxif1STqCzPXT
 hzVQkaLQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXxN-00343c-N1
 for barebox@lists.infradead.org; Mon, 03 May 2021 12:45:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldXxM-00079t-Gm; Mon, 03 May 2021 14:45:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldXxL-0005tY-Uh; Mon, 03 May 2021 14:45:47 +0200
Date: Mon, 3 May 2021 14:45:47 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org, Neeraj Pal <neerajpal09@gmail.com>
Message-ID: <20210503124547.GL19819@pengutronix.de>
References: <20210417233409.637-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210417233409.637-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:45:39 up 74 days, 16:09, 101 users,  load average: 0.15, 0.10,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_054549_772066_180DADBC 
X-CRM114-Status: GOOD (  24.67  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: Fix link_path_walk to return -ENOENT on empty path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Apr 18, 2021 at 01:34:09AM +0200, Jules Maselbas wrote:
> link_path_walk was returning 0 when passed with an empty path,
> this lead calling code to assume that the struct nameidata nd
> is valid and thus has a `last` field populated, which is not.
> In the end causing a runtime crash.
> 
> This issue can easily be reproduced by running the command:
> cat ""
> 
> Reported-by: Neeraj Pal <neerajpal09@gmail.com>
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  fs/fs.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/fs/fs.c b/fs/fs.c
> index a02332491..6de5a3b59 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -1928,6 +1928,8 @@ static int link_path_walk(const char *name, struct nameidata *nd)
>  	int err;
>  	char separator = '/';
>  
> +	if (!*name)
> +		return -ENOENT;
>  	while (*name=='/')
>  		name++;
>  	if (!*name)
> -- 
> 2.17.1
> 
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

