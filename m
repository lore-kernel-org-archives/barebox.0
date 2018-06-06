Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQaAc-0007ku-Cg
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 15:16:20 +0000
Received: by mail-wr0-x244.google.com with SMTP id h10-v6so6702178wrq.8
 for <barebox@lists.infradead.org>; Wed, 06 Jun 2018 08:16:08 -0700 (PDT)
From: Pascal Vizeli <pvizeli@syshack.ch>
Date: Wed,  6 Jun 2018 15:16:02 +0000
Message-Id: <20180606151602.11094-1-pvizeli@syshack.ch>
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
Subject: [PATCH 1/1] command: oftree: support load device tree from memory
To: barebox@lists.infradead.org
Cc: Pascal Vizeli <pvizeli@syshack.ch>

DON'T MERGE: this is only a concept patch.

On some device, barebox is the second bootloader. The first bootloader provide
some times allready a better device tree as the linux kernel own.
Mostly barebox can't boot from this device tree but the linux kernel can.

This patch allow to load a device tree from memory from first bootloader.

For implementation:

Not sure what is the best. Maybe we can create a of_unflatten_file_dtb() and
of_unflatten_memory_dtb() they return fdt. There are a lot place they load
a fdt from a file and repeat the same code.

Signed-off-by: Pascal Vizeli <pvizeli@syshack.ch>
---
 commands/oftree.c | 39 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 38 insertions(+), 1 deletion(-)

diff --git a/commands/oftree.c b/commands/oftree.c
index 8a47c0be5..831b6c280 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -40,9 +40,40 @@
 #include <fcntl.h>
 #include <complete.h>
 
+struct fdt_header* read_memory_dtb(loff_t mem_start)
+{
+	struct fdt_header *oftree = NULL;
+	struct fdt_header *memtree;
+	int mode = O_RWSIZE_4 | O_RDONLY;
+	int fd;
+	uint32_t size;
+	void *map;
+
+	fd = open_and_lseek("/dev/mem", mode,mem_start);
+	if (fd < 0)
+		return NULL;
+
+	map = memmap(fd, PROT_READ);
+	if (map == (void *)-1)
+		goto end;
+	memtree = map;
+
+	size = be32_to_cpu(memtree->totalsize);
+	if (!size)
+		goto end;
+
+	oftree = malloc(size);
+	memcpy((void *)oftree, map, size);
+
+end:
+	close(fd);
+	return oftree;
+}
+
 static int do_oftree(int argc, char *argv[])
 {
 	struct fdt_header *fdt = NULL;
+	loff_t mem_start;
 	size_t size;
 	int opt;
 	int probe = 0;
@@ -102,7 +133,13 @@ static int do_oftree(int argc, char *argv[])
 	}
 
 	if (load) {
-		fdt = read_file(load, &size);
+		if (file_name_detect_type(load) == filetype_oftree) {
+			fdt = read_file(load, &size);
+		} else {
+			mem_start = simple_strtoull(load, NULL, 0);
+			fdt = read_memory_dtb(mem_start);
+		}
+
 		if (!fdt) {
 			printf("unable to read %s\n", load);
 			return 1;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
