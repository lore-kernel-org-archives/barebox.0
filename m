Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dZkPM-0006qP-D6
 for barebox@lists.infradead.org; Mon, 24 Jul 2017 20:56:54 +0000
Date: Mon, 24 Jul 2017 22:56:25 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170724205625.GA19867@ravnborg.org>
References: <20170710092942.13037-1-l.stach@pengutronix.de>
 <20170724192300.lfbvphhwpoltbbmd@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170724192300.lfbvphhwpoltbbmd@pengutronix.de>
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
Subject: Re: [PATCH] ARM: imx: remove DCD files from Makefiles
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jul 24, 2017 at 09:23:00PM +0200, Sascha Hauer wrote:
> On Mon, Jul 10, 2017 at 11:29:42AM +0200, Lucas Stach wrote:
> > The current multi-image mechnism builds them as needed, so there is no
> > reason to include them in the Makefiles. Remove them before this spreads
> > even more.
> 
> AFAIK if the extra-y is not present, make treats the generated files as
> intermediate files and deletes them right after usage and then the files
> get regenerated with every new build and with them all dependencies.
Correct.
The effect is that barebox will be rebuild, but at present there
are other issues that also results in this.
I have following patch that for the few defconfigs I have played with
avoids rebuilding barebox.
Will submit properly after a bit more testing.

	Sam

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
diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index 310dcdc94..fb3fa88fb 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -205,11 +205,13 @@ else
 arg-check = $(if $(strip $(cmd_$@)),,1)
 endif
 
-# >'< substitution is for echo to work,
-# >$< substitution to preserve $ when reloading .cmd file
-# note: when using inline perl scripts [perl -e '...$$t=1;...']
-# in $(cmd_xxx) double $$ your perl vars
-make-cmd = $(subst \\,\\\\,$(subst \#,\\\#,$(subst $$,$$$$,$(call escsq,$(cmd_$(1))))))
+# Replace >$< with >$$< to preserve $ when reloading the .cmd file
+# (needed for make)
+# Replace >#< with >\#< to avoid starting a comment in the .cmd file
+# (needed for make)
+# Replace >'< with >'\''< to be able to enclose the whole string in '...'
+# (needed for the shell)
+make-cmd = $(call escsq,$(subst \#,\\\#,$(subst $$,$$$$,$(cmd_$(1)))))
 
 # Find any prerequisites that is newer than target or that does not exist.
 # PHONY targets skipped in both cases.
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index b084bacab..d202a7299 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -292,7 +292,7 @@ quiet_cmd_env = ENV     $@
 cmd_env=$(srctree)/scripts/genenv $(srctree) $(objtree) $@ $<
 
 %.bbenv$(DEFAULT_COMPRESSION_SUFFIX): % FORCE
-	$(call cmd,env)
+	$(call if_changed,env)
 
 # Bzip2
 # ---------------------------------------------------------------------------

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
