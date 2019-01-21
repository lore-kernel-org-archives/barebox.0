Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glcS9-00034S-KC
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 16:29:45 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Mon, 21 Jan 2019 17:29:26 +0100
Message-Id: <20190121162926.26051-1-rhi@pengutronix.de>
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
Subject: [PATCH] ubi: prevent null pointer reference
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>

After flashing a bogus UBI image, e.g. an image that is larger than the
available flash size, it can happen that barebox hangs itself with a
stacktrace when the board code or the environment does a ubi_attach() on
boot:

    ERROR: ubi0 error: init_volumes: not enough PEBs, required 7478, available 4024
    <NULL>: destroying fastmap 0: 0x14972004
    <NULL>: destroying fastmap 1: 0x14972218
    <NULL>: destroying fastmap 2: 0x1497242c
    <NULL>: destroying fastmap 3: 0x14970004
    <NULL>: destroying fastmap 4: 0x14970218
    <NULL>: destroying fastmap 5: 0x0
    unable to handle NULL pointer dereference at address 0x00000204
    pc : [<1fd1eaf2>]    lr : [<1fd15aad>]
    sp : 1feefd30  ip : 0000000a  fp : 1fd5d1d7
    r10: 00001d34  r9 : 00000000  r8 : 1fd5d540
    r7 : 14983148  r6 : 00000006  r5 : ffffffe4  r4 : 14983004
    r3 : 1fd82bfc  r2 : 021f0000  r1 : 0000000a  r0 : 00000000
    Flags: nzcv  IRQs off  FIQs off  Mode SVC_32
    [<1fd1eaf2>] (ubi_fastmap_destroy_checkmap+0x8/0xa) from [<1fd15aad>] (ubi_read_volume_table+0x4d9/0x71c)
    [<1fd15aad>] (ubi_read_volume_table+0x4d9/0x71c) from [<1fd1cbf7>] (ubi_attach+0x157/0x1f8)
    [<1fd1cbf7>] (ubi_attach+0x157/0x1f8) from [<1fd16ec3>] (ubi_attach_mtd_dev+0x4a3/0x954)
    [<1fd16ec3>] (ubi_attach_mtd_dev+0x4a3/0x954) from [<1fd3dca1>] (bosch_common_ubiattach.constprop.11+0x51/0x7c)
    [<1fd3dca1>] (bosch_common_ubiattach.constprop.11+0x51/0x7c) from [<1fd3e79f>] (bosch_common_postenv_init+0x3cf/0x444)
    [<1fd3e79f>] (bosch_common_postenv_init+0x3cf/0x444) from [<1fd00ba5>] (start_barebox+0x45/0x98)
    [<1fd00ba5>] (start_barebox+0x45/0x98) from [<1fd529df>] (barebox_non_pbl_start+0xbb/0xf4)
    [<1fd529df>] (barebox_non_pbl_start+0xbb/0xf4) from [<1fd00005>] (__bare_init_start+0x1/0xc)

    [<1fd54191>] (unwind_backtrace+0x1/0x64) from [<1fd00e4d>] (panic+0x1d/0x34)
    [<1fd00e4d>] (panic+0x1d/0x34) from [<1fd523fd>] (do_exception+0xd/0x10)
    [<1fd523fd>] (do_exception+0xd/0x10) from [<1fd5245d>] (do_data_abort+0x21/0x2c)
    [<1fd5245d>] (do_data_abort+0x21/0x2c) from [<1fd52074>] (do_abort_6+0x48/0x54)

With this patch, barebox at least boots to a prompt where the faulty
flash can be repaired:

    ERROR: ubi0 error: init_volumes: not enough PEBs, required 7478, available 4024
    <NULL>: destroying fastmap 0: 0x14972004
    <NULL>: destroying fastmap 1: 0x14972218
    <NULL>: destroying fastmap 2: 0x1497242c
    <NULL>: destroying fastmap 3: 0x14970004
    <NULL>: destroying fastmap 4: 0x14970218
    <NULL>: destroying fastmap 5: 0x0
    <NULL>: destroying fastmap 6: 0x0
    <NULL>: destroying fastmap 7: 0x0
    <NULL>: destroying fastmap 8: 0x0
    <NULL>: destroying fastmap 9: 0x0
    [... more 0x0 ...]
    <NULL>: destroying fastmap 125: 0x0
    <NULL>: destroying fastmap 126: 0x0
    <NULL>: destroying fastmap 127: 0x0
    <NULL>: destroying fastmap 128: 0x1497042c
    ERROR: ubi0 error: ubi_attach_mtd_dev: failed to attach mtd0, error -28
    [...]
    running /env/bin/init...
    barebox@boardname:/

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 drivers/mtd/ubi/vtbl.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mtd/ubi/vtbl.c b/drivers/mtd/ubi/vtbl.c
index 6959564a13..68302f4a33 100644
--- a/drivers/mtd/ubi/vtbl.c
+++ b/drivers/mtd/ubi/vtbl.c
@@ -850,6 +850,12 @@ int ubi_read_volume_table(struct ubi_device *ubi, struct ubi_attach_info *ai)
 out_free:
 	vfree(ubi->vtbl);
 	for (i = 0; i < ubi->vtbl_slots + UBI_INT_VOL_COUNT; i++) {
+
+		dev_vdbg(&ubi->dev, "destroying fastmap %d: 0x%x\n", i, ubi->volumes[i]);
+
+		if (!ubi->volumes[i])
+			continue;
+
 		ubi_fastmap_destroy_checkmap(ubi->volumes[i]);
 		kfree(ubi->volumes[i]);
 		ubi->volumes[i] = NULL;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
