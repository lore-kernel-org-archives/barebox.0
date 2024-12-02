Delivery-date: Mon, 02 Dec 2024 13:46:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI5ov-0035Vg-2m
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 13:46:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI5ov-00075h-9N
	for lore@pengutronix.de; Mon, 02 Dec 2024 13:46:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YPjJQNdY8Thza93Cf9RAdR6q82fuL0Rgghy0DMA89R8=; b=SwsZ1anLJzvi16WJYKITqJQaTP
	FQV8AgatPI9YLTd5J6MMLSFNXO5JU4Svq1W9oRpLy7a+lS/2WeHq6z0zvnhXXXhwvbFmMAVwx+fZ0
	PjhkGcpl+lFwBkI1QfWW3yGEK/ndnYzf0o3GR2JG3Er6rUdV42eV8w1xVEA5KSpP1K/nmLkt5vVTc
	7kC8gTqWeoiD+FXVWn4J7kgrmk1dJ1L4Gkbnt+tv2/Rw1yfea/kpeqAMvlpCMg9O0aNfXESSWGrRn
	qjjSxavCPxe+sYfd9jqISJ5vgFUawB07qGapbzkIAgDTf5QDVAgMEBE0AO5E4LhpFpK5dt8L20N2M
	dFKwMGSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI5oY-000000067o2-1fe1;
	Mon, 02 Dec 2024 12:46:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI5mZ-000000067Hd-0Llo
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 12:44:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI5mX-0006Ch-O8; Mon, 02 Dec 2024 13:44:05 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI5mW-001Ibj-2X;
	Mon, 02 Dec 2024 13:44:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI5mX-007cft-1V;
	Mon, 02 Dec 2024 13:44:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Dec 2024 13:44:03 +0100
Message-Id: <20241202124404.1814203-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241202124404.1814203-1-a.fatoum@pengutronix.de>
References: <20241202124404.1814203-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_044407_138946_FC8DBAF6 
X-CRM114-Status: UNSURE (   9.83  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] kbuild: don't prelink if input file didn't change
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the input file hasn't changed, there is no need to re-prelink it.
Thus turn the cmd into a if_changed and ensure it's not empty as
otherwise, make will raise an error.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile      | 4 ++--
 scripts/Makefile.lib | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index 5ce563a426ab..0ef2ea6bf6de 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -68,11 +68,11 @@ PBL_CPPFLAGS	+= -fdata-sections -ffunction-sections
 
 $(obj)/%.pbl: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(obj)/piggy.o $(obj)/sha_sum.o FORCE
 	$(call if_changed,elf__,$(*F))
-	$(call cmd,prelink__)
+	$(call if_changed,prelink__)
 
 $(obj)/%.elf: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(obj)/piggy.o $(obj)/sha_sum.o FORCE
 	$(call if_changed,elf__,$(*F))
-	$(call cmd,prelink__)
+	$(call if_changed,prelink__)
 
 $(obj)/%.pblb: $(obj)/%.pbl FORCE
 	$(call if_changed,objcopy_bin,$(*F))
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index e2d0168550f8..19aa506dc645 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -282,7 +282,7 @@ quiet_cmd_prelink__ = PRELINK $@
 endif
 
 quiet_cmd_prelink__ ?=
-      cmd_prelink__ ?=
+      cmd_prelink__ ?= :
 
 # Linking
 # ---------------------------------------------------------------------------
-- 
2.39.5



