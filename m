Delivery-date: Mon, 13 Apr 2026 09:46:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBzk-00Bdss-0n
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 09:46:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBzj-0007ED-HH
	for lore@pengutronix.de; Mon, 13 Apr 2026 09:46:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=44C0PZA896Iqk1Iy+AaAIzV3gIYiyH13Cwt/HIKgHso=; b=ENnJA7N9xC7c6P54rfiFHV+sfA
	vu4MBvCtssj6oQpFxCGGJ3v9dbwVcwK7LDGLs4scfb55V8HpE3+/O7583aoKe9XfNdKfsjIFd9p4x
	ZLP/0agLk8d+/3j8radk70gRLPdpavWPaJM+7w8NbJc/Cb38pC71PHtr9yfNwXWgBENHSjtGYN7sF
	h31Dl2J7FoJ8RqFsTCvq8Y5LlhhThKjcfAjtg3+pRg471Qo/5zopqDYa3J2TqYRCuYHAATvqcEx+w
	LBqexUeutqNrPLgQgVzVLzY47mRZMojDxJC7BZ5OgSi5eh8TKP+8DO50mStYUG+AD9HJ5kQq6nPKw
	1bgsOtgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBzC-0000000FB5u-13rU;
	Mon, 13 Apr 2026 07:45:34 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBzB-0000000FB4R-0S0E
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 07:45:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=44C0PZA896Iqk1Iy+AaAIzV3gIYiyH13Cwt/HIKgHso=; b=AzIkywftYn0X5sapZlAmtRtENv
	+jnMipfTWUkBGGl20vkc54jbzb7eohA39hzmR1gi4Olgms7sOZJLTO5oWmfnqHNjMr6L72rXmn0P2
	Vp39FPawNhv3PA3QuLG0ye1mMgIzuV1fsMA72O9ZY3IDbBbaRnFQanFR1rKwmeE+UFYD+njD3wl8f
	v6TECW0+xyV9cZ+EFn4R6v7uz1hK0Wtu/ehw3lo4SnY+Aqo+fS/5ZvB+ZFjwjUmE1JnejV1F8iFzq
	f9cH9gNhMlcUuUxVbxVavKlFl+3LLrWjVi/TT3F+suQ8ifLn7vBDsYhB64p5+oSjUlihxNGUEns6f
	JETvdfaQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBz6-0000000DVnp-3XDJ
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 07:45:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCBz4-0006tX-VT; Mon, 13 Apr 2026 09:45:27 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 09:44:49 +0200
Message-ID: <20260413074522.1410710-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413074522.1410710-1-a.fatoum@barebox.org>
References: <20260413074522.1410710-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_084528_930863_E8560C53 
X-CRM114-Status: UNSURE (   7.78  )
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
Subject: [PATCH 6/7] test: conftest: add qemu feature
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This will allow skipping tests that explicitly require qemu features,
like the incoming screendump in the grpahical tests.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 conftest.py | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/conftest.py b/conftest.py
index d02e5aff998f..72d2df792e6d 100644
--- a/conftest.py
+++ b/conftest.py
@@ -168,8 +168,9 @@ def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
     try:
         main = target.env.config.data["targets"]["main"]
         qemu_bin = main["drivers"]["QEMUDriver"]["qemu_bin"]
+        features.append("qemu")
     except KeyError:
-        qemu_bin = None
+        pass
 
     virtio = None
 
@@ -202,7 +203,7 @@ def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
         else:
             pytest.exit("barebox currently supports only a single extra virtio console\n", 1)
 
-    if qemu_bin is not None:
+    if "qemu" in features:
         if not pytestconfig.option.qemu_graphics:
             graphics = '-nographic'
         elif qemu_bin == "qemu-system-x86_64":
-- 
2.47.3



