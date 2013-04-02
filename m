Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x236.google.com ([2a00:1450:4013:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UMwFg-00010N-2b
 for barebox@lists.infradead.org; Tue, 02 Apr 2013 08:07:33 +0000
Received: by mail-ea0-f182.google.com with SMTP id q15so71434ead.13
 for <barebox@lists.infradead.org>; Tue, 02 Apr 2013 01:07:29 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Tue,  2 Apr 2013 10:07:07 +0200
Message-Id: <1364890027-7807-1-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <20130329163237.GP1568@game.jcrosoft.org>
References: <20130329163237.GP1568@game.jcrosoft.org>
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
Subject: [PATCH v2] commands/tftp: use debug() for debug output
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 commands/tftp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/tftp.c b/commands/tftp.c
index 558b0ac..c83d174 100644
--- a/commands/tftp.c
+++ b/commands/tftp.c
@@ -76,7 +76,7 @@ static int do_tftpb(int argc, char *argv[])
 	if (ret)
 		goto err_rmdir;
 
-	printk("%s: %s -> %s\n", __func__, source, dest);
+	debug("%s: %s -> %s\n", __func__, source, dest);
 
 	ret = copy_file(source, dest, 1);
 
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
