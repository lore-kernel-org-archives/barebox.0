Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tc0Wk-00085v-JT
 for barebox@lists.infradead.org; Fri, 23 Nov 2012 21:11:16 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so5173300lbo.36
 for <barebox@lists.infradead.org>; Fri, 23 Nov 2012 13:11:08 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 24 Nov 2012 01:10:57 +0400
Message-Id: <1353705059-7792-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1353705059-7792-1-git-send-email-antonynpavlov@gmail.com>
References: <1353705059-7792-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 1/3] add swab (swap bytes) option to memory_display()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/mem.c   |   17 +++++++++++++----
 commands/spi.c   |    4 ++--
 fs/tftp.c        |    2 +-
 include/common.h |    2 +-
 net/net.c        |    2 +-
 5 files changed, 18 insertions(+), 9 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index 6fbc7cc..a42b7ba 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -51,7 +51,7 @@ static char *DEVMEM = "/dev/mem";
  */
 #define DISP_LINE_LEN	16
 
-int memory_display(char *addr, loff_t offs, ulong nbytes, int size)
+int memory_display(char *addr, loff_t offs, ulong nbytes, int size, int swab)
 {
 	ulong linebytes, i;
 	u_char	*cp;
@@ -73,9 +73,17 @@ int memory_display(char *addr, loff_t offs, ulong nbytes, int size)
 
 		for (i = 0; i < linebytes; i += size) {
 			if (size == 4) {
-				count -= printf(" %08x", (*uip++ = *((uint *)addr)));
+				u32 res;
+				res = (*uip++ = *((uint *)addr));
+				if (swab)
+					res = __swab32(res);
+				count -= printf(" %08x", res);
 			} else if (size == 2) {
-				count -= printf(" %04x", (*usp++ = *((ushort *)addr)));
+				u16 res;
+				res = (*usp++ = *((ushort *)addr));
+				if (swab)
+					res = __swab16(res);
+				count -= printf(" %04x", res);
 			} else {
 				count -= printf(" %02x", (*ucp++ = *((u_char *)addr)));
 			}
@@ -195,7 +203,8 @@ static int do_mem_md(int argc, char *argv[])
 		if (!r)
 			goto out;
 
-		if ((ret = memory_display(rw_buf, start, r, mode >> O_RWSIZE_SHIFT)))
+		if ((ret = memory_display(rw_buf, start, r,
+				mode >> O_RWSIZE_SHIFT, 0)))
 			goto out;
 
 		start += r;
diff --git a/commands/spi.c b/commands/spi.c
index 899bf62..2f6b430 100644
--- a/commands/spi.c
+++ b/commands/spi.c
@@ -101,12 +101,12 @@ static int do_spi(int argc, char *argv[])
 		printf("\n");
 
 		printf("wrote %i bytes\n", count);
-		memory_display(tx_buf, 0, count, byte_per_word);
+		memory_display(tx_buf, 0, count, byte_per_word, 0);
 
 		printf("read %i bytes\n", read);
 	}
 
-	memory_display(rx_buf, 0, read, byte_per_word);
+	memory_display(rx_buf, 0, read, byte_per_word, 0);
 
 out:
 	free(rx_buf);
diff --git a/fs/tftp.c b/fs/tftp.c
index dff41e9..98cbb37 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -227,7 +227,7 @@ static void tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 
 	debug("got OACK\n");
 #ifdef DEBUG
-	memory_display(pkt, 0, len, 1);
+	memory_display(pkt, 0, len, 1, 0);
 #endif
 
 	s = pkt;
diff --git a/include/common.h b/include/common.h
index e30774a..6256879 100644
--- a/include/common.h
+++ b/include/common.h
@@ -226,7 +226,7 @@ int run_shell(void);
 #define PAGE_SIZE	4096
 #define PAGE_SHIFT	12
 
-int memory_display(char *addr, loff_t offs, ulong nbytes, int size);
+int memory_display(char *addr, loff_t offs, ulong nbytes, int size, int swab);
 
 extern const char version_string[];
 #ifdef CONFIG_BANNER
diff --git a/net/net.c b/net/net.c
index 3ac098f..639bc2d 100644
--- a/net/net.c
+++ b/net/net.c
@@ -511,7 +511,7 @@ static void net_bad_packet(unsigned char *pkt, int len)
 	 * We received a bad packet. for now just dump it.
 	 * We could add more sophisticated debugging here
 	 */
-	memory_display(pkt, 0, len, 1);
+	memory_display(pkt, 0, len, 1, 0);
 #endif
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
