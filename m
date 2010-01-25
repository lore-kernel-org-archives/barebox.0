Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NZJRA-0005q8-9V
	for barebox@lists.infradead.org; Mon, 25 Jan 2010 07:32:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jan 2010 08:32:23 +0100
Message-Id: <1264404750-11596-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1264404750-11596-5-git-send-email-s.hauer@pengutronix.de>
References: <1264404750-11596-1-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-2-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-3-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-4-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/12] remove unused file common/flash.c
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/flash.c |   73 --------------------------------------------------------
 1 files changed, 0 insertions(+), 73 deletions(-)
 delete mode 100644 common/flash.c

diff --git a/common/flash.c b/common/flash.c
deleted file mode 100644
index 4e3d9a3..0000000
--- a/common/flash.c
+++ /dev/null
@@ -1,73 +0,0 @@
-/*
- * (C) Copyright 2000
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-/* #define DEBUG */
-
-#include <common.h>
-#include <command.h>
-#include <cfi_flash.h>
-
-extern flash_info_t  flash_info[]; /* info for FLASH chips */
-
-flash_info_t *
-addr2info (ulong addr)
-{
-	printf("%s is broken\n",__FUNCTION__);
-
-	return (NULL);
-}
-
-void flash_perror (int err)
-{
-	switch (err) {
-	case ERR_OK:
-		break;
-	case ERR_TIMOUT:
-		puts ("Timeout writing to Flash\n");
-		break;
-	case ERR_NOT_ERASED:
-		puts ("Flash not Erased\n");
-		break;
-	case ERR_PROTECTED:
-		puts ("Can't write to protected Flash sectors\n");
-		break;
-	case ERR_INVAL:
-		puts ("Outside available Flash\n");
-		break;
-	case ERR_ALIGN:
-		puts ("Start and/or end address not on sector boundary\n");
-		break;
-	case ERR_UNKNOWN_FLASH_VENDOR:
-		puts ("Unknown Vendor of Flash\n");
-		break;
-	case ERR_UNKNOWN_FLASH_TYPE:
-		puts ("Unknown Type of Flash\n");
-		break;
-	case ERR_PROG_ERROR:
-		puts ("General Flash Programming Error\n");
-		break;
-	default:
-		printf ("%s[%d] FIXME: rc=%d\n", __FILE__, __LINE__, err);
-		break;
-	}
-}
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
