Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from muc-mta01.mas.t-systems-service.com ([46.29.101.1])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avQhV-0003cp-6D
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 14:44:26 +0000
Received: from p57800e76.dip0.t-ipconnect.de ([87.128.14.118]
 helo=MAIL-10-6.ATS-Intranet.local)
 by muc-mta01.mas.t-systems-service.com with smtp (envelope-from
 <andy@atsonline.de>) id 1avQLY-00061i-J8
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 16:21:45 +0200
Received: from [10.2.1.246] (helo=Mail-10-6.ATS-Intranet.local)
 by MAIL-10-6.ATS-Intranet.local with G Data MailSecurity;
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 16:21:37 +0200
Received: from andy by rory with local (Exim 4.87)	(envelope-from
 <andy@ats1-workstation-ag>)	id 1avQLR-0006FJ-Mr	for
 barebox@lists.infradead.org; Wed, 27 Apr 2016 16:21:37 +0200
From: Andreas Geisenhainer <Andreas.Geisenhainer@atsonline.de>
Date: Wed, 27 Apr 2016 16:21:37 +0200
Message-ID: <1461766897-23903-1-git-send-email-Andreas.Geisenhainer@atsonline.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] documentation: i2c_read() does not expect any "DATA".
To: barebox@lists.infradead.org

Remove information about DATA from help text.

Signed-off-by: Andreas Geisenhainer <Andreas.Geisenhainer@atsonline.de>
---
 commands/i2c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/i2c.c b/commands/i2c.c
index e6750e3..ae7f7fc 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -243,7 +243,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(i2c_read)
 	.cmd		= do_i2c_read,
 	BAREBOX_CMD_DESC("read from an i2c device")
-	BAREBOX_CMD_OPTS("[-bacrwv] DATA...")
+	BAREBOX_CMD_OPTS("[-bacrwv]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_i2c_read_help)
 BAREBOX_CMD_END
-- 
2.8.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
