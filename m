Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [217.70.178.89] (helo=slow3-v.mail.gandi.net)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NRtOl-0002dL-SD
	for barebox@lists.infradead.org; Mon, 04 Jan 2010 20:19:36 +0000
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by slow3-v.mail.gandi.net (Postfix) with ESMTP id 783F142066
	for <barebox@lists.infradead.org>; Mon,  4 Jan 2010 20:47:33 +0100 (CET)
Received: from d4rwin.no-ip.org (25.Red-79-153-8.dynamicIP.rima-tde.net
	[79.153.8.25])
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id AF7A4225187
	for <barebox@lists.infradead.org>; Mon,  4 Jan 2010 20:47:02 +0100 (CET)
Date: Mon, 4 Jan 2010 20:42:46 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100104194246.GA19855@darwin>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] CFI flash drivers: Fix misleading trace when
	unprotecting a sector
To: barebox@lists.infradead.org

When (un)protecting a flash sector with the CFI flash drivers a
trace "protect 0x..." is generated, independently of the type of
operation. This is misleading in case of an unprotect. Tell the truth
when unprotecting a sector.

Matthias Kaehlcke (2):
  CFI flash driver: Fix misleading trace when unprotecting a sector
  New CFI flash driver: Fix misleading trace when unprotecting a sector

 drivers/nor/cfi_flash.c     |    3 ++-
 drivers/nor/cfi_flash_new.c |    4 +++-
 2 files changed, 5 insertions(+), 2 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
