Delivery-date: Mon, 25 Aug 2025 11:36:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqTd9-004Jin-0A
	for lore@lore.pengutronix.de;
	Mon, 25 Aug 2025 11:36:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqTd7-000237-UQ
	for lore@pengutronix.de; Mon, 25 Aug 2025 11:36:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JHIiERnh0Z1wbF/3SPZotp5OEkbHipcsFCXskyBN1WU=; b=cB8ib5qRU38g4K7Wy0eUhdmCEY
	cD4L9xweMQo35hjSpcD/WfrRW1JPpVLHyusLoKrUV8PcIBEIaotZzPvsmxA+GzR7XqFKSpljZQXvD
	+VbPBRSPJ+27TIAXhzc3lGb6V7FNfDE0viMVXH8KRNHT7x6cyn2u9+SEFkYSSpXdEljfegHhJbs0Q
	37ZWAsOMLLhHaf1U+g7/+PM5LTZNlz88n+PSxjVHoKpR+8+hgReNmzQ7Hl+BBY2LhLHNhnXp3H9Nf
	sU7kBL7pI0hOJlsWZ0EptvpElfrG91u8vfqgeQdcn8vs8/Bdfa9YPUIjyRoB3e/crI+ucR6JdDcfM
	Zt/NXf8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqTcZ-00000007Vuh-0Q3D;
	Mon, 25 Aug 2025 09:36:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqSwC-00000007OeV-2mrS
	for barebox@lists.infradead.org;
	Mon, 25 Aug 2025 08:52:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqSwB-0004ym-FK; Mon, 25 Aug 2025 10:52:23 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqSwB-0022SD-0u;
	Mon, 25 Aug 2025 10:52:23 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqSwB-000000033Ss-0vZh;
	Mon, 25 Aug 2025 10:52:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250821204658.1426566-1-a.fatoum@pengutronix.de>
References: <20250821204658.1426566-1-a.fatoum@pengutronix.de>
Message-Id: <175611194321.728289.7508288697814145871.b4-ty@pengutronix.de>
Date: Mon, 25 Aug 2025 10:52:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_015224_708820_EA601C7B 
X-CRM114-Status: UNSURE (   7.75  )
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
Subject: Re: [PATCH v2 1/2] state: do not panic on flipped bits in on-disk
 sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 21 Aug 2025 22:46:57 +0200, Ahmad Fatoum wrote:
> We allocate some buffers with a size that's ultimately dictated by
> on-disk metadata. This metadata can be incorrect and state is supposed
> to handle that by storing the data redundantly in three buckets.
> 
> Due to the use of x-family functions, we triggered a panic though, which
> made an unfortunate bitflip an irrecoverable error.
> 
> [...]

Applied, thanks!

[1/2] state: do not panic on flipped bits in on-disk sizes
      https://git.pengutronix.de/cgit/barebox/commit/?id=05e6175203d8 (link may not be stable)
[2/2] state: dtb: enforce minimum FDT length
      https://git.pengutronix.de/cgit/barebox/commit/?id=33d29825d37a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



