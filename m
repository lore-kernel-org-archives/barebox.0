Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo4.mail-out.ovh.net ([178.32.98.131]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZ1Zv-0002xL-0d
 for barebox@lists.infradead.org; Wed, 23 Oct 2013 16:46:39 +0000
Received: from mail98.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id A4895FF9C64
 for <barebox@lists.infradead.org>; Wed, 23 Oct 2013 18:46:59 +0200 (CEST)
Date: Wed, 23 Oct 2013 18:48:00 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131023164800.GD26639@ns203013.ovh.net>
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
Subject: [BUG] phycard a l1 on lowlevel
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

Hi Sasha,

	I get this when compiling this board

Building arm phycard_a_l1_defconfig
Configure: OK
/opt/work/barebox/arch/arm/boards/phycard-a-l1/lowlevel.c: In function 'barebox_arm_reset_vector':
/opt/work/barebox/arch/arm/boards/phycard-a-l1/lowlevel.c:122:3: warning: array subscript is above array bounds

	Can you take a look?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
