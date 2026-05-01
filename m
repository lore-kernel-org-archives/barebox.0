Delivery-date: Fri, 01 May 2026 09:07:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhy0-000n3U-1a
	for lore@lore.pengutronix.de;
	Fri, 01 May 2026 09:07:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhxz-00024O-Sg
	for lore@pengutronix.de; Fri, 01 May 2026 09:07:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iTthDD4U5tCwfKXoHvoyO69RSWnYfPw+iTf1xDj/6lY=; b=DOHAJsrpgTbS7Ho3WeW2aN9yhz
	oDcRYOzzRpFCximwMKbqAKgzB7bJ2gTF3jVrbCW5JywJXrB5A4f5b7CltGrgKIZToID9uMKmYn6vc
	zrMAdIaDSuDH/9wpwzamTsJq5yGsxe9C4voAwtN3jt3GUNf0Zdy4phP5hL7f4WRHEr1U0mnJYMp18
	B8oDJlHqYFF7LKsk0THDK7nY+mOMBIyKqDQ7vIjsNKRpFi7i+qfsiVBkGAp40k0sPrT8K8SGgMTzb
	tUQwZW9IwTJvCOIXhXSzogfnJT6PMzots/0GLIjohIPKnbKU5f0fCX1V+P5Zs3gNLQOhG+EAcVzzL
	umvVJMhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxW-00000006RfH-0FkZ;
	Fri, 01 May 2026 07:06:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxT-00000006RdR-1m72
	for barebox@lists.infradead.org;
	Fri, 01 May 2026 07:06:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wIhxR-0001W8-RO
	for barebox@lists.infradead.org; Fri, 01 May 2026 09:06:41 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Fri,  1 May 2026 08:53:54 +0200
Message-ID: <20260501070625.952091-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_000643_463827_E45E906D 
X-CRM114-Status: GOOD (  12.95  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/9] lib: term: fix fbconsole cursor desynchronization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

term_getsize() was added as a common helper to compute the minimum
terminal size across all enabled stdout consoles.

Since then, the EFI loader support added the same functionality again in
open-coded form.

Both suffer from the same underlying issue: They emit some control
characters on all enabled stdout consoles without the regard for the
individual size and capabilities of the terminals they are connected to.

This can lead to the cursor to end up at odd places on some consoles,
but not others as can be seen here on this video of the barebox
framebuffer console on a device without a terminal connected to the
serial port:

https://fosstodon.org/@otte_homan@theblower.au/116229733790452489

The <blue>OTICE</blue> is due to the framebuffer console cursor being
placed at the very end of the previous line. Then N is printed and
the rest at the line after it.

This series fixes term_getsize() to correctly account for differences
between the framebuffer and "regular" consoles and then switches off the
UEFI loader console support to make use of it.

This fixes the display of the OpenBSD bootloader when run under QEMU.

There's still some more improvements to be made to the GOP support, but
they do not preclude actual use: To have the OpenBSD installer
automatically use the console, simple-framebuffer ought to be used
instead of the GOP anyway.

Ahmad Fatoum (9):
  lib: term: avoid printing NUL with new new console_puts API
  lib: term: return error code from term_getsize()
  lib: term: add per-console terminal response parser
  lib: term: factor out single cdev handling from term_getsize
  lib: term: fix term_getsize cursor restore
  console: add get_size callback for direct size reporting
  video: fbconsole: implement get_size
  console: add per-console terminal.size parameter
  efi: reimplement query_console_serial using term_getsize

 common/console.c               |  18 ++++
 drivers/video/fbconsole.c      |  10 +++
 efi/loader/protocols/console.c | 119 +------------------------
 include/console.h              |   3 +
 include/term.h                 |   7 +-
 lib/term.c                     | 158 +++++++++++++++++++++++----------
 6 files changed, 148 insertions(+), 167 deletions(-)

-- 
2.47.3



