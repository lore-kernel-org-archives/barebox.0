Delivery-date: Thu, 14 Aug 2025 22:28:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeZ0-000cgt-0H
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 22:28:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeYy-0001aV-VO
	for lore@pengutronix.de; Thu, 14 Aug 2025 22:28:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iD/PeW/8ODwVRjqHXujIHmAwYcCVSLJCYZZHp4pT8wo=; b=I2Pa81ociMGltFSqwgYaQSdu0q
	GxGO0kus8Ez5iZldwHST804nD83fxEGRjKNiy2HcJaOf60XdB3bgqsW0B9vEe5IAkpGFwruIOShRK
	+CzpJ/oXYeXq5KSBWNWfTmuTtuPgIqEbZANr+mbpEtXL5GMvZilHAUwuhVvHIfoBRQku8J5k5fJSq
	/iFNMYLZmqQOo5nnBLx8c2ED0bXKAu94ZQjfXHIspBViu+6LbLtlRztXSS5seUP782wAVrknYIYLU
	7vq838r5DasSr+n++7ZmAO+HaaamHyA00rHLdyV7NeLuikli7qf3uunrIDH3rot2e3RkGjRIeg0Fs
	I0VHk+Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeYV-00000000VAa-36be;
	Thu, 14 Aug 2025 20:28:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeYR-00000000V7v-3yxM
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 20:28:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umeYQ-00019L-Nj; Thu, 14 Aug 2025 22:28:06 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 14 Aug 2025 22:28:00 +0200
Message-Id: <20250814202805.354827-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814202805.354827-1-a.fatoum@barebox.org>
References: <20250814202805.354827-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_132807_988598_7C721513 
X-CRM114-Status: UNSURE (   9.81  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/8] netconsole: bump down ip/port not set messages to info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Net consoles may be opened automatically depending on console activation
options and it's annoying for them to yield an error message.

Bump the message down to info instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 net/netconsole.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/netconsole.c b/net/netconsole.c
index c93a6cc5c7be..28fd0e98ec41 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -97,12 +97,12 @@ static int nc_open(struct console_device *cdev)
 					struct nc_priv, cdev);
 
 	if (!priv->port) {
-		pr_err("port not set\n");
+		pr_info("port not set\n");
 		return -EINVAL;
 	}
 
 	if (!priv->ip) {
-		pr_err("ip not set\n");
+		pr_info("ip not set\n");
 		return -EINVAL;
 	}
 
-- 
2.39.5



