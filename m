Delivery-date: Mon, 15 Jun 2026 10:52:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ33T-0064vJ-2s
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 10:52:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ33T-0004w5-Aj
	for lore@pengutronix.de; Mon, 15 Jun 2026 10:52:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/chZDi866EeLvpsmF3swnDJ/dFFp9k17OcVlF5cdg0s=; b=sLkERgqz/8kAhCG2LdDxPbuAy+
	2qwJbJrxjSwppMDc7AUm/6cIRC/FSod9Ff/IDrPjVcntv/9QEKw5mxiGpjUEuaqc4F13N61Je6w5k
	YFWdAqx476VTTU6/dP2tPv7SKzFW/2Jgb43RW4hiwefGhEOFjfA4dW+KQGO5PHUixmgyVoBMrEKJb
	1Y3XCU7n2qOfLFWN4zkfgEYmePzMXWR0Y8HhCxyQzjxZ062W0uiBBphISYAEja6VPsGfU4b9PqxTO
	Fx9+SvNa6B4ufV66CyZl3EqDYEjfnsQ6QOoPg7ynnNpGgSJDu0O+wGJF+jagFYBBWxqJqIS/Ak6XF
	3mjm1naw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ32Y-0000000DuX6-3w76;
	Mon, 15 Jun 2026 08:51:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ32V-0000000DuW7-3r5e
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 08:51:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ32U-0004dR-Ev; Mon, 15 Jun 2026 10:51:26 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ32U-002pqR-0Y;
	Mon, 15 Jun 2026 10:51:26 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ32U-0000000HadW-0Uim;
	Mon, 15 Jun 2026 10:51:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20260605052347.3009484-1-eagle.alexander923@gmail.com>
References: <20260605052347.3009484-1-eagle.alexander923@gmail.com>
Message-Id: <178151348611.4191953.3961852585484073327.b4-ty@pengutronix.de>
Date: Mon, 15 Jun 2026 10:51:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_015127_981984_A0DC15D1 
X-CRM114-Status: GOOD (  12.73  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 05 Jun 2026 08:23:46 +0300, Alexander Shiyan wrote:
> This adds support for the extlinux.conf configuration format, commonly
> used by Syslinux and many Linux distributions. The configuration file
> is typically located at /boot/extlinux/extlinux.conf or
> /extlinux/extlinux.conf and defines boot entries with kernel, initrd,
> device tree, and command line options.
> 
> The implementation integrates with the existing boot entry framework:
> - The extlinux scanner discovers entries on mounted filesystems.
> - Only the DEFAULT label is turned into a boot entry (multiple
>   LABEL sections are ignored after the default is found).
> - Bootm is used to load and start the kernel.
> 
> [...]

Applied, thanks!

[1/2] Add support for extlinux.conf
      https://git.pengutronix.de/cgit/barebox/commit/?id=b912fa9fc3ca (link may not be stable)
[2/2] Documentation: add extlinux.conf support description
      https://git.pengutronix.de/cgit/barebox/commit/?id=3aebbc2b1686 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



