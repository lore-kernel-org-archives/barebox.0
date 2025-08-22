Delivery-date: Sat, 23 Aug 2025 11:36:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upkfX-003cxc-0a
	for lore@lore.pengutronix.de;
	Sat, 23 Aug 2025 11:36:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upkfW-0001mH-1C
	for lore@pengutronix.de; Sat, 23 Aug 2025 11:36:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4c4lfM0TrzedEMEDxrwCWEuaJvC0zYwzt+Vi3mvuoB8=; b=oDDpF8Oe/9juDCFtmnh1B8hjqR
	121PmexvKR+5Kk5DiFoE7KrrcQprnGeOIkrKhtQCnXEp0FmW907715G8k3bg+c4QK1EJZ0LW0Tzkt
	OV/70QAa5uORVoApkeHNBCDE60YO7zDrQfaqTdTI8KIb0qlADRibpQjZOiUKzOENY10FirxNRx0f/
	j86bEYDOSihwHjl7rVKtPDSL+6ImjW9pxpRIO7nxyAr9jYqsCDF0yUc8A+GSGFr5dJc6q1ObIlSzN
	F3zgvkSwKCEc+M0aHRWQ9aK8jCT06qqcaIn1FoHLOUT2HgwsFfTtdUjvQ0TXxWzi57jVqWsIUXH5n
	ht+f54tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upkfB-00000004UJl-0Q8v;
	Sat, 23 Aug 2025 09:35:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upUAk-000000037sm-2bMH
	for barebox@lists.infradead.org;
	Fri, 22 Aug 2025 15:59:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upUAh-0003n6-Gr; Fri, 22 Aug 2025 17:59:19 +0200
Message-ID: <96bd9c5c-b634-431c-ba66-74ceaa4021ee@pengutronix.de>
Date: Fri, 22 Aug 2025 17:59:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20250820-security-policies-v1-4-76fde70fdbd8@pengutronix.de>
 <20250822103743.355123-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250822103743.355123-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_085922_670495_952F8B31 
X-CRM114-Status: GOOD (  15.81  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! Add security policy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 8/22/25 12:37, Sascha Hauer wrote:
> Remove policy-list files before recreating them, otherwise we can get stale
> security configs when changing the build configuration or branch.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  Makefile | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 49658e5fe2..be87fbbc7a 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1195,10 +1195,14 @@ targets += include/generated/sconfig_names.h
>  KPOLICY = $(shell find $(objtree)/ -name policy-list -exec cat {} \;)
>  KPOLICY.tmp = $(addsuffix .tmp,$(KPOLICY))
>  
> +PHONY += remove-policies
> +remove-policies: FORCE
> +	find -name "policy-list" | xargs rm
> +
>  PHONY += collect-policies
>  collect-policies: KBUILD_MODULES :=
>  collect-policies: KBUILD_BUILTIN :=
> -collect-policies: $(barebox-dirs) FORCE
> +collect-policies: remove-policies $(barebox-dirs) FORCE

Wouldn't this race with the descend into barebox-dirs? I think we need
to enforce a strict order between these two.

Cheers,
Ahmad

>  
>  PHONY += security_listconfigs
>  security_listconfigs: collect-policies FORCE

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



