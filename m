Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gfKfr-0002Yg-6X
 for barebox@lists.infradead.org; Fri, 04 Jan 2019 08:17:48 +0000
Date: Fri, 4 Jan 2019 09:17:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190104081741.mxdgg4dwm4l5s4ki@pengutronix.de>
References: <20190104015641.e6d525f098c5e272694faa62@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190104015641.e6d525f098c5e272694faa62@gmail.com>
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
Subject: Re: barebox on Canon A1100
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>, Thomas Huth <thuth@redhat.com>, Peter Maydell <peter.maydell@linaro.org>, QEMU Developers <qemu-devel@nongnu.org>, qemu-arm <qemu-arm@nongnu.org>

On Fri, Jan 04, 2019 at 01:56:41AM +0300, Antony Pavlov wrote:
> Hi Sascha!
> 
> I have some good news and some bad news.
> 
> First the good news.
> 
> Barebox was used for Day 18 of QEMU 2018 advent (https://www.qemu-advent-calendar.org/2018/).
> 
> Here is a quote:
> 
>   > This is an image for QEMU's emulated Canon A1100 Arm machine:
>   > Play 2048 in the Barebox firmware environment.

Hey nice :)

> 
> The bad news.
> 
> Current master branch barebox for Canon A1100 does not work under qemu,
> barebox v2017.02.0 was used for qemu advent.
> 
> Thomas Huth reported the problem in the qemu-devel mailing
> list two months ago. Please see https://www.mail-archive.com/qemu-devel@nongnu.org/msg571887.html
> for details.
> 
> The commit a43e2bbc468a71 breaks barebox for Canon A1100:
> 
>   > commit a43e2bbc468a71fb8825e8acafb7fac7ad7c6dad
>   > Author: Sascha Hauer <s.hauer@pengutronix.de>
>   > Date:   Wed Mar 7 10:04:07 2018 +0100
>   >
>   >    ARM: return positive offset in get_runtime_offset()
> 
> Any suggestion?

Yes, try again with a recent barebox. There was a bug in this commit that
should be fixed with the following:

| commit 0230365df6601cd561c9e3e368c96222076ec9f5
| Author: Sascha Hauer <s.hauer@pengutronix.de>
| Date:   Wed Dec 12 08:55:31 2018 +0100
| 
|     ARM: fix setup_c when runtime offset is != 0
|     
|     The runtime offset has to be added to the memcpy source address and
|     substracted from the return address. This should have been changed in
|     a43e2bbc46 which changed from returning the negative runtime offset
|     into changing the positive runtime offset. Instead a43e2bbc46 only
|     changed a zero substraction ("subs r4, r0, #0") into a zero addition
|     ("adds r4, r0, #0") which was used as a equal to zero test and changed
|     nothing. This part is reverted here.
|     
|     Fixes wrong copy / return locations when setup_c is called with
|     different runtime and link addresses.
|     
|     fixes: a43e2bbc46 ("ARM: return positive offset in get_runtime_offset()")
|     
|     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

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
