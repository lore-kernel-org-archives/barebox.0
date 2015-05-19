Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from secure15.t-systems.com ([94.100.254.155])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yuhqz-0000md-DL
 for barebox@lists.infradead.org; Tue, 19 May 2015 13:46:45 +0000
Received: from p50989a7d.dip0.t-ipconnect.de ([80.152.154.125]
 helo=MAIL-10-4.ATS-Intranet.local)
 by secure15.t-systems.com with smtp (envelope-from
 <Alexander.Richter@ATSonline.de>) id 1YuhaI-00032l-Kq
 for barebox@lists.infradead.org; Tue, 19 May 2015 15:29:27 +0200
Received: from [10.2.1.246] (helo=mail-10-4.ATS-Intranet.local)
 by MAIL-10-4.ATS-Intranet.local with G Data MailSecurity;
 for <barebox@lists.infradead.org>; Tue, 19 May 2015 15:29:24 +0200
Message-ID: <555B3AB1.5080208@atsonline.de>
Date: Tue, 19 May 2015 15:29:21 +0200
From: Alexander Richter <alexander.richter@atsonline.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] fixing argumentparser for ubiformat
To: barebox@lists.infradead.org


Signed-off-by: Alexander Richter <alexander.richter@atsonline.de>
---
  commands/ubiformat.c | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index df0b801da92c..e63f16e35124 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -84,7 +84,7 @@ static int parse_opt(int argc, char *argv[])
  		int key;
  		unsigned long int image_seq;
  
-		key = getopt(argc, argv, "nyyqve:x:s:O:f:S:");
+		key = getopt(argc, argv, "nyqve:x:s:O:f:S:Q:");
  		if (key == -1)
  			break;
  
-- 
2.1.4



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
