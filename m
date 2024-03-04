Delivery-date: Mon, 04 Mar 2024 20:10:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDhS-008dip-0S
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:10:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDhP-00058e-E7
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:10:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b5VRuxUhHkRvJ1ppuDHeUzFvAhIke2dRfbjAexzmhc0=; b=xchSBhrj/KJCEMqOsEye94VJla
	eIm5ZjEk3ng3O1mt19FIlKiaBCR6YYUmxQ2mbGN62U7AU27NyF9vyFiIdOoosTkusf/1dE82Ttu6C
	NW/o0aJLnen0CSmiopHmTKGZTqSGMz4eByU2lb+NhtO3M/J44NUfLjT5Y6tCWCC3kudck+7u8019e
	JJWkAijbaLgPlJXfFAbNV+f+YxtGjXZ93HZUMuCjuu5Yg/AJ/sXSJCzGvfzKVL7cTkQg0lOsw0hsz
	WaJYMlDlKZ2+wtDoLizRbpktlPXddl6r1fDDj3hTzVloxAonCESuX9Xr6H4QKGCiehZwqPkavzFD1
	+uFv25BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDgu-0000000AMwi-1ze1;
	Mon, 04 Mar 2024 19:09:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDac-0000000AIbv-19Kz
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=b5VRuxUhHkRvJ1ppuDHeUzFvAhIke2dRfbjAexzmhc0=; b=GUFxYQkjK8kGSUQ/iNlfDjViIB
	l64ZzZw1bTC7HtgJy+54Aw2RDsaOtx7lSHUZiTupJXNg+iWIGet0wv+KVqHnr3vlA0y4gRcw7iKul
	knGB/tzgB+px3AEguiU9Q72WPsuHcLYk78pRWWWF+nOmovk/FJHFX6/le/IsI3L/MaWv7C+20Dnj4
	EaJ1H0GL0YwFo1ub+aDvb/HkLpCuEi2hDTtRnWAAAkSOuOOyqHjU49qh+7kSEzGmiBtCo92AJ5rVN
	84y/ZFq3rnzkrbAZECr49oSrvQKeynAgCjUKqrl6pBgUByjD6p/zZ759XJdvnVKEVldrRtoVcZ7sv
	I761shrw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaU-000000051w3-0BJw
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-00069c-RG; Mon, 04 Mar 2024 20:02:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-004PK5-Bi; Mon, 04 Mar 2024 20:02:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-00Ed9V-2G;
	Mon, 04 Mar 2024 20:00:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:58:59 +0100
Message-Id: <20240304190038.3486881-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190258_219992_77391120 
X-CRM114-Status: GOOD (  14.13  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 014/113] efi: payload: image: use assigned barebox loader type on x86
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



