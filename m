Delivery-date: Fri, 01 May 2026 09:07:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhxx-000n21-35
	for lore@lore.pengutronix.de;
	Fri, 01 May 2026 09:07:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhxx-00022u-DE
	for lore@pengutronix.de; Fri, 01 May 2026 09:07:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2kieX5dIomDQysh0oQQkqbCbun23erc5Zt3Cow1xRS0=; b=O3G2HS3/hkCow6wlPwUnkmulC3
	gkprTv/XRQYaEJH/q4bt5/SqmjN3St8DJD35LhocJHYcUD9tetErMZ/A1mabmN77f8e/DAQki7QRl
	H0GawskybR4nAMgnBcUTCVvfKM53vHZL8dxUR9PTdCUHWvGTOhrVUW4Z63ez0LBkCUYN3BsXMP1/6
	F10tjVmardNAtSHFB8jAPARtJcmUYQt+45byq7zc3Ic5zV1n59ysbAq7lBIYHvbPvLA2BDl/5YZqn
	OUZ2feG41izrxdJzikFzNvKTjaZJPVlKax3KQ6V9Pnf+c+1/oQYIjBUJ12rpZedvJVs5VLBw9CNuK
	XvIpPWGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxX-00000006RgQ-1V3F;
	Fri, 01 May 2026 07:06:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxU-00000006RdV-12lF
	for barebox@lists.infradead.org;
	Fri, 01 May 2026 07:06:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wIhxS-0001W8-8k; Fri, 01 May 2026 09:06:42 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  1 May 2026 08:53:55 +0200
Message-ID: <20260501070625.952091-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260501070625.952091-1-a.fatoum@barebox.org>
References: <20260501070625.952091-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_000644_303837_304DC4DA 
X-CRM114-Status: UNSURE (   9.28  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/9] lib: term: avoid printing NUL with new new console_puts API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

sizeof(esc) includes the NUL terminator, which gets sent through
cdev->puts and may render as a glyph on the other side's terminal.

Use the new console_puts to avoid this.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 lib/term.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/term.c b/lib/term.c
index 73a9904c2e1f..0aa4612d0b08 100644
--- a/lib/term.c
+++ b/lib/term.c
@@ -34,7 +34,7 @@ void term_getsize(int *screenwidth, int *screenheight)
 
 		memset(buf, 0, sizeof(buf));
 
-		cdev->puts(cdev, esc, sizeof(esc));
+		console_puts(cdev, esc);
 
 		n = 0;
 
-- 
2.47.3



