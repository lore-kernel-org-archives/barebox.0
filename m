Delivery-date: Mon, 02 Dec 2024 08:45:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI17o-003050-19
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 08:45:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI17o-0004Jq-9K
	for lore@pengutronix.de; Mon, 02 Dec 2024 08:45:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WB9uKXEPdbP73Vl+higLtIcM6zrs43zDHDG2OX0EVMQ=; b=a15WXoEYeGWvxeybAdsuuxVL7j
	bzE6CwKq/6Os5VXRCWCV1EjNG6UDBL55uLDmhrUPXV/W9+ZzBTrZEzKqfAGEYrwlKSQx4qIssOm6k
	wA0mjVWrjdpuPTuhwGyCtMM3S3iJCUPgQYKVNs3kUJ6oSLdrtCRdD0fcijrq/xI49eHxvnm1rgkxu
	ks51PSC+4Y6dDGrv+05r0tMiaSqojEzXLdv/SoU7YjwBG8NH10lFsHTC7b7ilT4344uDIA28NbYUR
	jsYzbp7173Dq7HDOclo6JYwFESjtk88mYrQ2hujqu1IjIsannlH3xW+NazsThdT+8/3ZWzNU+4hbf
	e7l7TpYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI17C-00000005Kbq-3tIv;
	Mon, 02 Dec 2024 07:45:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI11b-00000005JgX-47Zd
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 07:39:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI11Y-0003Va-BD; Mon, 02 Dec 2024 08:39:16 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI11X-001Fzj-1G;
	Mon, 02 Dec 2024 08:39:16 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI11Y-003gdC-0H;
	Mon, 02 Dec 2024 08:39:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241125150945.166979-1-a.fatoum@pengutronix.de>
References: <20241125150945.166979-1-a.fatoum@pengutronix.de>
Message-Id: <173312515607.878795.17075475684600934717.b4-ty@pengutronix.de>
Date: Mon, 02 Dec 2024 08:39:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241201_233920_027972_945563AD 
X-CRM114-Status: UNSURE (   8.12  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] add first LLVM/clang support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 25 Nov 2024 16:09:41 +0100, Ahmad Fatoum wrote:
> We can't compile all of barebox with clang yet, because we use
> GCC-specific extensions, especially C-code in naked functions, which we
> is judiciously used on 32-bit ARM platforms.
> 
> Nevertheless, sandbox can already be used with clang and it's useful for
> incoming support for libfuzzer, so let's add support to Kbuild.
> 
> [...]

Applied, thanks!

[1/4] sandbox: use host system's UBSan library
      https://git.pengutronix.de/cgit/barebox/commit/?id=1973da9370cc (link may not be stable)
[2/4] common: implement CC_IS_GCC and CC_IS_CLANG symbols
      https://git.pengutronix.de/cgit/barebox/commit/?id=19a254d48e16 (link may not be stable)
[3/4] fixdep: sync with Linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=a985c67be57b (link may not be stable)
[4/4] Makefile: add LLVM/clang support
      https://git.pengutronix.de/cgit/barebox/commit/?id=f41c4d7c5649 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



