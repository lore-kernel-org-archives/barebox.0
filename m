Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eTu4m-0002Uz-J0
 for barebox@lists.infradead.org; Tue, 26 Dec 2017 18:35:46 +0000
Received: from ravnborg.org (126.158-248-196.customer.lyse.net
 [158.248.196.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 7496D8024D
 for <barebox@lists.infradead.org>; Tue, 26 Dec 2017 19:35:31 +0100 (CET)
Date: Tue, 26 Dec 2017 19:35:30 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20171226183530.GA28706@ravnborg.org>
References: <20171226183236.GA26708@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171226183236.GA26708@ravnborg.org>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] build: fix that defaultenv is always rebuilt
To: Barebox List <barebox@lists.infradead.org>

From fcffd0176b3394cc664d9bf5b31b053253323bfb Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 26 Dec 2017 16:47:16 +0100
Subject: [PATCH 1/4] build: fix that defaultenv is always rebuilt

Using following pattern:

	target: prerequisite FORCE
		$(call cmd,foo)

is almost always wrong. Due to FORCE target will be rebuilt
using cmd_foo no mater the timestamps.

The following pattern:

	target: prerequisite FORCE
        	$(call if_changed,foo)

Will call cmd_foo only if:
- target is not updated
- or command to built target has changed

But to make this work target must be added to the
list af targets built.
This can be done by assigning target to extra-y or targets.

Use the latter pattern for defaultenv to avoid rebuilding
the environmentt for each build.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 defaultenv/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/defaultenv/Makefile b/defaultenv/Makefile
index 33e0eceef..f313b04e8 100644
--- a/defaultenv/Makefile
+++ b/defaultenv/Makefile
@@ -14,7 +14,7 @@ quiet_cmd_env_default = ENV     $@
 cmd_env_default = ($(srctree)/scripts/genenv $(srctree) $(objtree) $@ $(CONFIG_DEFAULT_ENVIRONMENT_PATH))
 
 $(obj)/barebox_default_env: FORCE
-	$(call cmd,env_default)
+	$(call if_changed,env_default)
 
 quiet_cmd_env_h = ENVH    $@
 cmd_env_h = cat $< | (cd $(obj) && $(objtree)/scripts/bin2c "__aligned(4) default_environment") > $@; \
@@ -27,4 +27,4 @@ quiet_cmd_env_zero = ENVZ    $@
 cmd_env_zero = ($(objtree)/scripts/bareboxenv -z $(CONFIG_DEFAULT_ENVIRONMENT_PATH) $@)
 
 $(obj)/barebox_zero_env: FORCE
-	$(call cmd,env_zero)
+	$(call if_changed,env_zero)
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
