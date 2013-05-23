Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfS7C-0006kr-Ix
 for barebox@lists.infradead.org; Thu, 23 May 2013 09:47:19 +0000
Date: Thu, 23 May 2013 11:46:55 +0200
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Message-ID: <20130523094655.GD8595@lukather>
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
Subject: 2013.05 breaking Linux boot on imx28 CFA-10036
To: barebox@lists.infradead.org

Hi,

I've tested lately both 2013.05.0 and the master of Barebox on the imx28
cfa-10036 board we have.

Everything works fine with 2013.04.0.

The issue I have is that Barebox in itself works fine, however, Linux
fails to boot after it has been started by Barebox, quite early and
badly:

http://code.bulix.org/s3z010-83581

I've tried to bisect it, but didn't get very far, since there are other
issues coming in, that prevent a full Linux boot (but it might be
related to Linux itself, anyway.)

So, the last fully working commit I could find is cf95711e

Its child commit, 9d8e0835, boots the kernel, but just before actually
booting it, displays the error "fdt_initrd: FDT_ERR_BADLAYOUT", so that
might be an hint.

The configuration I'm using is cfa10036_defconfig.

Thanks,
Maxime

-- 
Maxime Ripard, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
