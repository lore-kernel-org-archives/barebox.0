Delivery-date: Fri, 09 Dec 2022 08:16:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3Xcq-00FmWc-Uc
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 08:16:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3Xcq-0006r9-7M
	for lore@pengutronix.de; Fri, 09 Dec 2022 08:16:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9ynb8Il+pc7aUDDCo0VEI/OLON3Kqcflojmao5HIJbg=; b=oYet8XVkD/bA79VktiGA4IdhU6
	PT8xvZJbkNoigJa2hxH9QaysgjotIR8xvDXJC5TjhXkFOMVdKAJyenycFkU10TNL5Nja5YfVlCdvh
	93sn7bexeOSiufaPGdKEJ6tRxC5BHG4ctTX5/pDY5ACsrVF8HPRJUM14mrP6RNR+bx6ZIVaisQQBk
	tRkk8nO1n7uBNZqh3H8r68n2cQhobBhlwebtlPBpDbJCWOPIns2wBgQtmUXXku6WjnTLXf4zyMOUJ
	EaJrycH1Q3Y+gw4j3nzJW0A8Zw95AfND+Fn0z/Aa1Qv5wi+r2Bs6sQyP7yTLkAdz1KuhodV+piaTA
	uc7GUSnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3Xbd-004ujK-Ki; Fri, 09 Dec 2022 07:15:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3XbY-004uh0-Pj
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 07:15:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1p3XbV-0006TO-6c; Fri, 09 Dec 2022 08:15:29 +0100
Message-ID: <1d85e66b-9bdc-1f21-b998-cef3725f7eb3@pengutronix.de>
Date: Fri, 9 Dec 2022 08:15:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20221017070457.1456218-1-a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221017070457.1456218-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221208_231532_873147_65B95E84 
X-CRM114-Status: GOOD (  17.32  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] pbl: define DEBUG globally when CONFIG_INITCALL_DEBUG=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.10.22 09:04, Ahmad Fatoum wrote:
> CONFIG_INITCALL_DEBUG=y is a very useful tool for debugging barebox
> hangs, but it's not so useful if the hang happens very early. As PBL's
> function can be construed as preparing for initcall execution,
> CONFIG_INITCALL_DEBUG should enable PBL debugging too, so let's just do
> that.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Ping.

> ---
>  scripts/Makefile.lib | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 16308497b845..8cda2a3187ba 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -156,6 +156,10 @@ _c_flags       += $(if $(patsubst n%,, \
>  PBL_CPPFLAGS   += $(call cc-option,-fno-sanitize=all)
>  endif
>  
> +ifeq ($(CONFIG_DEBUG_INITCALLS),y)
> +PBL_CPPFLAGS   += -DDEBUG
> +endif
> +
>  # If building barebox in a separate objtree expand all occurrences
>  # of -Idir to -I$(srctree)/dir except for absolute paths (starting with '/').
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



