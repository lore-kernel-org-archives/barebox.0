Delivery-date: Mon, 03 Jan 2022 13:00:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M0P-009nmq-CF
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 13:00:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M0O-00045Q-AP
	for lore@pengutronix.de; Mon, 03 Jan 2022 13:00:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ye/0p0KvVbfQkOKTBHb+EgXpEjaNf5ekYIRaO3kcH3g=; b=AUbx2bdDEypxnw
	sP35jKcFB4NCV+0KTxpLIZxqQx4MuS67NeZQ60V6rmYlbAv0ZmkHwXkibyr7r9UPU2934/ccWQZQs
	RhRuy70N1AbsaFh4GWLKJiJY4sH5AX6Q5RjDlNnKdwS6WrJwFobbpwm3ywjQVw71zqRZ9vvMya5md
	JuPOP527GVpAcFylb71glZ66TWAi+AyVHyZkXgk58q4/TrY5OgJle8N3Zd2H033cf4gJvRpBH0QJW
	f0jZrnbmbedaQfuD5ql6CyBFDaUuxDKpIGkoAwuRf2xeFZWgeYGEp3asEVaL6waRjIL/nwjj14clD
	iJ/CJYsLZRjdeOch2AkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4Lz9-008vq0-W0; Mon, 03 Jan 2022 11:58:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4Lyt-008vjI-Qd
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 11:58:29 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1n4Lys-0003be-Ky
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:58:26 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>) id 1n4Lyr-007EoC-SS
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:58:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  3 Jan 2022 12:58:20 +0100
Message-Id: <20220103115824.1725086-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_035827_920151_2A09EF4B 
X-CRM114-Status: UNSURE (   7.63  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] include: misc clean up
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Ahmad Fatoum (4):
  include: <linux/overflow.h>: add missing include
  include: spinlock.h: define dummy for DEFINE_SPINLOCK
  include: <linux/compiler.h>: delete __ADDRESSABLE macro
  x86: remove reference to empty file

 arch/x86/mach-efi/include/mach/barebox.lds.h |  1 -
 include/asm-generic/barebox.lds.h            |  3 +--
 include/linux/compiler.h                     | 10 ----------
 include/linux/overflow.h                     |  1 +
 include/linux/spinlock.h                     |  2 ++
 5 files changed, 4 insertions(+), 13 deletions(-)
 delete mode 100644 arch/x86/mach-efi/include/mach/barebox.lds.h

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

