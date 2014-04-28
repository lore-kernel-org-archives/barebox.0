Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WejIz-0001rb-Uw
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 11:01:03 +0000
Date: Mon, 28 Apr 2014 13:00:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140428110039.GQ5858@pengutronix.de>
References: <1398679427.7861.41.camel@mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398679427.7861.41.camel@mars>
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
Subject: Re: [BUG] Fail to build: "cp: target
 `defaultenv/barebox_default_env.genenv.tmp' is not a directory"
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

Hi Christoph,

On Mon, Apr 28, 2014 at 12:03:47PM +0200, Christoph Fritz wrote:
> Hi,
> 
>  while building current Barebox, with out-of-tree make parameter O=,
> there is an error which leads to lack of environment in final image. The
> build process itself falsely doesn't get interrupted.
> 
> 
> make -j$(nproc) ARCH=arm CROSS_COMPILE=arm-cortexa8-linux-gnueabihf- O=../o_beagle omap3530_beagle_defconfig
> make -j$(nproc) ARCH=arm CROSS_COMPILE=arm-cortexa8-linux-gnueabihf- O=../o_beagle
> 
>   CC      drivers/of/mem_generic.o
>   ENV     defaultenv/barebox_default_env
>   CC      drivers/of/partition.o
> cp: target `defaultenv/barebox_default_env.genenv.tmp' is not a directory
>   ENV     defaultenv/defaultenv-2-base.bbenv
>   CC      commands/automount.o
> cp: target `defaultenv/defaultenv-2-base.bbenv.genenv.tmp' is not a directory
>   CC      commands/global.o
> 
> 
> in contrast to:
> 
> make -j$(nproc) ARCH=arm CROSS_COMPILE=arm-cortexa8-linux-gnueabihf- omap3530_beagle_defconfig
> make -j$(nproc) ARCH=arm CROSS_COMPILE=arm-cortexa8-linux-gnueabihf-
> 
>   AS      arch/arm/lib/memcpy.o
>   LD      arch/arm/mach-omap/built-in.o
>   ENV     defaultenv/defaultenv-2-base.bbenv
>   PBLLD   arch/arm/mach-omap/built-in-pbl.o
>   CC      drivers/usb/core/usb.o
>   ENVH    defaultenv/barebox_default_env.h
> 
> 
> I haven't done bisecting, but barebox-2013.07 is fine.
> 
> Any ideas?

I can confirm this. Could you try the attached patch?

Sascha

----------------------------8<-----------------------

From 08786dce36d9b6a317d927eba6ac0f41a8b3280e Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Apr 2014 12:46:06 +0200
Subject: [PATCH] genenv: fix tempdir creation when target is a relative path

when $target is a path relative to $objtree the script fails.
This is because we cd to $basedir and then copy to $tempdir which
then is no longer valid. Fix this by converting $tempdir to an
absolute path first.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/genenv | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/scripts/genenv b/scripts/genenv
index d0b0ffd..9f22ade 100755
--- a/scripts/genenv
+++ b/scripts/genenv
@@ -10,7 +10,26 @@ basedir=$1
 target=$3
 shift 3
 
-tempdir="${target}.genenv.tmp"
+abspath() {
+	local fn dn
+	if [ $# -ne 1 ]; then
+		echo "usage: ptxd_abspath <path>"
+		exit 1
+	fi
+	if [ -d "${1}" ]; then
+		fn=""
+		dn="${1}"
+	else
+		fn="/$(basename "${1}")"
+		dn="$(dirname "${1}")"
+	fi
+
+	[ ! -d "${dn}" ] && exit 1
+	echo "$(cd "${dn}" && pwd)${fn}"
+}
+export -f abspath
+
+tempdir=$(abspath "${target}.genenv.tmp")
 tmpfile="$(mktemp)"
 
 mkdir -p "$tempdir"
-- 
1.9.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
