Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2F0T-0002XU-LD
 for barebox@lists.infradead.org; Wed, 20 Jan 2021 15:02:50 +0000
Date: Wed, 20 Jan 2021 16:02:47 +0100
Message-ID: <20210120150247.GB19063@pengutronix.de>
References: <199631954.110480.1611152044705@office.mailbox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <199631954.110480.1611152044705@office.mailbox.org>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: /env/init script order
To: barebox+mailing@cookiesoft.de
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Marcel,

On Wed, Jan 20, 2021 at 03:14:04PM +0100, barebox+mailing@cookiesoft.de wrote:
> Hey folks, 
> 
> according to the doc[0] the scripts in /env/init will be "executed in
> alphabetical order". But certainly, this isn't the case (for me). 
> 
> If I look into the source[1], I see a `readdir` call, which certainly
> guarantees no order at all. But I want a certain order, at least I
> want my script to be executed after the automount script. 
> 
> 1. Why is there a discrepancy? Was there a time where the scripts were
> executed in order?

Yes, indeed. The init scripts once were executed from a shell script
using "for i in /env/init/*; do...". This is guaranteed to be sorted.

When I converted this to C I used plain readdir() and introduced this
bug :(

> 2. How can I achieve, that "my script" get's executed after a certain
> (the autmount) script?

Please try the following patch. This should fix the issues.

Regards,
  Sascha

-----------------------8<---------------------------

From 5f01cf0e38bf60a5380298ba56f697dc40a1f35e Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Jan 2021 15:54:44 +0100
Subject: [PATCH] startup: Execute init scripts in alphabetical order

Documentation states that init scripts are executed in order and this
had been the case before 90df2a955e. This patch replaced the shell loop
around /env/init/* with a plain readdir which is not sorted at all.
Iterate over the files with glob() which guarantees sorted results.

Reported-by: Marcel <barebox+mailing@cookiesoft.de>
Fixes: 90df2a955e ("defaultenv: Convert init script to C")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c | 29 +++++++++++++++++------------
 1 file changed, 17 insertions(+), 12 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 1ac36d950c..080feebf05 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -36,6 +36,7 @@
 #include <environment.h>
 #include <linux/ctype.h>
 #include <watchdog.h>
+#include <glob.h>
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
@@ -298,13 +299,12 @@ postcore_initcall(register_autoboot_vars);
 
 static int run_init(void)
 {
-	DIR *dir;
-	struct dirent *d;
-	const char *initdir = "/env/init";
 	const char *bmode;
 	bool env_bin_init_exists;
 	enum autoboot_state autoboot;
 	struct stat s;
+	glob_t g;
+	int i, ret;
 
 	setenv("PATH", "/env/bin");
 	export("PATH");
@@ -326,23 +326,28 @@ static int run_init(void)
 	}
 
 	/* Run scripts in /env/init/ */
-	dir = opendir(initdir);
-	if (dir) {
-		char *scr;
+	ret = glob("/env/init/*", 0, NULL, &g);
+	if (!ret) {
+		for (i = 0; i < g.gl_pathc; i++) {
+			const char *path = g.gl_pathv[i];
+			char *scr;
+
+			ret = stat(path, &s);
+			if (ret)
+				continue;
 
-		while ((d = readdir(dir))) {
-			if (*d->d_name == '.')
+			if (!S_ISREG(s.st_mode))
 				continue;
 
-			pr_debug("Executing '%s/%s'...\n", initdir, d->d_name);
-			scr = basprintf("source %s/%s", initdir, d->d_name);
+			pr_debug("Executing '%s'...\n", path);
+			scr = basprintf("source %s", path);
 			run_command(scr);
 			free(scr);
 		}
-
-		closedir(dir);
 	}
 
+	globfree(&g);
+
 	/* source matching script in /env/bmode/ */
 	bmode = reboot_mode_get();
 	if (bmode) {
-- 
2.20.1

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
