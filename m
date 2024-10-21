Delivery-date: Mon, 21 Oct 2024 16:27:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2tNm-00762m-24
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 16:27:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2tNm-0004uB-31
	for lore@pengutronix.de; Mon, 21 Oct 2024 16:27:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y8FLCRT23/Dllf4AFxCW6uAeSOXW1gqShweWtPIi/Zs=; b=sCtSqfS/m+Ygwj5aq9GymPorw/
	n578E1+QQ2RVouH57iwjMjBlvn56eZ1ttWyYy0VFM0dkqDb3EhF4iB9yKtUG8e4FRazuSLwwVIP+B
	UlZc9pN7dCxjmcj3T+KMOhCzeRYLFgG2EgnTJa98yMjFqYIkZrA8CQFVQpgO8PpLtihQoVPoZy2Ow
	CQryQGSkVAKyhX6y7qPNDShNxIU60SAMm6dbKnNMpAVl6urcMEerf1kdWRhd+hFIreDytFgQzKGxS
	DLHccQhurUizhoj8E1gp7RE9gRvdLnvvmFQyqqN1DbcFyNG7Nrxat5O6S2TwAVrfIO8A3Ph8UFkp5
	UBTXvF9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2tNI-00000007cDU-3PIY;
	Mon, 21 Oct 2024 14:27:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2t3Z-00000007YeO-0HSx
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 14:06:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t2t3W-0002hC-QX; Mon, 21 Oct 2024 16:06:46 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t2t3W-000hyz-23;
	Mon, 21 Oct 2024 16:06:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t2t3W-003MuK-1i;
	Mon, 21 Oct 2024 16:06:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 21 Oct 2024 16:06:44 +0200
Message-Id: <20241021140644.801593-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_070649_126459_0D31328D 
X-CRM114-Status: UNSURE (   7.85  )
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
Subject: [PATCH] include: barebox.h: document enum autoboot_state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Only documentation we have for this is the magic var help string, so
let's have some more words to go along with it in the code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/barebox.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/barebox.h b/include/barebox.h
index 741463bc1cf9..45e95f187462 100644
--- a/include/barebox.h
+++ b/include/barebox.h
@@ -18,6 +18,17 @@ void __noreturn hang (void);
  */
 extern int (*barebox_main)(void);
 
+/**
+ * enum autoboot_state - autoboot action after init
+ * @AUTOBOOT_COUNTDOWN: Count down to automatic boot action
+ * @AUTOBOOT_ABORT: Abort boot and drop to barebox shell
+ * AUTOBOOT_MENU: Show main menu directly
+ * @AUTOBOOT_BOOT: Boot right away without an interruptible countdown
+ * @AUTOBOOT_UNKNOWN: Boot right away without an interruptible countdown
+ *
+ * This enum descibes what action to take after barebox initialization
+ * has completed and it's time to boot.
+ */
 enum autoboot_state {
 	AUTOBOOT_COUNTDOWN,
 	AUTOBOOT_ABORT,
-- 
2.39.5



