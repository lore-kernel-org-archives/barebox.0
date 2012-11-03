Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo1.mail-out.ovh.net ([178.33.253.128]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUkdn-0005X6-Fu
 for barebox@lists.infradead.org; Sat, 03 Nov 2012 20:48:28 +0000
Received: from mail635.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id DC3CDFFA7DA
 for <barebox@lists.infradead.org>; Sat,  3 Nov 2012 21:58:54 +0100 (CET)
Date: Sat, 3 Nov 2012 21:46:13 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121103204613.GZ29599@game.jcrosoft.org>
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
Subject: [PATCH 0/3] i2c fix + prepare for at24 support
To: barebox@lists.infradead.org

HI,

	algo-bit: fix sequential read/write support

	i2c: add id_table support
	i2c: add i2c_new_dummy

	This prepare for the at24 eeprom support

The following changes since commit 5c90416b6ffb8d4ca7c4bc6aff92578b555cb965:

  i2c: add versatile support (2012-11-02 02:17:04 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/i2c

for you to fetch changes up to 5526278ac77ecd7109c9c1bbc35d7c74875902e7:

  i2c: add id_table support (2012-11-03 13:33:54 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      i2c: algo-bit add missing acknak
      i2c: introduce i2c_new_dummy
      i2c: add id_table support

 drivers/i2c/algos/i2c-algo-bit.c |   20 ++++++++++++++++++++
 drivers/i2c/i2c.c                |   45 ++++++++++++++++++++++++++++++++++++++++++++-
 include/i2c/i2c.h                |    8 ++++++++
 3 files changed, 72 insertions(+), 1 deletion(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
