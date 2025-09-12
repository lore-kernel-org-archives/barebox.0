Delivery-date: Fri, 12 Sep 2025 09:52:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwyZd-0029kw-2i
	for lore@lore.pengutronix.de;
	Fri, 12 Sep 2025 09:52:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwyZd-0004WA-AQ
	for lore@pengutronix.de; Fri, 12 Sep 2025 09:52:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z5Wg3j//TJb8EyHLkEchupZf/tP/BYD5DoLomyxgauE=; b=I0HZXiQY71gaCtv4ELhvsGrh7+
	QxaHy+Js0mgXit95mA0vNiEsddDtUcVORMUR4ch2hkMF45Sa39HzTXSeeHDIPHO8TmW+H77c6Dn1m
	gusuD15Jl9QKedil4AwDr7WyAn+rULDsI6ek6/VZ3G/Pb3jyHHNpJ4u2zxxJ7bCepK6kEvtKDmYKJ
	PzBTyi9JhDZpebYVkRjbShx2c6s9CETsjavykLswxoZhNk3QKDZj+v5oLQsOlQf5ZacY+i0M0+WU3
	dWfjUP0ZmNjGDYhGXoGW6WYYxy2sOf3Li/cL1n9r7G7Y01tdW4qHJNgxGLCjCxX0KZNgGvuE6jxMg
	RRWie9Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwyZ9-00000007k7r-3Ogg;
	Fri, 12 Sep 2025 07:51:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwyZ7-00000007k7W-1dzx
	for barebox@lists.infradead.org;
	Fri, 12 Sep 2025 07:51:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwyZ5-0004R4-Ok; Fri, 12 Sep 2025 09:51:27 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwyZ5-000tfM-1o;
	Fri, 12 Sep 2025 09:51:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwyZ5-00000007NlU-25xy;
	Fri, 12 Sep 2025 09:51:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: Chali Anis <chalianis1@gmail.com>
In-Reply-To: <20250912065105.2443411-1-a.fatoum@barebox.org>
References: <20250912065105.2443411-1-a.fatoum@barebox.org>
Message-Id: <175766348749.1759635.5276624269090803798.b4-ty@pengutronix.de>
Date: Fri, 12 Sep 2025 09:51:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_005129_435784_62899C9B 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM64: setupc: drop erroneous cache flush of virt addr
 0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 12 Sep 2025 08:51:04 +0200, Ahmad Fatoum wrote:
> relocate_to_adr copies around executable code and thus needs to
> ensure coherence between I$ and D$. When the function was first added,
> it didn't maintain cache correctly, because while it did call
> arm_early_mmu_cache_flush(), back then that function did not invalidate
> I$ after the D$ clean.
> 
> This likely went unnoticed, because a comment in relocate_to_adr
> suggested that ic ivau is invalidating the I$, but in reality that
> instruction did an unconditional invalidation of the single
> cache line corresponding to virtual address 0 if it exists.
> 
> [...]

Applied, thanks!

[1/1] ARM64: setupc: drop erroneous cache flush of virt addr 0
      https://git.pengutronix.de/cgit/barebox/commit/?id=cca8ff2e8810 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



