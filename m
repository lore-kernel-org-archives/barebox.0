Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmMfX-00038V-E5
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 13:00:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Nov 2014 13:59:28 +0100
Message-Id: <1415278778-20826-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
References: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/11] environment: drop unnecessary casts
To: barebox@lists.infradead.org

No Need to cast void pointers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/environment.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index e55c7b7..db3fad2 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -106,14 +106,14 @@ static int file_save_action(const char *filename, struct stat *statbuf,
 	int fd;
 	int namelen = strlen(filename) + 1 - strlen(data->base);
 
-	inode = (struct envfs_inode*)data->writep;
+	inode = data->writep;
 	inode->magic = ENVFS_32(ENVFS_INODE_MAGIC);
 	inode->headerlen = ENVFS_32(PAD4(namelen + sizeof(struct envfs_inode_end)));
 	data->writep += sizeof(struct envfs_inode);
 
 	strcpy(data->writep, filename + strlen(data->base));
 	data->writep += PAD4(namelen);
-	inode_end = (struct envfs_inode_end*)data->writep;
+	inode_end = data->writep;
 	data->writep += sizeof(struct envfs_inode_end);
 	inode_end->magic = ENVFS_32(ENVFS_INODE_END_MAGIC);
 	inode_end->mode = ENVFS_32(S_IRWXU | S_IRWXG | S_IRWXO);
@@ -196,7 +196,7 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 	buf = xzalloc(size + sizeof(struct envfs_super));
 	data.writep = buf + sizeof(struct envfs_super);
 
-	super = (struct envfs_super *)buf;
+	super = buf;
 	super->magic = ENVFS_32(ENVFS_MAGIC);
 	super->major = ENVFS_MAJOR;
 	super->minor = ENVFS_MINOR;
@@ -320,7 +320,7 @@ static int envfs_load_data(struct envfs_super *super, void *buf, size_t size,
 		struct envfs_inode_end *inode_end;
 		uint32_t inode_size, inode_headerlen, namelen;
 
-		inode = (struct envfs_inode *)buf;
+		inode = buf;
 		buf += sizeof(struct envfs_inode);
 
 		if (ENVFS_32(inode->magic) != ENVFS_INODE_MAGIC) {
@@ -334,7 +334,7 @@ static int envfs_load_data(struct envfs_super *super, void *buf, size_t size,
 		if (super->major < 1)
 			inode_end = &inode_end_dummy;
 		else
-			inode_end = (struct envfs_inode_end *)(buf + PAD4(namelen));
+			inode_end = buf + PAD4(namelen);
 
 		debug("loading %s size %d namelen %d headerlen %d\n", inode->data,
 			inode_size, namelen, inode_headerlen);
@@ -355,7 +355,7 @@ static int envfs_load_data(struct envfs_super *super, void *buf, size_t size,
 
 		if (S_ISLNK(ENVFS_32(inode_end->mode))) {
 			debug("symlink: %s -> %s\n", str, (char*)buf);
-			if (symlink((char*)buf, str) < 0) {
+			if (symlink(buf, str) < 0) {
 				printf("symlink: %s -> %s :", str, (char*)buf);
 				perror("");
 			}
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
