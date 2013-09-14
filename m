Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VKomM-0002oj-Gu
 for barebox@lists.infradead.org; Sat, 14 Sep 2013 12:16:48 +0000
Received: from mail408.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id D51E8104D956
 for <barebox@lists.infradead.org>; Sat, 14 Sep 2013 14:06:20 +0200 (CEST)
Date: Sat, 14 Sep 2013 14:07:25 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130914120725.GB21829@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [RFC] [PATCH 0/2] fix barebox size when using a relocated pbl
To: barebox@lists.infradead.org

Hi,

	today if we use a relocatable pbl we have 0 at 0x2c on ARM
	as the linker script can not calculte the size correctly

	so fix it post zbarebox.bin generation

Jean-Christophe PLAGNIOL-VILLARD (2):
      add fix size tools
      ARM: PBL: fix binary size

 arch/arm/pbl/Makefile |  8 ++++++++
 scripts/Makefile      |  1 +
 scripts/fix_size.c    | 81 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 90 insertions(+)
 create mode 100644 scripts/fix_size.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
