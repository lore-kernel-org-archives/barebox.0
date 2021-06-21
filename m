Delivery-date: Mon, 21 Jun 2021 06:53:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvBwK-0003x2-P8
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 06:53:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvBwI-0001tM-Ib
	for lore@pengutronix.de; Mon, 21 Jun 2021 06:53:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aWW2o17vRtfcPTC8lcC5RwQxu6VCrKrDrevliK8H6oQ=; b=OIERE1kbGn4Af1/2m8mO8Ah6rH
	+MVB5eJawnxphrNpf+SOk1MhfN4igtvReLMLMsSsjt95wu8nOziSslY5jDmyIsDT91cQY7mNqs9Vx
	rXFMFF5uu/kVhQF/1IVC7bQ16Dr75hgqNKZsNF9q2/oeYPJUXG0jCJ1VqU0+5VKVrUMpQhH2vryCX
	urNj/miCT1G8I/+HoUPnDNJdr3iHA2Jp2nsYBHGCo0iwLcrAOtOXnz1CDurRycCODUzYMfUW5xbCw
	bcwb5HxgkWTU0mBVAENz+PizjwUwZJkAxeRd7q9UbwLXhPTeVARU+EUwZ6LOf7L2md/OLsj0ZOD3H
	/me7mQkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvBuu-002566-0e; Mon, 21 Jun 2021 04:52:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvBup-00255O-4B
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 04:52:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvBun-0001qT-Gl; Mon, 21 Jun 2021 06:52:05 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvBum-0007O7-Qp; Mon, 21 Jun 2021 06:52:04 +0200
Date: Mon, 21 Jun 2021 06:52:04 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210621045204.GI9782@pengutronix.de>
References: <20210619032654.455801-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210619032654.455801-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:50:37 up 123 days,  8:14, 90 users,  load average: 0.08, 0.11,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_215207_209024_445B07B4 
X-CRM114-Status: GOOD (  18.05  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] string: implement strchrnul
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Sat, Jun 19, 2021 at 05:26:53AM +0200, Ahmad Fatoum wrote:
> -}
> -
>  static int sscanf_two_digits(char *s, int *res)
>  {
>  	char buf[3];
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 6e716fcdcf27..f375fcd67572 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2479,10 +2479,7 @@ struct device_node *of_get_stdoutpath(void)

There seems to be a patch missing in this series. I don't have
of_get_stdoutpath() in my tree.

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

