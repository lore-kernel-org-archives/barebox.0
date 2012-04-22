Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SM1jY-0003w0-GU
 for barebox@lists.infradead.org; Sun, 22 Apr 2012 18:42:05 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
Date: Sun, 22 Apr 2012 20:38:50 +0200
Message-ID: <m3hawbbohx.fsf@intrepid.localdomain>
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
Subject: ARM page 0 set for page fault
To: barebox@lists.infradead.org

Hi,

I'm trying to port my old IXP4xx (Intel XScale ARM big-endian mostly)
patches to the current Barebox. Noticed the page #0 (virtual = physical
addresses 0 - 0x1FFF, or the first 4 KiB of RAM) is not present:

commit abcf935e
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Sun Aug 7 19:00:56 2011 +0200

    ARM mmu: use high vectors if possible

    Using high vectors allows us to map a faulting zero page to
    catch NULL pointer dereferences.

Unfortunately this causes "md" (memory dump) etc. to fail (also
executing Linux kernel fails since the tags are located at 0x100 -
should I relocate them?).

Should I do it differently, e.g. access RAM through an alias (IXP4xx has
RAM aliased all over the place, one could also use MMU tables for this)
so that the page fault only occurs on internal, not user-visible
accesses (= users should not be able to access the first virtual page,
even it they think the do)?
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
