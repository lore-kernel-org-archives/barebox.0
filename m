Delivery-date: Tue, 03 May 2022 09:13:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlmjP-000LES-JH
	for lore@lore.pengutronix.de; Tue, 03 May 2022 09:13:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlmjN-0000c1-TU
	for lore@pengutronix.de; Tue, 03 May 2022 09:13:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=av3S1tB5NceoV85tlRvdeyBHSHPoCYhAQqz8KgN7xBw=; b=mtVRIlKJIJyssfNeOjLbN48Aho
	ckXFXLUuXeSiBD9OCEQ9Yn1ZEc9oUgZp7FkW6Zh7UDJulJweL/HG7uo0XN89r+zsR6LxvAUMK8Mv5
	PY0FYqSGvMkUz8a9VF27iiiITr/ohnGOkvBtuQ1IFSZtN0WzpXsDsTX+N6tAzLh5I6COX7vIBxg/T
	a/7l18QjjLUhaUm992cSMHgEoKKDDGdMKHbXE6+r3neIB7nC9LEFiJu6xjF+rjcfTd7osy7pZrts2
	tzga0LBSNJiBO+XaEo2E39NQvTxaWITgwJimO6V79no3/nyvjJpeXVMv47PX09oIOtxJT+RMmPgQL
	E+OxIjDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlmi1-0048p2-9B; Tue, 03 May 2022 07:12:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlmhw-0048nd-71
 for barebox@lists.infradead.org; Tue, 03 May 2022 07:12:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nlmhu-0000OK-HR; Tue, 03 May 2022 09:12:26 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nlmhu-0002he-8K; Tue, 03 May 2022 09:12:26 +0200
Date: Tue, 3 May 2022 09:12:26 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, ore@pengutronix.de
Message-ID: <20220503071226.GB4012@pengutronix.de>
References: <20220502142959.1325298-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220502142959.1325298-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:09:27 up 33 days, 19:39, 74 users,  load average: 0.18, 0.21, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220503_001228_290439_E98F4BD9 
X-CRM114-Status: GOOD (  23.30  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] ARM: rpi: fix CM3 breakage after multi-image rework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 02, 2022 at 04:29:59PM +0200, Ahmad Fatoum wrote:
> barebox used to apply quirks by asking VideoCore firmware. If this was
> not possible, an error message is printed, but other initialization
> happened as expected. With the move to board driver matched by DT, we
> incur two breakages:
> 
>   - Compute Module 3/3+ used to be explicitly supported, but are absent
>     in new compatible list
>   - Unsupported variants used to initialize with only an error message,
>     but now their revision ID must be known
> 
> Fix this by amending the compatible list with all non-Raspberry Pi 4
> compatibles listed in the binding. We also make existence of a match
> data optional and error out if it doesn't exist. This is so far unused,
> but it conveys the intent for future users.
> 
> Fixes: c062cd5cf47d ("ARM: rpi: validate devicetree compatible instead of changing model name")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Only build-tested.
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 32 ++++++++++++++++++++---
>  arch/arm/mach-bcm283x/include/mach/mbox.h |  1 +
>  2 files changed, 29 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

