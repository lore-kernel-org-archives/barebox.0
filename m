Delivery-date: Wed, 25 Feb 2026 15:16:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvFga-005YHQ-1k
	for lore@lore.pengutronix.de;
	Wed, 25 Feb 2026 15:16:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvFga-0004M3-TC
	for lore@pengutronix.de; Wed, 25 Feb 2026 15:16:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=j2aUPEQhKw8mMUGgmSqYczhWpEL7SzaeX4wSuKtqIi4=; b=j4DdYUtlE6UuGMnrbY3da2uHx3
	qmobfOrvPcnqRV6956xaFYv7WdXo8X6PVPVISn9l41ZxX+mYDO3hve4ydK0yEY9PlNmO57x87n7Hf
	GO7bGoXWxjMxJgKHDPD49FGUVlN3BGSpSVTFJBdD84DPjz+gBOCAcKyaSLqHRQnQs7hDNSO5GMp62
	/hlwc09BeWY4L2QXA6UhUk9U1VGbBj7Orl2EI2E7/jxzr9vvhqVOfNwBJtmS3TAJbc7QT1us+Cca6
	Rdrsnd0i4WBKTqcRgG5+zsC5rkMF65FHpy1BllgYNO32SQyHKNecdBsPvVwOz1Polj2bW4xB+7/nd
	+TX8q0Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFg5-00000004B0e-1I2K;
	Wed, 25 Feb 2026 14:15:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFg1-00000004B00-2ua2
	for barebox@lists.infradead.org;
	Wed, 25 Feb 2026 14:15:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvFfz-0004BJ-T8; Wed, 25 Feb 2026 15:15:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvFfy-002ZqS-1C;
	Wed, 25 Feb 2026 15:15:43 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvFfz-00000001581-2Yye;
	Wed, 25 Feb 2026 15:15:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Feb 2026 15:15:34 +0100
Message-ID: <20260225141536.258005-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_061546_042133_BD983B24 
X-CRM114-Status: UNSURE (   8.27  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] test: py: network: await prompt after ctrl+c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The expect buffer will contain the <INTERRUPT> string output by barebox
followed by a prompt, which run_check would gobble up.

Currently, this doesn't matter, but when we start to additionally match
against the plain prompt, this would lead us not to match the prompt
string with the marker in run_check.
To fix this, _await_prompt to get the <INTERRUPT><prompt> removed from
the expect buffer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/py/test_network.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/test/py/test_network.py b/test/py/test_network.py
index e76aad1cc6f6..e22da0680204 100644
--- a/test/py/test_network.py
+++ b/test/py/test_network.py
@@ -67,6 +67,7 @@ def tftp_conversation(barebox, barebox_interface, guestaddr):
     finally:
         # terminate a timed-out tftp
         barebox.console.sendcontrol("c")
+        barebox._await_prompt()
         tftp_thread.join()
         barebox.run_check("ifdown eth0")
 
-- 
2.47.3



