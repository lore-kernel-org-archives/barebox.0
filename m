Delivery-date: Mon, 05 Sep 2022 09:37:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV6fu-007EdE-Fc
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 09:37:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV6ft-0007Wm-Pz
	for lore@pengutronix.de; Mon, 05 Sep 2022 09:37:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jJWtTc0uXd4+6uI3c/8yfquWVhH03+MFqAj8GRKb0V8=; b=sPvjX+BKS5msBMDxsRCYLmrW1a
	DGlWCfH6xR52OpMrNbfN4XXYk2urJiwkBGVreINeR1/l0Wvlj1+pGIR005C3V5LuYD0DyDoz9NVTk
	4AWOMBaxh/Nz9Db9HeL9q+egeen1PPAg2JWKNu+AvkOxBwV4v2zYOOkEr4vtATkjzN9tguDBBDxGc
	8oUvECnEvDQ3LYSsaoY3czHzU++iuIirlgpgEq+W0FGon7Dl/SPr+PVZWY3o935Drz/bVZwUv02v5
	kJz7ArBNQYM/kF6YBnlv6L7xPQeaHUwiwKOeLYzh5uZdHoarAe7s2uGRsdJahwW90Mvk7jsB/9cLB
	xy9sJfIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV6dZ-00DPb7-Fg; Mon, 05 Sep 2022 07:35:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV664-00CnM1-4i
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 07:00:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV65z-0001wo-Bu; Mon, 05 Sep 2022 09:00:35 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV65w-0040pQ-AX; Mon, 05 Sep 2022 09:00:34 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV65x-002Fgi-Ij; Mon, 05 Sep 2022 09:00:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 09:00:32 +0200
Message-Id: <20220905070032.536912-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_000040_288319_484EF31F 
X-CRM114-Status: GOOD (  11.13  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] tftp: allocate at least 4096 bytes for FIFO
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On one board, boots from /mnt/tftp currently fail for me with:

ERROR: tftp: tftp: not enough room in kfifo (only 1376 out of 1432 written

This is overly annoying, because it doesn't abort the boot and thus an
incomplete image is started, that eventually crashes.

As this didn't happen with the previous hardcoded value of 4096, restore
working order by ensuring we have at least that many bytes in the kfifo.

Fixes: 480ed057aacb ("tftp: allocate buffers and fifo dynamically")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/tftp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 2bffae2bf36e..e1c1b0e7269f 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -546,7 +546,7 @@ static int tftp_allocate_transfer(struct file_priv *priv)
 
 	/* multiplication is safe; both operands were checked in tftp_parse_oack()
 	   and are small integers */
-	priv->fifo = kfifo_alloc(priv->blocksize * priv->windowsize);
+	priv->fifo = kfifo_alloc(max(priv->blocksize * priv->windowsize, 4096U));
 	if (!priv->fifo)
 		goto err;
 
-- 
2.30.2



