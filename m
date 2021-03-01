Delivery-date: Mon, 01 Mar 2021 16:52:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGkqY-0004wD-8Z
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 16:52:34 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGkqX-0000JQ-Fi
	for lore@pengutronix.de; Mon, 01 Mar 2021 16:52:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x1CrwZCAXwhpEsqvuum+T3lbcIsWMHtccdn78wsstv8=; b=izN9uz293SEXe3Gjza6Fjn52S
	Kd7LRelOeKJQ5XMaIpxDMUFalybCjBhLi4extuSFjL5hnrbTc2bDF1RQJ/3F+DTkRIYqHGnN4JJAS
	dxJK0XzIvHsB4HX6IxEOcd+kK3ryQkuEJnt0rMZIAbHIvSvk+5jpJ1rjUWYcLLPB7I/4qQYMLXl2J
	UcSzJEpLf3lWq8Ay8L0u3gPFojB2WQhAr+IlQY/Cc5ZlCWlZi1/ZJRL/osKSggJhAe+4JCpOEPa2R
	VKAxxr1wLmsbmU1e0LECTFon55IujU1Cg4wrSg+FRxZ5ziw4vV3+Q6SLIyvXbJdSK6DmuXflR1vd4
	fZIQM+gDw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGkp1-0006Co-FE; Mon, 01 Mar 2021 15:50:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGkoy-0006CF-Lk
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 15:50:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lGkov-00007i-Ji; Mon, 01 Mar 2021 16:50:53 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lGkov-0004Iq-A2; Mon, 01 Mar 2021 16:50:53 +0100
Date: Mon, 1 Mar 2021 16:50:53 +0100
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Message-ID: <20210301155053.GE5549@pengutronix.de>
References: <20210224101545.15009-1-m.felsch@pengutronix.de>
 <b6704ce8e092b1ae6f975d755c969ecb64f6428a.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b6704ce8e092b1ae6f975d755c969ecb64f6428a.camel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:50:27 up 11 days, 19:14, 73 users,  load average: 0.21, 0.08, 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_105056_728576_254DE777 
X-CRM114-Status: GOOD (  15.60  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bbremote: fix the exit usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Marco,

On Wed, Feb 24, 2021 at 02:22:38PM +0100, Rouven Czerwinski wrote:
> Hi,
> 
> On Wed, 2021-02-24 at 11:15 +0100, Marco Felsch wrote:
> > Unlike the sys.exit() function the builtin exit() function don't take an
> > argument. Fix it by using the exit function from the sys module which is
> > already imported.
> 
> This is not entirely correct, the builtin exit() function also takes an
> exit code and works fine when I tested this:
> 
>   $ python3 -c "exit(1)"; echo $?
>   1
>   $
> 
> Nevertheless the documentation [1] says that sys.exit() should be used
> in scripts. So the patch is fine, but the justification not entirely
> correct.
> 
> [1]: https://docs.python.org/3/library/constants.html#constants-added-by-the-site-module

Could you adjust the commit message accordingly?

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

