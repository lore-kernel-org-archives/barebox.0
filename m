Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fPmNC-0003iQ-Nh
 for barebox@lists.infradead.org; Mon, 04 Jun 2018 10:06:00 +0000
Date: Mon, 4 Jun 2018 12:05:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180604100541.reigx6ufnln4i5av@pengutronix.de>
References: <20180604125441.539e9f31bc7efd63068c5796@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180604125441.539e9f31bc7efd63068c5796@gmail.com>
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
Subject: Re: barebox large disk problem
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 04, 2018 at 12:54:41PM +0300, Antony Pavlov wrote:
> Hi!
> 
> I'm trying to use ST2000DM006-2DM164 SATA 2000 GB hard disk with barebox.
> This disk has 3907029168 sectors.
> 
> Alas barebox uses 32-bit signed integer to store disk sector count
> (int num_blocks from struct block_device, see include/block.h for details)
> and hereby the ST2000DM006 disk is too large for barebox.
> 
> I'm planning to increase block_device.num_block size from 32bit to 64bit.
> But changing struct block_device may have some unobvious drawbacks
> and I can't test all block_device usage situations (e.g. EFI).
> 
> Any suggestions?

You do the change and send it to the list, we'll review it carefully ;)

In case of EFI I assume you mean the efi-block-io driver. Here EFI
internally works with 64bit variables anyway which we narrow down to
32bit for barebox. Using the 64bit variables instead shouldn't have any
undesired side effects.

It could be that some architectures lack some 64bit modulo or div
operations, but we'll notice that in the compile test.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
