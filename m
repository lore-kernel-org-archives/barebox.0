Delivery-date: Fri, 21 May 2021 18:53:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lk8PP-0004vo-Mr
	for lore@lore.pengutronix.de; Fri, 21 May 2021 18:53:59 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lk8PO-0002dg-UP
	for lore@pengutronix.de; Fri, 21 May 2021 18:53:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9YCCcFOY7Ctz1VvVWWlE1+zjEjmHf5nLTkL0TteoTzE=; b=N5v/SoZl6vTA28PDReyAULQEAW
	VbVV07C5JXZClrOfgN6YEGiG4yMgRxaQ4fXSxHxPvLWbK8msAGzSy4S9wLIZd/6fdnQ1Y5KJ/nQ4Q
	Uz/oDXoqVWB0xJO7Vu3pdvKejkCrnHS/X+KfpoEVT5HT3mqC0VbTwjOgGJXWaSqZXlBNc0SaxcfKd
	J5AQ3W0dR5+Z3Hqd3Z6b5IHzx2drCciXeFkbSEhV3oKYtLIPozBDepgmBvU9OkC5FvXCJ8RStYLiv
	9U6EieKKbl2CQoyvdpiDPbyXq2yRm5RDT+MwlLdfax3i9lu9xWLZN24bDB1sprdxUJkAVJLCoWwwA
	7uDI5cnw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lk8OU-000M9z-Cn; Fri, 21 May 2021 16:53:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lk8OL-000M9U-6Z
 for barebox@desiato.infradead.org; Fri, 21 May 2021 16:52:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=a15BBOvo1WGg+Tz9P+E9srVtemZh43+LjHi1DkdOq8U=; b=ki0RK4DMKcFI/ORgzK1mm+RbjP
 3su4/jjG8P7KDgeNSFsA/FZNSilvVKrSFv1SNXfFo4dFZ+8maQ64cLHRxt4PaUIgoHJc5BJJsMKfI
 5Rc60LCDeLs1iMjOqJv58hNQiZ42JBYUJtbi+sr2sFCFpOOzwzbCO7MqfR2H/qWb3GApHThI5ILh7
 2taxgXN4xAlFreizRxEqY4c3Em2AHg8birt5DUzxrHeFD1rsWJhi0pp6W2ypwIeQfQAj2+rGqG2nW
 0QMyj3334Wa18PUlQO92VwXz9EetA4z5UsUpXQzAauvd2suGIaT6eZIuNUDOaYpzeOVnr4yNaai9y
 hseJR6uA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lk8OI-00HI16-Go
 for barebox@lists.infradead.org; Fri, 21 May 2021 16:52:51 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lk8OH-0002Rk-0b
 for barebox@lists.infradead.org; Fri, 21 May 2021 18:52:49 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>) id 1lk8OG-0004yP-Lu
 for barebox@lists.infradead.org; Fri, 21 May 2021 18:52:48 +0200
Date: Fri, 21 May 2021 18:52:48 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <20210521165248.xkg7niyv4y4nlwcq@pengutronix.de>
References: <20210521163435.17365-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210521163435.17365-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 18:51:52 up 170 days,  6:58, 49 users,  load average: 0.12, 0.07,
 0.03
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_095250_580113_B6315DD8 
X-CRM114-Status: GOOD (  19.81  )
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
Subject: Re: [PATCH 0/4] Change printf behaviour
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 21-05-21 18:34, Marco Felsch wrote:
> Hi all,
> 
> my current project needs barebox as quite as possible since it has
					^
				  ... quiet
> strict boot time requirements. Unfortunately barebox was still a bit to
> talkative after setting the default loglevel to 4 (warn). Therefore I
> made these changes which saved ~40ms during a normal blspec boot.
> 
> Regards,
>   Marco
> 
> Marco Felsch (4):
>   commands: mount: replace printf by pr_info
>   common: boot: replace printf by pr_info/warn variants
>   common: bootm: replace printf by pr_err/info
>   common: oftree: replace printf by pr_info
> 
>  commands/mount.c |  2 +-
>  common/boot.c    |  4 +--
>  common/bootm.c   | 88 ++++++++++++++++++++++++------------------------
>  common/oftree.c  |  2 +-
>  4 files changed, 48 insertions(+), 48 deletions(-)
> 
> -- 
> 2.29.2
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

