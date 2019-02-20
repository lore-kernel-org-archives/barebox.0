Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwNhI-00007K-Iw
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 08:57:46 +0000
Date: Wed, 20 Feb 2019 09:57:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190220085741.lbv5zsyv3ur5grl6@pengutronix.de>
References: <20190218155712.21254-1-tomaz.solc@tablix.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190218155712.21254-1-tomaz.solc@tablix.org>
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
Subject: Re: [PATCH] genenv: create a gcc-like .d file for depenencies.
To: Tomaz Solc <tomaz.solc@tablix.org>
Cc: barebox@lists.infradead.org

Hi Tomaz,

On Mon, Feb 18, 2019 at 04:57:12PM +0100, Tomaz Solc wrote:
> Commit 658af1ca mentions that environment build dependencies are not tracked
> and the complete environment is rebuilt on every build.
> 
> However commit 105201e0 added if_changed to the make rule, so this is currently
> not the case. Environment is only rebuilt if barebox_default_env is missing or
> if CONFIG_DEFAULT_ENVIRONMENT_PATH has changed. genenv is not re-run if any
> individual source files are modified. So if environment source files are
> edited, Barebox is rebuilt with a stale barebox_default_env unless it is
> manually deleted first.
> 
> With this commit genenv creates a .d file, similar to those created by gcc to
> track C header dependencies. This is then passed to Kbuild with if_changed_dep
> in the Makefile. This makes make re-run genenv if any source environment files are
> changed. However, new environment files are still not detected automatically.

Please try the attached patch. It should solve this issue once and for
all. With this the environments are always built, but only if they have
actually changed then the corresponding .S files are built.

Sascha

------------------------------8<--------------------------------

From 6c1275c02d9635ccdf7c263cbb3f853a20c670b3 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Feb 2019 09:45:32 +0100
Subject: [PATCH] defaultenv: Fix dependencies

The defaultenv should be rebuilt once a file in it has changed.
the genenv script always generates the environment file to a temporary
file. Only if it has changed to the last target file the temporary file
is moved over the target file. This means we always have to call genenv,
thus replace "if_changed" with "cmd".
With this dependencies are correctly tracked. New or changed files
result in new image builds whereas unchanged environments do not
unnecessarily result in new images.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.lib | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 7b8643bf57..561247ab34 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -325,7 +325,7 @@ quiet_cmd_env = ENV     $@
 cmd_env=$(srctree)/scripts/genenv $(srctree) $(objtree) $@ $<
 
 %.bbenv$(DEFAULT_COMPRESSION_SUFFIX): % FORCE
-	$(call if_changed,env)
+	$(call cmd,env)
 
 # Bzip2
 # ---------------------------------------------------------------------------
-- 
2.20.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
