Delivery-date: Tue, 23 Mar 2021 08:52:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lObpx-0004rk-Gu
	for lore@lore.pengutronix.de; Tue, 23 Mar 2021 08:52:25 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lObps-0008VC-JX
	for lore@pengutronix.de; Tue, 23 Mar 2021 08:52:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yLrx4EeQz7iyIRu8inaMqMpTMQ38MrIZEhpJQFcGQ4U=; b=nYzm1fpAyxPDPgx2escKEzDDFo
	k4Aa7NY0Z8veA7aZLtGz5U/s97L/8FiUrH6u1U83Nyujp6Tb6AjCg+Lnh0QTg/nbJeMoB3CcaJ0JU
	hgrutMlqVoI8XKvzIvV5KEt2CEjbkAoXLyZxD3/vG28FaQw2368lTGlHUzMeuPaNTBPrdfRb9ZhwW
	LKlR9+blG37nW6xaejNqgSFPuOASWU48ieJxhIGLdhRGyurG+isGLhFm/hXGYa8Vy7Z0UjEFDUSlk
	gC6AKFM599yalkT0d1XeXphjxThw4Oi65LiIlw6RyWkXbtxyEtdcf0h+wnQR/lsYyFM0pscslGud7
	+nNPiilw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOboc-00EDrE-FJ; Tue, 23 Mar 2021 07:51:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOboP-00EDox-3G
 for barebox@lists.infradead.org; Tue, 23 Mar 2021 07:50:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lOboN-0008Fx-9R; Tue, 23 Mar 2021 08:50:47 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lOboN-0007AY-1I; Tue, 23 Mar 2021 08:50:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Mar 2021 08:50:33 +0100
Message-Id: <20210323075035.26816-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210323_075049_670658_5DC02788 
X-CRM114-Status: UNSURE (   9.05  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] common: drop done TODO about 4G partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With recent changes, barebox can handle partitions bigger than 4G.
Remove the todo.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/partitions.c b/common/partitions.c
index 1f0c544c6067..10ce53a6a125 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -7,7 +7,6 @@
  * @file
  * @brief Generic support for partition tables on disk like media
  *
- * @todo Support for disks larger than 4 GiB
  * @todo Reliable size detection for BIOS based disks (on x86 only)
  */
 #include <common.h>
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

