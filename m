Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMgpD-0003QD-1G
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 11:53:22 +0000
Received: from cpe002129687b04-cm001225dbafb6.cpe.net.cable.rogers.com
	([99.235.241.187] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NMgpB-0004nf-Bh
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 06:53:17 -0500
Date: Mon, 21 Dec 2009 06:52:42 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912210651050.14193@localhost>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH repeat] MTD:  Correct typo in preprocessor directive.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Configuration directive should obviously start with "CONFIG_".

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  i submitted this already but it hasn't gone in so i don't want it
lost in the shuffle.  it looks like a simple typo fix, unless someone
else sees something more there.


diff --git a/drivers/nand/diskonchip.c b/drivers/nand/diskonchip.c
index e17af70..e762524 100644
--- a/drivers/nand/diskonchip.c
+++ b/drivers/nand/diskonchip.c
@@ -120,7 +120,7 @@ static int no_autopart=0;
 module_param(no_autopart, int, 0);
 #endif

-#ifdef MTD_NAND_DISKONCHIP_BBTWRITE
+#ifdef CONFIG_MTD_NAND_DISKONCHIP_BBTWRITE
 static int inftl_bbt_write=1;
 #else
 static int inftl_bbt_write=0;

========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
