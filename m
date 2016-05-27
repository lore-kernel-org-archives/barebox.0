Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6CTj-0005Mj-Vs
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:46:45 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B11A1A00ADB
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 09:46:38 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:44:08 +0200
Message-Id: <1464335095-35180-16-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1464335095-35180-1-git-send-email-t.remmet@phytec.de>
References: <1464335095-35180-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 15/62] UBI: fix missing brace control flow
To: barebox@lists.infradead.org

From: Brian Norris <computersforpeace@gmail.com>

commit 0e707ae79ba3 ("UBI: do propagate positive error codes up") seems
to have produced an unintended change in the control flow here.

Completely untested, but it looks obvious.

Caught by Coverity, which didn't like the indentation. CID 1271184.

Signed-off-by: Brian Norris <computersforpeace@gmail.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/eba.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index b8f5091..1dbf126 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -400,9 +400,10 @@ retry:
 					ubi_warn(ubi, "corrupted VID header at PEB %d, LEB %d:%d",
 						 pnum, vol_id, lnum);
 					err = -EBADMSG;
-				} else
+				} else {
 					err = -EINVAL;
 					ubi_ro_mode(ubi);
+				}
 			}
 			goto out_free;
 		} else if (err == UBI_IO_BITFLIPS)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
