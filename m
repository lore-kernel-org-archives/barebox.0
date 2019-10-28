Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP2us-0007DX-D7
 for barebox@lists.infradead.org; Mon, 28 Oct 2019 11:10:31 +0000
Date: Mon, 28 Oct 2019 12:10:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191028111028.2l7xuqtmgtdmu2f6@pengutronix.de>
References: <180b0932-d2ab-7142-d76a-8937eb76d99c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <180b0932-d2ab-7142-d76a-8937eb76d99c@gmail.com>
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
Subject: Re: Uefi version with 'bare metal' drivers?
To: "aanno.trash" <aanno.trash@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Sat, Oct 26, 2019 at 11:28:59AM +0200, aanno.trash wrote:
> Well,
> 
> I tried the uefi version of barebox on my lenovo miix 320. It is
> working, but it has the same problem like all the boot loaders I tried
> before: it does not recognize a SDCard that can be inserted into the
> display. On a running linux, it is recognized as 2nd eMMC (**not** as a
> USB device).

So you mean as /dev/mmcblkx?

> 
> The uefi included with the device has the problem as well. So this is my
> question: When using the uefi version of barebox, is it possible to to
> include a 'bare metal' eMMC driver? If it is, how to do that?

Yes, that should be possible, the question is rather if it's worth the
effor. You would have to add a driver or change an existing one. First
thing to know is which hardware you have. What's your dmesg output for
this device? Is it PCI? If yes, you would have to add a PCI driver as
well.

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
