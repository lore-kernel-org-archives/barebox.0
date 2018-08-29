Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSv-0005UW-Jj
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:21:04 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C6DAFA00DF4
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:21:01 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:58 +0200
Message-Id: <1535545212-18871-43-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
References: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 42/56] ubi/upd: Always flush after prepared for an update
To: barebox@lists.infradead.org

From: Sebastian Siewior <bigeasy@linutronix.de>

In commit 6afaf8a484cb ("UBI: flush wl before clearing update marker") I
managed to trigger and fix a similar bug. Now here is another version of
which I assumed it wouldn't matter back then but it turns out UBI has a
check for it and will error out like this:

|ubi0 warning: validate_vid_hdr: inconsistent used_ebs
|ubi0 error: validate_vid_hdr: inconsistent VID header at PEB 592

All you need to trigger this is? "ubiupdatevol /dev/ubi0_0 file" + a
powercut in the middle of the operation.
ubi_start_update() sets the update-marker and puts all EBs on the erase
list. After that userland can proceed to write new data while the old EB
aren't erased completely. A powercut at this point is usually not that
much of a tragedy. UBI won't give read access to the static volume
because it has the update marker. It will most likely set the corrupted
flag because it misses some EBs.
So we are all good. Unless the size of the image that has been written
differs from the old image in the magnitude of at least one EB. In that
case UBI will find two different values for `used_ebs' and refuse to
attach the image with the error message mentioned above.

So in order not to get in the situation, the patch will ensure that we
wait until everything is removed before it tries to write any data.
The alternative would be to detect such a case and remove all EBs at the
attached time after we processed the volume-table and see the
update-marker set. The patch looks bigger and I doubt it is worth it
since usually the write() will wait from time to time for a new EB since
usually there not that many spare EB that can be used.

Cc: stable@vger.kernel.org
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/upd.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/ubi/upd.c b/drivers/mtd/ubi/upd.c
index e3deb3e931c0..609c789ae4c3 100644
--- a/drivers/mtd/ubi/upd.c
+++ b/drivers/mtd/ubi/upd.c
@@ -139,11 +139,11 @@ int ubi_start_update(struct ubi_device *ubi, struct ubi_volume *vol,
 			return err;
 	}
 
-	if (bytes == 0) {
-		err = ubi_wl_flush(ubi, UBI_ALL, UBI_ALL);
-		if (err)
-			return err;
+	err = ubi_wl_flush(ubi, UBI_ALL, UBI_ALL);
+	if (err)
+		return err;
 
+	if (bytes == 0) {
 		err = clear_update_marker(ubi, vol, 0);
 		if (err)
 			return err;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
