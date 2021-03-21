Delivery-date: Sun, 21 Mar 2021 16:22:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzuh-00028G-Ce
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 16:22:47 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzug-0003KQ-F9
	for lore@pengutronix.de; Sun, 21 Mar 2021 16:22:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g1j3JDWhHgWa7VOHxkLzG+uj1BoQn0epWsBA6JerYN8=; b=Te37sPyUdvws77+5y0ak72zfu
	LylG5rTIzdrUeB1/0gnEAgJPvJZWsegrHcfYb6iLpC/BDr8XNQZbG7WEJ5PnmldT5WnLzdFiCyHrE
	MACGYPLdW3oeZzwjYvPLNAVTrTE/10lGt+xTMriIU9Ar3Hgj7m0BaT9fnLbmMN3sMUFQu+TY6hrcF
	GS0b+xkRv6CIAEjmkksxbZOHNIcPfcnkTJhCQjPsXHwoxmiYJZHHP7O1Yses/s5o773PD9zTTBVWV
	usD3ozRUtqgZ8avCz/m6GOkQJXbaa1N0QcaSStGcw8z935DiX+xg8fj8yczu4OxGl8zOXl9GB24V/
	JwZlzDteQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNzsf-00A5Fz-L7; Sun, 21 Mar 2021 15:20:41 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzny-00A48z-AX
 for barebox@desiato.infradead.org; Sun, 21 Mar 2021 15:15:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=44jrVlay+Mfe51FpE6AjkqsWBig30+t3WxkXv3N5Pw4=; b=qIQmHgE+0EkrTd8fL9pwecLnuf
 ih128WdZKkGLPTUBdEgjcbRK3oL7XvP7qBy+OiLFRXAc7+awF4KbTy8jI6fULG/1Dy0fF2YRGdSP/
 qtagReZCnfso3llFp8mR2TFeJrDCnAOi0Gg+G0kLUMWje5BThJCbC3/AvDa58fBA6oH6hdocg7n3L
 oTuH5zz5ISv+BR51bu5APfMnr0KIzW4tr47RVSSSU/ZIGJwo48fK6+ksaj59D77rxGUA6qaNufJSK
 uszfcsFGiPq7AePDI89eyBHV+iI4xZnfZQsOtQ0Iv4GmZ6Ht0jdb31FV6l/LiPB5EF4tE47vmjPa6
 EixNBmmw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzme-007FmS-1M
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 15:14:46 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lNzmN-00017W-QM; Sun, 21 Mar 2021 16:14:11 +0100
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20210321065141.292006-1-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <63c0b99c-ba30-2728-1904-8d8fafa23f89@pengutronix.de>
Date: Sun, 21 Mar 2021 16:14:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210321065141.292006-1-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_151434_071632_D8B2341B 
X-CRM114-Status: GOOD (  12.59  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 21.03.21 07:51, Antony Pavlov wrote:
> ---
>  images/.gitignore | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/images/.gitignore b/images/.gitignore
> index 377c14ceb3..eafdb44b5b 100644
> --- a/images/.gitignore
> +++ b/images/.gitignore
> @@ -31,3 +31,4 @@ barebox.sum
>  *.image
>  *.mvebu1img
>  *.stm32
> +*.nmon

Squashed into v3. Thanks.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

