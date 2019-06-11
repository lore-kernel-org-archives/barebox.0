Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hac3W-0000bZ-LQ
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 08:23:00 +0000
Date: Tue, 11 Jun 2019 10:22:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190611082256.t7jzzaia3hlv7uia@pengutronix.de>
References: <20190607070658.10919-1-r.czerwinski@pengutronix.de>
 <20190607070658.10919-2-r.czerwinski@pengutronix.de>
 <2b8e26bf-950a-b1ca-2310-83a7c306d678@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2b8e26bf-950a-b1ca-2310-83a7c306d678@pengutronix.de>
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
Subject: Re: [PATCH v3 2/3] add CONFIG_PBL_BREAK option
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, "ore@pengutronix.de" <ore@pengutronix.de>, rcz@pengutronix.de

On Sun, Jun 09, 2019 at 11:36:35PM +0200, Ahmad Fatoum wrote:
> Hello Oleksij,
> 
> On 7/6/19 09:06, Rouven Czerwinski wrote:
> > From: Oleksij Rempel <linux@rempel-privat.de>
> > 
> > With this option barebox will be build with breakpoint instruction
> > in early pbl stage and on main barebox entry. Otherwise two nop
> > instructions are generated which allow binary patching of existing
> > barebox binaries.
> 
> At least arm-linux-gnueabihf-gcc (Debian 8.3.0-2) does some funny
> reordering with the result that the barebox header may no longer be
> at the very start of the image.
> This results e.g. in bootm not working for stm32 bareboxes, because
> file_detect_type no longer detects them as valid barebox ARM images.
> 
> Steps to reproduce with current next:
> 
> $ make stm32mp1_defconfig
> $ make
> $ xxd -l64 -g1 images/start_stm32mp157c_dk2.pblb
> 00000000: 04 46 0d 46 16 46 00 00 01 90 8f e2 19 ff 2f e1  .F.F.F......../.
> 00000010: 00 f0 22 f8 fe e7 fe e7 fe e7 fe e7 fe e7 fe e7  ..".............
> 00000020: fe e7 fe e7 fe e7 fe e7 62 61 72 65 62 6f 78 00  ........barebox.
> 00000030: 00 00 00 00 00 00 00 00 55 55 55 55 55 55 55 55  ........UUUUUUUU
> 
> Note how the new 8 bytes are not after the __barebox_arm_head as they should.
> This leads to the barebox string being shifted from the
> ARM_HEAD_MAGICWORD_OFFSET, where it's expected.
> 
> Could you take a look?

Yes, it doesn't work like this properly. I dropped 2/3 and 3/3 for now.

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
