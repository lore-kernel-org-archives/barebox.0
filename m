Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmCqJ-000450-8Z
 for barebox@lists.infradead.org; Mon, 07 Dec 2020 09:30:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Dec 2020 10:29:51 +0100
Message-Id: <20201207092952.21438-2-s.hauer@pengutronix.de>
In-Reply-To: <20201207092952.21438-1-s.hauer@pengutronix.de>
References: <20201207092840.GH3977@pengutronix.de>
 <20201207092952.21438-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] kbuild: Add command to generate the crc for the IMD crc
 tag
To: Barebox List <barebox@lists.infradead.org>
Cc: Yunus Bas <y.bas@phytec.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.lib | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 2844d29be6..060dad5087 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -448,6 +448,17 @@ cmd_lz4 = (cat $(filter-out FORCE,$^) | \
 %.lz4: %
 	$(call if_changed,lz4)
 
+ifdef CONFIG_IMD
+quiet_cmd_gen_imd_crc = GENCRC $@
+cmd_gen_imd_crc = scripts/bareboximd -c $@ $<
+else
+quiet_cmd_gen_imd_crc =
+cmd_gen_imd_crc = true
+endif
+
+%.imdcrc: %
+	$(call if_changed,gen_imd_crc)
+
 # comp_copy
 # ---------------------------------------------------------------------------
 # Wrapper which only copies a file, but compatible to the compression
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
