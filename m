Delivery-date: Mon, 24 Mar 2025 09:26:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twd8e-003Voy-2B
	for lore@lore.pengutronix.de;
	Mon, 24 Mar 2025 09:26:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twd8d-0004di-Hy
	for lore@pengutronix.de; Mon, 24 Mar 2025 09:26:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7ApuHAsIjgTfVLvveA73jSJMJiGBcHvYWzOnS37QrEk=; b=Wx6Y1vfpbNXInxEdqhW3/PuuG2
	/iOmuFHuSOLL0sqJ9H0DQoRPM+99yLKgraksoYhY+hdLPZB6O1kxnwLCkntRXjAGJwwXRUW5P17Yl
	myd8A1R170NQqvmdfBe75RqQrl5oNYeZQAVNqjOr7W4VnpHoEgWjVFhByNVmmRMLyGjnkSCKqqpMX
	E3ILfnpJI2Gk8UqJI0IkBd/APhNlgJ5vb6jfIuB0Ee9cgtJ+QVjbs6VJKHQBiXwttOFk/gWxIz4va
	hhL18tqTVGpVgbzE7wTQCTtZ9rxpIisOXOj92AF96U0B/OfDXzrQ9FWVLIt73lQUXTuAfq832B/SM
	RG7jMKsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twd8C-00000002Zpw-0Z90;
	Mon, 24 Mar 2025 08:26:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twd89-00000002Zoh-3F5u
	for barebox@lists.infradead.org;
	Mon, 24 Mar 2025 08:25:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twd80-0004PO-K2; Mon, 24 Mar 2025 09:25:48 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twd7z-001NUo-3B;
	Mon, 24 Mar 2025 09:25:48 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twd80-007AG2-17;
	Mon, 24 Mar 2025 09:25:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250320125109.210820-1-s.hauer@pengutronix.de>
References: <20250320125109.210820-1-s.hauer@pengutronix.de>
Message-Id: <174280474834.1707553.15511909191647751401.b4-ty@pengutronix.de>
Date: Mon, 24 Mar 2025 09:25:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_012557_821579_9E13B97D 
X-CRM114-Status: UNSURE (   6.96  )
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
Subject: Re: [PATCH v2] dma: add function to check a buffer for proper DMA
 alignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 20 Mar 2025 13:51:09 +0100, Sascha Hauer wrote:
> Add dma_map_buf_is_aligned() which can be used to check if a buffer is
> sufficiently aligned for DMA.
> 
> 

Applied, thanks!

[1/1] dma: add function to check a buffer for proper DMA alignment
      https://git.pengutronix.de/cgit/barebox/commit/?id=d648250202c9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



