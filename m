Delivery-date: Fri, 20 Jun 2025 14:04:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSaUH-009GvW-3B
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 14:04:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSaUF-0002nM-VW
	for lore@pengutronix.de; Fri, 20 Jun 2025 14:04:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RnMT213pXnYv9Ic3HOKWvMW9TrAFL5/q6gZAqkcrHAA=; b=X9yp2RqUUbGj41a0tSuxRhKuvE
	KuRNPJKMlLmHhFN75cYmNTfJ8V6AWU419ROBjfEzKHabUciGwSDzUTk2RBsvKXk3BLxLyw/vTN1RF
	2hsRTjGJCyGI++3N1m84cjFeZaKjKBizhG+GyD25ihcGOqUdQYfWpQXFjSLpjeL3rY9N3pDE9uvvK
	W0v62xh+In9s+IOzoEv72dINzRwWumOwmrum9UFBhxOhNjfr/D3fJTL8/aLTLnTeKoxhHSEvedsuh
	g8WjE+a8M8ZldjRHBZvtsHLRiCA3aWxQW3TjtR03qn3aswqFj3VkYH2cHDd+PBA+1J1DkMYrq6tc4
	BZh9QsUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaTm-0000000FWot-0D7m;
	Fri, 20 Jun 2025 12:04:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaED-0000000FV1i-0xfx
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 11:48:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSaEC-0007oi-4Q; Fri, 20 Jun 2025 13:48:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSaEB-004SEl-34;
	Fri, 20 Jun 2025 13:48:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSaEB-00D0vZ-2q;
	Fri, 20 Jun 2025 13:48:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250619133730.2980527-1-eagle.alexander923@gmail.com>
References: <20250619133730.2980527-1-eagle.alexander923@gmail.com>
Message-Id: <175042009587.3101761.14863131250547494196.b4-ty@pengutronix.de>
Date: Fri, 20 Jun 2025 13:48:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_044817_269616_42B3C082 
X-CRM114-Status: UNSURE (   5.34  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: at91: remove AT32AP7000 (AVR32) remnants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 19 Jun 2025 16:37:30 +0300, Alexander Shiyan wrote:
> barebox does not support the AVR32-based AT32AP7000 platform,
> so lets delete unused cpu_is_at32ap7000() macro and its comment.
> 
> 

Applied, thanks!

[1/1] ARM: at91: remove AT32AP7000 (AVR32) remnants
      https://git.pengutronix.de/cgit/barebox/commit/?id=2ccc211d379d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



