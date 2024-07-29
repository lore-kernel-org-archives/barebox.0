Delivery-date: Mon, 29 Jul 2024 19:23:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYU60-004CWd-0J
	for lore@lore.pengutronix.de;
	Mon, 29 Jul 2024 19:23:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYU5z-0005us-Hj
	for lore@pengutronix.de; Mon, 29 Jul 2024 19:23:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=H3X9KvVvGTQZPSC/SEVSsy3pMP8PHvfWaL60c43E9Mk=; b=w42rgZNUr0c5N7Cy47wep9zPgu
	aCrjxR4XZywFZsoQ0Z4kMMFcDZ2tMf9n9DG4G5JAUcQV4MvW74qwWQWWuOTxh9LNmHTwgdKY9zXT8
	Jg5DPbXI6SIto8p4C81WYnSP2XkcbXdEIr8avEptNDy0XbCQnvOkpwCpab6nUvFMlqGUF8Cm3Z2uJ
	ryGSxWL4iMEU3UQrIxHxozqeNPGRLShHf8uiiSYixflcC4iWLFJCQe+WHzwqPeJN6wITASZbYcheJ
	l8Bz2uZLIjqOACpmWEbnqnTuFe8lGaxFdYtVjCLW83w4ffbFm6xESmz1ARiOA71A6eFdu406NSSSC
	unQ/ding==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYU5I-0000000CC7A-1roH;
	Mon, 29 Jul 2024 17:22:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYU5E-0000000CC6V-33gS
	for barebox@lists.infradead.org;
	Mon, 29 Jul 2024 17:22:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYU5C-0005pg-8I; Mon, 29 Jul 2024 19:22:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYU5B-0035x2-RX; Mon, 29 Jul 2024 19:22:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYU5B-007AML-2S;
	Mon, 29 Jul 2024 19:22:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 29 Jul 2024 19:22:49 +0200
Message-Id: <20240729172249.1708105-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_102252_786046_6A860092 
X-CRM114-Status: UNSURE (   9.45  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] watchdog: imxwd: more info in imx21_watchdog_set_timeout debug message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The function behaves differently depending on whether priv->ext_reset
and priv->suspend_in_lpm is set. To make the debugging prints more
useful add this information into the debug message.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/imxwd.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 2ec9d0d59635..bfc47bb8dd75 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -116,7 +116,8 @@ static int imx21_watchdog_set_timeout(struct imx_wd *priv, unsigned timeout)
 {
 	u16 val;
 
-	dev_dbg(priv->dev, "%s: %d\n", __func__, timeout);
+	dev_dbg(priv->dev, "%s: %d extrst=%u suspend=%u\n",
+		__func__, timeout, priv->ext_reset, priv->suspend_in_lpm);
 
 	if (timeout == 0) /* bit 2 (WDE) cannot be set to 0 again */
 		return -ENOSYS;
-- 
2.39.2



