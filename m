Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R33hm-0007QU-Bb
	for barebox@lists.infradead.org; Mon, 12 Sep 2011 10:25:35 +0000
Received: by bkat2 with SMTP id t2so2850975bka.36
	for <barebox@lists.infradead.org>; Mon, 12 Sep 2011 03:25:31 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 12 Sep 2011 14:25:23 +0400
Message-Id: <1315823123-11600-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] generate barebox.srec
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .gitignore |    1 +
 Makefile   |    3 +++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/.gitignore b/.gitignore
index 84d9f73..cc1f2e2 100644
--- a/.gitignore
+++ b/.gitignore
@@ -31,6 +31,7 @@ cross_compile
 barebox
 barebox.S
 barebox.bin
+barebox.srec
 barebox.netx
 barebox.map
 System.map
diff --git a/Makefile b/Makefile
index c100d24..5843db5 100644
--- a/Makefile
+++ b/Makefile
@@ -689,6 +689,9 @@ barebox: $(barebox-lds) $(barebox-head) $(barebox-common) $(kallsyms.o) FORCE
 	$(call if_changed_rule,barebox__)
 	$(Q)rm -f .old_version
 
+barebox.srec: barebox
+	$(OBJCOPY) -O srec $< $@
+
 # The actual objects are generated when descending,
 # make sure no implicit rule kicks in
 $(sort $(barebox-head) $(barebox-common) ) $(barebox-lds): $(barebox-dirs) ;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
