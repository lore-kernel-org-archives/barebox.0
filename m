Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzyy0-0005yS-TO
 for barebox@lists.infradead.org; Thu, 14 Jan 2021 09:30:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Jan 2021 10:30:55 +0100
Message-Id: <20210114093055.10154-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH] startup: export PATH variable
To: Barebox List <barebox@lists.infradead.org>

The PATH environment variable is set at the shell prompt, but it is not
exported, so currently scripts can't execute other scripts in PATH
anymore. PATH used to be exported in the init script, but this part was
lost when converting the init script to C. Add it back.

Fixes: 90df2a955e ("defaultenv: Convert init script to C")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/startup.c b/common/startup.c
index 767d178de8..1ac36d950c 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -307,6 +307,7 @@ static int run_init(void)
 	struct stat s;
 
 	setenv("PATH", "/env/bin");
+	export("PATH");
 
 	/* Run legacy /env/bin/init if it exists */
 	env_bin_init_exists = stat(INITFILE, &s) == 0;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
