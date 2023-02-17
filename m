Delivery-date: Fri, 17 Feb 2023 10:47:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSxLG-00A22s-Q1
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 10:47:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSxLF-0000NK-Hl
	for lore@pengutronix.de; Fri, 17 Feb 2023 10:47:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CJLyzzgH3KjEtkrdB2Y4CeCgKwdv1rrXgru/3G2P+yc=; b=rIhtR1hydSsN+uvlVNgIw0TlP0
	F4nLhwyMovb91Ld7vygV3tJeuK6I6tcLZiFqNh2nOjM/VFszAmA+1cZBdFoc+5Y4YHou1AL2DMyi3
	50IZ/4QxdXfQjBAuq+ANvdsrZGwHMxZawhRGiy5/MRZftlVmT9nsrD7DOnq2hnCHAWw2x+HdbgQjf
	8KCmgfBeohDJ0xIp5E6DgzahlZeka119/Xs9yH+3BZ7BumMGJD8Q+zwryJiasoTYY8XyMKzqE9a/3
	USrAuFcXxc0l5YquWK58rbx296+7Ng/H9nV3p5OKjZjpo2t1LrdajPC0M/ic40SVmzGMrvjw+B7Z/
	ov29cWVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSxKX-00DXkv-45; Fri, 17 Feb 2023 09:47:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSxKS-00DXjx-45
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 09:46:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxKQ-0000EZ-Qh; Fri, 17 Feb 2023 10:46:54 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxKQ-0001nl-De; Fri, 17 Feb 2023 10:46:54 +0100
Date: Fri, 17 Feb 2023 10:46:54 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Message-ID: <20230217094654.GR10447@pengutronix.de>
References: <20230217070810.3353123-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230217070810.3353123-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_014656_180115_B1E2FA35 
X-CRM114-Status: GOOD (  20.02  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] kwboot: add missing header to fix musl build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 17, 2023 at 08:08:10AM +0100, Ahmad Fatoum wrote:
> Building kwboot for musl instead of glibc results in a couple of errors:
> 
>   error: unknown type name 'fd_set'
>   error: storage size of 'tv' isn't known
>     142 |         struct timeval tv;
>   warning: implicit declaration of function 'FD_ZERO'
>   warning: implicit declaration of function 'FD_SET'
>   warning: implicit declaration of function 'select'
>   warning: implicit declaration of function 'FD_ISSET'
> 
> POSIX specifies[1] that all these symbols shall be defined by <sys/select.h>,
> so include this missing header.
> 
> [1]: https://pubs.opengroup.org/onlinepubs/009695399/basedefs/sys/select.h.html

Applied, thanks

Sascha

> 
> Reported-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Link: https://lore.kernel.org/openembedded-core/Y91ObtiQCtnpGaRH@mail.local/
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/kwboot.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/scripts/kwboot.c b/scripts/kwboot.c
> index 1cbb456935f2..2a4f6bc5fc58 100644
> --- a/scripts/kwboot.c
> +++ b/scripts/kwboot.c
> @@ -22,6 +22,7 @@
>  #include <termios.h>
>  #include <sys/mman.h>
>  #include <sys/stat.h>
> +#include <sys/select.h>
>  
>  /*
>   * Marvell BootROM UART Sensing
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


