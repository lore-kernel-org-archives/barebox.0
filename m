Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MUe-0004R1-Fx
 for barebox@lists.infradead.org; Thu, 27 Feb 2020 16:58:37 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 27 Feb 2020 17:58:23 +0100
Message-Id: <20200227165825.1624-1-a.fatoum@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] USB fastboot onto eMMC: make 30% faster!
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

I got a 2.9G image that I flash via fastboot to the eMMC and that takes
quite a while on my i.MX6Q.

Instead of fixing my image generation to make proper use of the sparse
format's don't care chunk types to save oneself from writing all these
holes at the end of the partitions, I went the easy route by tweaking the
block layer a bit:

barebox v2020.02.0: 445s
With first patch:   376s
With second patch:  300s

Of these 300s, 180s are spent writing zeroes...

Cheers,
Ahmad Fatoum (2):
  usb: gadget: fastboot: call discard_range for sparse files as well
  Revert "block: Adjust cache sizes"

 common/block.c                  | 4 ++--
 drivers/usb/gadget/f_fastboot.c | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
