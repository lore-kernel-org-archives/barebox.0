Delivery-date: Mon, 15 Dec 2025 15:10:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9HQ-00BlW8-1C
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 15:10:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9HP-0000oR-Pf
	for lore@pengutronix.de; Mon, 15 Dec 2025 15:10:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8a0wl9A5V+WRGygGYujT+X4hKJyZsS3Dnb7l60VGu/U=; b=xj9T71V2BcQhwln4a/3tY/8GJ8
	DS9B4DmkyrCiYd+kAsJPEdI9NMY5n7Gd/AT+xAggL2XUjbzNwI45njRfYKi9/TPjiKa1/KeIXOrmv
	7MMg/u68mvVQk51uWpugDa8EHfz5dYCrwaHha36s+3VQ8jSgnOwKcWJ18GjFFaiPOE/BFIgTLNiRY
	NYKzwZ7WbZwNeePhiBRs8cn4yBD8A5kR9LWgTZa9vy4AJ8A7jsF7JXxzN+jwh+Slo52/I/lrlwpWu
	7vmj9i3bWD193VaDgh/8iEdmObrXuiW12/JOQrXMPKNsWXFBn4mtKEkVmY2xTCik0XSwxkmh+PQKR
	FM5HYXnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9Gz-00000003kLB-2cn2;
	Mon, 15 Dec 2025 14:10:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9Gx-00000003kK4-3Llj
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 14:10:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV9Gw-0000cY-9L; Mon, 15 Dec 2025 15:09:58 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV9Gw-005nPi-0G;
	Mon, 15 Dec 2025 15:09:58 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV9Gw-0000000DEXJ-02bH;
	Mon, 15 Dec 2025 15:09:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251128111929.2463263-1-s.hauer@pengutronix.de>
References: <20251128111929.2463263-1-s.hauer@pengutronix.de>
Message-Id: <176580779800.3153881.17455181383255753410.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 15:09:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_060959_839203_A0FD4E17 
X-CRM114-Status: UNSURE (   8.02  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] partitions: gpt: refresh partition tables when
 necessary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Nov 2025 12:19:29 +0100, Sascha Hauer wrote:
> The GPT alternative header must be at the end of the device. When disk
> images are written to a device this often is not the case which results
> in warnings:
> 
> WARNING: mmc0: GPT:Primary header thinks Alt. header is not at the end of the disk.
> WARNING: mmc0: GPT:6561831 != 62160895
> WARNING: mmc0: GPT:Alternate GPT header not at the end of the disk.
> WARNING: mmc0: GPT:6561831 != 62160895
> WARNING: mmc0: GPT: Use parted to correct GPT errors.
> 
> [...]

Applied, thanks!

[1/1] partitions: gpt: refresh partition tables when necessary
      https://git.pengutronix.de/cgit/barebox/commit/?id=131ef8e9ef99 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



