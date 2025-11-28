Delivery-date: Fri, 28 Nov 2025 11:42:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOvvZ-005kuG-2M
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 11:42:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOvvZ-0008J4-6q
	for lore@pengutronix.de; Fri, 28 Nov 2025 11:42:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=G91iKfs3r3YutR34cr1mW28fm/DWb1F2uZ1N1x+HH08=; b=XYU6hDFOtDUj1iMoHXVvIMSnmV
	Nyt9ZkKl1yDG8WoyT7Cg8Hpnnvehdo8EIxVao8pSVKGhyAcCGcmzWmmvmYCmsfA70lixNUnVUF18T
	Xu3eEU7WArj2LMJd1lSVbSpSvtIndYjfhoOM4gbKOqHlXHTZyCXZZVCkC/6uLYRORLjj+BS8j8QrD
	itZgJdf6nWyiCUO22YZ0IBcwDsyl7w96wAYvSROwBwv1sSmpwd2QvVMqPqNpjo4tyX1/Zn6Pvqolz
	mBKJQ/3RSlEIBxlfpvH+kyOBGTvLNrXe54di7tYis8GhyhIRULFq0h2z1EuzOLlNLwj1ol+XTPvmU
	KoD/7ltw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvvB-00000000JHO-3BBU;
	Fri, 28 Nov 2025 10:41:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvv8-00000000JGM-1uOO
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 10:41:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvv7-0008AN-3S
	for barebox@lists.infradead.org; Fri, 28 Nov 2025 11:41:45 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvv6-002wKq-2w
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:41:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvv6-00000006kEN-3JwL
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:41:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 28 Nov 2025 11:41:26 +0100
Message-ID: <20251128104143.1578832-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_024146_496078_7EC33304 
X-CRM114-Status: UNSURE (   8.61  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] kbuild: drop non-existent targets from CLEAN_FILES
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

A number of these targets are a no longer generated and if support for
them were to be added, it would be PBL-prefixed and handled in images/,
so these left-overs can safely be dropped.

Nothing needs to be removed in .gitignore, as a /barebox* rule is
matching all of the removed files and more.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Makefile | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 8824102537ba..2534fb4b467b 100644
--- a/Makefile
+++ b/Makefile
@@ -1386,11 +1386,9 @@ endif # CONFIG_MODULES
 CLEAN_DIRS  += $(MODVERDIR)
 CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.map \
-		.tmp_kallsyms* barebox.ldr compile_commands.json \
+		.tmp_kallsyms* compile_commands.json \
 		.tmp_barebox.o barebox.o barebox-flash-image \
-		barebox.srec barebox.s5p barebox.ubl \
-		barebox.uimage \
-		barebox.efi barebox.canon-a1100.bin
+		barebox.srec barebox.efi
 
 CLEAN_FILES +=	scripts/bareboxenv-target scripts/kernel-install-target \
 		scripts/bareboxcrc32-target scripts/bareboximd-target \
-- 
2.47.3



