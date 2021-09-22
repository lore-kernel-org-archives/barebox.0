Delivery-date: Wed, 22 Sep 2021 11:06:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSyCt-0000z7-PP
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 11:06:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSyCs-0001hF-Gb
	for lore@pengutronix.de; Wed, 22 Sep 2021 11:06:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RFhXb787Leq9fql1nZsgfoKEvdcoqUJw3039AyyA9UA=; b=hrWNRfmUHvLILv
	wRxC8wL3aP7tx1fL3CZ8KKDc1BJvy0vFksb3aleaG7S0lwvPGT8MynNDMuUfRyG4US3APdc0TsNOx
	w90ZjZBY9I0mlWukD1QwYQP9eocLYK7QwNfYdO7j0iHT0jYq7rhKpyeE/CeU5Q0oWnIvHwixsfoXy
	i5GVdJdmlDWtHBo53ntNIU21B2na0usBBq50WYf8ebaG31vFWduhnTETAKgV1GefAlMPGNcRMzsX/
	Z8VuCDvMdnZfW8YpceA4Iwo+N9TmcC7A5IEHPelZB/x1aMawtiwuxcT5qRX9I4aAMm8Q4xsxOKt6v
	HUamHvbRQCO1bh+VYebQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSyBI-007X5X-En; Wed, 22 Sep 2021 09:04:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSyBE-007X57-1f
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 09:04:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSyBC-0001OO-FH; Wed, 22 Sep 2021 11:04:38 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSyBC-0003YV-6j; Wed, 22 Sep 2021 11:04:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Sep 2021 11:04:36 +0200
Message-Id: <20210922090436.13619-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_020440_126479_D370731D 
X-CRM114-Status: GOOD (  11.45  )
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
Subject: [PATCH] Documentation: reboot-mode: add note about /env/bmode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This directly is optional part of the defaultenv-2 and is documented
there. There should be a sentence about it in the reboot-mode docs as
well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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

