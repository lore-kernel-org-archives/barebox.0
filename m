Delivery-date: Mon, 13 Apr 2026 14:29:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCGPc-00BiPv-1q
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 14:29:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCGPc-0000j4-16
	for lore@pengutronix.de; Mon, 13 Apr 2026 14:29:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HK4neCgB/Ns+gAHMSUKXgknYFgELMYHGjIZidbFY5S4=; b=XAGJPyDUb3RZEzwdIKQ+fgyyOv
	ygGbBaVLbNNr9e7PZ0Fl8fMu9BoDYHxeUkDR+J6pcp0PWi7XBouCXjS6I2IxJmOwPr/Yyv2Vt4oQl
	g7NHKkNtojvgx4wh9pGxGk824Bm2LoDR+SplSxJUMsaNpl7gdNNQ9ApKSR7Fq1tQGDQjjh0fVw019
	gAxQHqig4n5QeAoJ8QMyzYft3kEOO6GjHvjj+An6BE5Yb7w3iXnv/zbw/u33EriLEjhzbfpXisSBD
	2ZAolXHZPN4fwml0z9WAiyP2dkivrdgtUdB5QDXxRnzIKCBZzdl+G9gEbVzMaSJZRZCqh3pk4bggU
	seiC5SLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGOx-0000000FdnT-10Uw;
	Mon, 13 Apr 2026 12:28:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGOu-0000000Fdn9-0rch
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 12:28:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCGOs-0000bD-G7; Mon, 13 Apr 2026 14:28:22 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCGOs-005AZD-0x;
	Mon, 13 Apr 2026 14:28:22 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCGOs-0000000EtOS-10PP;
	Mon, 13 Apr 2026 14:28:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260413101118.1462119-1-a.fatoum@barebox.org>
References: <20260413101118.1462119-1-a.fatoum@barebox.org>
Message-Id: <177608330223.3549475.17827305299725885418.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 14:28:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_052824_247465_4D93937F 
X-CRM114-Status: UNSURE (   6.72  )
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
Subject: Re: [PATCH 1/7] console: return characters written from
 console_putc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 13 Apr 2026 12:09:36 +0200, Ahmad Fatoum wrote:
> console_putc() prints two characters instead of one when it does
> LF -> CRLF conversion.
> 
> As console_putc already has to do the CRLF check, have it return the
> number of printed characters as well to simplify its users.
> 
> 
> [...]

Applied, thanks!

[1/7] console: return characters written from console_putc
      https://git.pengutronix.de/cgit/barebox/commit/?id=1f2f5516f3ec (link may not be stable)
[2/7] stddef: implement scoped_var for use in iterators
      https://git.pengutronix.de/cgit/barebox/commit/?id=59b568e3f41d (link may not be stable)
[3/7] console: have for_each_console declare the iterator internally
      https://git.pengutronix.de/cgit/barebox/commit/?id=2cd7ffac2800 (link may not be stable)
[4/7] console: make console_puts and friends accept a console_device
      https://git.pengutronix.de/cgit/barebox/commit/?id=1c0c83499823 (link may not be stable)
[5/7] console: implement console_putc in terms of console_putbin
      https://git.pengutronix.de/cgit/barebox/commit/?id=7d1261885109 (link may not be stable)
[6/7] console: implement console_printf
      https://git.pengutronix.de/cgit/barebox/commit/?id=ec7d76d5dee5 (link may not be stable)
[7/7] commands: dmesg: give log_print a console_device parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=ae1bbd2ab824 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



