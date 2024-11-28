Delivery-date: Thu, 28 Nov 2024 09:24:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGZop-001NZ4-0T
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 09:24:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGZop-000788-35
	for lore@pengutronix.de; Thu, 28 Nov 2024 09:24:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wy/0klC5/WEBeahDBj+sr5ky8R0ekw0oGO7zUb2jiPc=; b=iv0YQv5VJiauEgtGVKOScHocT1
	Xe+FQn+gmPas9WNKUnITMaggYnGH8TA6VvUCz4B47N7ty5OlrFujXJWMytIeiIgBN1O43tmfubz+1
	yn8Qu0cbIOrbGDtX6qYEQxft1vzhGdoR268GQjGiGFhyuCLS+1uUoAag9Ml7lfQUti1Vd5zX6WpKt
	fVEsmwCHqvoJBf/fMLA30aBK2v5W1L40p6V3Evs7MCRyXgo8YTd/TkS/z0pST8IJf6W6fkJDfpxdx
	NN0a3qiUm7XYM+mno2KkcSf4EHDrnnCcNbqCev4QB99rgnWI/AXDwqedcF+5NrQlhLI5R9VKN+h5o
	uYA+VhVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGZoO-0000000EzGR-2RBU;
	Thu, 28 Nov 2024 08:23:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGZlv-0000000EyiT-1Osv
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 08:21:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGZlt-0006R3-SW; Thu, 28 Nov 2024 09:21:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGZls-000a2M-30;
	Thu, 28 Nov 2024 09:21:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGZlt-00FdJb-23;
	Thu, 28 Nov 2024 09:21:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
References: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
Message-Id: <173278206963.3726006.3004031451155897300.b4-ty@pengutronix.de>
Date: Thu, 28 Nov 2024 09:21:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_002111_371837_ECA61E44 
X-CRM114-Status: UNSURE (   8.04  )
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
Subject: Re: [PATCH 0/9] sandbox: use native setjmp/longjmp/initjmp
 implementation by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 25 Nov 2024 16:35:14 +0100, Ahmad Fatoum wrote:
> In order to implement initjmp, we have two ways with available
> functionality: The sigaltstack we are currently using and
> makecontext/swapcontext. makecontext/swapcontext are unfortunately
> deprecated in favor of POSIX threads and the sigaltstack runs afoul of
> AddressSanitizer when compiled with clang.
> 
> This series fixes this by using the already existent assembly
> implementations
> 
> [...]

Applied, thanks!

[1/9] sandbox: asm: support inclusion from sandbox os support code
      https://git.pengutronix.de/cgit/barebox/commit/?id=ab213e2680da (link may not be stable)
[2/9] test: self: setjmp: add simple initial testcase
      https://git.pengutronix.de/cgit/barebox/commit/?id=66036a7147bf (link may not be stable)
[3/9] sandbox: source/invoke um Makefiles provided by host architecture
      https://git.pengutronix.de/cgit/barebox/commit/?id=9e8108599522 (link may not be stable)
[4/9] sandbox: setjmp: mark C version as __weak
      https://git.pengutronix.de/cgit/barebox/commit/?id=ed8e28428731 (link may not be stable)
[5/9] sandbox: use native setjmp/longjmp/initjmp implementation by default
      https://git.pengutronix.de/cgit/barebox/commit/?id=70559ef4a7a0 (link may not be stable)
[6/9] sandbox: retire HAVE_ARCH_ASAN
      https://git.pengutronix.de/cgit/barebox/commit/?id=550d92229e8b (link may not be stable)
[7/9] bthread: move asan fiber API into header
      https://git.pengutronix.de/cgit/barebox/commit/?id=ee81cbe355a2 (link may not be stable)
[8/9] test: self: setjmp: make compatible with ASAN
      https://git.pengutronix.de/cgit/barebox/commit/?id=d253f23723d9 (link may not be stable)
[9/9] bthread: fix use of ASAN fiber stack switch API
      https://git.pengutronix.de/cgit/barebox/commit/?id=e61fa7a37f18 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



