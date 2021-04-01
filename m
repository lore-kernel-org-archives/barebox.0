Delivery-date: Thu, 01 Apr 2021 08:47:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lRr7A-0006US-6A
	for lore@lore.pengutronix.de; Thu, 01 Apr 2021 08:47:36 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lRr79-0003as-Cm
	for lore@pengutronix.de; Thu, 01 Apr 2021 08:47:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FBfRsTG61gkztIs0RzxU9z43FaEt/ja2r/I7LJ9W7io=; b=azh+86dX41fd0bsQR6XikZlbh
	Fyr9iEsdpPF8pBJzHCBCBgkKK9k7I+pIsuQmg9tpIk2bV7B2XQMz77SYAlRTFeDMLBcMkbudsifTC
	8b48Ddio+I9Y0IBqrIJv7wxqlqp47A+9Qxo70TfqMw5zGuK5uleYxMIP/taDi2gGG8C6fYk4Bwvnp
	wc2twYMH7UyXPw1quhZ/PO3tVJwD2WWWEhM2VPbQkDhl8nCme7N9Zn1ZA9mOLtqKFx/wOMepe1TdF
	L2CDhruZ0+cfDrPp9fqLYfICQtULWG0CIvBtX0skShi81H/ox9uxmwhKccAxsYGcMTTXiH0MG7UsF
	oemYzwVRA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRr63-008iVr-Qd; Thu, 01 Apr 2021 06:46:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRr5v-008iTT-RH
 for barebox@lists.infradead.org; Thu, 01 Apr 2021 06:46:22 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lRr5u-0003J6-0o; Thu, 01 Apr 2021 08:46:18 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lRr5t-0007tK-IS; Thu, 01 Apr 2021 08:46:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  1 Apr 2021 08:46:14 +0200
Message-Id: <20210401064616.29913-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210401064616.29913-1-a.fatoum@pengutronix.de>
References: <20210401064616.29913-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_074620_056834_AB417903 
X-CRM114-Status: UNSURE (   9.80  )
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
Subject: [PATCH 3/5] Documentation: reboot-mode: fix headings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

What was supposed to be subheadings of the Disambiguation headings
weren't by mistake. Bump up the other headings to restore the balance.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/reboot-mode.rst | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/Documentation/user/reboot-mode.rst b/Documentation/user/reboot-mode.rst
index 9321d928f41a..8717e3934206 100644
--- a/Documentation/user/reboot-mode.rst
+++ b/Documentation/user/reboot-mode.rst
@@ -1,7 +1,8 @@
 .. _reboot_mode:
 
+###########
 Reboot Mode
------------
+###########
 
 To simplify debugging, many BootROMs sample registers that survive
 a warm reset to customize the boot. These registers can e.g. indicate
@@ -23,7 +24,7 @@ modes in the device tree. If a match is found the associated magic
 is written to the location referenced in the device tree node.
 
 User API
-~~~~~~~~
+========
 
 Devices registered with the reboot mode API gain two parameters:
 
@@ -46,7 +47,7 @@ priority has its parameters aliased as ``$global.system.reboot_mode.prev``
 and ``$global.system.reboot_mode.next``.
 
 Reset
-~~~~~
+=====
 
 Reboot modes can be stored on a syscon wrapping general purpose registers
 that survives warm resets. If the system instead did reset via an external
@@ -57,7 +58,7 @@ reset provider. In barebox, multiple reset providers may co-exist. They
 ``reset`` command allows listing and choosing a specific reboot mode.
 
 Disambiguation
-~~~~~~~~~~~~~~
+==============
 
 Some uses of reboot modes partially overlap with other barebox
 functionality. They all ultimately serve different purposes, however.
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

