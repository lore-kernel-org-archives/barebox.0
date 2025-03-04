Delivery-date: Tue, 04 Mar 2025 10:29:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpOb5-009ifZ-35
	for lore@lore.pengutronix.de;
	Tue, 04 Mar 2025 10:29:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpOb4-0006n8-MY
	for lore@pengutronix.de; Tue, 04 Mar 2025 10:29:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oJjMhsaj41qfHerRgIe5vrHVqS1vgQVOxYh/LNsAEFo=; b=Ib/r1nPJGOX6YwQLV3msNKFKn+
	T9PwE3t8o6YIBFvmYuinr/z4B1Vwf//v+70i+s0Gg9MIXNbFW9b5SkM4oODadvgs/mAahsGfK20VS
	SXW6H0+9LC9RcDuQ18OECanKRbPjfaOHTanm7Km+mekux+m7EAoI28KjQeBwjZsayksJcBHjWBOz4
	fXolcjt5FDdNCRVqKSy8JgTG6J6b9TmorZ9CHGLMRqR04iSOp3uW3apQk90NWvAOfo2KjkfoQJC1b
	75r5fLU5I55sOZB8Q0H9djzG+wRh4HGVGMvmWzSNf6KsB+u86stMAOKW593j7/AoyPR8Kwb+fHW/m
	/1gn0tZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpOas-00000003tHi-0PuA;
	Tue, 04 Mar 2025 09:29:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpNRd-00000003afH-06bH
	for barebox@lists.infradead.org;
	Tue, 04 Mar 2025 08:16:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tpNRb-0005rl-L9; Tue, 04 Mar 2025 09:16:03 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tpNRb-003wLc-1Q;
	Tue, 04 Mar 2025 09:16:03 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tpNRb-0039z4-1B;
	Tue, 04 Mar 2025 09:16:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250303132800.3164782-1-a.fatoum@pengutronix.de>
References: <20250303132800.3164782-1-a.fatoum@pengutronix.de>
Message-Id: <174107616336.753345.12402535592277524479.b4-ty@pengutronix.de>
Date: Tue, 04 Mar 2025 09:16:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_001605_062869_E9E006A6 
X-CRM114-Status: UNSURE (   7.70  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] sandbox: libc_malloc: multiply, not add, args
 in calloc overflow check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 03 Mar 2025 14:28:00 +0100, Ahmad Fatoum wrote:
> libc_malloc is built without access to barebox headers, so instead of
> size_mul it's using GCC builtins directly.
> 
> The check against BAREBOX_MALLOC_MAX_SIZE should've been done using the
> product as indicated by the variable name, but erroneously
> __builtin_add_overflow was used instead of __builtin_mul_overflow.
> 
> [...]

Applied, thanks!

[1/1] sandbox: libc_malloc: multiply, not add, args in calloc overflow check
      https://git.pengutronix.de/cgit/barebox/commit/?id=75296e2aa356 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



