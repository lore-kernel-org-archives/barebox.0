Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp11.mail.ru ([94.100.176.85])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSryZ-000440-SA
 for barebox@lists.infradead.org; Fri, 11 May 2012 15:41:53 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 11 May 2012 19:42:18 +0400
Message-Id: <1336750939-18572-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] i2c: Fix barebox crash when 'count' is not set for
 i2c_read command
To: barebox@lists.infradead.org

Running i2c_read without the 'count' setting causes an error and reboots.

barebox@Phytec phyCORE-i.MX27:/ i2c_read -b 1 -a 0x4a -r 0x00
ERROR: out of memory
no stack data available
---
 commands/i2c.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/i2c.c b/commands/i2c.c
index b3d09dc..39bae35 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -170,7 +170,7 @@ static int do_i2c_read(int argc, char *argv[])
 		}
 	}
 
-	if ((addr < 0) || (reg < 0) || (count == 0) || (addr > 0x7F))
+	if ((addr < 0) || (reg < 0) || (count < 1) || (addr > 0x7F))
 		return COMMAND_ERROR_USAGE;
 
 	adapter = i2c_get_adapter(bus);
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
