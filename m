Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1foANi-0007lJ-7L
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 16:35:21 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Fri, 10 Aug 2018 18:34:48 +0200
Message-Id: <20180810163500.12042-3-r.hieber@pengutronix.de>
In-Reply-To: <20180810163500.12042-1-r.hieber@pengutronix.de>
References: <20180810163500.12042-1-r.hieber@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 02/14] images: MXS: allow generation of unencrypted
 bootstreams
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

mxsimage can now build unencrypted images with -u, so make use of it in
the Makefile. To keep the existing rules simple, name the generated
images *.mxsbsu instead of *.mxsbs.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 images/Makefile.mxs | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/images/Makefile.mxs b/images/Makefile.mxs
index 93d43b3529..aab883202a 100644
--- a/images/Makefile.mxs
+++ b/images/Makefile.mxs
@@ -10,6 +10,14 @@ quiet_cmd_mxs_bootstream = MXS-BOOTSTREAM $@
 $(obj)/%.mxsbs: $(obj)/%.pblx $(obj)/prep_%.pblb FORCE
 	$(call if_changed,mxs_bootstream)
 
+# %.mxsbsu - convert into unencrypted MXS BootStream image
+# ----------------------------------------------------------------
+quiet_cmd_mxs_bootstream_u = MXS-BOOTSTREAM-U $@
+      cmd_mxs_bootstream_u = $(objtree)/scripts/mxsimage -u -c $(CFG_$(@F)) -b $< -o $@ -p $(word 2,$^)
+
+$(obj)/%.mxsbsu: $(obj)/%.pblx $(obj)/prep_%.pblb FORCE
+	$(call if_changed,mxs_bootstream_u)
+
 # %.mxssd - convert into MXS SD card image
 # ----------------------------------------------------------------
 quiet_cmd_mxs_sd = MXS-SD $@
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
