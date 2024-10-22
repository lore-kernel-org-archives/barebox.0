Delivery-date: Tue, 22 Oct 2024 11:39:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3BM4-007PfF-0G
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 11:39:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3BM3-0002sU-Gf
	for lore@pengutronix.de; Tue, 22 Oct 2024 11:39:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iQkQsExQVr7P/PVdoP8laZZPNFo3pd7K/Bnb00mfQtU=; b=yEpgw6jvZFfL6IJa5xqkq1ms5O
	Z/srvg7Xgx9xY8yOd0SDg1LvrZcwq3L9JbOa04WUEXDeczFgDsfWrcaOr7r95CQVEQd0JpTDK3CtY
	vsGuQqrLNZvidKJQfnD8uslJYUNK0+mO/zQIaryy0QuRpNBPD3b9/fe+XgRKzBCmPdOf64KtEY7sh
	1oWP5ycxJUYO69r1teFDMb240J+IaDdsOYCRwfYQySt587n2Rn2CEdz+T2mv2snl+9RzV39YLX83V
	jHyyN5ZXeEdN9QOKnsCtpiY9MaM6zALCXqj2c7NIjxDnNeMKQUKETCccnB3wY0KftdmQG5yPQ1u44
	NXJg7CWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3BLY-0000000ANWU-115Z;
	Tue, 22 Oct 2024 09:38:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3B5X-0000000AKvM-3e0e
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 09:22:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3B5W-0001og-GK; Tue, 22 Oct 2024 11:22:02 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3B5W-000q6z-12;
	Tue, 22 Oct 2024 11:22:02 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3B5W-00CB85-0r;
	Tue, 22 Oct 2024 11:22:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241022083347.3248311-1-a.fatoum@pengutronix.de>
References: <20241022083347.3248311-1-a.fatoum@pengutronix.de>
Message-Id: <172958892226.2902692.7103893044674934569.b4-ty@pengutronix.de>
Date: Tue, 22 Oct 2024 11:22:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_022203_969397_01135FFB 
X-CRM114-Status: UNSURE (   7.15  )
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
Subject: Re: [PATCH 1/2] partitions: efi: use calloc instead of kzalloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 22 Oct 2024 10:33:46 +0200, Ahmad Fatoum wrote:
> kzalloc() uses at least DMA_ALIGNMENT as alignment, which is more than
> we need for the data structures that are used to hold the partition info.
> 
> Use the normal allocator to be more efficient with memory.
> 
> 

Applied, thanks!

[1/2] partitions: efi: use calloc instead of kzalloc
      https://git.pengutronix.de/cgit/barebox/commit/?id=7faca080705f (link may not be stable)
[2/2] partition: dos: use xmalloc for unchecked allocations
      https://git.pengutronix.de/cgit/barebox/commit/?id=c528475db3ef (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



