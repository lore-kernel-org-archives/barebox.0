Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PfqBj-0004ex-0J
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 08:48:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jan 2011 09:47:51 +0100
Message-Id: <1295513272-22108-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295513272-22108-1-git-send-email-s.hauer@pengutronix.de>
References: <1295513272-22108-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] defaultenv: only try to add partitions when partition
	description exists
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv/bin/init |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/defaultenv/bin/init b/defaultenv/bin/init
index 96a5716..877b541 100644
--- a/defaultenv/bin/init
+++ b/defaultenv/bin/init
@@ -4,15 +4,15 @@ PATH=/env/bin
 export PATH
 
 . /env/config
-if [ -e /dev/nor0 ]; then
+if [ -e /dev/nor0 -a -n "$nor_parts" ]; then
 	addpart /dev/nor0 $nor_parts
 fi
 
-if [ -e /dev/disk0 ]; then
+if [ -e /dev/disk0 -a -n "$disk_parts" ]; then
 	addpart /dev/disk0 $disk_parts
 fi
 
-if [ -e /dev/nand0 ]; then
+if [ -e /dev/nand0 -a -n "$nand_parts" ]; then
 	addpart /dev/nand0 $nand_parts
 
 	# Uh, oh, hush first expands wildcards and then starts executing
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
