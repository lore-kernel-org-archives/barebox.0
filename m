Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yxv4Z-0002zD-Tt
 for barebox@lists.infradead.org; Thu, 28 May 2015 10:30:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 May 2015 12:29:32 +0200
Message-Id: <1432808972-14822-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] md: use memmap when possible
To: Barebox List <barebox@lists.infradead.org>

This adds the missing pieces for:

d8a6e1c ARM/mem: handle data aborts gracefully for md

When possible use memmap and directly and dereference the input pointer
directly in memory_display() so that the data abort occurs where we expect
it and not in the md command. With this d8a6e1c can work as expected.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/md.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/commands/md.c b/commands/md.c
index c1361a6..07a03d5 100644
--- a/commands/md.c
+++ b/commands/md.c
@@ -44,6 +44,7 @@ static int do_mem_md(int argc, char *argv[])
 	char *filename = "/dev/mem";
 	int mode = O_RWSIZE_4;
 	int swab = 0;
+	void *map;
 
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
@@ -65,6 +66,13 @@ static int do_mem_md(int argc, char *argv[])
 	if (fd < 0)
 		return 1;
 
+	map = memmap(fd, PROT_READ);
+	if (map != (void *)-1) {
+		ret = memory_display(map + start, start, size,
+				mode >> O_RWSIZE_SHIFT, swab);
+		goto out;
+	}
+
 	do {
 		now = min(size, (loff_t)RW_BUF_SIZE);
 		r = read(fd, mem_rw_buf, now);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
