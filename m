Delivery-date: Wed, 11 Jan 2023 08:40:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFVjE-008cqC-IN
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 08:40:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFVjC-0004aF-SL
	for lore@pengutronix.de; Wed, 11 Jan 2023 08:40:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ftzVLBT587TsgNV5kK3h8hNWJzrpbNFty6Ei9XhvN7E=; b=cqm1IGZ6i/8xd64zszv55zFm3P
	GxpV4AymxkwaenSTrGVfTABC9SX1PHo2JLwK5RNTLUTD4NvgAC4ki6vFDOMTeC3Ib/65WB9bKzZXW
	PrXf4JAYazNG/E8+BbK0DVQ2E3cfXtnQGEd3KKVZXrmUgYYJGl/LyF59N7cyp2BIVYz/Yt/A1+rhE
	YwTCQPTtLWQAsE7JMSwboeZiLebSnxU25D1H6J+p35EvWM/cwkbSIvVKOfopE7AWZVaPNrndxf55+
	MCKmXaVopaKgm8k6548k9cDpOaCRtAhy6Y3/iepMnKIyC+b8J77ytKDBrWcMLpe51RjvK5Hp0TA9B
	SV+JNVRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFVho-00A5bR-PI; Wed, 11 Jan 2023 07:39:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFVhj-00A5aC-Ot
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 07:39:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFVhi-0004Gy-Gr; Wed, 11 Jan 2023 08:39:22 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFVhi-0004vQ-9g; Wed, 11 Jan 2023 08:39:22 +0100
Date: Wed, 11 Jan 2023 08:39:22 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230111073922.GB24755@pengutronix.de>
References: <20230109160057.2223325-1-a.fatoum@pengutronix.de>
 <20230110144157.GJ28911@pengutronix.de>
 <b07bab36-b210-0050-4b6f-02df6f12342d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b07bab36-b210-0050-4b6f-02df6f12342d@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_233923_826902_1C4C97E3 
X-CRM114-Status: GOOD (  23.23  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] include: linux/iopoll.h: silence warning when timeout_us
 contains *
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 10, 2023 at 05:40:38PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 10.01.23 15:41, Sascha Hauer wrote:
> > On Mon, Jan 09, 2023 at 05:00:57PM +0100, Ahmad Fatoum wrote:
> >> We evaluate timeout_us for truthiness to determine whether we are
> >> entering an infinite poll loop. When timeout_us contains a
> >> multiplication, GCC will warn about it and suggest replacing the *
> >> with &&. Silence this warning by comparing directly against 0.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  include/linux/iopoll.h | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
> >> index 8bf912e173b3..b8c55583f97f 100644
> >> --- a/include/linux/iopoll.h
> >> +++ b/include/linux/iopoll.h
> >> @@ -32,13 +32,13 @@
> >>  #define read_poll_timeout(op, val, cond, timeout_us, args...)	\
> >>  ({ \
> >>  	uint64_t start; \
> >> -	if (!IN_PBL && timeout_us) \
> >> +	if (!IN_PBL && timeout_us != 0) \
> > 
> > You should rather put timeout_us in brackets.
> 
> Doesn't help:
> 
>   drivers/mtd/nand/atmel/nand-controller.c:279:51:
>     warning: '*' in boolean context, suggest '&&' instead [-Wint-in-bool-context]
>     279 |                                        timeout_ms * 1000);                                                                           
>   include/linux/iopoll.h:35:25: note: in definition of macro 'read_poll_timeout'                      
>      35 |         if (!IN_PBL && (timeout_us)) \                                                                                               
>         |                         ^~~~~~~~~~                                                                                                   
> 
> Ok to apply?

Yes, ok. Could you resend? git b4 seems to get confused by this series.
It tries to apply the fixup first.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


