Delivery-date: Mon, 04 Oct 2021 13:54:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMYY-000701-TM
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 13:54:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMYX-0005Qr-QT
	for lore@pengutronix.de; Mon, 04 Oct 2021 13:54:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ye2q+UGJu5UsvSlkoh1ZiIz8r2RG+pTTbhp0fX2dwDs=; b=p+JqhIpM7Fg3Dq1hjodmGg16eI
	adbubvsr9cDC0TcR28kmCvhc17Xlyo6i3UIe6L4VAxPOV2HQDC8NxPSJblMmcPo582sVKU3GQZCzF
	LquzOaQ3NNYVqb7xAeYP2UMBwp2rake6UfgvxCAHEsos9HsPDcZ0yXm9twjgOB2CMEJ3q6jr7QPG6
	TOf2PojhKJQ17tx2p9grVUAwwrg8mywDp3zOblfzb5Su0xBuXiSNLG8kQFECeL5T1QK7p+NrusOBj
	TVOqG3ffMNESfVMy5uThLwoRzQz3F9p+sxNSTWxkN6nQ5m3ncNuEAAAeLail6ElLHC3ZGys7tybMM
	zsfpxCvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXMXH-006JRk-4r; Mon, 04 Oct 2021 11:53:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXMX8-006JQW-8f
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 11:53:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXMX6-0005Jl-Pa; Mon, 04 Oct 2021 13:53:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXMX6-0004jj-G2; Mon, 04 Oct 2021 13:53:24 +0200
Date: Mon, 4 Oct 2021 13:53:24 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211004115324.GE28453@pengutronix.de>
References: <20210825092701.30436-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210825092701.30436-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:53:10 up 228 days, 15:17, 145 users,  load average: 0.13, 0.26,
 0.28
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_045326_351558_06B75B5D 
X-CRM114-Status: GOOD (  26.40  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: framebuffer: remove note about lack of
 backlight support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Aug 25, 2021 at 11:27:01AM +0200, Ahmad Fatoum wrote:
> barebox supports PWM backlight. Remove the notice about lack of support.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/user/framebuffer.rst | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/framebuffer.rst b/Documentation/user/framebuffer.rst
> index 8b95ad6b8700..d17df822f299 100644
> --- a/Documentation/user/framebuffer.rst
> +++ b/Documentation/user/framebuffer.rst
> @@ -4,9 +4,7 @@ Framebuffer support
>  Framebuffer splash screen
>  -------------------------
>  
> -barebox supports BMP and PNG graphics using the :ref:`command_splash` command. barebox
> -currently has no support for backlights, so unless there is a board specific enable
> -hook for enabling a display it must be done manually with a script. Since barebox
> +barebox supports BMP and PNG graphics using the :ref:`command_splash` command. Since barebox
>  has nothing useful to show on the framebuffer it doesn't enable it during startup.
>  A framebuffer can be enabled with the ``enable`` parameter of the framebuffer device:
>  
> @@ -39,7 +37,7 @@ A typical script to enable the framebuffer could look like this:
>    # wait for signals to become stable
>    msleep 100
>  
> -  # finally enable backlight
> +  # finally enable backlight manually if no driver exists
>    gpio_direction_output 42 1
>  
>  Framebuffer console
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

