Delivery-date: Mon, 10 Nov 2025 09:13:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIN1i-00HJQO-3C
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 09:13:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIN1i-0004e4-FZ
	for lore@pengutronix.de; Mon, 10 Nov 2025 09:13:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SzxAbitr/BJOqI+KvuGj8tvNi9bNBDSoNu4Lw9ZDn2Y=; b=OEz+gXHpoqHd8eHgOQbuW9HF44
	1XrQmbJk/19GNNNLL5Y3YDz5UG0V8irwYs5Tih5MNGPeOecLhHx0QQ5LHh2S8VgCqabOhyDAJBIN0
	hXyT5eJJEqYW3OUJR68gzqg335p02ZN1547LjYuP5Tg08fLL5Ie7k8ZeNTM+BMgRZXZBtViTYJRZE
	qnHtFZ9dfiLuyIqr5h9FFidCLRR0zY6cQpijw/O7JmEi60xYxssKaIi/LqkwpSG9QJYSYnl68yKbQ
	h6dFpzAh5Wrnw4nW7HEvdhy0uNMKG+r8a54he+G8l7ib9U46v5G+DAtL1RjJL1vwdtkqi39Dn9OTb
	CLjbBy+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIN1J-00000004xJ2-3lmh;
	Mon, 10 Nov 2025 08:13:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIN1H-00000004xHy-3dOZ
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 08:13:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN1G-0004XN-7x; Mon, 10 Nov 2025 09:12:58 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN1F-007zOw-38;
	Mon, 10 Nov 2025 09:12:58 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIN1G-0000000491K-1Pkl;
	Mon, 10 Nov 2025 09:12:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251107182805.3367244-1-a.fatoum@pengutronix.de>
References: <20251107182805.3367244-1-a.fatoum@pengutronix.de>
Message-Id: <176276237788.987958.934365421217924835.b4-ty@pengutronix.de>
Date: Mon, 10 Nov 2025 09:12:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_001259_907671_1973B4D1 
X-CRM114-Status: UNSURE (   6.90  )
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
Subject: Re: [PATCH master] serial: ns16550: add UART compatible after
 upstream compatibility break
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 07 Nov 2025 19:27:54 +0100, Ahmad Fatoum wrote:
> Once again, to satisfy binding checker warnings, device trees have been
> changed in an incompatible manner breaking non-Linux consumers.
> 
> Add the now single compatible to the barebox driver to fix broken console
> on AM335x boards.
> 
> 
> [...]

Applied, thanks!

[1/1] serial: ns16550: add UART compatible after upstream compatibility break
      https://git.pengutronix.de/cgit/barebox/commit/?id=ff94a9e45e31 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



