Delivery-date: Fri, 10 Nov 2023 14:26:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RWa-005tWq-35
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:26:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RWa-0002ys-WA
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:26:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OpgnHsVnoOl61j2/PoFm6LebhoIMnIHXb98qSPoVBw0=; b=CwrT1y2m3zGjDnXydzKT6onPh5
	uuu4mD9DT9l02xzWMpIac26NWFVo3q7F5Z6dlmUflIp4nYwOkAQi64+QNqkU9f+O85/SL3juWdRc8
	059/VP5I1tDAP2rUa4+hw/NzYX+F2aA8NHFd24L0zk3QEN0TLCxTQXfbli7o1aWjCElyGIYXeVIl3
	kwsfOx/Xm62OYtmMNE1VwKzJDVkuUFonm280RPUh6btZmzop2q/dcXI0KJav/klfdTdf0uCsVWoEe
	1hs8F/1k2C2Dv/6mePG19Rohu2ml9WVUXlGScgcyLdD0EcFs7JtRw3gyngvRpwcpD7RghchijamE1
	J2libZ0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RVa-008qFQ-2y;
	Fri, 10 Nov 2023 13:25:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RVX-008qEO-1c
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:25:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RVW-0002fg-4v; Fri, 10 Nov 2023 14:25:10 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RVV-00824i-Ov; Fri, 10 Nov 2023 14:25:09 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RVV-001LaB-Mf; Fri, 10 Nov 2023 14:25:09 +0100
Date: Fri, 10 Nov 2023 14:25:09 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231110132509.GH3359458@pengutronix.de>
References: <20231109133812.1566381-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231109133812.1566381-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_052511_535593_62AAE47F 
X-CRM114-Status: GOOD (  21.88  )
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
Subject: Re: [PATCH] test: self: malloc: hide allocation size from compiler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 09, 2023 at 02:38:12PM +0100, Ahmad Fatoum wrote:
> Once we start annotating malloc with __attribute((alloc_size)), GCC will
> detect that we intentionally buffers that are too big.
> 
> Avoid the warning by hiding the size using the RELOC_HIDE macro.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  test/self/malloc.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/test/self/malloc.c b/test/self/malloc.c
> index 47c225ac6a10..0feec810185f 100644
> --- a/test/self/malloc.c
> +++ b/test/self/malloc.c
> @@ -85,11 +85,11 @@ static void test_malloc(void)
>  	free(p);
>  
>  	if (mem_malloc_size) {
> -		tmp = expect_alloc_fail(malloc(SIZE_MAX));
> +		tmp = expect_alloc_fail(malloc(RELOC_HIDE(SIZE_MAX, 0)));
>  		free(tmp);
>  
>  		if (0xf0000000 > mem_malloc_size) {
> -			tmp = expect_alloc_fail(malloc(0xf0000000));
> +			tmp = expect_alloc_fail(malloc(RELOC_HIDE(0xf0000000, 0)));
>  			free(tmp);
>  		}
>  	} else {
> @@ -111,11 +111,11 @@ static void test_malloc(void)
>  		free(tmp);
>  
>  		if (0xf0000000 > mem_malloc_size) {
> -			tmp = expect_alloc_fail(realloc(p, 0xf0000000));
> +			tmp = expect_alloc_fail(realloc(p, RELOC_HIDE(0xf0000000, 0)));
>  			free(tmp);
>  		}
>  
> -		tmp = expect_alloc_fail(realloc(p, SIZE_MAX));
> +		tmp = expect_alloc_fail(realloc(p, RELOC_HIDE(SIZE_MAX, 0)));
>  		free(tmp);
>  
>  	} else {
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


