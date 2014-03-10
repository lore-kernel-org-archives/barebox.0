Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WMyj3-00033f-D7
 for barebox@lists.infradead.org; Mon, 10 Mar 2014 11:50:35 +0000
Received: from s246.sam-solutions.net ([217.21.35.55])
 by s250.sam-solutions.net with esmtps (TLSv1:RC4-MD5:128) (Exim 4.77)
 (envelope-from <D.Lavnikevich@sam-solutions.com>) id 1WMyii-000377-Jq
 for barebox@lists.infradead.org; Mon, 10 Mar 2014 14:50:12 +0300
From: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Date: Mon, 10 Mar 2014 14:39:51 +0300
Message-ID: <1394451593-3090-3-git-send-email-d.lavnikevich@sam-solutions.com>
In-Reply-To: <1394451593-3090-1-git-send-email-d.lavnikevich@sam-solutions.com>
References: <1394451593-3090-1-git-send-email-d.lavnikevich@sam-solutions.com>
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
Subject: [PATCH 3/5] ubi: Fix for creating ubi volumes with 64bit size
To: barebox@lists.infradead.org
Cc: Grigory Milev <g.milev@sam-solutions.com>, Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>

Since MTD is already supports >= 4GB device sizes it is better to
allow ubi valumes also be created of larger sizes.

Signed-off-by: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Signed-off-by: Grigory Milev <g.milev@sam-solutions.com>
---
 commands/ubi.c         | 4 ++--
 drivers/mtd/ubi/cdev.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/ubi.c b/commands/ubi.c
index 57ae790..8a409c2 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -15,12 +15,12 @@ static int do_ubimkvol(int argc, char *argv[])
 {
 	struct ubi_mkvol_req req;
 	int fd, ret;
-	size_t size;
+	uint64_t size;
 
 	if (argc != 4)
 		return COMMAND_ERROR_USAGE;
 
-	size = strtoul_suffix(argv[3], NULL, 0);
+	size = strtoull_suffix(argv[3], NULL, 0);
 	req.name_len = min_t(int, strlen(argv[2]), UBI_VOL_NAME_MAX);
 	strncpy(req.name, argv[2], req.name_len);
 	req.name[req.name_len] = 0;
diff --git a/drivers/mtd/ubi/cdev.c b/drivers/mtd/ubi/cdev.c
index 129f2e2..b97739a 100644
--- a/drivers/mtd/ubi/cdev.c
+++ b/drivers/mtd/ubi/cdev.c
@@ -220,7 +220,7 @@ static int ubi_cdev_ioctl(struct cdev *cdev, int cmd, void *buf)
 		break;
 	case UBI_IOCMKVOL:
 		if (!req->bytes)
-			req->bytes = ubi->avail_pebs * ubi->leb_size;
+			req->bytes = (__s64)ubi->avail_pebs * ubi->leb_size;
 		return ubi_create_volume(ubi, req);
 	};
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
