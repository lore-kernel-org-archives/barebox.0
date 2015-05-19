Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp104.biz.mail.bf1.yahoo.com ([98.139.221.63])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yun7F-0000yt-18
 for barebox@lists.infradead.org; Tue, 19 May 2015 19:23:49 +0000
Message-ID: <1432063402.14341.126.camel@andreilinux>
From: Andrei Yakimov <ayakimov@iptec-inc.com>
Date: Tue, 19 May 2015 12:23:22 -0700
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: ayakimov@iptec-inc.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: drivers/mtd/nand/nand_mrvl_nfc.c
To: barebox@lists.infradead.org

Please,
 change 
  case NAND_CMD_PARAM:
        host->buf_count = 256;
To:
  host->buf_count = 768;

If first copy of parameter page corrupted you will not able
to use ONFI flash.

Andrei 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
