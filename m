Delivery-date: Tue, 10 Jan 2023 15:44:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFFrY-007qOw-7i
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 15:44:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFFrW-0005Nx-1j
	for lore@pengutronix.de; Tue, 10 Jan 2023 15:44:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eWebcBsjzhKhNptoKJDGlJu+XzNBT1xjOSUGl0F/hq0=; b=yTUGOs9rbu6xICyUfSsXGx6dD6
	09BpCPW9SKK5786LHj2X9GvSm4rIonORZz76M7BJMYRFxsf89wcmAHxx47sVpzhx8BoRlP4kYQTCM
	We8hSdd88v87dwajIkwaXhcCB4f9vUaR6NkwlvPDZPBafDm7MldyTBXcF4Mk9AjQTkQh08Li2d0wj
	Xl6omOeEWH/7+2zHyzvBOi1NEnF6mcgNXw5G+u0UBjU8E+p+VHat4RekkQZ68hS6Sexq0Y7c0edaX
	eczYzIlc4DrgWXjalWfSNJ1Xo5bm9p+UNKODDru6TsOt/eK/1ZabXlwl2loZ6TV98ZdldklYZPTlt
	bdndsAJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFqE-007MZw-BB; Tue, 10 Jan 2023 14:43:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFq0-007MWE-DW
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 14:42:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFFpz-000583-3W; Tue, 10 Jan 2023 15:42:51 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFFpy-0004bZ-Rk; Tue, 10 Jan 2023 15:42:50 +0100
Date: Tue, 10 Jan 2023 15:42:50 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230110144250.GK28911@pengutronix.de>
References: <20230109160057.2223325-1-a.fatoum@pengutronix.de>
 <20230109180223.2906601-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230109180223.2906601-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_064252_474796_920D46B6 
X-CRM114-Status: GOOD (  19.37  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! include: linux/iopoll.h: silence warning when
 timeout_us contains *
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 09, 2023 at 07:02:23PM +0100, Ahmad Fatoum wrote:
> While at it, surround the macro argument with parenthesis.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/iopoll.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
> index b8c55583f97f..96b17dee48c9 100644
> --- a/include/linux/iopoll.h
> +++ b/include/linux/iopoll.h
> @@ -32,13 +32,13 @@
>  #define read_poll_timeout(op, val, cond, timeout_us, args...)	\
>  ({ \
>  	uint64_t start; \
> -	if (!IN_PBL && timeout_us != 0) \
> +	if (!IN_PBL && (timeout_us) != 0) \

Ok, you came to the same conclusion. This makes the != 0 comparison
unnecessary.

Sascha

>  		start = get_time_ns(); \
>  	for (;;) { \
>  		(val) = op(args); \
>  		if (cond) \
>  			break; \
> -		if (!IN_PBL && timeout_us != 0 && \
> +		if (!IN_PBL && (timeout_us) != 0 && \
>  		    is_timeout(start, ((timeout_us) * USECOND))) { \
>  			(val) = op(args); \
>  			break; \
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


