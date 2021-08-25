Delivery-date: Wed, 25 Aug 2021 11:30:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIpEZ-0003fY-PP
	for lore@lore.pengutronix.de; Wed, 25 Aug 2021 11:30:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIpEV-0003Rs-Vq
	for lore@pengutronix.de; Wed, 25 Aug 2021 11:30:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FWBATx00gUACg2W0nS0T+MEQ5hCqgsF128IY2RL2UEA=; b=Dt2Y7hqXwQ29F4
	qLGSP5hrofTqSJw0P/hQWQlJFG27+NM9uIU9sKM4I7hE32qxP8dXCyIErQ69y+zAm+NrgZq8UBTxo
	6DG9yAnFx+0I+qiu1KVurvcSzMmENCGmx51RJ+xC5jACv8j/itdJs7dbxl+8cFXCDTCtyFNQ1FpYu
	sdv5y6yQKl1lr+sp2EGyyor09QgzopSnmB1ca0vMAZg07UoO+TbK5PltwyTJg9xH0IYUAMXm0oDXy
	+xifvIZChma7EcTp3WzVgSZHX8+L+I4nmLPupCgjRiyMBn30AlBgKu0QfiDv/4IjbImb8DjdiJEuX
	001hsW/zwotOZaB4Y5jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIpBe-0068yR-NT; Wed, 25 Aug 2021 09:27:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIpBZ-0068xm-QL
 for barebox@lists.infradead.org; Wed, 25 Aug 2021 09:27:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mIpBW-0003Cm-TB; Wed, 25 Aug 2021 11:27:02 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mIpBW-0006kG-Ha; Wed, 25 Aug 2021 11:27:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Aug 2021 11:27:01 +0200
Message-Id: <20210825092701.30436-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_022705_893092_8C3C6940 
X-CRM114-Status: GOOD (  11.35  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: framebuffer: remove note about lack of
 backlight support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox supports PWM backlight. Remove the notice about lack of support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/framebuffer.rst | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/Documentation/user/framebuffer.rst b/Documentation/user/framebuffer.rst
index 8b95ad6b8700..d17df822f299 100644
--- a/Documentation/user/framebuffer.rst
+++ b/Documentation/user/framebuffer.rst
@@ -4,9 +4,7 @@ Framebuffer support
 Framebuffer splash screen
 -------------------------
 
-barebox supports BMP and PNG graphics using the :ref:`command_splash` command. barebox
-currently has no support for backlights, so unless there is a board specific enable
-hook for enabling a display it must be done manually with a script. Since barebox
+barebox supports BMP and PNG graphics using the :ref:`command_splash` command. Since barebox
 has nothing useful to show on the framebuffer it doesn't enable it during startup.
 A framebuffer can be enabled with the ``enable`` parameter of the framebuffer device:
 
@@ -39,7 +37,7 @@ A typical script to enable the framebuffer could look like this:
   # wait for signals to become stable
   msleep 100
 
-  # finally enable backlight
+  # finally enable backlight manually if no driver exists
   gpio_direction_output 42 1
 
 Framebuffer console
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

