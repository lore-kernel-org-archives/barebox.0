Delivery-date: Wed, 19 May 2021 08:56:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ljG7p-0003Xa-O8
	for lore@lore.pengutronix.de; Wed, 19 May 2021 08:56:13 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ljG7p-0006u0-32
	for lore@pengutronix.de; Wed, 19 May 2021 08:56:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0h7IoZ4+FfACUJrZt5fmIKXIAiRyFOHo7Sy+DvE+Wc8=; b=W8wUike0Xwsu/Nqub+N+TDl7I
	lA9Vx8MDlUbcVBnFc7QnxCtjsSTa+n0QeJBYCaeaTLf09ZeHHrIvVXiCxQZEZZhvNeOZDuB96IB7y
	SlrG5Bia8WnFmqAAYEAD9rYPmp4i6V6Owcu8r7868nJ4lNX4ZjBHplUfZQ1I5Ap4z4Zu2mGe5wmm0
	NGik4n+VRfTKYlRlQpoQ8KH+Ay7pF0doD0/GmZ1+g7YxXA6AI8YfsXJ1xeqqawf3MSQHwNRcCGPWI
	G8cwYqZgIcwew/V/zmeCNiBJ1rLhtFiiLKqf28m5wAQil15loGQwvSsxPTlQPfdXWo55iQOBeW1ta
	PsFhc0Vfw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljG6q-0034AP-Ms; Wed, 19 May 2021 06:55:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljG6l-00349l-93
 for barebox@desiato.infradead.org; Wed, 19 May 2021 06:55:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=hLXlkglrBy1u5pOJyE9neonbuIz32gXznpYsuppnHa0=; b=Wy/qZRoFUTU6E2I+BxzqG4PQg2
 v1Y/9RAHVimRJCI6eSi3WYdAxKUvEBB2vFPmZ6MYs6ztsfC+y02WLm3wC3ZI9FrENYOQvDn2dv6Xl
 ILriY5QeTQmFdHZBUIoZqrGfO1muixykwHWAwHpq6nUFE6D0o7bdrcCYM2KALHOyIXHnyCZhEK+iK
 ovP6+OlKUBaIaTkfZeUlNTbJyqeCUCc77IdmtlQdOw5DkXQFILKxBQaxAKesezyK9VJOprpUoR7ss
 fYc+y3ASdGMhSqryhxj334ow6zyjrPZ7c3l14vW6bZbdv6RGDfVPAt5W8959ZiD+O/eK/Yubl+azH
 vZYzOWNA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljG6i-00FCK9-ER
 for barebox@lists.infradead.org; Wed, 19 May 2021 06:55:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ljG6f-0006iV-Fp; Wed, 19 May 2021 08:55:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ljG6f-0003LL-71; Wed, 19 May 2021 08:55:01 +0200
Date: Wed, 19 May 2021 08:55:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210519065501.GB19819@pengutronix.de>
References: <20210518114929.12964-1-s.hauer@pengutronix.de>
 <20210518114929.12964-4-s.hauer@pengutronix.de>
 <881f5270-ed71-ed49-bd40-06763ce3394e@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <881f5270-ed71-ed49-bd40-06763ce3394e@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:53:28 up 90 days, 10:17, 96 users,  load average: 0.13, 0.29, 0.29
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_235504_502888_3F7C5BFC 
X-CRM114-Status: GOOD (  21.37  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 03/14] clk: introduce struct clk_hw
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 18, 2021 at 02:17:58PM +0200, Ahmad Fatoum wrote:
> 
> 
> On 18.05.21 13:49, Sascha Hauer wrote:
> > In Linux the ops in struct clk_ops take a struct clk_hw * argument
> > instead of a struct clk * argument as in barebox. With this taking
> > new clk drivers from Linux requires a lot of mechanical conversions.
> > Instead of doing this over and over again swallow the pill once and
> > convert the existing barebox code over to clk_hw.
> > 
> > The implementation is a little different from Linux. In Linux struct clk
> > is only known to the core clock code.
> 
> s/clk/clk_hw/ ?

No. struct clk or better: the definition thereof is indeed only known by
the core clock code. struct clk_hw is known to the drivers as well.

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

