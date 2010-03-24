Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f210.google.com ([209.85.219.210])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NuRyS-0007GB-29
	for barebox@lists.infradead.org; Wed, 24 Mar 2010 14:54:31 +0000
Received: by ewy2 with SMTP id 2so248046ewy.20
	for <barebox@lists.infradead.org>; Wed, 24 Mar 2010 07:54:22 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20100323162201.GE26177@darwin>
References: <20100323133217.GA26177@darwin>
	<20100323142643.GN2241@pengutronix.de> <20100323150915.GB26177@darwin>
	<4BA8DEBF.6060305@eukrea.com> <20100323162201.GE26177@darwin>
Date: Wed, 24 Mar 2010 15:54:21 +0100
Message-ID: <ba216b431003240754g2f372416q53dd6f1ef4b95469@mail.gmail.com>
From: Ivo Clarysse <ivo.clarysse@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox working on freescale-mx25-3-stack?
To: Matthias Kaehlcke <matthias@kaehlcke.net>
Cc: barebox@lists.infradead.org

On Tue, Mar 23, 2010 at 5:22 PM, Matthias Kaehlcke
<matthias@kaehlcke.net> wrote:
> according to the board documentation it's DDR2
>
> is this what barebox expects to find?
>

I have an IMX25PDK with DDR2 memory (Samsung K4T51163QE-ZCE6).

To boot barebox from an SD card, I had to apply the following patch to
the current HEAD (ce2411432e23b5cc313c92278b2320bf1547c002):


diff --git a/board/freescale-mx25-3-stack/3stack.c
b/board/freescale-mx25-3-stack/3stack.c
index 5590e55..d1f0fdc 100644
--- a/board/freescale-mx25-3-stack/3stack.c
+++ b/board/freescale-mx25-3-stack/3stack.c
@@ -48,17 +48,25 @@ struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
 	{ .ptr_type = 4, .addr = 0xb8002050, .val = 0x0000d843, },
 	{ .ptr_type = 4, .addr = 0xb8002054, .val = 0x22252521, },
 	{ .ptr_type = 4, .addr = 0xb8002058, .val = 0x22220a00, },
-	{ .ptr_type = 4, .addr = 0xb8001010, .val = 0x00000004, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x92100000, },
-	{ .ptr_type = 1, .addr = 0x80000400, .val = 0x21, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xa2100000, },
-	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x12344321, },
-	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x12344321, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xb2100000, },
-	{ .ptr_type = 1, .addr = 0x80000033, .val = 0xda, },
-	{ .ptr_type = 1, .addr = 0x81000000, .val = 0xff, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x82216880, },
-	{ .ptr_type = 4, .addr = 0xb8001004, .val = 0x00295729, },
+	{ .ptr_type = 4, .addr = 0xb8001004, .val = 0x0076e83a, },
+	{ .ptr_type = 4, .addr = 0xb8001010, .val = 0x00000304, },
+	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x92210000, },
+	{ .ptr_type = 4, .addr = 0x80000f00, .val = 0x12344321, },
+	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xb2210000, },
+	{ .ptr_type = 1, .addr = 0x82000000, .val = 0xda, },
+	{ .ptr_type = 1, .addr = 0x83000000, .val = 0xda, },
+	{ .ptr_type = 1, .addr = 0x81000400, .val = 0xda, },
+	{ .ptr_type = 1, .addr = 0x80000333, .val = 0xda, },
+	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x92210000, },
+	{ .ptr_type = 4, .addr = 0x80000400, .val = 0x12344321, },
+	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xa2210000, },
+	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, },
+	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, },
+	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xb2210000, },
+	{ .ptr_type = 1, .addr = 0x80000233, .val = 0xda, },
+	{ .ptr_type = 1, .addr = 0x81000780, .val = 0xda, },
+	{ .ptr_type = 1, .addr = 0x81000400, .val = 0xda, },
+	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x82216080, },
 	{ .ptr_type = 4, .addr = 0x53f80008, .val = 0x20034000, },
 };

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
