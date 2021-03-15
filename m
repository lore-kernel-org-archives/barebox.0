Delivery-date: Mon, 15 Mar 2021 08:51:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLi0W-0000WU-Sc
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 08:51:20 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLi0W-0005Yt-7i
	for lore@pengutronix.de; Mon, 15 Mar 2021 08:51:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sL5HDF+9eKnfjPIzmFf3k5dQzUjw+PAw1h5vawZXGR4=; b=QeplyqUH3SL8hsD651Hyuh95z
	m9m713ECt9qm9FRQNVlxAqoW7mk7HYGFubqD7oXiTZP/b2QaDaW9m27a82txkGY2XJ4NOZHgGHm+P
	tI+LJSH7KoLNo+POhTVbzLnixdRxh2eX9tLTkL7+tAWcrZJnOVEXJl+Jz/bkGswV/v5qdCTJMkbmG
	Fl0LydNLWgSxFcKBkhmv9K1tF1g2uN37dAy4H8SSCc1AWa2JNbMDSmbfJkNc56sZ/mHtzZbvgSW75
	hrd+nP6Ag2e3LlXwy7ywb66nXkCIz60YlSxpG+W6jfxxcdc6w1tyQjF5e0wyRJC2dc4lsFCxyaFDy
	Zq/pf8Brg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLhzP-00FAJg-EZ; Mon, 15 Mar 2021 07:50:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLhzI-00FAIr-AH
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 07:50:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLhzH-0005F5-Pe; Mon, 15 Mar 2021 08:50:03 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLhzH-0003AP-GW; Mon, 15 Mar 2021 08:50:03 +0100
Date: Mon, 15 Mar 2021 08:50:03 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210315075003.GE23724@pengutronix.de>
References: <20210311103654.7729-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210311103654.7729-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:49:54 up 25 days, 11:13, 69 users,  load average: 0.10, 0.07, 0.07
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_075004_542314_215FB221 
X-CRM114-Status: GOOD (  23.92  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: mmu64: fix build for non-MMU configurations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 11, 2021 at 11:36:54AM +0100, Ahmad Fatoum wrote:
> barebox only catches null pointer dereferences when MMU support is
> enabled. Thus the empty stubs should always be used on !CONFIG_MMU
> systems, disregarding whether CONFIG_ARCH_HAS_ZERO_PAGE is selected
> or not.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/zero_page.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/zero_page.h b/include/zero_page.h
> index ad6861f240c6..519e65be7628 100644
> --- a/include/zero_page.h
> +++ b/include/zero_page.h
> @@ -4,7 +4,7 @@
>  
>  #include <common.h>
>  
> -#if defined CONFIG_ARCH_HAS_ZERO_PAGE
> +#if defined CONFIG_ARCH_HAS_ZERO_PAGE && defined CONFIG_MMU
>  
>  /*
>   * zero_page_faulting - fault when accessing the zero page
> -- 
> 2.29.2
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

