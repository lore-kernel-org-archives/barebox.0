Delivery-date: Fri, 16 Sep 2022 08:31:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZ4sm-006P8P-5i
	for lore@lore.pengutronix.de; Fri, 16 Sep 2022 08:31:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZ4sk-0006R7-Lt
	for lore@pengutronix.de; Fri, 16 Sep 2022 08:31:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xFUhUaqX0kEp+cCt7LpCYtdKHuDZQIuEINHGowZE9QQ=; b=yGPyq/77SPOLrolvZ/NyzhMrbw
	d0c4L1mPH9g+PxKLBbTNc1BfOvgyFRsaVOhVNTz+u05U7h03nDs1MrB2PiqHZ0V5YffqY094YRVMH
	VJTuTsD2jQkpUtRhs5TUDKfFxOvwjuybwTjldz+Pw98L59O0+jr18OfxH7J7vMtgVA+/tLNvuip3U
	hbDIlr1cMLKFjcJcH+q8rkwHwD5zjD8UIhthl9Gz57lXjfand+ZAhwwrmcA7NamIY2SICHzfMtUuZ
	lovVZeUTb0OLa43jKPO6VVO7pJDidQYMEOwBr1ROKG+Hl8ikfbC60rSA1agalgmZOarlhEaX/pVTv
	3FzibGrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ4qZ-009C00-9j; Fri, 16 Sep 2022 06:29:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ4qU-009Bz6-By
	for barebox@lists.infradead.org; Fri, 16 Sep 2022 06:29:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oZ4qT-0005yp-3z; Fri, 16 Sep 2022 08:29:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oZ4qS-0001QI-Q7; Fri, 16 Sep 2022 08:29:00 +0200
Date: Fri, 16 Sep 2022 08:29:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220916062900.GY6477@pengutronix.de>
References: <20220912084627.84575-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220912084627.84575-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_232902_421697_FC1A6343 
X-CRM114-Status: GOOD (  19.62  )
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
Subject: Re: [RFC] Documentation/conf.py: fix copyright years
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 12, 2022 at 11:46:27AM +0300, Antony Pavlov wrote:
> N.B. N-dash is used!
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  Documentation/conf.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/conf.py b/Documentation/conf.py
> index bcd8633c919..5fb8b07c380 100644
> --- a/Documentation/conf.py
> +++ b/Documentation/conf.py
> @@ -44,7 +44,7 @@ master_doc = 'index'
>  
>  # General information about the project.
>  project = u'barebox'
> -copyright = u'2014, The barebox project'
> +copyright = u'2014–2022, The barebox project'
>  
>  # The version info for the project you're documenting, acts as replacement for
>  # |version| and |release|, also used in various other places throughout the
> -- 
> 2.37.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


