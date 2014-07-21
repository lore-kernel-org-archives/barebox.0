Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9LHV-0004z0-Ce
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 21:38:03 +0000
Date: Mon, 21 Jul 2014 23:37:37 +0200
From: Pavel Machek <pavel@ucw.cz>
Message-ID: <20140721213737.GA6300@amd.pavel.ucw.cz>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: tftp: more helpful help text
To: barebox@lists.infradead.org, s.hauer@pengutronix.de


It took me a while to figure out syntax of tftp command, document that 
server address is taken from environment.

Signed-off-by: Pavel Machek <pavel@ucw.cz>

diff --git a/commands/tftp.c b/commands/tftp.c
index c066631..62b9424 100644
--- a/commands/tftp.c
+++ b/commands/tftp.c
@@ -92,7 +92,8 @@ err_free:
 }
 
 BAREBOX_CMD_HELP_START(tftp)
-BAREBOX_CMD_HELP_TEXT("Load (or save) a file via TFTP.")
+BAREBOX_CMD_HELP_TEXT("Load (or save) a file via TFTP. SOURCE is a path on server,")
+BAREBOX_CMD_HELP_TEXT("server address is taken from the environment (ethX.serverip).")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-p", "push to TFTP server")

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
