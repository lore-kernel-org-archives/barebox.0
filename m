Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b3tYn-0001SY-I4
 for barebox@lists.infradead.org; Fri, 20 May 2016 23:10:27 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 20 May 2016 23:09:59 +0000
Message-ID: <1463785803.15779.60.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <ADE45648C35D67488916D0B57FE64DCD@kymetacorp.com>
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
Subject: [PATCH 1/2] socfpga: correct start vector when not using extra
 barebox header
To: barebox <barebox@lists.infradead.org>

The barebox ARM image has a 0x50 byte header that consists of:
Bytes 0x00 - 0x0a:  Instruction(s) to jump to start of code
Bytes 0x20 - 0x2f:  Signature and some other data
The rest of header is basically padding.

On SocFPGA, the ROM bootloader expects the 2nd stage bootloader
(barebox) to have a 0x40 byte header with the following fields:
Bytes 0x40 - 0x4b:  Signature and some other data
Bytes 0x4c - 0x4f:  Instruction to jump to start of code

These two headers are compatible, as everything defined in the SocFPGA
header is at a location that is padding the barebox header.

socfpga_mkimage has two methods for creating a SocFPGA image.  One method
prepends an extra 512 byte header to the barebox image, which contains the
SoCFPGA header described above.  The start vector at 0x4c is hard coded to
jump to offset 512, where the barebox header's start vector will be.

socfpga_mkimage can also not prepend this additional header and instead
modify the barebox header to be SoCFPGA compatible.  But it only writes
bytes 0x40-0x4b and not the start vector at 0x4c, leaving that word as
padding.  And so this image will not boot when the ROM bootloader runs it.

This changes the SoCFPGA header creator to write a correct start vector for
both methods.  It will create a branch instruction at 0x4c that jumps to the
start of the barebox image, whether it be at offset 0 or offset 512 (or any
other location).

This makes SoCFPGA images without the extra header bootable.
---
 scripts/socfpga_mkimage.c | 29 +++++++++++++++++++++--------
 1 file changed, 21 insertions(+), 8 deletions(-)

diff --git a/scripts/socfpga_mkimage.c b/scripts/socfpga_mkimage.c
index 1a7a66d..4fbd5c7 100644
--- a/scripts/socfpga_mkimage.c
+++ b/scripts/socfpga_mkimage.c
@@ -12,6 +12,8 @@
 
 #define VALIDATION_WORD 0x31305341
 
+#define BRANCH_INST 0xea /* ARM opcode for "b" (unconditional branch) */
+
 #define MAX_IMAGE_SIZE (60 * 1024 - 4)
 
 static int add_barebox_header;
@@ -23,6 +25,7 @@ struct socfpga_header {
 	uint8_t program_length[2];
 	uint8_t spare[2];
 	uint8_t checksum[2];
+	uint8_t start_vector[4];
 };
 
 static uint32_t bb_header[] = {
@@ -45,7 +48,7 @@ static uint32_t bb_header[] = {
 	0x00000000,	/* socfpga header */
 	0x00000000,	/* socfpga header */
 	0x00000000,	/* socfpga header */
-	0xea00006b,	/* entry. b 0x200  */
+	0xea00006b,	/* entry. b 0x200 (offset may be adjusted) */
 };
 
 static int read_full(int fd, void *buf, size_t size)
@@ -140,20 +143,25 @@ uint32_t crc32(uint32_t crc, void *_buf, int length)
 	return crc;
 }
 
-static int add_socfpga_header(void *buf, int size)
+/* start_addr is where the socfpga header's start instruction should branch to.
+ * It should be relative to the start of buf */
+static int add_socfpga_header(void *buf, size_t size, unsigned start_addr)
 {
 	struct socfpga_header *header = buf + 0x40;
-	uint8_t *buf_header = buf + 0x40;
+	uint8_t *bufp;
 	uint32_t *crc;
 	unsigned checksum;
-	int length = size >> 2;
-	int i;
+	size_t length = size >> 2;
 
 	if (size & 0x3) {
 		fprintf(stderr, "%s: size must be multiple of 4\n", __func__);
 		return -EINVAL;
 	}
 
+	/* Calculate relative address of requested start_addr from the
+	 * start_vector's branch instuction PC (+8 bytes on arm).  */
+	start_addr = start_addr + (int)(buf - (void*)&header->start_vector[0]) - 8;
+
 	header->validation_word[0] = VALIDATION_WORD & 0xff;
 	header->validation_word[1] = (VALIDATION_WORD >> 8) & 0xff;
 	header->validation_word[2] = (VALIDATION_WORD >> 16) & 0xff;
@@ -164,10 +172,15 @@ static int add_socfpga_header(void *buf, int size)
 	header->program_length[1] = (length >> 8) & 0xff;
 	header->spare[0] = 0;
 	header->spare[1] = 0;
+	header->start_vector[0] = (start_addr >> 2) & 0xff; /* instruction uses offset/4 */
+	header->start_vector[1] = (start_addr >> 10) & 0xff;
+	header->start_vector[2] = (start_addr >> 18) & 0xff;
+	header->start_vector[3] = BRANCH_INST;
 
+	/* Sum from beginning of header to start of checksum field */
 	checksum = 0;
-	for (i = 0; i < sizeof(*header) - 2; i++)
-		checksum += buf_header[i];
+	for (bufp = (uint8_t*)header; bufp < &header->checksum[0]; bufp++)
+		checksum += *bufp;
 
 	header->checksum[0] = checksum & 0xff;;
 	header->checksum[1] = (checksum >> 8) & 0xff;;
@@ -267,7 +280,7 @@ int main(int argc, char *argv[])
 		memcpy(buf, bb_header, sizeof(bb_header));
 	}
 
-	ret = add_socfpga_header(buf, s.st_size + 4 + addsize + pad);
+	ret = add_socfpga_header(buf, s.st_size + 4 + addsize + pad, addsize);
 	if (ret)
 		exit(1);
 
-- 
2.7.0.25.gfc10eb5.dirty


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
