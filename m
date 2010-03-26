Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Nv92Q-0003FP-Ae
	for barebox@lists.infradead.org; Fri, 26 Mar 2010 12:53:22 +0000
From: Luotao Fu <l.fu@pengutronix.de>
Date: Fri, 26 Mar 2010 13:52:25 +0100
Message-Id: <1269607949-5336-2-git-send-email-l.fu@pengutronix.de>
In-Reply-To: <1269607949-5336-1-git-send-email-l.fu@pengutronix.de>
References: <1269607949-5336-1-git-send-email-l.fu@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/5] fix error return value while loading environment
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org, Luotao Fu <l.fu@pengutronix.de>

Signed-off-by: Luotao Fu <l.fu@pengutronix.de>
---
 common/environment.c |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index 0c7de84..0eb7e6b 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -198,6 +198,7 @@ int envfs_load(char *filename, char *dir)
 	if (crc32(0, (unsigned char *)&super, sizeof(struct envfs_super) - 4)
 		   != ENVFS_32(super.sb_crc)) {
 		printf("wrong crc on env superblock\n");
+		ret = -EIO;
 		goto out;
 	}
 
@@ -207,18 +208,20 @@ int envfs_load(char *filename, char *dir)
 	ret = read(envfd, buf, size);
 	if (ret < size) {
 		perror("read");
+		ret = errno;
 		goto out;
 	}
 
 	if (crc32(0, (unsigned char *)buf, size)
 		     != ENVFS_32(super.crc)) {
 		printf("wrong crc on env\n");
+		ret = -EIO;
 		goto out;
 	}
 
 	while (size) {
 		struct envfs_inode *inode;
-        uint32_t inode_size,inode_namelen;
+		uint32_t inode_size, inode_namelen;
 
 		inode = (struct envfs_inode *)buf;
 
@@ -251,6 +254,7 @@ int envfs_load(char *filename, char *dir)
 				inode_size);
 		if (ret < inode_size) {
 			perror("write");
+			ret = errno;
 			close(fd);
 			goto out;
 		}
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
