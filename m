Delivery-date: Mon, 13 Dec 2021 22:11:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbN-005g95-6n
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:11:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbK-0003JC-Jx
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:11:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dZ3n/AndJaFaBHYZJpA+xACljSpurlLmLlrrEhGpV2g=; b=Oc4gTHrvQOG/yQ
	mm/kIzpGsg6eYWdCw7Wj+LI1kfyKgBK75Khnv0jiYTvVfyvesGaJXofubFboNu3rU8Enak6607Vp3
	gLI+qDwY5ENq1QR82jLgbTQi0eAxp3jyP/b2QRGI1xq1aaStt6Dg49iFP+6IT/1nz9L8ZhgogR9Ti
	8SbLwX7r+zXtpnakhMJGdFtL1co7fwM8qWAqDewWRF4JyvBv5R+XQ+HXs5k9/3itAic6FQuYfx6QL
	1D+DihIowG/Kbr4hRLbTXZqr9lbVzpJukNxDqYnDZwx5AMVDviRU1sIV/uPzv2KR1eQx6ZVZ/nplK
	B2V10b4MGL7ZOX0aDefA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwsZV-00BOu2-DI; Mon, 13 Dec 2021 21:09:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZL-00BOoL-Lx
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:13 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZK-0002So-1z; Mon, 13 Dec 2021 22:09:10 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGoX-2o; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:08:40 +0100
Message-Id: <20211213210905.3399551-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_130911_746564_2B8BE172 
X-CRM114-Status: GOOD (  10.59  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/25] EFI improvements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series contains several improvements for barebox running on EFI.
Most patches are around the efi-stdio driver in which handling of ansi
escape sequences is greatly improved. With this series efi-stdio is now
able to parse and handle the escape sequences barebox issues itself
properly.
The EFI SNP network driver suffered from packet loss on some machines
because other protocols were polling for packets as well. This is also
fixed with this series.

Sascha

Sascha Hauer (25):
  efi-devicepath: Make efi_device_path argument const
  efi: move device-path defines and types to header file
  efi: Implement device_path_to_subtype()
  efi: Do not register IPv[46] devices
  console: Fix message colours
  efi-stdio: remove unnecessary check
  efi-stdio: rename to efi_process_escape
  efi-stdio: return bytes actually consumed
  efi-stdio: fix escape sequence end detection
  efi-stdio: improve escape sequence parsing
  efi-stdio: Fix out of bounds error in puts
  efi-stdio: Fix tab printing
  efi-stdio: Implement efi_console_putc() using efi_console_puts()
  efi-stdio: Fix '\b' handling
  efi-stdio: implement input buffering with a kfifo
  efi-stdio: limit set_cursor to screen size boundaries
  efi-stdio: implement getting the cursor position
  efi-stdio: Implement setting cursor visibility
  efi-stdio: Support different text modes
  edit: improve screen size detection
  edit: Improve behaviour on efi-stdio console
  edit: send escape sequence only for smartscroll
  net: efi-snp: Check for carrier before sending
  efi: add efi_device hook to be called before an image is started
  net: efi-snp: Open protocol exclusively

 commands/edit.c            | 107 ++++++++--
 common/console_common.c    |  12 +-
 common/efi-devicepath.c    | 405 ++-----------------------------------
 common/efi/efi-image.c     |   4 +
 drivers/efi/efi-device.c   |  42 +++-
 drivers/net/efi-snp.c      |  59 +++++-
 drivers/serial/efi-stdio.c | 362 +++++++++++++++++++++------------
 include/efi.h              |   1 +
 include/efi/device-path.h  | 388 +++++++++++++++++++++++++++++++++++
 include/efi/efi-device.h   |   5 +
 10 files changed, 840 insertions(+), 545 deletions(-)
 create mode 100644 include/efi/device-path.h

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

