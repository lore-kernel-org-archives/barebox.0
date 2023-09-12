Delivery-date: Tue, 12 Sep 2023 11:29:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfzhz-00CUMW-J5
	for lore@lore.pengutronix.de; Tue, 12 Sep 2023 11:29:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfzhx-0006HY-6n
	for lore@pengutronix.de; Tue, 12 Sep 2023 11:29:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BfgAX39mjtVD8/6nr0IKgSk4kIxuakyNabyc2NaZ2aY=; b=DUrWYvWumHen2Dl8C80pKQwaW+
	zNdqRqKHZUNsI5fmll/8v9nRy6VE0XHmjA0QTfC7rLdxfwqltbHDZUXQoab6E5aQ4LYYNnk1tJmDy
	GGTsu98Vdiyc5TlWCZYzcaDGH9jft0pO9h4aPQjx2WUlupjNxgEgkPsNsX7jbTmscHak0W9WOVaJ0
	403QOsP7UtE+uCNb/eFDABhR0II+0XPDto2IzetcWUcewqZ39LxtEhviISQWtT3VB0YNUvrUopyG/
	JKLuy/W1e/M8WDgzvhuIWeLfWYwvJBfO0VOIf0pcfWSGsnLfYAx1fI1HzUOKxWQ635WFobbdHELnE
	zo/KGVlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfzgx-002jhx-02;
	Tue, 12 Sep 2023 09:28:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfzgu-002jgd-0o
	for barebox@lists.infradead.org;
	Tue, 12 Sep 2023 09:28:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qfzgt-00062r-1p; Tue, 12 Sep 2023 11:28:15 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qfzgs-005kL7-Ls; Tue, 12 Sep 2023 11:28:14 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qfzgs-005Zqs-8A; Tue, 12 Sep 2023 11:28:14 +0200
Date: Tue, 12 Sep 2023 11:28:14 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230912092814.GX637806@pengutronix.de>
References: <20230911121524.2650416-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911121524.2650416-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_022816_288782_F5036952 
X-CRM114-Status: GOOD (  20.54  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] KAsan: support including header from PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 11, 2023 at 02:15:24PM +0200, Ahmad Fatoum wrote:
> It can be sometimes useful to add manual poisoning with KASAN to track
> down errant accesses. This is complicated a bit, because some files are
> build for both PBL and barebox proper. To make such debugging easier,
> let's allow <linux/kasan.h> to be included from PBL code.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/kasan.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/kasan.h b/include/linux/kasan.h
> index 7c184cd0e234..54fb993f38ba 100644
> --- a/include/linux/kasan.h
> +++ b/include/linux/kasan.h
> @@ -42,7 +42,7 @@
>  #define KASAN_ALLOCA_LEFT	0xCA
>  #define KASAN_ALLOCA_RIGHT	0xCB
>  
> -#ifdef CONFIG_KASAN
> +#if defined(CONFIG_KASAN) && !defined(__PBL__)
>  
>  extern unsigned long kasan_shadow_start;
>  extern unsigned long kasan_shadow_base;
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


