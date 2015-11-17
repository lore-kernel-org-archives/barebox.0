Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZyeAL-0004Ti-EH
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 11:11:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Nov 2015 12:10:47 +0100
Message-Id: <1447758651-26575-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1447758651-26575-1-git-send-email-s.hauer@pengutronix.de>
References: <1447758651-26575-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] loadb: Use local cdev
To: Barebox List <barebox@lists.infradead.org>

We already retrieve a console_device using console_get_first_active().
Use this one also to send/receive characters instead of the combined
input/output of all console devices with putc/getc.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loadb.c | 43 ++++++++++++++++++++++++++-----------------
 1 file changed, 26 insertions(+), 17 deletions(-)

diff --git a/commands/loadb.c b/commands/loadb.c
index aabb00a..bdf1710 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -67,13 +67,24 @@ static char his_eol;		/* character he needs at end of packet */
 static int his_pad_count;	/* number of pad chars he needs */
 static char his_pad_char;	/* pad chars he needs */
 static char his_quote;		/* quote chars he'll use */
+static struct console_device *cdev; /* The console device we are using */
+
+static void sendchar(char c)
+{
+	cdev->putc(cdev, c);
+}
+
+static int receivechar(void)
+{
+	return cdev->getc(cdev);
+}
 
 static void send_pad(void)
 {
 	int count = his_pad_count;
 
 	while (count-- > 0)
-		console_putc(CONSOLE_STDOUT, his_pad_char);
+		sendchar(his_pad_char);
 }
 
 /* converts escaped kermit char to binary char */
@@ -100,9 +111,8 @@ static int chk1(char *buffer)
 static void s1_sendpacket(char *packet)
 {
 	send_pad();
-	while (*packet) {
-		console_putc(CONSOLE_STDOUT, *packet++);
-	}
+	while (*packet)
+		sendchar(*packet++);
 }
 
 static char a_b[24];
@@ -397,7 +407,7 @@ static int k_recv(void)
 		/* get a packet */
 		/* wait for the starting character or ^C */
 		for (;;) {
-			switch (getc()) {
+			switch (receivechar()) {
 			case START_CHAR:	/* start packet */
 				goto START;
 			case ETX_CHAR:	/* ^C waiting for packet */
@@ -411,13 +421,13 @@ static int k_recv(void)
 START:
 		/* get length of packet */
 		sum = 0;
-		new_char = getc();
+		new_char = receivechar();
 		if ((new_char & 0xE0) == 0)
 			goto packet_error;
 		sum += new_char & 0xff;
 		length = untochar(new_char);
 		/* get sequence number */
-		new_char = getc();
+		new_char = receivechar();
 		if ((new_char & 0xE0) == 0)
 			goto packet_error;
 		sum += new_char & 0xff;
@@ -447,7 +457,7 @@ START:
 		/* END NEW CODE */
 
 		/* get packet type */
-		new_char = getc();
+		new_char = receivechar();
 		if ((new_char & 0xE0) == 0)
 			goto packet_error;
 		sum += new_char & 0xff;
@@ -457,19 +467,19 @@ START:
 		if (length == -2) {
 			/* (length byte was 0, decremented twice) */
 			/* get the two length bytes */
-			new_char = getc();
+			new_char = receivechar();
 			if ((new_char & 0xE0) == 0)
 				goto packet_error;
 			sum += new_char & 0xff;
 			len_hi = untochar(new_char);
-			new_char = getc();
+			new_char = receivechar();
 			if ((new_char & 0xE0) == 0)
 				goto packet_error;
 			sum += new_char & 0xff;
 			len_lo = untochar(new_char);
 			length = len_hi * 95 + len_lo;
 			/* check header checksum */
-			new_char = getc();
+			new_char = receivechar();
 			if ((new_char & 0xE0) == 0)
 				goto packet_error;
 			if (new_char !=
@@ -488,7 +498,7 @@ START:
 			}
 		}
 		while (length > 1) {
-			new_char = getc();
+			new_char = receivechar();
 			if ((new_char & 0xE0) == 0)
 				goto packet_error;
 			sum += new_char & 0xff;
@@ -505,13 +515,13 @@ START:
 			}
 		}
 		/* get and validate checksum character */
-		new_char = getc();
+		new_char = receivechar();
 		if ((new_char & 0xE0) == 0)
 			goto packet_error;
 		if (new_char != tochar((sum + ((sum >> 6) & 0x03)) & 0x3f))
 			goto packet_error;
 		/* get END_CHAR */
-		new_char = getc();
+		new_char = receivechar();
 		if (new_char != END_CHAR) {
 packet_error:
 			/* restore state machines */
@@ -566,8 +576,8 @@ static ulong load_serial_bin(void)
 	 * box some time (100 * 1 ms)
 	 */
 	for (i = 0; i < 100; ++i) {
-		if (tstc())
-			(void)getc();
+		if (cdev->tstc(cdev))
+			(void)receivechar();;
 		udelay(1000);
 	}
 
@@ -607,7 +617,6 @@ static int do_load_serial_bin(int argc, char *argv[])
 	int rcode = 0, ret;
 	int opt;
 	char *output_file = NULL;
-	struct console_device *cdev = NULL;
 
 	while ((opt = getopt(argc, argv, "f:b:o:c")) > 0) {
 		switch (opt) {
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
