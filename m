Delivery-date: Thu, 07 May 2026 12:40:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKw9i-001vz4-2r
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 12:40:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKw9c-0001tc-Tc
	for lore@pengutronix.de; Thu, 07 May 2026 12:40:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z7nRIMlvm6gZD5//opkpe52IW1kgoe7ndj1ZXyXSsJc=; b=vT4zxx926KO03w/Lxy6I06MGUe
	+12UflFcwF5d70x/0KXobPjS3K0kW2GysSHaUTtViJAiLZEW5gvpBD7BCVH2nzWLwszRxvCdA5tKc
	CA1TtWVElXznAlzuoF9jzqP1SgR3RJ7a2koC+jdbOKdoyzQG+iwDGcUtAgztemUVfd96dB4xNvfxV
	zFTol5ixMj8SFU62BpAuW4kF9b+bGV7WCe5ZMtfhwxrFUAyOHzgZEE1EnAOQ37wN6b7BcXd5f8q+h
	msxpKtjNhtP4BKBqf+od5NjQwUdjK9DVUIt0DBd86lUp/Txk8pS6oR6aemgPyaGnZvF2F7wrRjz3r
	EJcz8FNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7z-00000003Vla-0iVD;
	Thu, 07 May 2026 10:38:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7x-00000003Vjp-29Gl
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 10:38:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=Z7nRIMlvm6gZD5//opkpe52IW1kgoe7ndj1ZXyXSsJc=; b=M/sj7lW/HnGBYPPqzT4QeEAISh
	IQGlEUpgzExDdHuUhRhWBTs4rifHGlsPawZJE4ENAoiXFaHHoAYw35tL+HC0ddyuYA/bQXmxPN7Ng
	SXza0Yj/vnAnepCqI6jpyYNoflJzJJ3KDeC6Lo7k0JwR6V330J3O87TOYc7cUpF10QYXhOJMsLq4x
	ZrhEk2eUCqXd63GckUdM9LV8Qe4IhPitOwtzB+ApzeLhfwc/k3nnxVfD0oVxZnQf+H7MbRyc25IWa
	bIy4LQUA34JQR0Hk6cSKFf+cupeN5vA78AbBkIY9CeUTxD6St7cHyYj/kJ/fL3wlTkcmxJ91WphEj
	5GMb1TYA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7s-00000003EQZ-3pnl
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 10:38:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7k-0000TA-Gr; Thu, 07 May 2026 12:38:32 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7j-000uD5-2D;
	Thu, 07 May 2026 12:38:32 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7k-0000000BjIN-04Pq;
	Thu, 07 May 2026 12:38:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
Message-Id: <177815031201.2795644.17774162929743210106.b4-ty@pengutronix.de>
Date: Thu, 07 May 2026 12:38:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_113842_059594_89328B56 
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/20] fbconsole: support TUI-relevant escape sequences
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 03 May 2026 10:33:02 +0200, Ahmad Fatoum wrote:
> A BIOS-style TUI in barebox could go a long way towards making barebox
> more user friendly: It could list different parameters with familiar
> controls instead of having to juggle around commands like varinfo,
> devinfo and magicvar.
> 
> This could especially be the case for barebox running on laptops.
> Laptops tend to not have a serial port routed out though, so the TUI we
> provide will need to be displayed on the framebuffer.
> 
> [...]

Applied, thanks!

[01/20] fbconsole: remove incomplete CSI_CNT state
        https://git.pengutronix.de/cgit/barebox/commit/?id=bcb124745b8e (link may not be stable)
[02/20] fbconsole: improve handling of unexpected escape sequences
        https://git.pengutronix.de/cgit/barebox/commit/?id=b6a0b7ad796c (link may not be stable)
[03/20] fbconsole: fix handling of CSI buffer overflow
        https://git.pengutronix.de/cgit/barebox/commit/?id=b1411fc06c29 (link may not be stable)
[04/20] fbconsole: do not reset cursor visibility alongside attributes
        https://git.pengutronix.de/cgit/barebox/commit/?id=0baace394402 (link may not be stable)
[05/20] fbconsole: respect hidden cursor everywhere
        https://git.pengutronix.de/cgit/barebox/commit/?id=eb9b3a6df103 (link may not be stable)
[06/20] fbconsole: call fb_blit_area for every drawchar
        https://git.pengutronix.de/cgit/barebox/commit/?id=f777532ed693 (link may not be stable)
[07/20] fbconsole: skip fb_flush when processing escape sequences
        https://git.pengutronix.de/cgit/barebox/commit/?id=10017213d4f7 (link may not be stable)
[08/20] fbconsole: factor out helpers for clamped cursor row/col setting
        https://git.pengutronix.de/cgit/barebox/commit/?id=edab1bfe5135 (link may not be stable)
[09/20] fbconsole: precompute foreground/background colors
        https://git.pengutronix.de/cgit/barebox/commit/?id=0c23c98ef2d3 (link may not be stable)
[10/20] fbconsole: collect renderable state into struct fbc_screen_state
        https://git.pengutronix.de/cgit/barebox/commit/?id=66d67d10e68c (link may not be stable)
[11/20] fbconsole: implement CSI A/B/C/D cursor movement sequences
        https://git.pengutronix.de/cgit/barebox/commit/?id=68e444aeb157 (link may not be stable)
[12/20] fbconsole: restrict cursor visibility to DEC private mode 25
        https://git.pengutronix.de/cgit/barebox/commit/?id=6fb64e7f77e3 (link may not be stable)
[13/20] fbconsole: add new clear_chars helper
        https://git.pengutronix.de/cgit/barebox/commit/?id=d19954ffc166 (link may not be stable)
[14/20] fbconsole: implement erase entire line CSI
        https://git.pengutronix.de/cgit/barebox/commit/?id=ad5234f31da4 (link may not be stable)
[15/20] fbconsole: support ESC[0J and ESC[1J partial screen clear
        https://git.pengutronix.de/cgit/barebox/commit/?id=f8c1647644a1 (link may not be stable)
[16/20] fbconsole: implement DEC save/restore cursor
        https://git.pengutronix.de/cgit/barebox/commit/?id=2d4af741a35f (link may not be stable)
[17/20] fbconsole: implement VT100 deferred wrap (last column flag)
        https://git.pengutronix.de/cgit/barebox/commit/?id=c24266453a78 (link may not be stable)
[18/20] fbconsole: implement alternate screen buffer (ESC[?1049h/l)
        https://git.pengutronix.de/cgit/barebox/commit/?id=b435c4794dd1 (link may not be stable)
[19/20] fbconsole: adapt logging depending on activated streams
        https://git.pengutronix.de/cgit/barebox/commit/?id=e429e2ea0c63 (link may not be stable)
[20/20] netconsole: suppress log message when opening console file
        https://git.pengutronix.de/cgit/barebox/commit/?id=4b87b1a12dd4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



