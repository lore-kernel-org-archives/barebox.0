Delivery-date: Tue, 21 Feb 2023 16:28:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUUZB-00E5FP-63
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 16:28:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUUZ9-0005u1-Ml
	for lore@pengutronix.de; Tue, 21 Feb 2023 16:28:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tFho5jWWfypr9T/Gxdjn0hdSu/u2bWt+rCQxxAYZQGo=; b=dIkKON7w0M3MxAv6ly3xyovCkL
	h5ZoUWT0PtM/NM0JEoNo2rB5n1rq69Z/ynV8GzAyFHhxOchU57QkyDVBrpN+UEj6HguqymH6M5XNE
	x8ulSedRyzuAflLZE0NxftIHFeHePqsSmJWMjrtKAg8mUpz0kcyywUz5/gq+QhfSbUj6UJ37ne49k
	uTcdIWBODmZFp9g9taWyYSy8hVGkh7Zs6TeY+a/U7co8B69hJpwe7dVdeMecCHFVciSmzJmS6GffR
	O0CSSn4suJwFOaSg9rozqf0S705ZOBFnrEyZSNKVpoSr+hIPz95jsVQqyenFyeOgRh0/Hiq8c4QTH
	IbFAdHCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUUYT-008ezk-8m; Tue, 21 Feb 2023 15:27:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUUYP-008eyx-1s
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 15:27:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pUUYM-0005eq-2S; Tue, 21 Feb 2023 16:27:38 +0100
Message-ID: <d5492217-50c4-e25d-99f2-fe24740ac397@pengutronix.de>
Date: Tue, 21 Feb 2023 16:27:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230221152425.2916278-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230221152425.2916278-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_072741_111467_105CF1E9 
X-CRM114-Status: GOOD (  20.37  )
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
Subject: Re: [PATCH] sandbox: Fix fixing linker warnings with newer ld
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 21.02.23 16:24, Sascha Hauer wrote:
> There must be a comma between the words passed in the -Wl option,
> otherwise gcc responds with:
> 
> gcc: error: noexecstack: No such file or directory
> 
> Also cc-option only compiles but doesn't link, so can't detect if the
> linker accepts flags or not. Use ld-option instead.
> 
> Fixes: 4e8713dd6e ("sandbox: fix linker warnings with newer ld")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/sandbox/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
> index 0f59e79e13..9d5a5d8c6a 100644
> --- a/arch/sandbox/Makefile
> +++ b/arch/sandbox/Makefile
> @@ -69,7 +69,7 @@ BAREBOX_LDFLAGS += \
>  	-Wl,-T,$(BAREBOX_LDS) \
>  	-Wl,--whole-archive $(BAREBOX_OBJS) -Wl,--no-whole-archive \
>  	-lrt -pthread $(SDL_LIBS) $(FTDI1_LIBS) \
> -	-Wl,-z noexecstack $(call cc-option,-Wl$(comma)--no-warn-rwx-segments) \
> +	-Wl,-z,noexecstack $(call ld-option,--no-warn-rwx-segments) \

At least gcc version 11.3.0 wouldn't like this:

$ gcc --no-warn-rwx-segments
gcc: error: unrecognized command-line option ‘--no-warn-rwx-segments’

That's why I usued -Wl, in the first place

>  	$(SANITIZER_LIBS)
>  
>  cmd_barebox__ = $(CC) -o $@ $(BAREBOX_LDFLAGS)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



