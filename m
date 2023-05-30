Delivery-date: Tue, 30 May 2023 14:40:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3ydv-002mpv-J8
	for lore@lore.pengutronix.de; Tue, 30 May 2023 14:40:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3yds-0007e0-Px
	for lore@pengutronix.de; Tue, 30 May 2023 14:40:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uePyqji4wppo9F6u+jnWe3k/9z8nSGCLCwvPhjDAgTo=; b=xxVB6o7bBhlk7AhCTtln2XOo5M
	MkXReP7xF+qMe1PDXFA1zhXYclIU/ayh9KMXvcocQVYEOv3vb6XzGYhrpVayeKQ+sTCcUZlCV7vo6
	MCq0oGBNp+8JeeMfQrr6+dVRXscEQMeANsaTP2d7MKA3FebQWNCn0v5he9QPF7rWm4mSQ0lQ69oPR
	8734ISrlYVxbJbeENuCbqZ87oST9kAbKFrpbact12gJFRNYhhcGvZHvtsiOu02eqWxieGIEKuazRJ
	4392WI0J/DwV66bAppdxqkjEsM5yoVU0qO5lAtCpxJBzM1xO/nSSLvYzs7kF46X/Dgz4F/6uPDYYA
	/JHUTXcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3ycj-00DtdD-1p;
	Tue, 30 May 2023 12:38:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3ycg-00Dtch-33
	for barebox@lists.infradead.org;
	Tue, 30 May 2023 12:38:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3ycf-0007Y1-FB; Tue, 30 May 2023 14:38:45 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3ycf-0000DJ-4O; Tue, 30 May 2023 14:38:45 +0200
Date: Tue, 30 May 2023 14:38:45 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Masahiro Yamada <masahiroy@kernel.org>
Message-ID: <20230530123845.GA15436@pengutronix.de>
References: <20230523094035.3452447-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230523094035.3452447-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_053846_980750_8D1ADDBD 
X-CRM114-Status: GOOD (  24.53  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] efi: payload: iomem: add commented out #define DEBUG
 1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Picked some outdated address from Masahiro, so once again:

On Tue, May 23, 2023 at 11:40:34AM +0200, Ahmad Fatoum wrote:
> The code uses __is_defined, which only works for undefined macros and
> defined ones with a value. This is different than the debugging prints
> that accept empty defined DEBUG, so add a commented out #define DEBUG 1
> to alert those seeking to debug the code.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/efi/payload/iomem.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/common/efi/payload/iomem.c b/common/efi/payload/iomem.c
> index 6b92ca993aa7..550d832668ed 100644
> --- a/common/efi/payload/iomem.c
> +++ b/common/efi/payload/iomem.c
> @@ -3,6 +3,7 @@
>  
>  #define pr_fmt(fmt) "efi-iomem: " fmt
>  
> +// #define DEBUG 1

I don't like this very much.

Generally being able to do this is really appealing:

        if (__is_defined(DEBUG))
                ...

Indeed this is so appealing that others may copy this. Having to
remember then that there's a subtle difference between __is_defined() and
#ifdef is not so nice though.

We could add

#define __ARG_PLACEHOLDER_ 0,

to include/linux/kconfig.h. With this __is_defined() and #ifdef should
do the same thing. It would even better to add this to the Linux
upstream version of this file. I am not sure though if that has any
unwanted side effects. Masahiro, do you have an opinion about this?

Another option would be to add this somewhere:

#ifdef DEBUG
#undef DEBUG
#define DEBUG 1
#endif

Sascha
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


