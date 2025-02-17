Delivery-date: Mon, 17 Feb 2025 12:19:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjzAF-003ScL-1c
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 12:19:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjzAE-0005eK-BO
	for lore@pengutronix.de; Mon, 17 Feb 2025 12:19:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/cUbBhIB5Y9lzYZLJpzBDUI7FqvCVVKP6MrB473F7X0=; b=TrIegglgy1ooud9Sn45KGRuGUS
	oU2otfEyXdOM8qukmkyobowNIYRQB4sFQDNEKA6q8S6bRJbQ6HoqIaKZKF+ruiPCpSeXxPZUUImW1
	zY0pNMSqrGApnunOn+53RaU0P6o9NXB8FUVU0vMx6y+hKzwoqPRoNeZ8ca1JeMk3aSYezEjOWHRsb
	Ko8Yi9PliNQYLdCCRqGmMQqfsMm0bKpmVRqUU2NrEM6fvOetXiMJJw42txwkmEfI6UHTkFw4BXYkq
	mjiCVPvQ7k0OmbWJmr9lTrhPeAMDKB0wpXLqlMTnfAwUK7a5WM2dCmuzeOoK5xKhbaw1fivD364n8
	rbM4uzfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjz9f-00000004HXY-2rx2;
	Mon, 17 Feb 2025 11:19:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjz9c-00000004HX5-27cl
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 11:19:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjz9a-0005UY-Vv; Mon, 17 Feb 2025 12:19:11 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjz9a-001Okw-2b;
	Mon, 17 Feb 2025 12:19:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjz9a-008E6g-2P;
	Mon, 17 Feb 2025 12:19:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250217104611.1836442-1-a.fatoum@pengutronix.de>
References: <20250217104611.1836442-1-a.fatoum@pengutronix.de>
Message-Id: <173979115074.1960646.7559186033947300422.b4-ty@pengutronix.de>
Date: Mon, 17 Feb 2025 12:19:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_031912_545360_60154BCC 
X-CRM114-Status: UNSURE (   7.95  )
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
Subject: Re: [PATCH 1/4] sandbox: make CC_HAS_LINUX_I386_SUPPORT depend on
 GCC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Feb 2025 11:46:08 +0100, Ahmad Fatoum wrote:
> CC_HAS_LINUX_I386_SUPPORT enables build for 32-bit with a 64-bit GCC
> toolchain. This seems not to work correctly on clang:
> 
>   CC      arch/sandbox/os/common.o
>   In file included from arch/sandbox/os/common.c:23:
>   In file included from /usr/lib/llvm-16/lib/clang/16/include/limits.h:21:
>   /usr/include/limits.h:26:10: fatal error:
>                                'bits/libc-header-start.h' file not found
>   #include <bits/libc-header-start.h>
> 
> [...]

Applied, thanks!

[1/4] sandbox: make CC_HAS_LINUX_I386_SUPPORT depend on GCC
      https://git.pengutronix.de/cgit/barebox/commit/?id=15af5003ba06 (link may not be stable)
[2/4] Makefile: clang: fix typo in -Wno-typdef-redefinition flag
      https://git.pengutronix.de/cgit/barebox/commit/?id=35309a815da3 (link may not be stable)
[3/4] kbuild: actually include Makefile.clang for clang builds
      https://git.pengutronix.de/cgit/barebox/commit/?id=c5370032370a (link may not be stable)
[4/4] Makefile: clang: fail non-sandbox LLVM builds early
      https://git.pengutronix.de/cgit/barebox/commit/?id=aaea175ad00f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



