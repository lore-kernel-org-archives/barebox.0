Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp109.iad3a.emailsrvr.com ([173.203.187.109])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAywm-0001ZR-PO
 for barebox@lists.infradead.org; Wed, 17 May 2017 13:25:02 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Wed, 17 May 2017 14:24:22 +0100
Message-Id: <20170517132426.13367-2-abbotti@mev.co.uk>
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
Subject: [PATCH 2/6] hush: make source_aliases[] const
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>

Although the elements of `source_aliases[]` are of type `const char *`,
the elements themselves are not const-qualified.  Make them `const`.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 common/hush.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/hush.c b/common/hush.c
index d3f7bf330..792b61ac9 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1974,7 +1974,7 @@ static int do_source(int argc, char *argv[])
 	return ret;
 }
 
-static const char *source_aliases[] = { ".", NULL};
+static const char * const source_aliases[] = { ".", NULL};
 
 BAREBOX_CMD_HELP_START(source)
 BAREBOX_CMD_HELP_TEXT("Read and execute commands from FILE in the current shell environment.")
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
