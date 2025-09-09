Delivery-date: Tue, 09 Sep 2025 17:40:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0S8-0017Jn-1e
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 17:40:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0S8-0002FK-03
	for lore@pengutronix.de; Tue, 09 Sep 2025 17:40:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bd7dZG5zoKXPSsmVKAl5+yHyWQwEBwxD11VjhZ6IycM=; b=MvaJToqOSo6JqeC2jcQMTnD3GK
	r1+jFt07CYQSixij8D1ow8RxURIiALhSZVSKPQRweRSo2M5dcFQxV6md+gwFiEvmscsHNgvmtrPjv
	3ag2WcGjqYQ0RVSAUT6N55ZLZYghiydMVCpbc7yvzyCYL4CIwdg2EfJpc0K84sTUOpASHieDuhBgy
	+AWEggR4SzkFEt88ez0Iw5MHQNccygad+ceUgcjrC7lWoNi7MWZZnic5shRj8K8xYJFa2o3YLudUp
	V9CGTVkv87vfO0DLOZGWpOz4fryyPBDBxFBcsQfXvvC+N1gDogH7p9xnS8mFQ4OCyN5gGOBVyK0ky
	T2jJw+8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0RG-000000089Dc-2Yoj;
	Tue, 09 Sep 2025 15:39:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvupm-000000063IO-2qWN
	for barebox@lists.infradead.org;
	Tue, 09 Sep 2025 09:40:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvupl-0004QN-Fd; Tue, 09 Sep 2025 11:40:17 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvupl-000Ok3-0x;
	Tue, 09 Sep 2025 11:40:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvupl-00000003vHU-0zLE;
	Tue, 09 Sep 2025 11:40:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250904081626.93182-1-a.fatoum@pengutronix.de>
References: <20250904081626.93182-1-a.fatoum@pengutronix.de>
Message-Id: <175741081723.935165.11040962079972592048.b4-ty@pengutronix.de>
Date: Tue, 09 Sep 2025 11:40:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_024018_729332_AFC1E8A9 
X-CRM114-Status: UNSURE (   7.02  )
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
Subject: Re: [PATCH] ARM: cpu: allow selecting CPU_V7/CPU_V8 directly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 04 Sep 2025 10:16:26 +0200, Ahmad Fatoum wrote:
> We currently lack a way to build a barebox EFI payload on ARM without
> enabling some other subarchitecture. As CONFIG_EFI_PAYLOAD has a global
> effect and adds EFI stubs to all enabled board, an EFI subarchitecture
> doesn't fit into our current model.
> 
> Instead, let's make it possible to enable either CONFIG_CPU_V8 or
> CONFIG_CPU_V7 directly.
> 
> [...]

Applied, thanks!

[1/1] ARM: cpu: allow selecting CPU_V7/CPU_V8 directly
      https://git.pengutronix.de/cgit/barebox/commit/?id=d92583d5bab2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



