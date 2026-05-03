Delivery-date: Sun, 03 May 2026 10:45:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS3-000U7D-17
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSRy-0004Rd-1p
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7/GsKWI1r/aQC3KVpgm8x0fglexncGQSdNiCdOgXPdI=; b=scI5SUrhahu1jhDWeg8VcoXo0G
	93SzsofOW/am3+lYZzap2diq8jX0aFZDQIkjHC4Dg6jEbKxuHwLJ3s86pGOBmHJsEHRH1FJ9UvvZX
	3TuJ/VQfqp+YgACNiZAlCfgZGzhjFdqCKksmfBPm/1yxao2/DZ9pVrU3Mu7e8ZpQ4/klukFUftPIO
	qbck4YrcNomFS1Fdk+VWlzD962gbliqilM40xUOEwViCKyMvXTibR2cKvONgGMaSZOI7RU8fUGAKN
	Pp1j2ZQJRIC/WkFwMssvfhM8yXmbUbDVy+KUYw8C2lWlg9A2CLiidY70Qp4hpnOfSvqGb1CdMTlXo
	EE8etTcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRI-0000000Aeo2-2QsZ;
	Sun, 03 May 2026 08:44:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRG-0000000Aelu-0D4h
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRE-0003oP-Bq
	for barebox@lists.infradead.org; Sun, 03 May 2026 10:44:32 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Sun,  3 May 2026 10:33:02 +0200
Message-ID: <20260503084430.2765761-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014434_531562_D7C63E63 
X-CRM114-Status: UNSURE (   9.24  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/20] fbconsole: support TUI-relevant escape sequences
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A BIOS-style TUI in barebox could go a long way towards making barebox
more user friendly: It could list different parameters with familiar
controls instead of having to juggle around commands like varinfo,
devinfo and magicvar.

This could especially be the case for barebox running on laptops.
Laptops tend to not have a serial port routed out though, so the TUI we
provide will need to be displayed on the framebuffer.

Instead of adding a graphic toolkit to barebox, let's flesh out the
framebuffer console support, so it can display a TUI that can avoid full
redraws. Bonus benefit: The same UI will be usable over serial as well.

A mockup of how this could look like is available at barebox.org/demo when
running the tui command.

Ahmad Fatoum (20):
  fbconsole: remove incomplete CSI_CNT state
  fbconsole: improve handling of unexpected escape sequences
  fbconsole: fix handling of CSI buffer overflow
  fbconsole: do not reset cursor visibility alongside attributes
  fbconsole: respect hidden cursor everywhere
  fbconsole: call fb_blit_area for every drawchar
  fbconsole: skip fb_flush when processing escape sequences
  fbconsole: factor out helpers for clamped cursor row/col setting
  fbconsole: precompute foreground/background colors
  fbconsole: collect renderable state into struct fbc_screen_state
  fbconsole: implement CSI A/B/C/D cursor movement sequences
  fbconsole: restrict cursor visibility to DEC private mode 25
  fbconsole: add new clear_chars helper
  fbconsole: implement erase entire line CSI
  fbconsole: support ESC[0J and ESC[1J partial screen clear
  fbconsole: implement DEC save/restore cursor
  fbconsole: implement VT100 deferred wrap (last column flag)
  fbconsole: implement alternate screen buffer (ESC[?1049h/l)
  fbconsole: adapt logging depending on activated streams
  netconsole: suppress log message when opening console file

 common/console.c          |   8 +-
 common/serdev.c           |   2 +-
 drivers/video/fbconsole.c | 541 ++++++++++++++++++++++++++------------
 include/console.h         |   4 +-
 net/netconsole.c          |   5 +-
 5 files changed, 376 insertions(+), 184 deletions(-)

-- 
2.47.3



