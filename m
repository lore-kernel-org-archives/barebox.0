Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aMWGI-0006LB-4H
 for barebox@lists.infradead.org; Fri, 22 Jan 2016 07:36:02 +0000
Date: Fri, 22 Jan 2016 08:35:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160122073540.GP13058@pengutronix.de>
References: <1453190117-27933-1-git-send-email-s.hauer@pengutronix.de>
 <CAGm1_kvriwy-P1VHiq91cEmJHOpWR3VHu9q4SQWGU+PjRkJoTQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGm1_kvriwy-P1VHiq91cEmJHOpWR3VHu9q4SQWGU+PjRkJoTQ@mail.gmail.com>
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
Subject: Re: [PATCH] bootm: Add option to force booting signed images
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Yegor,

On Tue, Jan 19, 2016 at 09:03:17AM +0100, Yegor Yefremov wrote:
> Hi Sascha,
> 
> On Tue, Jan 19, 2016 at 8:55 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > With CONFIG_BOOTM_FORCE_SIGNED_IMAGES the bootm code will refuse to boot
> > unsigned images. Since currently FIT is the only image type which
> > supports signing this means we with this option we enforce using FIT
> 
> comma is missing after "supports signing", "we" after "means" must go away
> 
> > images. All additionally passed in device trees and initrds will be
> 
> a word is missing between "All" and "additionally"

I think not, I reread the sentence and it still makes sense to me.

I fixed the other things you mentioned.

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
