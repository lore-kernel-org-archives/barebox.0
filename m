Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwQ30-0000Lr-QQ
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 11:28:21 +0000
Date: Wed, 20 Feb 2019 12:28:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190220112815.un3mcqu37mhnnecq@pengutronix.de>
References: <20190218155712.21254-1-tomaz.solc@tablix.org>
 <20190220085741.lbv5zsyv3ur5grl6@pengutronix.de>
 <67fcde46-447e-8c16-3a1e-d7106700904b@klevio.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <67fcde46-447e-8c16-3a1e-d7106700904b@klevio.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] genenv: create a gcc-like .d file for depenencies.
To: =?iso-8859-15?Q?Toma=B8_=A6olc?= <tomaz.solc@klevio.com>
Cc: barebox@lists.infradead.org

On Wed, Feb 20, 2019 at 12:14:43PM +0100, Toma=B8 =A6olc wrote:
> Hi Sascha,
> =

> On 20. 02. 19 09:57, Sascha Hauer wrote:
> > Hi Tomaz,
> > =

> > On Mon, Feb 18, 2019 at 04:57:12PM +0100, Tomaz Solc wrote:
> > > With this commit genenv creates a .d file, similar to those created b=
y gcc to
> > > track C header dependencies. This is then passed to Kbuild with if_ch=
anged_dep
> > > in the Makefile. This makes make re-run genenv if any source environm=
ent files are
> > > changed. However, new environment files are still not detected automa=
tically.
> > =

> > Please try the attached patch. It should solve this issue once and for
> > all. With this the environments are always built, but only if they have
> > actually changed then the corresponding .S files are built.
> =

> Unfortunately with your patch the final image still gets rebuilt with a
> stale environment unless I delete defaultenv/barebox_default_env.
> =

> See transcript bellow, where I'm using your patch. I modify one environme=
nt
> file for Raspberry Pi. After just calling "make", the image doesn't inclu=
de
> the change.

Right, I missed the environment snippet that is generated from
CONFIG_DEFAULT_ENVIRONMENT_PATH which is generated at a different place.
Please try this updated patch.

Sascha

-----------------------------------8<-------------------------------

From c41a478e59a74b66a3de5c597224f02e0b39fa12 Mon Sep 17 00:00:00 2001
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
 defaultenv/Makefile  | 2 +-
 scripts/Makefile.lib | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/defaultenv/Makefile b/defaultenv/Makefile
index f313b04e84..03b329c4dd 100644
--- a/defaultenv/Makefile
+++ b/defaultenv/Makefile
@@ -14,7 +14,7 @@ quiet_cmd_env_default =3D ENV     $@
 cmd_env_default =3D ($(srctree)/scripts/genenv $(srctree) $(objtree) $@ $(=
CONFIG_DEFAULT_ENVIRONMENT_PATH))
 =

 $(obj)/barebox_default_env: FORCE
-	$(call if_changed,env_default)
+	$(call cmd,env_default)
 =

 quiet_cmd_env_h =3D ENVH    $@
 cmd_env_h =3D cat $< | (cd $(obj) && $(objtree)/scripts/bin2c "__aligned(4=
) default_environment") > $@; \
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 7b8643bf57..561247ab34 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -325,7 +325,7 @@ quiet_cmd_env =3D ENV     $@
 cmd_env=3D$(srctree)/scripts/genenv $(srctree) $(objtree) $@ $<
 =

 %.bbenv$(DEFAULT_COMPRESSION_SUFFIX): % FORCE
-	$(call if_changed,env)
+	$(call cmd,env)
 =

 # Bzip2
 # ------------------------------------------------------------------------=
---
-- =

2.20.1


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
