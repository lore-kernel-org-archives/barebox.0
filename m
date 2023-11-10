Delivery-date: Fri, 10 Nov 2023 14:21:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RS7-005tGS-2t
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:21:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RS7-00021h-VV
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:21:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4tV/bz9pVHCej3ezlNxaZLs5Ux3Z+DYnoKfxhzXQeew=; b=PTml8GlPsKpTEtxJ1dPADTTX21
	Nm38HtzCmuBabq8Y8NEnKW/yv+ytkRYhaj9IaHBeEdZU56ziz5jDphmIOuqPtrQLo+odQwVkakmdT
	Yp9XfJH1wQu7zAh8dFIy2nonUeJRN5rL068uqCwz1l2WXwG/Ci+K4fDZjN+mJcYGamugQxQ/8HrI7
	gyOydpwH66q4JbMus4I8NJNVjCzvY3pxls6+OZMCAnErCrkks2icR8RU25HJKUEV0tCitZi+VTFgs
	XoW6UAkr3qyY+etwFpIt8xN5BfxbUuvpATXF3f32GGMFPv+izaVpIJfnC4BfFdp0rD2JD9mlXNgU0
	7ysjR7xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RR8-008pek-15;
	Fri, 10 Nov 2023 13:20:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RR5-008pe5-0s
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:20:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RR4-0001iR-2t; Fri, 10 Nov 2023 14:20:34 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RR3-00824C-Mt; Fri, 10 Nov 2023 14:20:33 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RR3-001LYn-Kd; Fri, 10 Nov 2023 14:20:33 +0100
Date: Fri, 10 Nov 2023 14:20:33 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231110132033.GF3359458@pengutronix.de>
References: <20231109122945.1487078-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231109122945.1487078-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_052035_312512_7E403F4F 
X-CRM114-Status: GOOD (  19.72  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] include: spinlock.h: mark DEFINE_SPINLOCK with
 __always_unused
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 09, 2023 at 01:29:45PM +0100, Ahmad Fatoum wrote:
> The spinlock stubs don't actually do anything with the spinlock_t.
> To avoid the compiler warning about it add an __always_unused annotation
> to the spinlock.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/spinlock.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/spinlock.h b/include/linux/spinlock.h
> index a604e0fd090f..6f90fb1cad43 100644
> --- a/include/linux/spinlock.h
> +++ b/include/linux/spinlock.h
> @@ -12,6 +12,6 @@ typedef int   spinlock_t;
>  #define spin_lock_irqsave(lock, flags) do { flags = 0; } while (0)
>  #define spin_unlock_irqrestore(lock, flags) do { flags = flags; } while (0)
>  
> -#define DEFINE_SPINLOCK(lock) spinlock_t lock
> +#define DEFINE_SPINLOCK(lock) spinlock_t __always_unused lock
>  
>  #endif /* __LINUX_SPINLOCK_H */
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


