Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZUfP-0004I3-Pb
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 22:45:44 +0000
Received: from cpebcc8100fb8db-cmbcc8100fb8d8.cpe.net.cable.rogers.com
 ([174.116.196.46]:54832 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1TZUfO-0002ao-7J
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 17:45:42 -0500
Date: Fri, 16 Nov 2012 17:45:38 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1211161745310.10167@oneiric>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] bareboxenv.c: simple grammatical fix
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index f44a1f8..5fdc62e 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -124,8 +124,8 @@ char *concat_subpath_file(const char *path, const char *f)
 void usage(char *prgname)
 {
 	printf( "Usage : %s [OPTION] DIRECTORY FILE\n"
-		"Load an barebox environment sector into a directory or\n"
-		"save a directory into an barebox environment sector\n"
+		"Load a barebox environment sector into a directory or\n"
+		"save a directory into a barebox environment sector\n"
 		"\n"
 		"options:\n"
 		"  -s        save (directory -> environment sector)\n"

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
