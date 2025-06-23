Delivery-date: Mon, 23 Jun 2025 08:40:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqn-00AB0u-0o
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 08:40:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqm-0001Nr-11
	for lore@pengutronix.de; Mon, 23 Jun 2025 08:40:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jfB33979Lv81s1XgZxygT5p0/FQr0zBXP/vWR7h2tc0=; b=B4dOljJU1/03mDI2ET+Sr/uxGW
	x64nznar5d97U+xFnSZ2bJYYsicA5ng2Uh2waz2Ue24dKOTEmt+yMkg9Q7aXucmaqtN2ZQxMJeWo0
	9VYBOpUMiMGCgtubbIZ0QuTQjaXgCZ6IMi6fezK+CVPP09NFMTF7dLX0tVPsBoySDUnp/IndDZ80Y
	g13NDGWduFmTZjTknb6K6suxJ1hLtCAa2mhWxc6ITQsZNXOLZVp3faqDSNIiu0+sr9EJaO6LG2jQ6
	Ayw/m/c1MH1Zg+8nebVOKzsC4pQXvOfMv8Qy9IOaPVBk8ySu1DN8yT7YGwT+6zkz0F8bUPIoSHMka
	+rPsKxJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTaq9-00000001kWg-24sI;
	Mon, 23 Jun 2025 06:39:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTaXl-00000001iLk-3di2
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 06:20:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uTaXi-0001b6-Eg; Mon, 23 Jun 2025 08:20:34 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 23 Jun 2025 08:20:31 +0200
Message-Id: <20250623062032.3527006-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250623062032.3527006-1-a.fatoum@barebox.org>
References: <20250623062032.3527006-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_232037_928628_00BA42EC 
X-CRM114-Status: UNSURE (   8.15  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/4] startup: track system state with regards to initcall/exitcalls
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The operating system reclaims the barebox malloc area fully after it's
booted, so there is no point freeing memory while executing exitcalls.

To allow skipping memory freeing in that situation, maintain this
information in a new barebox_system_state variable.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/startup.c  |  5 +++++
 include/barebox.h | 12 ++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/common/startup.c b/common/startup.c
index 560a00c5699b..8d36ffceb47e 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -51,6 +51,7 @@ extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 
 extern exitcall_t __barebox_exitcalls_start[], __barebox_exitcalls_end[];
 
+enum system_states barebox_system_state;
 
 #if defined CONFIG_FS_RAMFS && defined CONFIG_FS_DEVFS
 static int mount_root(void)
@@ -404,8 +405,10 @@ void __noreturn start_barebox(void)
 					ERR_PTR(result));
 	}
 
+	barebox_system_state = BAREBOX_RUNNING;
 	pr_debug("initcalls done\n");
 
+
 	if (IS_ENABLED(CONFIG_SELFTEST_AUTORUN))
 		selftests_run();
 
@@ -435,6 +438,8 @@ void shutdown_barebox(void)
 {
 	exitcall_t *exitcall;
 
+	barebox_system_state = BAREBOX_EXITING;
+
 	for (exitcall = __barebox_exitcalls_start;
 			exitcall < __barebox_exitcalls_end; exitcall++) {
 		pr_debug("exitcall-> %pS\n", *exitcall);
diff --git a/include/barebox.h b/include/barebox.h
index 02228451c26e..1b291129e982 100644
--- a/include/barebox.h
+++ b/include/barebox.h
@@ -48,4 +48,16 @@ void shutdown_barebox(void);
 
 long get_ram_size(volatile long *base, long size);
 
+enum system_states {
+	BAREBOX_STARTING,
+	BAREBOX_RUNNING,
+	BAREBOX_EXITING,
+};
+
+#if IN_PROPER
+extern enum system_states barebox_system_state;
+#else
+#define barebox_system_state	BAREBOX_STARTING
+#endif
+
 #endif
-- 
2.39.5



