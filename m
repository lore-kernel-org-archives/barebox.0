Delivery-date: Fri, 27 Sep 2024 12:05:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su7qp-003MLP-1n
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:05:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su7qq-0004yC-1T
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:05:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Az5nuz43SLczAOqFnx0eyzpyi9JSdL1rq+y0lE+LU5I=; b=hJpO6g/VnbE8hUz8JaojBSXYuO
	Ga1q+tZtdo9N0idoR9IwThClPx4QioYOZ9qkLbJ8wLEGMAe6s18Rr24aSQdDi1QGMiYcMYFs1RhM7
	ewjdUUnhCO61Qta+b4Q9me2rCilnYDGY3wwbv7+bq3SSQSjM45l2AT/wHv10O15qP99AW192vR8wc
	8O02wn4FrMIwMXKiAycuGfwLbiZcFcF3YmegjmrgrUMpvYkUfm8iYo08/TLg4JOvc0+KdQ4yy4DAG
	FUMLi5A1uPo+G8rqoivLWSqCwIQtM8LdcKhwbQTl4v1oXO4mYJcraBDFYpGA0BqgpXNV90La7BEeW
	kPw1GkMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su7qH-0000000Am35-2jwm;
	Fri, 27 Sep 2024 10:04:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su7qE-0000000Am1x-2DTh
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:04:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1su7qA-0004er-KZ; Fri, 27 Sep 2024 12:04:46 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1su7qA-001tYg-82; Fri, 27 Sep 2024 12:04:46 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1su7qA-00F1u8-0W;
	Fri, 27 Sep 2024 12:04:46 +0200
Date: Fri, 27 Sep 2024 12:04:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ZvaDPkeS6ua7iZXu@pengutronix.de>
References: <20240926-arm-assembly-memmove-v2-0-0a3313d29a66@pengutronix.de>
 <20240926-arm-assembly-memmove-v2-10-0a3313d29a66@pengutronix.de>
 <20240927051215.67lqwfarfcdnzbsq@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240927051215.67lqwfarfcdnzbsq@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_030450_703415_3DEE704C 
X-CRM114-Status: GOOD (  16.58  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 10/10] ARM: add optimized memmove
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Sep 27, 2024 at 07:12:15AM +0200, Marco Felsch wrote:
> Hi Sascha,
> 
> On 24-09-26, Sascha Hauer wrote:
> > Until now there has been no assembler optimized version of memmove() for
> > ARM. Add this from Linux-6.10 for both ARM32 and ARM64. This also updates
> > memcpy() for ARM64 from Linux-6.10.
> 
> out of curiosity, did you made performance measurements?

No, I haven't made any performance measurements. I implemented this for
framebuffer console rotation support. When moving a framebuffer one line
left or right it's the difference between night and day. Otherwise I
think memmove is rarely used in barebox.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


