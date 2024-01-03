Delivery-date: Wed, 03 Jan 2024 19:37:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL67C-002OMP-0h
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:37:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL676-0000EY-EX
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:37:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b5VRuxUhHkRvJ1ppuDHeUzFvAhIke2dRfbjAexzmhc0=; b=a+N6a4hjMGPHJYRBR3U9aKH2/c
	u3gmAwyjggcyTWWmWWuYkKbuDjqTHHEw2Cgc5SjDT7kFn7Dvn20593mbNPv4xUeuHVSdwnpksPeXE
	K+3L7NMcU1ga3ps0Db4+CoKrAouceFR8gN6HZ7OAADWeH4bT8G70JGRAYcUdZETXc8TO0e2dRsa8C
	EZOjLDeIcI7OtwzqYTaHXu3pP1ySEdBJTFnB1bp52r2iyNyHOR0xRh/jD/xrDGICQkaALTSBQ0+eD
	92BAN0E/1cjesB8TFmJEBQPzM07+ecw1rMKFmtBwstlb+COqIkw5vhu7P4whU0v0dO24ZjQQP/fAo
	t/KMtIwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL65S-00BmHh-1t;
	Wed, 03 Jan 2024 18:35:30 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61R-00BhWO-23
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=b5VRuxUhHkRvJ1ppuDHeUzFvAhIke2dRfbjAexzmhc0=; b=uI+Bre/f3t+Hr0G2/1RzDuB71G
	n/5+K82SrUHAmXbU6c57PQWDavO4TP+dW7s7fGLddJLBDLG/3pHEgH865wE2kbThPN2AwvddhNNWh
	uhaf3ARJ3UcohhXo6VNs6a9yUX+hITzRb80QLip22goTdwfkt+wX95vqAJduhTkCbNagPfEUYiJWf
	znGB8V9nxifCcPK9xfjqmo7K7B6qKHaifssgtZnYnk2TR9wvJ0FjQyU3wiaiN03fqctzTX/dahxlp
	ri6ed0rsynfIbcoOLDuqC8/5meh59R4l6jIod58oyMju0N5XDcCNDYeOkJif6xkfAkI/3TwlkbGug
	8oXGBBgw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61I-00DIly-Gb
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-0001VU-St; Wed, 03 Jan 2024 19:30:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-000Aug-Fn; Wed, 03 Jan 2024 19:30:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-001j4X-1t;
	Wed, 03 Jan 2024 19:13:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:34 +0100
Message-Id: <20240103181312.409668-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183113_797154_4001610D 
X-CRM114-Status: GOOD (  10.65  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 014/112] efi: payload: image: use assigned barebox loader type on x86
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Starting with Linux v6.2, there's a loader type assigned to barebox:

  commit a27e292b8a54e24f85181d949fac8c51fdec8ff3
  Author:     Ahmad Fatoum <a.fatoum@pengutronix.de>
  AuthorDate: Sun Oct 2 14:57:53 2022 +0200
  Commit:     Borislav Petkov <bp@suse.de>
  CommitDate: Mon Oct 17 11:22:33 2022 +0200

      Documentation/x86/boot: Reserve type_of_loader=13 for barebox

      barebox[1], a bootloader for mostly ARM and MIPS embedded systems, can
      also be built as EFI payload for x86[2] to provide redundant power-fail
      safe, watchdog-supervised boot up.

      Since its v2015.09.0 release, it has been booting Linux on x86 with
      type_of_loader=0xff[3]. Reserve 13, the next free id, so that can be
      used instead in the future.

      [1]: https://www.barebox.org/
      [2]: https://www.barebox.org/doc/latest/boards/efi.html
      [3]: https://elixir.bootlin.com/barebox/v2022.09.0/source/common/efi/payload/image.c#L217

      Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
      Signed-off-by: Borislav Petkov <bp@suse.de>
      Link: https://lore.kernel.org/r/20221002125752.3400831-1-a.fatoum@pengutronix.de

Thus, let's start making use of that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/image.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index b7f4b7560b4b..a8748da1df88 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -261,7 +261,10 @@ static int do_bootm_efi(struct image_data *data)
 	memset(boot_header, 0, 0x4000);
 	memcpy(boot_header, image_header, sizeof(*image_header));
 
-	boot_header->type_of_loader = 0xff;
+	/* Refer to Linux kernel commit a27e292b8a54
+	 * ("Documentation/x86/boot: Reserve type_of_loader=13 for barebox")
+	 */
+	boot_header->type_of_loader = 0x13;
 
 	if (data->initrd_file) {
 		tmp = read_file(data->initrd_file, &size);
-- 
2.39.2



