Delivery-date: Mon, 13 Apr 2026 09:46:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBzi-00Bds9-2F
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 09:46:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBzi-0007DO-0A
	for lore@pengutronix.de; Mon, 13 Apr 2026 09:46:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dnHSB1DD6fkGVd2tQJUep4+4mvYAKUWy+wfBsWD6UXI=; b=N+lDI9TobREmCEmT1IjgzOB6bE
	SBm0C2+34uBNGGTNhN2EBY5JdjuLuMtoROvzyesKrYC7kfGTKaFIOwoNioGCqmcxnq1iu2gYzXazM
	MUw0y0inw2YnFNfegspVHuob9kV6+EjyfZv7bW5eSIt49wbeZdh4vkilvtfracTKvjGu270WyHLz3
	nnArt0WSVtXNg0dMSNvR0prwqvLHqjsbRJtEaqr+zqMB1MhD7lNof1XRo/QH8B8+isJBX1F/NIlfX
	mrkCyz4xPSANBcC5/Um7C4e1VM7VsvEHETIuzjz1WRedgJ8UtGLIuRsWM5nMPO99tF3f3xfaUz+g0
	xIdC5iqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBzA-0000000FB4V-2t8n;
	Mon, 13 Apr 2026 07:45:32 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBz9-0000000FB3m-2wUY
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 07:45:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=dnHSB1DD6fkGVd2tQJUep4+4mvYAKUWy+wfBsWD6UXI=; b=n/9i85yPv2wrlpsoYs2NjP/OUx
	8/ft4UexFTNmAVRY/p5HqC0vBDXNUIeLx8IL5zP7vnv1RezrzZuhaUIC9S6zfTuf37p22mieigNwo
	tKzM2Cp6sLBMZLjlUM1KhFvwTmgls8VvkN65ub2XXzMKNh1i5lTwaVebr0ruTjws/KOnEYrvsruJW
	AtKKZ5tjbT+4JNGfzAgUrUzLelii1z2mwBFt800AxLRGS3iOasvMf3Zt9Ozqd7W4xBiz2uHfutY6U
	QvtTdyEgBicak9ST6/IKfxzwsYQCS4XWtpq0mTVOYXicBQzhVijdEOsaNr/JjuemU6cK3rnuvq2yE
	l/9xwTwA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBz6-0000000DVnm-2sm0
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 07:45:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCBz4-0006tX-Hc; Mon, 13 Apr 2026 09:45:26 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 09:44:48 +0200
Message-ID: <20260413074522.1410710-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413074522.1410710-1-a.fatoum@barebox.org>
References: <20260413074522.1410710-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_084528_796108_FDA13778 
X-CRM114-Status: UNSURE (   7.07  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] test: conftest: set -display none when non-interactive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When running QEMU with --graphic, but in a non graphical session,
running QEMU may fail because it fails to start e.g. the GTK window.

Allow headless tests for these configurations by adding -display none.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 conftest.py | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/conftest.py b/conftest.py
index 6bf92f3afed7..d02e5aff998f 100644
--- a/conftest.py
+++ b/conftest.py
@@ -215,6 +215,10 @@ def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
         else:
             pytest.exit("--graphics unsupported for target\n", 1)
 
+        if graphics is not None and \
+                pytestconfig.option.lg_initial_state != 'qemu_interactive':
+            graphics += ' -display none'
+
         strategy.append_qemu_args(graphics)
 
     for i, blk in enumerate(pytestconfig.option.qemu_block):
-- 
2.47.3



