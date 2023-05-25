Delivery-date: Thu, 25 May 2023 08:51:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q24oa-00DRdD-Lh
	for lore@lore.pengutronix.de; Thu, 25 May 2023 08:51:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q24oY-0006mx-Cr
	for lore@pengutronix.de; Thu, 25 May 2023 08:51:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rAlzaJAzdSWB4Yu21Wxh/oCJdaIPAwTIQEdIESDw44s=; b=LW6QSsonaf7iZypuKA0ErQ66Oe
	7n/WZQKy3CBFKCBYXzMRNiOl2SJu8eesWRd+kTZLIqE0gjsecVAieyEjGqloaGH11IeWJakOyP3pr
	40F2h7e1F5yxGsMGivQOLWwwjiKXWyIDUvcstfNFUXURAuiIXZpA7rIr0lwSS4t0AJcMTg2NDeToe
	K4CRtHEeqUxttNb1RXaGB9YZ6aC9+T+rEOISPGe+mQ3uAal6J5/maQnA9Na4HJ1P6FFy7/mAAQvp2
	0fnqnd7J5omsiws8/el1owPbBCOBqjm0Xqy3PD625j5zLdk0KRkwiM16n+S+KWqRFO/wditee/ig1
	oW+AlwKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q24nV-00FiTZ-0n;
	Thu, 25 May 2023 06:50:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q24nR-00FiSj-2J
	for barebox@lists.infradead.org;
	Thu, 25 May 2023 06:50:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q24nQ-0006I0-GT; Thu, 25 May 2023 08:50:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q24nQ-0005xx-9I; Thu, 25 May 2023 08:50:00 +0200
Date: Thu, 25 May 2023 08:50:00 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230525065000.GL17518@pengutronix.de>
References: <20230523094208.3453910-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230523094208.3453910-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_235001_774225_61119839 
X-CRM114-Status: GOOD (  19.90  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 1/2] test: self: mmu: remap buffer with default
 attributes on exit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 23, 2023 at 11:42:07AM +0200, Ahmad Fatoum wrote:
> For inspection with mmuinfo, I had inserted a return before remapping
> with default attributes. Drop it, so we can test that default attributes
> work and to free the memory allocated.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  test/self/mmu.c | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/test/self/mmu.c b/test/self/mmu.c
> index ee6c1cd45e7e..48515b30aeb8 100644
> --- a/test/self/mmu.c
> +++ b/test/self/mmu.c
> @@ -142,7 +142,6 @@ static void test_remap(void)
>  	}
>  
>  	expect_success(ret, "asserting mirroring after remap (virt += 4K)");
> -	return;
>  
>  	ret = remap_range(buffer, SZ_8M, MAP_DEFAULT);
>  	expect_success(ret, "remapping buffer with default attrs");
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


