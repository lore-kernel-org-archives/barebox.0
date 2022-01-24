Delivery-date: Mon, 24 Jan 2022 16:20:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nC18b-00C18T-2m
	for lore@lore.pengutronix.de; Mon, 24 Jan 2022 16:20:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nC18Z-0000rq-2t
	for lore@pengutronix.de; Mon, 24 Jan 2022 16:20:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0kzbEMjrc5OSXVKFpc30OpEcV22K/m9Co75IFeX5iM=; b=ZwHSK2FvWW5MO3
	ibpLPQWVPIvVy+ohEwyQJEiMo2VmpvN5IOHSa9qlJNPRnDJQNFoNad/uIX00N5sZ2RC5Z1nimhOp3
	FKs+e0+Ul8Gj114OaJWeyxgYoVfx/I+zqOFlfMM6LG3/d3q3IGVH3vtdBBvNtuesoa/dN4gyeCTAB
	hswGMjJ6OEo8ed565I+/eSp+m4lw9aePJ4htcmBm05cEAyzO6nWitf7P8/IyDTCfC708fV4Bjf9Ae
	oJADDKtEwf9DjU4AgWVxM/lqVOCgzhddAXpuZuiqBPvdmG3GiL3ilSMYN6jgjGUqEh0ftx0UMbKww
	GGv+tVKIk0v36t+hw0Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nC17C-003o6N-Bj; Mon, 24 Jan 2022 15:18:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nC172-003o3a-DG
 for barebox@lists.infradead.org; Mon, 24 Jan 2022 15:18:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nC16y-0000Zm-Rz; Mon, 24 Jan 2022 16:18:28 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nC16y-00Du7F-AX; Mon, 24 Jan 2022 16:18:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 24 Jan 2022 16:18:27 +0100
Message-Id: <20220124151827.3313412-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220124151827.3313412-1-a.fatoum@pengutronix.de>
References: <20220124151827.3313412-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_071832_529647_7577BBBF 
X-CRM114-Status: GOOD (  10.68  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] Documentation: user: watchdog: note new wd -x option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

wd command documentation is generated automatically and will list the
new -x option. It's still a good idea to reference this in the
watchdog user doc as well. Do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/watchdog.rst | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/user/watchdog.rst b/Documentation/user/watchdog.rst
index ff400317a0bc..0220965598ed 100644
--- a/Documentation/user/watchdog.rst
+++ b/Documentation/user/watchdog.rst
@@ -10,6 +10,15 @@ the bootloader. For these scenarios barebox provides the watchdog framework
 with the following functionality and at least ``CONFIG_WATCHDOG`` should be
 enabled.
 
+Disabling for development
+~~~~~~~~~~~~~~~~~~~~~~~~~
+
+The shorthand command ``wd -x`` will disable all watchdogs.
+If hardware (or driver) doesn't support turning off the watchdog,
+an autpoller will be registered to periodically feed watchdogs.
+This should only be needed for development.
+See :ref:`boot-watchdog-timeout` for how to use the watchdog in the field.
+
 Polling
 ~~~~~~~
 
@@ -98,6 +107,8 @@ device tree or via the ``priority`` device parameter. Normally, watchdogs
 that have a wider effect should be given the higher priority (e.g.
 PMIC watchdog resetting the board vs. SoC's watchdog resetting only itself).
 
+.. _boot-watchdog-timeout:
+
 Boot Watchdog Timeout
 ~~~~~~~~~~~~~~~~~~~~~
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

