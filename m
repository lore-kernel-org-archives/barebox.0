Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x230.google.com ([2a00:1450:4010:c07::230])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fPmCU-0003XQ-S8
 for barebox@lists.infradead.org; Mon, 04 Jun 2018 09:54:55 +0000
Received: by mail-lf0-x230.google.com with SMTP id v135-v6so24223009lfa.9
 for <barebox@lists.infradead.org>; Mon, 04 Jun 2018 02:54:41 -0700 (PDT)
Date: Mon, 4 Jun 2018 12:54:41 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180604125441.539e9f31bc7efd63068c5796@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: barebox large disk problem
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi!

I'm trying to use ST2000DM006-2DM164 SATA 2000 GB hard disk with barebox.
This disk has 3907029168 sectors.

Alas barebox uses 32-bit signed integer to store disk sector count
(int num_blocks from struct block_device, see include/block.h for details)
and hereby the ST2000DM006 disk is too large for barebox.

I'm planning to increase block_device.num_block size from 32bit to 64bit.
But changing struct block_device may have some unobvious drawbacks
and I can't test all block_device usage situations (e.g. EFI).

Any suggestions?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
