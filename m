Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBGl2-00078O-Ql
 for barebox@lists.infradead.org; Wed, 25 Apr 2018 09:30:47 +0000
Date: Wed, 25 Apr 2018 11:30:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180425093024.joj7fo72khes57ba@pengutronix.de>
References: <20180422164157.30691-1-mail@schmidt-andreas.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180422164157.30691-1-mail@schmidt-andreas.de>
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
Subject: Re: [PATCH] ARM: arm32: fix realocate_to_curr_addr
To: Andreas Schmidt <mail@schmidt-andreas.de>, g@pengutronix.de
Cc: barebox@lists.infradead.org

Hi Andreas,

On Sun, Apr 22, 2018 at 06:41:57PM +0200, Andreas Schmidt wrote:
> After add aarch64 support (commit 868df08038a91d674a0c50b0c0a2f70dbc445510)
> to realocation, MLO on beaglebone black do not boot any more.
> The issue is, that addition of offset in one if-case was not done.
> This patch fix this.
> 
> Signed-off-by: Andreas Schmidt <mail@schmidt-andreas.de>
> ---
> Hi!
> 
> I've tested this patch only on beablebone black REV C.

Applied, thanks.

It took me a while to reproduce this. I switched to gcc7 a while ago and
this gcc version no longer uses these types of relocation. Then after
using a gcc-4.9.2 I could really see the same issue. The problem arises
when relocate_to_current_adr() is called multiple times, as happens when
the board lowlevel code calls it and the startup code later again. Some
boards do this, one of them being the beagle bone.

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
