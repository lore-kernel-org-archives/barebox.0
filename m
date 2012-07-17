Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sr9nS-000698-Px
 for barebox@lists.infradead.org; Tue, 17 Jul 2012 15:34:52 +0000
Date: Tue, 17 Jul 2012 17:34:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120717153444.GA30009@pengutronix.de>
References: <1342524182-15436-1-git-send-email-christian.kapeller@cmotion.eu>
 <20120717124925.GA22657@game.jcrosoft.org>
 <5005674F.9030706@cmotion.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5005674F.9030706@cmotion.eu>
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
Subject: Re: [PATCH] arm: support booting of uimages with as barebox payload.
To: Christian Kapeller <christian.kapeller@cmotion.eu>
Cc: barebox@lists.infradead.org

On Tue, Jul 17, 2012 at 03:23:27PM +0200, Christian Kapeller wrote:
> On 07/17/2012 02:49 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 13:23 Tue 17 Jul     , Christian Kapeller wrote:
> >> Packing barebox within an uimage gives us integrity checking.
> >>
> >> Generate the image with:
> >> ./scripts/mkimage -A arm -O barebox -T firmware -C none -d barebox.bin -a 0xffffffff barebox.uimage
> >>
> >> Signed-off-by: Christian Kapeller <christian.kapeller@cmotion.eu>
> >> ---
> > boot it as a linux kernel
> > 
> > it will work
> 
> You are right, it does. But then, I am asking myself, why is there a OS
> definition for 'barebox', when we aren't using it in the first place?

It's derived from U-Boot where it initially was:

#define IH_OS_U_BOOT         17      /* Firmware     */

When renaming U-Boot to barebox this was one of the occurences of
'U_BOOT' that shouldn't have been renamed.

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
