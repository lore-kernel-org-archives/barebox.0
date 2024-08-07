Delivery-date: Wed, 07 Aug 2024 08:59:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbaeK-0075Ba-1k
	for lore@lore.pengutronix.de;
	Wed, 07 Aug 2024 08:59:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbaeK-0004Kb-05
	for lore@pengutronix.de; Wed, 07 Aug 2024 08:59:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=afW2pPUZ6MAcVy3WYmY+pnblIdEKAXMwrNSj8RTL1MA=; b=oy0SAr8FdKpaI7iet4aupqx7jJ
	SvMPrt6Cp+eCw7DDLMxeZ1lIsKpgpTpf378gQkVLtofSH9gDceUrJHXMzryePyExH/yQ4gn817xas
	BuaLlQiwKeI45Uz2+zwZP/iscaVrKYAdBRRungzfuVqt2BONAvTqNA73d+qT0ahEKyEpU59pH6SuK
	l9NTsce/Au6QhJkCQ4ulPJ3AJsk7rgU1baMzF2JTrtkvM4CYAuS7u0KsCfIok6hUPk1ULw9f02uAY
	Zq3a2Ym5cQivk3eZYytMbmNXyzz9HjYXp3+mj6MB+L56BzfgMl/x9qD644Rm9D+GOP9EOk/kELjgI
	uCqhRmRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbadc-000000048g0-0OgS;
	Wed, 07 Aug 2024 06:59:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbadK-000000048ax-2ECm
	for barebox@lists.infradead.org;
	Wed, 07 Aug 2024 06:58:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbadH-0004Bv-AB; Wed, 07 Aug 2024 08:58:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbadG-0058Ls-Sc; Wed, 07 Aug 2024 08:58:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbadG-00HSls-2d;
	Wed, 07 Aug 2024 08:58:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240806105429.2278660-1-s.hauer@pengutronix.de>
References: <20240806105429.2278660-1-s.hauer@pengutronix.de>
Message-Id: <172301393080.4162125.1452610225806364175.b4-ty@pengutronix.de>
Date: Wed, 07 Aug 2024 08:58:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_235854_623737_6A10D95B 
X-CRM114-Status: UNSURE (   5.72  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] malloc: implement malloc_usable_size()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 06 Aug 2024 12:54:28 +0200, Sascha Hauer wrote:
> malloc_usable_size() is a standard libc function. Implement it for the
> barebox allocators, dlmalloc and tlsf_malloc.
> 
> 

Applied, thanks!

[1/2] malloc: implement malloc_usable_size()
      https://git.pengutronix.de/cgit/barebox/commit/?id=c89226c58ac3 (link may not be stable)
[2/2] malloc: implement free_sensitive()
      https://git.pengutronix.de/cgit/barebox/commit/?id=47ff229f3fae (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



