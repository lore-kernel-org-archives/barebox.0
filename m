Delivery-date: Wed, 22 Sep 2021 11:17:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSyNW-0001Mc-7j
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 11:17:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSyNV-0003jV-7A
	for lore@pengutronix.de; Wed, 22 Sep 2021 11:17:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gz/DLoJLPvEElNrIFvuOQ3a9DumYh9Emf/vdUYqm9g4=; b=TYlQnJU22DkdlV
	o8JBId9MBCDE9zW6je8M+1i6t8LR+ky6oT76e1Iv2mR6F/gATvWcWlpOPMSJUEB+jEXftVawjeGmf
	+CIjhC618NKK8D2AOMYVGye4Yds9it7k3433asgQLWXpRN6SVmBvtxLra6huDhznEwU5nClYefCek
	mCqas8NKqq3U1gCzKfHe7muhX98L7MyV+3hOYhBOq5xEnJoX7flFF5A3LwAAVKhTlfpe6MuEIg4qP
	vi9QAY/y5B/xWnovJZ+9L9k4IoX+X1RI7S43a+lSvtYdmzdXYrybJtlKsAvOrXCj7G9sXu3o9kyvV
	Az1lRJCOSBNOGiv8kWCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSyM9-007YKi-Q5; Wed, 22 Sep 2021 09:15:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSyM4-007YKO-JZ
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 09:15:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSyM3-0003Ts-2a; Wed, 22 Sep 2021 11:15:51 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSyM2-00063j-Qd; Wed, 22 Sep 2021 11:15:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Sep 2021 11:15:49 +0200
Message-Id: <20210922091549.23185-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_021552_685637_819D1DE2 
X-CRM114-Status: GOOD (  12.11  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] Documentation: reboot-mode: add note about /env/bmode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This directory is an optional part of the defaultenv-2 and
is documented there. There should be a sentence about it in
the reboot-mode docs as well, because users can add it to
their environments as well to avoid doing if-else chains
in the init scripts.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - hands where on autopilot.. s/directly/directory/
---
 Documentation/user/defaultenv-2.rst | 2 +-
 Documentation/user/reboot-mode.rst  | 4 +++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/defaultenv-2.rst b/Documentation/user/defaultenv-2.rst
index bf738084b2e4..a01a70fa9310 100644
--- a/Documentation/user/defaultenv-2.rst
+++ b/Documentation/user/defaultenv-2.rst
@@ -149,6 +149,6 @@ there will be a file ``eth0`` with a content like this:
 -----------
 
 This contains the files to be sourced when barebox detects that the OS
-had requested a specific reboot mode (via e.g. ``reboot bootloader``
+had requested a specific :ref:`reboot_mode` (via e.g. ``reboot bootloader``
 under Linux). After the ``/env/init`` scripts were executed, barebox will
 ``source /env/bmode/${global.system.reboot_mode.prev}`` if available.
diff --git a/Documentation/user/reboot-mode.rst b/Documentation/user/reboot-mode.rst
index 8717e3934206..507d6feb0141 100644
--- a/Documentation/user/reboot-mode.rst
+++ b/Documentation/user/reboot-mode.rst
@@ -44,7 +44,9 @@ the device. By convention, this should end with ``.reboot_mode``, e.g.::
 
 Reboot mode providers have priorities. The provider with the highest
 priority has its parameters aliased as ``$global.system.reboot_mode.prev``
-and ``$global.system.reboot_mode.next``.
+and ``$global.system.reboot_mode.next``. After executing the init scripts,
+barebox startup will ``source /env/bmode/${global.system.reboot_mode.prev}``
+if available.
 
 Reset
 =====
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

