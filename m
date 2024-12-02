Delivery-date: Mon, 02 Dec 2024 12:10:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI4Jw-0033aP-0S
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 12:10:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI4Jw-0006hq-4L
	for lore@pengutronix.de; Mon, 02 Dec 2024 12:10:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LSQEiCa8lakbNMIgNNVZKyJbpg7xFP1XR0J9rWmhkpc=; b=iQBBuJAN2/e27NGTDoy7fo/z8e
	5oKagGiMXJ2zFTLdvIwzz4aSfwjniPjSKyZe5vlnBOMUfL6SRMNJYgdPiCkGuNw4YIT+xT/F8lxfd
	4OpQ1X14CPU4o1mYJWJ7FxNVsjNw2VJe/Yeu0CjVoz7/7cIUaYgmHVoXElAbv60icNf13l7z1WuP5
	nqJhlUghhfJP9wGWPdKU2+EQR2xKVMK/wPR7c6LZJRG58mdwWQWkIH4zV5+2KjyRpVIyUYaiPkxoT
	igulgY4hc90g3AEW2dLh6pvA+mjy0xQePjlz1mYV2r3X1YFbQDUNFgso623B8jfm3lI38LEybL/sp
	yFQF4yjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI4JY-00000005pJN-01gU;
	Mon, 02 Dec 2024 11:10:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI4H4-00000005oOd-3Yg6
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 11:07:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI4H3-0005xg-H6; Mon, 02 Dec 2024 12:07:29 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI4H2-001Hec-1q;
	Mon, 02 Dec 2024 12:07:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI4H3-0022nv-0v;
	Mon, 02 Dec 2024 12:07:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241202081636.3475735-1-a.fatoum@pengutronix.de>
References: <20241202081636.3475735-1-a.fatoum@pengutronix.de>
Message-Id: <173313764928.487347.16092063465843096966.b4-ty@pengutronix.de>
Date: Mon, 02 Dec 2024 12:07:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_030730_886297_4A1AEC36 
X-CRM114-Status: UNSURE (   7.94  )
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
Subject: Re: [PATCH] sandbox: use barebox' own sbrk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 02 Dec 2024 09:16:36 +0100, Ahmad Fatoum wrote:
> dlmalloc uses sbrk, but so far this directly called into the libc
> instead of using the barebox-internal symbol.
> 
> Fix this by adding a define for sbrk as well as brk for completion's
> sake, even if we don't yet define the latter.
> 
> 
> [...]

Applied, thanks!

[1/1] sandbox: use barebox' own sbrk
      https://git.pengutronix.de/cgit/barebox/commit/?id=69333f239782 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



