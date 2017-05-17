Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp109.iad3a.emailsrvr.com ([173.203.187.109])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAyxV-00033z-C8
 for barebox@lists.infradead.org; Wed, 17 May 2017 13:25:46 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Wed, 17 May 2017 14:24:26 +0100
Message-Id: <20170517132426.13367-6-abbotti@mev.co.uk>
In-Reply-To: <20170517132426.13367-1-abbotti@mev.co.uk>
References: <20170517132426.13367-1-abbotti@mev.co.uk>
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
Subject: [PATCH 6/6] true: make true_aliases[] const
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>

Although the elements of `true_aliases[]` are of type `const char *`,
the elements themselves are not const-qualified.  Make them `const`.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
Note: This depends on my patch "commands: add ':' as alias for 'true'".
---
 commands/true.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/true.c b/commands/true.c
index b850f5165..ad2be8e8e 100644
--- a/commands/true.c
+++ b/commands/true.c
@@ -26,7 +26,7 @@ static int do_true(int argc, char *argv[])
 	return 0;
 }
 
-static const char *true_aliases[] = { ":", NULL};
+static const char * const true_aliases[] = { ":", NULL};
 
 BAREBOX_CMD_START(true)
 	.aliases	= true_aliases,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
