Delivery-date: Fri, 01 Oct 2021 11:23:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWElo-0008IS-Vh
	for lore@lore.pengutronix.de; Fri, 01 Oct 2021 11:23:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWEln-0007nr-Ic
	for lore@pengutronix.de; Fri, 01 Oct 2021 11:23:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N+2+h7CJ80LIF9Ljb/xRTzn1ZJaiGQ22Q+QrKq7EAb0=; b=vn7cGbrQD1sDZOT5I4BZIhh8g0
	IRHplZpkK1mgEa4GaM5QY0+CRsV29WIVZ9U0KV6s79hy7ZH0QqP9zuSvldyA8GYCxMCCYRbTI4vr2
	aX7FteEqdVuQUVzpjlknPyywx+RtFvATesPKBMaCGKjvHNYFsHQIEe4LjtBlizORn82gZoidvU6Mj
	nYSapDkTTNvd3+RcXv9zHhSS5Zj33HPPYKxmCaoDbe3KbQ1vq0pvJf4XkTA7nqRD5n/7FCRnCwG1x
	78YpJsE/KJLz0f2/8jZmIwQO9NdgMnUulDJUwBll2F0vBWDMItBah9cyqIqP4yWdMP+/0OH6CF3om
	PXNx/uog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWEk8-00HCny-KH; Fri, 01 Oct 2021 09:22:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWEk3-00HCmb-Gx
 for barebox@lists.infradead.org; Fri, 01 Oct 2021 09:22:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWEk0-0007Y1-Aa; Fri, 01 Oct 2021 11:22:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWEjz-0006RJ-BS; Fri, 01 Oct 2021 11:22:03 +0200
Date: Fri, 1 Oct 2021 11:22:03 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20211001092203.GQ24834@pengutronix.de>
References: <20210929120558.1424-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210929120558.1424-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:21:49 up 225 days, 12:45, 133 users,  load average: 0.12, 0.09,
 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_022207_593795_5F6258AE 
X-CRM114-Status: GOOD (  22.16  )
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
Subject: Re: [PATCH] pbl/Kconfig: fix typo "inflluences" -> "influences"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Sep 29, 2021 at 02:05:58PM +0200, Jules Maselbas wrote:
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  pbl/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/pbl/Kconfig b/pbl/Kconfig
> index 451a278c40..5fc9971084 100644
> --- a/pbl/Kconfig
> +++ b/pbl/Kconfig
> @@ -33,7 +33,7 @@ config PBL_RELOCATABLE
>  	  Generate a pbl binary which can relocate itself during startup to run
>  	  on different addresses. This is useful if your memory layout is not
>  	  known during compile time.
> -	  This option only inflluences the PBL image. See RELOCATABLE to also make
> +	  This option only influences the PBL image. See RELOCATABLE to also make
>  	  the real image relocatable.

Applied, thanks

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

