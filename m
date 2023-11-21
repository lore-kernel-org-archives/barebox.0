Delivery-date: Tue, 21 Nov 2023 07:59:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5Kj4-002aom-2H
	for lore@lore.pengutronix.de;
	Tue, 21 Nov 2023 07:59:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5Kj4-0005un-N0
	for lore@pengutronix.de; Tue, 21 Nov 2023 07:59:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uw0zJLTzSPP8LZwliVSgm1mA8sF/5ZEj/s0KZ1WwbGk=; b=0UaCNhT9mD158icu+H0AYpgVLB
	eo6pQywo4DRhq88HNMKzSWPTYzb8LD/4VDaRaQrHcTxj85wN+SG7nKvhtqTDerksXxyrTATwivZBN
	7ogD0ZcSm9k/vNU35+iOIJm8UFrsaQMyOUBNsmTElbSWoBpHsAisDG8QwtaiYwd7A15TeRcaT+pGr
	NnhKRXvh2CVcKOgUBLIz0wJlVRKWqiSwoRzlLKYrkpKMDE78nyud/3giuGSLNWEr1GB3x8O1fjpfx
	RBnSVTlBNFowxBaZCMXYCcr8/1i7AIpzOKpEoP1vG/TTAJfo/xetDfilcpupHfWXni2a390R4i6+E
	At9QAYXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5KhJ-00Fr3H-36;
	Tue, 21 Nov 2023 06:57:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5KhG-00Fr2A-0p
	for barebox@lists.infradead.org;
	Tue, 21 Nov 2023 06:57:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r5KhB-0005e6-35; Tue, 21 Nov 2023 07:57:17 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r5KhA-00AWM8-Lf; Tue, 21 Nov 2023 07:57:16 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r5KhA-0035aR-JM; Tue, 21 Nov 2023 07:57:16 +0100
Date: Tue, 21 Nov 2023 07:57:16 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Steffen Hemer <S.Hemer@phytec.de>
Message-ID: <20231121065716.GM3359458@pengutronix.de>
References: <20231120072122.2006805-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231120072122.2006805-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_225722_294925_0E34610C 
X-CRM114-Status: GOOD (  25.59  )
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
Subject: Re: [PATCH master 1/4] console: define stub for
 console_get_first_active
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 20, 2023 at 08:21:19AM +0100, Ahmad Fatoum wrote:
> console_get_first_active() is unconditionally called in startup.c to
> check if the boot countdown can be skipped. The function is not defined
> for CONFIG_CONSOLE_NONE however. Provide a stub in that case, so the
> code can be compiled again.
> 
> This changes behavior: Configured countdown for systems without consoles
> will be ignored and the system will boot directly. This is deemed
> acceptable as it aligns behavior with systems with consoles that are
> exclusively non-interactive and on the off-chance that a board requires
> delays, it can always add a late init call delaying the boot.
> 
> Fixes: 66232c0ca70f ("startup: don't skip countdown if consoles were runtime enabled")
> Reported-by: Steffen Hemer <S.Hemer@phytec.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/console.h | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)

Applied 1-3, thanks

Didn't apply the last one as the changed file does not yet exist in
master.

Sascha

> 
> diff --git a/include/console.h b/include/console.h
> index b8c901801e9f..018d47f69ef7 100644
> --- a/include/console.h
> +++ b/include/console.h
> @@ -101,8 +101,6 @@ extern struct list_head console_list;
>  
>  extern int barebox_loglevel;
>  
> -struct console_device *console_get_first_active(void);
> -
>  int console_open(struct console_device *cdev);
>  int console_close(struct console_device *cdev);
>  int console_set_active(struct console_device *cdev, unsigned active);
> @@ -201,6 +199,15 @@ static inline void pbl_set_putc(void (*putcf)(void *ctx, int c), void *ctx) {}
>  
>  bool console_allow_color(void);
>  
> +#ifndef CONFIG_CONSOLE_NONE
> +struct console_device *console_get_first_active(void);
> +#else
> +static inline struct console_device *console_get_first_active(void)
> +{
> +	return NULL;
> +}
> +#endif
> +
>  #ifdef CONFIG_CONSOLE_FULL
>  void console_ctrlc_allow(void);
>  void console_ctrlc_forbid(void);
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


