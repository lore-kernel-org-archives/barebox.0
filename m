Delivery-date: Fri, 01 May 2026 09:07:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhxw-000n1f-2e
	for lore@lore.pengutronix.de;
	Fri, 01 May 2026 09:07:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhxw-00021f-6V
	for lore@pengutronix.de; Fri, 01 May 2026 09:07:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i2YwEI4WvWW4SDPgiAJHi6c6QBCeBbceQrrTs4PxrXE=; b=QqyS9tVHzxaVBaedsP/CSDIIHp
	2XSux9VNsz4dkemrgoGZhWtgad4u370iK+n6Dvi/4fJm2xZ+wmfkxW+JnK1Fs4hExpXhmguJcYJAS
	NXhP+GQBwKxJiencBitpuTpwKFI5ChlBbMHd8f17JPxgF8+0UU6IsZQ2bFG7i1+8o1AShz8OG0G3Q
	JVrySs3LfKmz2PaSPJVlWYBsMGgw3apIOtsSEgsEV1lLlX62hDmGJ6tX2UmnNehOf35PjESF6tQ/R
	wGHgfpxy201+ZyjWRZT2o0PZ/tUwh10O+zl55WyXLdJZKjY++s7KNBRZmwsQ3ovI/yKZA+VUpi2+H
	UXFPpQRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxZ-00000006Rhw-057g;
	Fri, 01 May 2026 07:06:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxV-00000006Ree-3ueS
	for barebox@lists.infradead.org;
	Fri, 01 May 2026 07:06:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wIhxU-0001W8-C9; Fri, 01 May 2026 09:06:44 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  1 May 2026 08:54:00 +0200
Message-ID: <20260501070625.952091-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260501070625.952091-1-a.fatoum@barebox.org>
References: <20260501070625.952091-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_000645_968076_CBD65785 
X-CRM114-Status: GOOD (  10.75  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/9] console: add get_size callback for direct size reporting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add an optional get_size callback to struct console_device that allows
consoles to report their dimensions directly without requiring escape
sequence queries.

Update term_getsize() to try get_size first for consoles that implement
it. These consoles only need CONSOLE_STDOUT to participate in size
detection. Consoles without get_size still require both CONSOLE_STDIN
and CONSOLE_STDOUT for the escape sequence query path.

This enables output-only consoles like fbconsole to report their size
to commands like edit and watch.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/console.h | 1 +
 lib/term.c        | 8 ++++++--
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/include/console.h b/include/console.h
index 1dfaa66d9266..f2b8da1546ef 100644
--- a/include/console.h
+++ b/include/console.h
@@ -43,6 +43,7 @@ struct console_device {
 	int (*set_mode)(struct console_device *cdev, enum console_mode mode);
 	int (*open)(struct console_device *cdev);
 	int (*close)(struct console_device *cdev);
+	int (*get_size)(struct console_device *cdev, int *width, int *height);
 
 	const char *devname;
 	int devid;
diff --git a/lib/term.c b/lib/term.c
index 0a656d79e725..382250c70ddf 100644
--- a/lib/term.c
+++ b/lib/term.c
@@ -79,11 +79,15 @@ int term_cdev_get_size(struct console_device *cdev,
 	const char restore[] = "\e8";
 	int ret, params[2];
 
-	if (!(cdev->f_active & CONSOLE_STDIN))
-		return -ENOENT;
 	if (!(cdev->f_active & CONSOLE_STDOUT))
 		return -ENOENT;
 
+	if (cdev->get_size)
+		return cdev->get_size(cdev, screenwidth, screenheight);
+
+	if (!(cdev->f_active & CONSOLE_STDIN))
+		return -ENOENT;
+
 	term_cdev_drain(cdev);
 
 	console_puts(cdev, esc);
-- 
2.47.3



