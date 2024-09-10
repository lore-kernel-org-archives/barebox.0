Delivery-date: Tue, 10 Sep 2024 10:26:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snwD2-00365S-03
	for lore@lore.pengutronix.de;
	Tue, 10 Sep 2024 10:26:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snwD0-0006LF-Th
	for lore@pengutronix.de; Tue, 10 Sep 2024 10:26:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9EOCQ5pT7/MZuX5qimvtuRgCX0nYBF/MTf6opo5m7Eg=; b=Rc2pNUQta09GoimQqqKm/SmmRL
	NxaePau3YHTfKG8JUcB7tbLkS9TZ5vwl85N9fpdpPiXnYVcBadq7NPZZCB3qLaiy/Mip34oVF78dN
	VVeAnUox4s5FaMledu6TaDRt54xULiGVjJHx61pxf17DnVC8i7q0YQ2pN4nrgfPTvyHrdUs/uDyLt
	aNYncSmqpCJ7yLIx1OHFRcdqVGFzpEyjFgLBokkBcojxX8n5CjdDAJaPK48tTkchTQhILDmOHOPM3
	6mzhNLQUAzp7bi2bLeJBzGyQDumn8h2TDUI4Lc5F2tFp5rISfS5QbFStEnT5VKazaIhhKaWLRFkrj
	udTyBLOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snwCS-00000004oY5-1Ctu;
	Tue, 10 Sep 2024 08:26:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snwCF-00000004oW6-2bkL
	for barebox@lists.infradead.org;
	Tue, 10 Sep 2024 08:26:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snwCC-00061n-V8; Tue, 10 Sep 2024 10:25:57 +0200
Message-ID: <909c7ab9-0f7f-4d50-9a80-2c9026272cc8@pengutronix.de>
Date: Tue, 10 Sep 2024 10:25:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20240903093712.453901-1-r.czerwinski@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240903093712.453901-1-r.czerwinski@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_012559_685748_D355A08D 
X-CRM114-Status: GOOD (  18.93  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] include: linux/iopoll: fix uninitialized warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Rouven,

On 03.09.24 11:37, Rouven Czerwinski wrote:
> In gcc 13.3 there is a warning that start may be used unitialized:
> 
>   include/linux/iopoll.h:42:21: warning: ‘start’ may be used uninitialized [-Wmaybe-uninitialized]
>      42 |                     is_timeout(start, ((timeout_us) * USECOND))) { \
>         |                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> The warning is bogus since before usage of start !IN_PBL and
> timeout_us != 0 are checked for the case where start is used, but in
> this case it is also always initialized to get_time_ns().
> Initialize it to zero to silence the warning.

FTR: Here's the GCC bugzilla report about this false positive:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=98049

Thanks for the workaround,
Ahmad

> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  include/linux/iopoll.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
> index 96b17dee48..c7dcaec382 100644
> --- a/include/linux/iopoll.h
> +++ b/include/linux/iopoll.h
> @@ -31,7 +31,7 @@
>   */
>  #define read_poll_timeout(op, val, cond, timeout_us, args...)	\
>  ({ \
> -	uint64_t start; \
> +	uint64_t start = 0; \
>  	if (!IN_PBL && (timeout_us) != 0) \
>  		start = get_time_ns(); \
>  	for (;;) { \


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


