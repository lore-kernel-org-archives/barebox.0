Delivery-date: Wed, 01 Apr 2026 17:37:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7xdE-007XCl-0O
	for lore@lore.pengutronix.de;
	Wed, 01 Apr 2026 17:37:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7xdD-00087c-Iz
	for lore@pengutronix.de; Wed, 01 Apr 2026 17:37:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RhXtOcdRJvORglXF/3vn+jCWqSO7CWLLom3WCipxhHE=; b=VTONBISRlAPUjCbE8rtc/wol/G
	MBajucANvbKSaOY3rsi3LNzfUX12NXk63uX2UkWgHW9U31HecGdhOi4XjYO6NB9yxOjD9KeWYt/E2
	7xX6xbwgSHhAZWgE9uiozAEHQzwmt1jOFfZdKnVouA72zYg342JNpS6RuTYcGamZnfjf5HbZkkKMC
	11Hxn44JZVyudWAncuH3OGWTOupHo/rafUXW7d0ePYJUWEUkemZtH/aRuAr8Gw02XGg0ljFaH22Mh
	O5ZnVoob46cK6+4JxijLEUSAjapkHBcYin5QqJJ4c+XwpoXOKjLW3M1vb55htc36f+GvWfpvMIJbG
	jJ8svqIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7xcr-0000000FeJn-1GYh;
	Wed, 01 Apr 2026 15:37:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7xco-0000000FeJP-3Ry8
	for barebox@lists.infradead.org;
	Wed, 01 Apr 2026 15:37:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w7xcl-0007zj-Oz; Wed, 01 Apr 2026 17:36:55 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w7xcl-003EMA-1s;
	Wed, 01 Apr 2026 17:36:55 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w7xcl-00000001BCL-21d3;
	Wed, 01 Apr 2026 17:36:55 +0200
Date: Wed, 1 Apr 2026 17:36:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Message-ID: <ac07lxHMp7qPECea@pengutronix.de>
References: <20260401151227.2097733-2-a.fatoum@barebox.org>
 <177505774109.625224.4963725815452764317.b4-ty@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <177505774109.625224.4963725815452764317.b4-ty@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_083658_857674_41581F33 
X-CRM114-Status: GOOD (  16.29  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] security: policy: implement age verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Apr 01, 2026 at 05:35:41PM +0200, Sascha Hauer wrote:
> 
> On Wed, 01 Apr 2026 17:07:14 +0200, Ahmad Fatoum wrote:
> > With barebox providing a UEFI environment, scheduling green threads
> > and running DOOM, barebOS is ever more becoming a reality.
> > 
> > But with great power, comes great responsibility - in the form of
> > government mandated age checking.
> > 
> > Fortunately, barebox's security policy framework already cleanly
> > separates policy from mechanism: Sconfig options define what is
> > permitted and IS_ALLOWED() guards enforce it at runtime.
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/2] security: policy: support age verification
>       https://git.pengutronix.de/cgit/barebox/commit/?id=b8ca49771821 (link may not be stable)
> [2/2] security: policy: add first age verification
>       https://git.pengutronix.de/cgit/barebox/commit/?id=1b02a8f091e6 (link may not be stable)

Queued as urgent fix, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


