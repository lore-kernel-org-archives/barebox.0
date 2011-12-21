Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RdTka-0006ZZ-Af
 for barebox@lists.infradead.org; Wed, 21 Dec 2011 21:31:01 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Wed, 21 Dec 2011 22:30:39 +0100
Message-Id: <1324503044-6085-2-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1324503044-6085-1-git-send-email-robert.jarzmik@free.fr>
References: <1324503044-6085-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH V4 2/7] drivers/mtd: cosmetic changes
To: barebox@lists.infradead.org

Fix whitespace, replace all debug() by dev_dbg(), and fix
line length to 80 characters.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

---
Since V3:
 - changed back CONFIG_NAND_READ_DEVICE to
   CONFIG_NAND_OOB_DEVICE
---
 drivers/mtd/core.c |   47 ++++++++++++++++++++++-------------------------
 1 files changed, 22 insertions(+), 25 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 130e2af..322a99b 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -14,11 +14,6 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
  */
 #include <common.h>
 #include <linux/mtd/nand.h>
@@ -31,7 +26,8 @@
 #include <nand.h>
 #include <errno.h>
 
-static 	ssize_t nand_read(struct cdev *cdev, void* buf, size_t count, ulong offset, ulong flags)
+static 	ssize_t nand_read(struct cdev *cdev, void* buf, size_t count,
+			  ulong offset, ulong flags)
 {
 	struct mtd_info *info = cdev->priv;
 	size_t retlen;
@@ -49,6 +45,7 @@ static 	ssize_t nand_read(struct cdev *cdev, void* buf, size_t count, ulong offs
 }
 
 #define NOTALIGNED(x) (x & (info->writesize - 1)) != 0
+#define MTDPGALG(x) ((x) & (info->writesize - 1))
 
 #ifdef CONFIG_NAND_WRITE
 static int all_ff(const void *buf, int len)
@@ -62,7 +59,8 @@ static int all_ff(const void *buf, int len)
 	return 1;
 }
 
-static ssize_t nand_write(struct cdev* cdev, const void *buf, size_t _count, ulong offset, ulong flags)
+static ssize_t nand_write(struct cdev* cdev, const void *buf, size_t _count,
+			  ulong offset, ulong flags)
 {
 	struct mtd_info *info = cdev->priv;
 	size_t retlen, now;
@@ -75,24 +73,29 @@ static ssize_t nand_write(struct cdev* cdev, const void *buf, size_t _count, ulo
 		return -EINVAL;
 	}
 
-	debug("write: 0x%08lx 0x%08x\n", offset, count);
-
+	dev_dbg(cdev->dev, "write: 0x%08lx 0x%08x\n", offset, count);
 	while (count) {
 		now = count > info->writesize ? info->writesize : count;
 
 		if (NOTALIGNED(now)) {
-			debug("not aligned: %d %ld\n", info->writesize, (offset % info->writesize));
+			dev_dbg(cdev->dev, "not aligned: %d %ld\n",
+				info->writesize,
+				(offset % info->writesize));
 			wrbuf = xmalloc(info->writesize);
 			memset(wrbuf, 0xff, info->writesize);
 			memcpy(wrbuf + (offset % info->writesize), buf, now);
 			if (!all_ff(wrbuf, info->writesize))
-				ret = info->write(info, offset & ~(info->writesize - 1),
-						info->writesize, &retlen, wrbuf);
+				ret = info->write(info, MTDPGALG(offset),
+						  info->writesize, &retlen,
+						  wrbuf);
 			free(wrbuf);
 		} else {
 			if (!all_ff(buf, info->writesize))
-				ret = info->write(info, offset, now, &retlen, buf);
-			debug("offset: 0x%08lx now: 0x%08x retlen: 0x%08x\n", offset, now, retlen);
+				ret = info->write(info, offset, now, &retlen,
+						  buf);
+			dev_dbg(cdev->dev,
+				"offset: 0x%08lx now: 0x%08x retlen: 0x%08x\n",
+				offset, now, retlen);
 		}
 		if (ret)
 			goto out;
@@ -114,11 +117,11 @@ static int nand_ioctl(struct cdev *cdev, int request, void *buf)
 
 	switch (request) {
 	case MEMGETBADBLOCK:
-		debug("MEMGETBADBLOCK: 0x%08lx\n", (off_t)buf);
+		dev_dbg(cdev->dev, "MEMGETBADBLOCK: 0x%08lx\n", (off_t)buf);
 		return info->block_isbad(info, (off_t)buf);
 #ifdef CONFIG_NAND_WRITE
 	case MEMSETBADBLOCK:
-		debug("MEMSETBADBLOCK: 0x%08lx\n", (off_t)buf);
+		dev_dbg(cdev->dev, "MEMSETBADBLOCK: 0x%08lx\n", (off_t)buf);
 		return info->block_markbad(info, (off_t)buf);
 #endif
 	case MEMGETINFO:
@@ -150,7 +153,7 @@ static ssize_t nand_erase(struct cdev *cdev, size_t count, unsigned long offset)
 	erase.len = info->erasesize;
 
 	while (count > 0) {
-		debug("erase %d %d\n", erase.addr, erase.len);
+		dev_dbg(cdev->dev, "erase %d %d\n", erase.addr, erase.len);
 
 		ret = info->block_isbad(info, erase.addr);
 		if (ret > 0) {
@@ -169,13 +172,6 @@ static ssize_t nand_erase(struct cdev *cdev, size_t count, unsigned long offset)
 }
 #endif
 
-#if 0
-static char* mtd_get_size(struct device_d *, struct param_d *param)
-{
-	static char 
-}
-#endif
-
 static struct file_operations nand_ops = {
 	.read   = nand_read,
 #ifdef CONFIG_NAND_WRITE
@@ -187,7 +183,8 @@ static struct file_operations nand_ops = {
 };
 
 #ifdef CONFIG_NAND_OOB_DEVICE
-static ssize_t nand_read_oob(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
+static ssize_t nand_read_oob(struct cdev *cdev, void *buf, size_t count,
+			     ulong offset, ulong flags)
 {
 	struct mtd_info *info = cdev->priv;
 	struct nand_chip *chip = info->priv;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
