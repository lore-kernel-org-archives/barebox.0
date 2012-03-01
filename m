Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og110.obsmtp.com ([64.18.0.20])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S3Bsw-0000lR-KU
 for barebox@lists.infradead.org; Thu, 01 Mar 2012 19:41:55 +0000
Received: from corgarff.edi.geip.ge.com (corgarff.edi.geip.ge.com
 [3.26.68.194])
 by selma.edi.geip.ge.com (Postfix) with ESMTP id 22AB9E057A
 for <barebox@lists.infradead.org>; Thu,  1 Mar 2012 19:41:36 +0000 (GMT)
Message-ID: <4F4FD0EF.1000905@ge.com>
Date: Thu, 01 Mar 2012 19:41:35 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Booting PPC Linux
To: barebox@lists.infradead.org

I have a uImage + dtb that use to boot on a MPC8544-like system
a few months ago.

After rebasing my code, it did not work.

I notice that in arch/ppc/lib/ppclinux.c the kernel is now called
with the device tree as a parameter.

After investigation, I copied the device tree to within 8MB of the
kernel entry point (0x0). It booted.

Is the DTB relocation a missing step?
Otherwise any suggestions on what I should look at (different kernel image)?

I have already been through the Barebox code and U-boot code (U-boot
does relocate the device tree).


Cheers.





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
