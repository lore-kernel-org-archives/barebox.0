Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1buzAQ-0003Yb-Mj
 for barebox@lists.infradead.org; Fri, 14 Oct 2016 09:52:43 +0000
Date: Fri, 14 Oct 2016 11:52:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161014095219.6qsyhajp2bffsc64@pengutronix.de>
References: <03214122-b05b-fc45-1e32-ad2832ca36d3@systec-electronic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <03214122-b05b-fc45-1e32-ad2832ca36d3@systec-electronic.com>
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
Subject: Re: Compressed DTB - builtin DTB
To: Daniel =?iso-8859-15?Q?Kr=FCger?= <daniel.krueger@systec-electronic.com>
Cc: barebox@lists.infradead.org

Hi Daniel,

On Thu, Oct 13, 2016 at 12:32:31PM +0200, Daniel Kr=FCger wrote:
> Hello,
> =

> I'm currently porting our board support to device tree. Currently, I don't
> use multi-PBL, but include the device tree via CONFIG_BUILTIN_DTB. This
> works, but the DTB seems to be included twice in the image: once as plain
> DTB and once as compressed DTB. I think this isn't intended this way.
> =

> Extract from System.map:
> 87e82b80 R __dtb_imx35_systec_hmi_start
> 87e82b80 R __dtb_start
> 87e8501c R __dtb_imx35_systec_hmi_end
> 87e85020 R __dtb_z_imx35_systec_hmi_start
> 87e85ad0 R __dtb_z_imx35_systec_hmi_end
> 87e85b00 B __bss_start
> 87e85b00 R __dtb_end

No, indeed that's not intended. Could you test the appended patch? It
should solve this.

> =

> Just using the compressed DTB would be really good. Because it makes the
> image much smaller. However, how should that be done? The extract code mi=
ght
> be simple. But I don't have an idea how to let the linker select the right
> version.

If you are using uncompressed binary you should switch to PBL support to
get a compressed binary. Then, if you are using PBL the dtb is
compressed already as part of the whole binary.

Sascha

------------------------------------8<--------------------------------

From c24a6bd6eabc3f73375080e6fc500aa955795a27 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Oct 2016 11:42:00 +0200
Subject: [PATCH] gen-dtb-s: Put compressed dtb in different section

For builtin dtbs all compiled dtbs matching section .dtb.rodata.*
are collected in a single section. Since every dtb is compiled as
uncompressed and also as compressed binary each dtb ends up twice
in the section. Let's put the compressed variants in .dtbz.rodata.*
sections rather than .dtb.rodata.*.z so they end up in the binary
only once.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/gen-dtb-s | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index 40c6085..4215461 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -58,7 +58,7 @@ fi
 compressed=3D$(stat $dtb.lzo -c "%s")
 uncompressed=3D$(stat $dtb -c "%s")
 =

-echo ".section .dtb.rodata.${name}.z,\"a\""
+echo ".section .dtbz.rodata.${name},\"a\""
 echo ".balign STRUCT_ALIGNMENT"
 echo ".global __dtb_z_${name}_start"
 echo "__dtb_z_${name}_start:"
-- =

2.9.3

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
