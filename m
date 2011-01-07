Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb4dv-0004j1-Uu
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 05:13:40 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id p075DYR2010098
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 6 Jan 2011 23:13:37 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Fri,  7 Jan 2011 10:42:59 +0530
Message-Id: <1294377180-19672-1-git-send-email-premi@ti.com>
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
Subject: [PATCH 0/1] nand: fix compile warnings
To: barebox@lists.infradead.org

The patch fixes these compiler warnings reported by
Cory Walker (cwalker32@gmail.com):

  CC      drivers/mtd/nand/nand.o
drivers/mtd/nand/nand.c: In function 'nand_write':
drivers/mtd/nand/nand.c:73: warning: format '%08x' expects type
 'unsigned int', but argument 2 has type 'ulong'
  CC      drivers/mtd/nand/nand_ecc.o
  CC      drivers/mtd/nand/nand_ids.o
  CC      drivers/mtd/nand/nand_base.o
drivers/mtd/nand/nand_base.c: In function 'nand_select_chip':
drivers/mtd/nand/nand_base.c:170: warning: format '%s' expects t
ype 'char *', but argument 2 has type 'int'
drivers/mtd/nand/nand_base.c:170: warning: too few arguments for
 format

While fixing them, came across similar incompatible formats in
debug() messages:

drivers/mtd/nand/nand.c: In function 'nand_read':
drivers/mtd/nand/nand.c:42: warning: format '%08x' expects type
 'unsigned int', but argument 2 has type 'ulong'
drivers/mtd/nand/nand.c: In function 'nand_write':
drivers/mtd/nand/nand.c:79: warning: format '%08x' expects type
 'unsigned int', but argument 2 has type 'ulong'
drivers/mtd/nand/nand.c:85: warning: format '%d' expects type '
int', but argument 3 has type 'long unsigned int'
drivers/mtd/nand/nand.c:96: warning: format '%08x' expects type
 'unsigned int', but argument 2 has type 'ulong'
drivers/mtd/nand/nand.c: In function 'nand_ioctl':
drivers/mtd/nand/nand.c:117: warning: format '%08x' expects typ
e 'unsigned int', but argument 2 has type 'long int'
drivers/mtd/nand/nand.c:120: warning: format '%08x' expects typ
e 'unsigned int', but argument 2 has type 'long int'


Sanjeev Premi (1):
  nand: Fix warnings due to incompatible format strings

 drivers/mtd/nand/nand.c      |   14 +++++++-------
 drivers/mtd/nand/nand_base.c |    2 +-
 2 files changed, 8 insertions(+), 8 deletions(-)

-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
