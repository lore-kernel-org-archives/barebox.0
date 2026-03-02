Delivery-date: Mon, 02 Mar 2026 14:50:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3fd-007IrH-16
	for lore@lore.pengutronix.de;
	Mon, 02 Mar 2026 14:50:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3fd-0007mD-Ms
	for lore@pengutronix.de; Mon, 02 Mar 2026 14:50:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PxJUs+42ZgU0DEm37T0lSWOwYaQkVl+ZSNufVdUOKso=; b=WrJAOURWH6z+G/6BkVPE+ny0NU
	t+YU1Y0+RPbRxHgSTS0nalOqP4v1yFnTU6TnLAuL+zAUEzg0nJmGUXSQGRejwEIBprrNAxoM7k0Z7
	ZjHURJD5d68bifa376+WMLktRyq7aW4A6ANFOyi3GRaoduh2rvvi/QY6Y1MkniWn8b+khfQKvJwad
	ZQvTW9YdrBwQJiE8JLz66tCFKh0/sBMvRig/fzSp0nVXYZ9d/1bkiIXrT+90Dno7AfNGpP+jsfMId
	UVwvh6njzokI4ND3fOlIsvatqdmyD71fdGCVbi7rEkToYQMVEBjHZobl5hT4jSop/1HHfSfSsZfsn
	9YyH0YSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3fI-0000000DA3h-0qXH;
	Mon, 02 Mar 2026 13:50:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3fF-0000000DA3I-2EGG
	for barebox@lists.infradead.org;
	Mon, 02 Mar 2026 13:50:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vx3fD-0007dK-Gh; Mon, 02 Mar 2026 14:50:23 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Mar 2026 14:50:03 +0100
Message-ID: <20260302135021.195856-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_055025_630815_B876E8C0 
X-CRM114-Status: UNSURE (   9.46  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] Makefile: pass KBUILD_OUTPUT to pytest in check target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The check target runs pytest from the source directory, but doesn't
propagate the build output directory. conftest.py falls back to
using build/ if it exists, which may contain a completely different
configuration.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 28f450ee7cd7..e62965d4c1c8 100644
--- a/Makefile
+++ b/Makefile
@@ -1083,7 +1083,7 @@ endif
 	fi
 	@echo
 	@# This is intentionally not @suppressed, to make it easier to reproduce
-	(cd $(srctree); $(PYTEST))
+	(cd $(srctree); KBUILD_OUTPUT=$(abs_objtree) $(PYTEST))
 
 PHONY += check
 
-- 
2.47.3



