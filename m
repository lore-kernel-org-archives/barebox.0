Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REh1c-0004VZ-Cx
	for barebox@lists.infradead.org; Fri, 14 Oct 2011 12:38:09 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 14 Oct 2011 14:37:56 +0200
References: <201110141411.28523.jbe@pengutronix.de>
	<20111014121652.GG13898@pengutronix.de>
In-Reply-To: <20111014121652.GG13898@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201110141437.57075.jbe@pengutronix.de>
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
Subject: [PATCH for master] Really fix the 'bootz' command
To: barebox@lists.infradead.org

Running the 'bootz' command always fails with

could not read <some file>

due to wrong usage of pointers and structures. This is the second try to fix
the 'bootz' command. At least on my target it is now be able again to load a
kernel without any error.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
index 9be615b..956ea82 100644
--- a/arch/arm/lib/bootz.c
+++ b/arch/arm/lib/bootz.c
@@ -89,10 +89,10 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 			}
 		}
 
-		memcpy(zimage, &header, sizeof(header));
+		memcpy(zimage, header, sizeof(*header));
 
-		ret = read(fd, zimage + sizeof(header), end - sizeof(header));
-		if (ret < end - sizeof(header)) {
+		ret = read(fd, zimage + sizeof(*header), end - sizeof(*header));
+		if (ret < end - sizeof(*header)) {
 			printf("could not read %s\n", argv[1]);
 			goto err_out1;
 		}

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
