Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Smrra-0002Db-PB
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 19:37:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 21:36:45 +0200
Message-Id: <1341517020-5581-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
References: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/30] kconfig: fix IS_ENABLED to not require all options to
 be defined
To: barebox@lists.infradead.org

From Linux commit 69349c2dc01c489eccaa4c472542c08e370c6d7e:

    Using IS_ENABLED() within C (vs.  within CPP #if statements) in its
    current form requires us to actually define every possible bool/tristate
    Kconfig option twice (__enabled_* and __enabled_*_MODULE variants).

    This results in a huge autoconf.h file, on the order of 16k lines for a
    x86_64 defconfig.

    Fixing IS_ENABLED to be able to work on the smaller subset of just
    things that we really have defined is step one to fixing this.  Which
    means it has to not choke when fed non-enabled options, such as:

      include/linux/netdevice.h:964:1: warning: "__enabled_CONFIG_FCOE_MODULE" is not defined [-Wundef]

    The original prototype of how to implement a C and preprocessor
    compatible way of doing this came from the Google+ user "comex ." in
    response to Linus' crowdsourcing challenge for a possible improvement on
    his earlier C specific solution:

    	#define config_enabled(x)       (__stringify(x)[0] == '1')

    In this implementation, I've chosen variable names that hopefully make
    how it works more understandable.

    Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
    Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/kconfig.h |   20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/include/linux/kconfig.h b/include/linux/kconfig.h
index 067eda0..cb17ee2 100644
--- a/include/linux/kconfig.h
+++ b/include/linux/kconfig.h
@@ -9,24 +9,38 @@
  */
 
 /*
+ * Getting something that works in C and CPP for an arg that may or may
+ * not be defined is tricky.  Here, if we have "#define CONFIG_BOOGER 1"
+ * we match on the placeholder define, insert the "0," for arg1 and generate
+ * the triplet (0, 1, 0).  Then the last step cherry picks the 2nd arg (a one).
+ * When CONFIG_BOOGER is not defined, we generate a (... 1, 0) pair, and when
+ * the last step cherry picks the 2nd arg, we get a zero.
+ */
+#define __ARG_PLACEHOLDER_1 0,
+#define config_enabled(cfg) _config_enabled(cfg)
+#define _config_enabled(value) __config_enabled(__ARG_PLACEHOLDER_##value)
+#define __config_enabled(arg1_or_junk) ___config_enabled(arg1_or_junk 1, 0)
+#define ___config_enabled(__ignored, val, ...) val
+
+/*
  * IS_ENABLED(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'y' or 'm',
  * 0 otherwise.
  *
  */
 #define IS_ENABLED(option) \
-	(__enabled_ ## option || __enabled_ ## option ## _MODULE)
+	(config_enabled(option) || config_enabled(option##_MODULE))
 
 /*
  * IS_BUILTIN(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'y', 0
  * otherwise. For boolean options, this is equivalent to
  * IS_ENABLED(CONFIG_FOO).
  */
-#define IS_BUILTIN(option) __enabled_ ## option
+#define IS_BUILTIN(option) config_enabled(option)
 
 /*
  * IS_MODULE(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'm', 0
  * otherwise.
  */
-#define IS_MODULE(option) __enabled_ ## option ## _MODULE
+#define IS_MODULE(option) config_enabled(option##_MODULE)
 
 #endif /* __LINUX_KCONFIG_H */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
