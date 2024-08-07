Delivery-date: Wed, 07 Aug 2024 08:59:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbaeH-0075BD-2a
	for lore@lore.pengutronix.de;
	Wed, 07 Aug 2024 08:59:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbaeH-0004JX-5g
	for lore@pengutronix.de; Wed, 07 Aug 2024 08:59:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PnyPC92UppLCTptxCI+XWzH1lszu/BuzFqro8z9w1MQ=; b=JOyinAz9Og4xyckwMAE0ReTXU7
	Zk/1PtTDgEFyHauXpyQdrZTAD4O8q+1DBavmgtjE9kqZ2woaWpE7o8s+1JI67MjgX3WawS7RGqukD
	AqM96Smxz98mh4++rzCKCPO1z8tq1YiVTyH4OK9y9DoQhupKKnq3FQ9cxOYSLZC8cRKfOMY0iS5AY
	4/WWt9juPA0MbHVQnD3zSj00HccIiG2MM/41dxOpYigcJbfKHNmg8R2sm7kebBfaJroFvMA/KcTBN
	PMgeQYx+2L+EXcbQr/ahb9y8QiRLrF6EADWWNSWe7N3Dfq8SrON/GlcYAlWEzL3CFH8pmP9mnnGtU
	yonRalWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbadc-000000048gA-2iEs;
	Wed, 07 Aug 2024 06:59:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbadK-000000048b3-2CPk
	for barebox@lists.infradead.org;
	Wed, 07 Aug 2024 06:58:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbadH-0004Bw-AU; Wed, 07 Aug 2024 08:58:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbadG-0058Lt-T1; Wed, 07 Aug 2024 08:58:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbadG-00HSls-2g;
	Wed, 07 Aug 2024 08:58:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240806125658.332359-1-a.fatoum@pengutronix.de>
References: <20240806105429.2278660-1-s.hauer@pengutronix.de>
 <20240806125658.332359-1-a.fatoum@pengutronix.de>
Message-Id: <172301393082.4162125.11400295070915420292.b4-ty@pengutronix.de>
Date: Wed, 07 Aug 2024 08:58:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_235854_612432_B4A57380 
X-CRM114-Status: UNSURE (   5.01  )
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
Subject: Re: (subset) [PATCH] fixup! malloc: implement malloc_usable_size()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 06 Aug 2024 14:56:58 +0200, Ahmad Fatoum wrote:
>  - Prevent sandbox from using libc function inadvertently
>  - Implement wrapper for libc malloc
>  - Implement for dummy_malloc
> 
> 

Applied, thanks!

[1/1] fixup! malloc: implement malloc_usable_size()
      https://git.pengutronix.de/cgit/barebox/commit/?id=973c53ae6bc7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



