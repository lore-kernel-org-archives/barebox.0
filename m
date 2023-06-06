Delivery-date: Tue, 06 Jun 2023 10:38:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6SCg-00Cp8o-Ei
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 10:38:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6SCe-00061i-65
	for lore@pengutronix.de; Tue, 06 Jun 2023 10:38:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UDndg6xxu68KjfHSLwbbrh714Ar21QG84eCcXyJRgPg=; b=nEWkJ5VJPAp34B+/KRCcPwlVNN
	73vCSvFhf3dlDbda0pSQymWw92knbNIRdu1Wos/W4rBhjizZBKRBxG5ggJS5LrDLiTf6GSd8w2TMQ
	u64V/J7T68lhGOQGyTjaTLKOSQj+KqG1LWszAD6IzMD5nM+46KbW/oyILhEgCcxvcpi6wlR3JKwDt
	9j3RNpUWFDqF3IYG5B2JILPZufxUAyPA4/VAk+94pPjJit2MeOx9o2ZlvLNKvXJdL0ZumB3W1rnmF
	M4BE4q8GaO7M0DWVfx63rCYcSTpcN70y2PdBrfiHqCb9ZI0Wq0NhLTGBZO5I8S9hipxaiPkDgkHa5
	v/Jf4D6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6SBb-000phh-21;
	Tue, 06 Jun 2023 08:37:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6SBY-000phG-2I
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 08:37:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q6SBX-0005wV-GE; Tue, 06 Jun 2023 10:36:59 +0200
Message-ID: <86ccfd26-342a-18a0-3c56-48c050af1b60@pengutronix.de>
Date: Tue, 6 Jun 2023 10:36:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>, barebox@lists.infradead.org
References: <20230605202634.42175-1-denorl2009@gmail.com>
 <20230605202634.42175-10-denorl2009@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230605202634.42175-10-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_013700_769251_708073CF 
X-CRM114-Status: GOOD (  17.61  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 09/17] MIPS: fix addresses of exception vectors in 64-bit
 mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.06.23 22:10, Denis Orlov wrote:
> Do not (accidentally?) truncate addresses when setting them in the
> handler array.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/mips/boot/main_entry.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
> index 2c18bc81c3..d061a0e987 100644
> --- a/arch/mips/boot/main_entry.c
> +++ b/arch/mips/boot/main_entry.c
> @@ -22,7 +22,7 @@ unsigned long exception_handlers[32];
>  
>  static void set_except_vector(int n, void *addr)
>  {
> -	unsigned handler = (unsigned long) addr;
> +	unsigned long handler = (unsigned long) addr;
>  
>  	exception_handlers[n] = handler;

Nitpick: This could be combined into one line, but you need not resend
just for this change.

>  }

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



