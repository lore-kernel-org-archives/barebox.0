Delivery-date: Fri, 16 Jan 2026 16:26:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgliO-0020QD-39
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 16:26:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgliO-0007P1-0G
	for lore@pengutronix.de; Fri, 16 Jan 2026 16:26:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B8fo8qIDjt2sbwRmVVh3RAsTOI7z2pgA9Sm+vPHEDh8=; b=MInvXmmIUw1rwtZaGa22cMupJz
	xwytsjg5wzjbpoBDTirUGJ81pPpJGfKw1e7lUvbwcOxkkU0V/rocvsoXpkfFKAEudzoXi3RbsRL5A
	Ka2luXNDtswwyioL9pLlJMJVOEFlXKhKyG1uc8lfEmFuGqFwuuWO1xhvp+avB/oaCozSDhLGxQnKo
	6lx7bnXNcg9rjXFY2SXB+vBicczTXe6C8xMJOi2fkRXt0r010ZAJ8sqKRISHfc2eftHYT0+PLyKSL
	2FZv51DujHsH3eUHKA/M1PoghBwyBGT/K7gWFt9gtP5fGNY/iulrcfZsLMJLJ9bL+FZfAzShjfolv
	Ftl2D+eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vglhu-0000000EMOR-2bGm;
	Fri, 16 Jan 2026 15:25:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vglhr-0000000EMN1-14iQ
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 15:25:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vglhp-0007G6-Lo; Fri, 16 Jan 2026 16:25:45 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vglhq-000wZp-0U;
	Fri, 16 Jan 2026 16:25:45 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vglhp-00FWoE-1G;
	Fri, 16 Jan 2026 16:25:45 +0100
Date: Fri, 16 Jan 2026 16:25:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <aWpYeeaVBbFXVQ_T@pengutronix.de>
References: <20260116091813.1370724-1-s.hauer@pengutronix.de>
 <60f0bd53-ac1d-41a2-9045-afadece49722@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <60f0bd53-ac1d-41a2-9045-afadece49722@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_072547_292742_95803847 
X-CRM114-Status: GOOD (  15.30  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] treewide: Fix wrong EXPORT_SYMBOL()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jan 16, 2026 at 11:17:01AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 1/16/26 10:18, Sascha Hauer wrote:
> > - duplicate EXPORT_SYMBOL_GPL(gpio_request_one), one should be
> >   EXPORT_SYMBOL_GPL(gpiod_request_one) instead
> > - duplicate EXPORT_SYMBOL(ucs2_strncmp), one should be
> >   EXPORT_SYMBOL(ucs2_strcmp) instead
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Is this not a subset of
> https://lore.barebox.org/barebox/20260115115924.3428886-6-a.fatoum@barebox.org/T/#u

Indeed, yes. I only read that you added missing EXPORT_SYMBOL, not
removed duplicate ones. Ok, we can disregard this one.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


