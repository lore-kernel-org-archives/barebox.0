Delivery-date: Mon, 19 Jan 2026 13:20:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhoFW-0031jl-2N
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 13:20:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhoFV-0005UC-P6
	for lore@pengutronix.de; Mon, 19 Jan 2026 13:20:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QRM/dT7k77xMZTuxqMQ/E9j1LjnjSAIqMUIlBhJyDeM=; b=KQ2dIRd4tpWjgZd0YO5//C8D/r
	LT4tI/ueZnt9azi7KG9wj6ax3xWxMonzd3VPqibr/OpCsY+m2S+t8YxvU/Y+ZWC8O57qmYosbh3EN
	M9G37WrZGJrzYuTkJ8dMwg3ZNah7hFO8VTlKo4h1+muP+6daOOVpNNXD5eG3wcUfJowT0k8KbHa4Q
	J15puSp/NI5dQVboqZp00ikogxju2IA4q3ABfmMnxv/zIL7gFvlq5FCqaSd6T46v+zQUKuSp3ggwi
	ACvcKgDEcsETYJXu6GHGZmWFu1P+dgkMzHhlRBW91miIMrSrDiT59smWXFcW9ud9sux9IdjZMGrSr
	xovjsIDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhoEk-00000001zK7-1ybJ;
	Mon, 19 Jan 2026 12:20:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhoEg-00000001zIs-29Qp
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 12:20:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhoEf-0005Hb-1Z; Mon, 19 Jan 2026 13:19:57 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhoEf-001PXG-1g;
	Mon, 19 Jan 2026 13:19:56 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhoEe-00000003r1P-3Gnp;
	Mon, 19 Jan 2026 13:19:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 =?utf-8?q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>
In-Reply-To: <20260114124858.2518566-1-ejo@pengutronix.de>
References: <20260114124858.2518566-1-ejo@pengutronix.de>
Message-Id: <176882519677.918776.15569751560730819819.b4-ty@pengutronix.de>
Date: Mon, 19 Jan 2026 13:19:56 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_041959_440386_A3BB071F 
X-CRM114-Status: UNSURE (   6.34  )
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
Subject: Re: [PATCH] bootchooser: clarify error message for disabled
 barebox-state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 14 Jan 2026 13:48:36 +0100, Enrico Jörns wrote:
> Make clear that:
> - state was configured as bootchooser backend
> - is disabled in kconfig
> 
> 

Applied, thanks!

[1/1] bootchooser: clarify error message for disabled barebox-state
      https://git.pengutronix.de/cgit/barebox/commit/?id=9a6cd38b4cdb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



