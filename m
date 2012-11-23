Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tc0Wv-00086N-Nh
 for barebox@lists.infradead.org; Fri, 23 Nov 2012 21:11:24 +0000
Received: by mail-la0-f49.google.com with SMTP id r15so6827146lag.36
 for <barebox@lists.infradead.org>; Fri, 23 Nov 2012 13:11:11 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 24 Nov 2012 01:10:59 +0400
Message-Id: <1353705059-7792-4-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 3/3] commands: mw: add '-x' option (swap bytes)
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/mem.c |    9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index 9873e52..51aa04d 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -255,9 +255,10 @@ static int do_mem_mw(int argc, char *argv[])
 	char *filename = DEVMEM;
 	int mode = O_RWSIZE_4;
 	loff_t adr;
+	int swab = 0;
 
-	if (mem_parse_options(argc, argv, "bwld:", &mode, NULL, &filename,
-			NULL) < 0)
+	if (mem_parse_options(argc, argv, "bwld:x", &mode, NULL, &filename,
+			&swab) < 0)
 		return 1;
 
 	if (optind + 1 >= argc)
@@ -280,10 +281,14 @@ static int do_mem_mw(int argc, char *argv[])
 			break;
 		case O_RWSIZE_2:
 			val16 = simple_strtoul(argv[optind], NULL, 0);
+			if (swab)
+				val16 = __swab16(val16);
 			ret = write(fd, &val16, 2);
 			break;
 		case O_RWSIZE_4:
 			val32 = simple_strtoul(argv[optind], NULL, 0);
+			if (swab)
+				val32 = __swab32(val32);
 			ret = write(fd, &val32, 4);
 			break;
 		}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
