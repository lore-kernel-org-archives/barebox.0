Delivery-date: Mon, 03 Nov 2025 09:57:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFqNK-00EnYl-2a
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 09:57:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFqNK-0002OO-9Y
	for lore@pengutronix.de; Mon, 03 Nov 2025 09:57:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2SQ9NU5ukMOqlwu0oMOZyCDZXZyXEbdte6Y8yxTkNrU=; b=0pWNVa64UDhMWRYY5gdQWmihOA
	T1R04Mw0y4+lQarLDvLBVW8IQ31TbhrrRbRZETkbMkE8GVkwrfRy2Gz6m1UxBOh/0ZFoxPoPBb4LF
	pNPUMLaolUxqGCLvGIIhATRvR7iEksP4VEAc6t8nONC+7pFzy9rT7k3yfDzpW5Zk4GhARDPYri2+v
	XX6D2PXPuKJ+ku+xNc9Sqfk3hXwT/+XJPQprP+y6cMpf1PJp+ik4kowE86yVRJ/kgvTeJhA0XI0Xr
	KjsebmihaAHmHe3WQTsOml4pPomT47wWrRyUOF9Mq6iqgIbhFh6w1L06cq9o7G2i5rWajxotEpqHi
	SeD5OC/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFqMw-00000009TSt-2Ezr;
	Mon, 03 Nov 2025 08:56:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFqMu-00000009TSP-2acp
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 08:56:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqMs-0002JM-R5; Mon, 03 Nov 2025 09:56:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqMs-006pVE-27;
	Mon, 03 Nov 2025 09:56:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqMt-0000000HNlY-090B;
	Mon, 03 Nov 2025 09:56:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: mfe@pengutronix.de
In-Reply-To: <20251028143238.1782982-1-a.fatoum@pengutronix.de>
References: <20251028143238.1782982-1-a.fatoum@pengutronix.de>
Message-Id: <176216021058.4142877.16070569428789037301.b4-ty@pengutronix.de>
Date: Mon, 03 Nov 2025 09:56:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_005652_660205_A5B9D8DB 
X-CRM114-Status: UNSURE (   8.91  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: mmu: have zero_page_remappable() check MMU
 status
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 28 Oct 2025 15:32:34 +0100, Ahmad Fatoum wrote:
> zero_page_access() and zero_page_faulting() call remap_range(), which
> assumes the TTBR was initialized to page tables set up by barebox.
> 
> It's thus not safe to call them from generic code prior to enabling the
> MMU, but we are doing just that. In preparation for fixing, let's make
> zero_page_remappable reflect MMU status.
> 
> [...]

Applied, thanks!

[1/2] ARM: mmu: have zero_page_remappable() check MMU status
      https://git.pengutronix.de/cgit/barebox/commit/?id=ce3410882a3a (link may not be stable)
[2/2] ARM: i.MX8M: romapi: skip zero_page_access() if MMU is disabled
      https://git.pengutronix.de/cgit/barebox/commit/?id=accef8382d96 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



