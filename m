Delivery-date: Fri, 02 Dec 2022 09:31:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11SS-008JrU-0r
	for lore@lore.pengutronix.de; Fri, 02 Dec 2022 09:31:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11SQ-0000AI-UH
	for lore@pengutronix.de; Fri, 02 Dec 2022 09:31:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3jQfku6eilbjdhu/88m+RDV/iY8ljfXZZNWRfD1d9rk=; b=2H1BrvIAy8nvWYKgHNMy3XSHS7
	c6H5ZwRw7JenaI1mJ/7JSoWRDox6da4AvjTVUDcHR57NKpwqNe2eETDJ1H9cMy9wNr8VYlVxUESJI
	Ht0Hi3LczAm/DJ7R8R7aMXmZoDg1oNL8h7bSfXNoxkAK16XDfomW8a3t4TZhEYR8zoEHQA7sSgG/0
	IVHd6iHnKirm6jAQpBHujckWJJFc2fIy7ARXkAc8z1ZSRamzoNjvJ8tiT3ILhsxiZwgzdUWykfbS5
	qijrKjRTmvwbilhG3gfdAU6Fo3upcQfCOsQG9Om8KrxPc4Ny2jKTiOCrNIMf7aVTq1GM27Il/NBE0
	D2mQEmNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11Qz-00EWn6-VA; Fri, 02 Dec 2022 08:30:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11Qv-00EWkl-9R
	for barebox@lists.infradead.org; Fri, 02 Dec 2022 08:30:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1p11Qt-00089b-Pk; Fri, 02 Dec 2022 09:30:07 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1p11Qr-001lKK-Do; Fri, 02 Dec 2022 09:30:06 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1p11Qp-00202b-1k; Fri, 02 Dec 2022 09:30:03 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  2 Dec 2022 09:29:54 +0100
Message-Id: <20221202082954.3413605-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2162; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=pSdi9iKRFDTq0pccZIm0Q/NHBxXKWGpLKOAGvX7lWxQ=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBjibd/sR22B3gkDdDykEKXHQhXXa7WzL7uFofj+3/5 Dn4ipSWJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCY4m3fwAKCRDB/BR4rcrsCXx6CA CGhJiaFaAs0jqUMZjXAiIYa/IbW7CIHLFG4YlOK+eeBK2yfU58aZULIepZjf0+z/8L+eSYHj1/0t5e Gr1/plk1GDMZfDF8NizEDNlh+vB/hYuce//IWLqAuTiIiWg5wDd4ugd+S+L5/y6lgIvDAxhW8UvzwB qMU6W1139MuoyAwcs0o1RQDpjnwsz0Z5MPgn90L23/FJDXzx9vOWya1KiHIc1sDiYBw9yIb5GmE7Z2 Z40f+qaeJ6cryfKWBd1yMc8Bz6N0RQtiG+Zj125lMTWWvRuJB/HxgLv4XMFCmybG4CIedim6el6ipQ 6d+Ir6m6O6kmOra3nPMSZUWYWmWBnX
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221202_003009_388693_DF06558E 
X-CRM114-Status: UNSURE (   9.37  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] kvx,openrisc,riscv,sandbox/dts: harmonize clean-files definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I noticed while playing around with the sandbox that the mrproper make
target doesn't remove arch/sandbox/dts/sandbox.dtb.z.

Fix all dts clean-files defintion to match arm's defintion which seems
to be the most complete one.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/kvx/dts/Makefile      | 2 +-
 arch/openrisc/dts/Makefile | 2 +-
 arch/riscv/dts/Makefile    | 2 +-
 arch/sandbox/dts/Makefile  | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/kvx/dts/Makefile b/arch/kvx/dts/Makefile
index 3f03192750bc..41613033ce81 100644
--- a/arch/kvx/dts/Makefile
+++ b/arch/kvx/dts/Makefile
@@ -11,4 +11,4 @@ endif
 
 obj-$(CONFIG_BOARD_K200) += k200.dtb.o
 
-clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/arch/openrisc/dts/Makefile b/arch/openrisc/dts/Makefile
index f43a28d6b905..6778abe1b4fd 100644
--- a/arch/openrisc/dts/Makefile
+++ b/arch/openrisc/dts/Makefile
@@ -3,4 +3,4 @@
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 
-clean-files := *.dtb *.dtb.S
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
index 17d7d249e41a..a3c8fbd9d0d7 100644
--- a/arch/riscv/dts/Makefile
+++ b/arch/riscv/dts/Makefile
@@ -10,4 +10,4 @@ pbl-$(CONFIG_BOARD_HIFIVE) += hifive-unmatched-a00.dtb.o \
 pbl-$(CONFIG_BOARD_BEAGLEV) += jh7100-beaglev-starlight.dtb.o
 pbl-$(CONFIG_BOARD_LITEX_LINUX) += litex-linux.dtb.o
 
-clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/arch/sandbox/dts/Makefile b/arch/sandbox/dts/Makefile
index 9af91cb72c03..79625b103eba 100644
--- a/arch/sandbox/dts/Makefile
+++ b/arch/sandbox/dts/Makefile
@@ -7,4 +7,4 @@ obj-$(CONFIG_OFTREE) += \
 # created.
 obj- += dummy.o
 
-clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z

base-commit: cbb5ef3d18ba7dfed9324985ea70b6bd9203622f
-- 
2.38.1



