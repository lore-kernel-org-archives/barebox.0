Delivery-date: Mon, 01 Dec 2025 11:22:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ13C-006mlH-1y
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 11:22:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ13C-00063H-2v
	for lore@pengutronix.de; Mon, 01 Dec 2025 11:22:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kKXOXkr9XYtRlKhPSFtEnF6edPwvG2UyEPlPLQuxRU0=; b=zI2kg9IoHrozYDZnbR9l7KYalZ
	yKqpWcnyscVz4KFwTw2KYDnXN0LZqub1wK5Xr9seupV1/eWZzro/pj1+q/pCwYp7rGjyzvNCb3ziF
	WF4WryfF1JJSDAho2k337QRYBGnh/kMvSudLiFKKPH6H4h6yKaM9Jeaf+7g4LgQ30sF61ilGG1u9L
	UNd0mPIay1trMM7LDsHqC5Un6k0Cpww9DFIbg79PCju8HSEmqb04PP1Qkn+1agxbdvDzF/WqmtDoN
	rrXwnvcERHttANt6lNqY9p/VRb+nD4IUw5CZ0FCERBoP+Xe1r2uF3uMZ6P8cg3vk8UXcQk1KryOkc
	vZiGWuIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ12k-00000003JAy-18hC;
	Mon, 01 Dec 2025 10:22:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ12h-00000003JAQ-3qVb
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 10:22:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ12g-0005wM-2H; Mon, 01 Dec 2025 11:22:02 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ12f-003QYf-2p;
	Mon, 01 Dec 2025 11:22:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ12f-00000000fyM-3Qto;
	Mon, 01 Dec 2025 11:22:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251128125616.136559-1-a.fatoum@pengutronix.de>
References: <20251128125616.136559-1-a.fatoum@pengutronix.de>
Message-Id: <176458452181.161296.7515277119174354375.b4-ty@pengutronix.de>
Date: Mon, 01 Dec 2025 11:22:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_022204_076889_593D0005 
X-CRM114-Status: UNSURE (   6.48  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] printf: define printk/no_printk in terms of prints
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Nov 2025 13:50:02 +0100, Ahmad Fatoum wrote:
> We will later move printk into its own header while giving it more
> Linux-like semantics. Prepare for that by defining no_printf, so users
> across the tree can make use of it without including <linux/printk.h>.
> 
> 

Applied, thanks!

[1/4] printf: define printk/no_printk in terms of prints
      https://git.pengutronix.de/cgit/barebox/commit/?id=814452f6e072 (link may not be stable)
[2/4] bug: add support for CONFIG_DEBUG_BUGVERBOSE
      https://git.pengutronix.de/cgit/barebox/commit/?id=10536edcc3bf (link may not be stable)
[3/4] include: move sprintf prototypes to new linux/sprintf.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=8862958f8071 (link may not be stable)
[4/4] console: move non-stdio elements to console.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=6550746b5a87 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



