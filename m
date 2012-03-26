Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SCDjG-0005Rv-Ew
 for barebox@lists.infradead.org; Mon, 26 Mar 2012 17:29:16 +0000
Received: by lagy4 with SMTP id y4so4899588lag.36
 for <barebox@lists.infradead.org>; Mon, 26 Mar 2012 10:29:11 -0700 (PDT)
From: esben.haabendal@gmail.com
Date: Mon, 26 Mar 2012 19:29:03 +0200
Message-Id: <1332782947-3407-1-git-send-email-esben.haabendal@gmail.com>
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
Subject: [PATCH 0/4] mxs: iomux configuration improvements
To: barebox@lists.infradead.org

From: Esben Haabendal <esben.haabendal@gmail.com>

These patches completes the iomux configuration definitions in
iomux-imx28.h, fixes a bug for PWM3 pad configuration, and fixes
support for using BITKEEPER(1) in pad configurations.

RFC: It might be better to just get rid of the split between BITKEEPER
and PULLUP in definitions.  It clearly is a source for subtle bugs
(setting PULLUP does not really do anything if the pad/function is
actually defined as a keeper pad.  As for i.MX28 the reference manual
is not very clear on which pads/functions have pullup instead of
keeper, and I am not sure that the current defintions in barebox is in
sync with the manual and/or the real world.  What do you think, should
I make a patch unifying PULLUP and BITKEEPER.

Esben Haabendal (4):
  mxs: Fix support for BITKEEPER() macro
  mxs: Fix i.MX28 PWM3 iomux configuration
  mxs: Cleanup use of blank lines in i.MX28 iomux configurations
  mxs: Add remaining i.MX28 iomux configurations

 arch/arm/mach-mxs/include/mach/iomux-imx28.h |  163 +++++++++++++++++++-------
 arch/arm/mach-mxs/iomux-imx.c                |    6 +
 2 files changed, 126 insertions(+), 43 deletions(-)

-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
