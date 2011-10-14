Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REgc1-0003y4-E8
	for barebox@lists.infradead.org; Fri, 14 Oct 2011 12:11:42 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1REgby-0004A2-5r
	for barebox@lists.infradead.org; Fri, 14 Oct 2011 14:11:38 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 14 Oct 2011 14:11:28 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201110141411.28523.jbe@pengutronix.de>
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
Subject: [PATCH for next] 'bootz' command fails to load the zImage's header
To: barebox@lists.infradead.org

Running the 'bootz' command always fails with

could not read <some file>

due to it loads only a size of a pointer, instead of the size of the expected
header structure.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
index fc14487..9be615b 100644
--- a/arch/arm/lib/bootz.c
+++ b/arch/arm/lib/bootz.c
@@ -53,7 +53,7 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 
 	if (!usemap) {
 		header = &__header;
-		ret = read(fd, header, sizeof(header));
+		ret = read(fd, header, sizeof(*header));
 		if (ret < sizeof(*header)) {
 			printf("could not read %s\n", argv[1]);
 			goto err_out;

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
