Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glcsI-0008En-IE
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 16:56:39 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Mon, 21 Jan 2019 17:56:16 +0100
Message-Id: <20190121165616.19170-1-rhi@pengutronix.de>
In-Reply-To: <20190121162926.26051-1-rhi@pengutronix.de>
References: <20190121162926.26051-1-rhi@pengutronix.de>
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
Subject: [PATCH v2] ubi: prevent null pointer reference
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>

After flashing a bogus UBI image, e.g. when the UBI is bigger than the
available flash size, it can happen that barebox hangs itself with a
stacktrace when the board code or the environment does a ubi_attach() on
boot:

    ERROR: ubi0 error: init_volumes: not enough PEBs, required 7478, available 4024
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
    [...]

After this change, barebox at least boots to a prompt where the faulty
flash can be repaired:

    ERROR: ubi0 error: init_volumes: not enough PEBs, required 7478, available 4024
    ERROR: ubi0 error: ubi_attach_mtd_dev: failed to attach mtd0, error -28
    [...]
    running /env/bin/init...
    barebox@boardname:/

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
v1 -> v2: better check for NULLness in ubi_fastmap_destroy_checkmap()
          instead of the calling code, same effect but more elegant.

---
 drivers/mtd/ubi/fastmap.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 84c2912bf5..32b60ccad8 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -1051,7 +1051,8 @@ int ubi_fastmap_init_checkmap(struct ubi_volume *vol, int leb_count)
 
 void ubi_fastmap_destroy_checkmap(struct ubi_volume *vol)
 {
-	kfree(vol->checkmap);
+	if (vol)
+		kfree(vol->checkmap);
 }
 
 /**
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
