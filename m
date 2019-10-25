Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNxcf-0001sJ-R7
 for barebox@lists.infradead.org; Fri, 25 Oct 2019 11:19:15 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Fri, 25 Oct 2019 13:19:12 +0200
Message-Id: <1572002352-387612-1-git-send-email-r.karszniewicz@phytec.de>
In-Reply-To: <9bc4633e-6f71-0c6c-988c-e8a1e11e713a@pengutronix.de>
References: <9bc4633e-6f71-0c6c-988c-e8a1e11e713a@pengutronix.de>
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
Subject: [PATCH v2] sandbox: add_image: mmap block devices
To: barebox@lists.infradead.org

This makes it possible to mount block devices from the host machine,
which have been passed as arguments to --image

Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
---
Changes from v1:
- move -1 to the right side of the comparison

 arch/sandbox/os/common.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 86118822a..e826c9cb3 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -39,6 +39,8 @@
 #include <signal.h>
 #include <sys/select.h>
 #include <sys/wait.h>
+#include <sys/ioctl.h>
+#include <linux/fs.h>
 /*
  * ...except the ones needed to connect with barebox
  */
@@ -260,6 +262,12 @@ static int add_image(char *str, char *devname_template, int *devname_number)
 	hf->size = s.st_size;
 	hf->devname = strdup(devname);
 
+	if (S_ISBLK(s.st_mode)) {
+		if (ioctl(fd, BLKGETSIZE64, &hf->size) == -1) {
+			perror("ioctl");
+			goto err_out;
+		}
+	}
 	hf->base = (unsigned long)mmap(NULL, hf->size,
 			PROT_READ | (readonly ? 0 : PROT_WRITE),
 			MAP_SHARED, fd, 0);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
