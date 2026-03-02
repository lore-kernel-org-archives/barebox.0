Delivery-date: Mon, 02 Mar 2026 14:49:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3eK-007Ior-25
	for lore@lore.pengutronix.de;
	Mon, 02 Mar 2026 14:49:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3eK-0007KX-VE
	for lore@pengutronix.de; Mon, 02 Mar 2026 14:49:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PY5sIBVmDYQcJ1F+OquqtmV608Lxhu1n/IuVdJ/z7C4=; b=Px5opuEKNg+FXgwwJUjiyFlHaq
	KLAPswUIc8vqiXHsH1ezn+qBj91Su4wNqrD1s59U5i3f1lyvxOga6UqPp9IOAZBSsU3vyywgkbEo/
	9S19dDaRYJvrzZV8B5VMpoyXOhDxkKeKr373JPPtAAOwkcg1c8dDksjsyYLNDtn6JAcbSYEHozfE7
	UNpwZoe681JYqydx7jpgcSBpVdvQAJB9o6Nkd1QevwdzlXk6vz8vh6UyNKhR8+F/S3rbxwrXLt33W
	pOvZ1Rmd/EmaQQu+g7klCsahABDtAjdqbMQztx4LxBgg2lBwbxu991QmNy/fLZxh+CF9VOKA9AFRS
	geMOHm6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3dn-0000000D9jt-25dN;
	Mon, 02 Mar 2026 13:48:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3dj-0000000D9hh-25Jd
	for barebox@lists.infradead.org;
	Mon, 02 Mar 2026 13:48:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vx3dg-00073f-9z; Mon, 02 Mar 2026 14:48:48 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: "Claude Opus 4.6" <noreply@anthropic.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Mar 2026 14:47:33 +0100
Message-ID: <20260302134843.195007-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260302134843.195007-1-a.fatoum@barebox.org>
References: <20260302134843.195007-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_054851_543733_BA06E4A4 
X-CRM114-Status: UNSURE (   9.12  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] test: py: network: preserve saved_log_level across _await_prompt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

After sendcontrol("c") in tftp_conversation, the call to
_await_prompt() re-queries global.loglevel. At this point, loglevel
has already been silenced to 0 by the previous _run() command's
cleanup, so _await_prompt() saves 0 as the log level to use for
future commands.

This causes the barebox_interfaces fixture's ifup -a to run at
loglevel 0 on the next test, suppressing the dev_info "DHCP client
bound to address" message that the fixture parses to discover
interfaces. The test_barebox_network_real_tftp test then fails with
"Network testing is only possible with at least one DHCP interface".

Fix by saving and restoring saved_log_level across the _await_prompt()
call.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/py/test_network.py | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/test/py/test_network.py b/test/py/test_network.py
index c8c5e9ec7606..922e425a2b9c 100644
--- a/test/py/test_network.py
+++ b/test/py/test_network.py
@@ -68,7 +68,12 @@ def tftp_conversation(barebox, barebox_interface, guestaddr):
     finally:
         # terminate a timed-out tftp
         barebox.console.sendcontrol("c")
+        saved_log_level = barebox.saved_log_level
         barebox._await_prompt()
+        # _await_prompt() re-queries global.loglevel, which has been
+        # silenced to 0 by _run(), and saves it. Restore the original
+        # level so subsequent run_check() calls still raise it.
+        barebox.saved_log_level = saved_log_level
         tftp_thread.join()
         barebox.run_check("ifdown eth0")
 
-- 
2.47.3



