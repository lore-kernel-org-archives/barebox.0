Delivery-date: Thu, 27 Mar 2025 14:30:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txnJR-004t6S-03
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 14:30:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txnJQ-0005af-Eh
	for lore@pengutronix.de; Thu, 27 Mar 2025 14:30:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=p4ukVXc2/7Jd8F4xFWJFGdOJyr2I8m3bDI4Ny7dnZAw=; b=p5qIRsN77bvkH5QD+jcP6kvFSX
	TpyXAwrtksMcK7u3yAtJ4AYnT5AAWs7QmEmMDw+0aAVH6RDjSGtJrSsoG8I/Sm1L2/aBSuXSNOEHu
	3LtZFz4YDiL2ANz+Qigc/XHkNNfXN1J8AJtBQFiE5l0LZ/23yHBhMX5kPvZI5LgHg4P99QvVUuMD4
	D9+qpjAUNUHOheSdTYFHornr7wIIaoHdnyHCgd1HVha8ju19R0+ekVWGmV3gU7jplkkN0lJ1NyiCK
	bBkFKTpWkxl/7kMMp6zBNAvkhmu3TLIkj4fjserRjUNhqn6HIJTGxmBrQvOrUxC+kCk/HGycwn0E1
	8XhHg0Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txnIp-0000000B4bv-0sZ4;
	Thu, 27 Mar 2025 13:29:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txnAI-0000000B3Nq-3tOo
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 13:21:00 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1txnAF-0003ST-8F; Thu, 27 Mar 2025 14:20:55 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Thu, 27 Mar 2025 14:20:52 +0100
Message-Id: <20250327132052.3187117-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_062058_963549_B0589A6E 
X-CRM114-Status: UNSURE (   7.42  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] kbuild: undefine linux/unix macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

gcc and clang, when using `-std=gnu11`, predefine `linux` and `unix` as
macros:

  $ gcc -std=gnu11 -dM -E - < /dev/null | grep -v "define _"
  #define unix 1
  #define linux 1

This causes issues in `BAREBOX_MAGICVAR()`, where variable names
containing "linux" or "unix" get incorrectly expanded, leading to invalid
names:

  barebox@Sandbox:/ magicvar
  [...]
  global.1.blkdevparts.*           Linux blkdevparts variables
  global.1.bootargs.*              Linux bootargs variables
  global.1.bootargs.console        console= argument for Linux from the stdout-path property in /chosen node
  global.1.bootargs_append         append to original oftree bootargs
  global.1.mtdparts.*              Linux mtdparts variables
  [...]

Explicitly undefine these non-conforming macros to ensure correct
behavior.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 5c9fce83123..ff7179bf9d5 100644
--- a/Makefile
+++ b/Makefile
@@ -486,7 +486,8 @@ LINUXINCLUDE    := -Iinclude \
 		   -I$(objtree)/arch/$(SRCARCH)/include \
 		   $(USERINCLUDE)
 
-KBUILD_CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
+KBUILD_CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) \
+			  -fno-builtin -ffreestanding -Ulinux -Uunix
 
 KBUILD_CFLAGS   := -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs \
 		   -fno-strict-aliasing -fno-common -fshort-wchar \
-- 
2.39.5



