Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp69.ord1c.emailsrvr.com ([108.166.43.69])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dQEiF-0005V3-UQ
 for barebox@lists.infradead.org; Wed, 28 Jun 2017 15:17:09 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <2d407908-2a83-809c-692a-5d289b6d2eed@mev.co.uk>
Date: Wed, 28 Jun 2017 16:10:05 +0100
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
Subject: arria10_init_emac() bug?
To: Barebox List <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi,

I'm not using Arria-10, but noticed a possible bug in the 
arria10_init_emac() function in 
"arch/arm/mach-socfpga/arria10-generic.c".  The code reads the 
ARRIA10_SYSMGR_FPGAINTF_EN_3 register into a variable, modifies the 
variable value, but doesn't write it back to the register.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
