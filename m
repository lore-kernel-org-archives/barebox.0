Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og105.obsmtp.com ([64.18.0.180])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RgDve-0005lu-W8
 for barebox@lists.infradead.org; Thu, 29 Dec 2011 11:13:47 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 29 Dec 2011 11:13:29 +0000
Message-Id: <1325157211-3986-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 0/2] PPC multiple architecture preparation
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

These patches allow for the future addition of other PPC architectures.

I am planning on submitting the mpc85xx support quite soon.

MPC8xxx patches are quite large. How would you like to handle them?

Renaud Barbier (2):
  Preparation stage to support multiple PPC architectures.
  Make clock shift and mask configurable based on the processor type.

 arch/ppc/Kconfig                  |   45 ++++++------------------------
 arch/ppc/configs/pcm030_defconfig |    2 +
 arch/ppc/lib/time.c               |    6 ++--
 arch/ppc/mach-mpc5xxx/Kconfig     |   54 +++++++++++++++++++++++++++++++++++++
 4 files changed, 68 insertions(+), 39 deletions(-)

-- 
1.7.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
