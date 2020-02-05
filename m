Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izECt-0004pp-KO
 for barebox@lists.infradead.org; Wed, 05 Feb 2020 06:30:41 +0000
References: <180b0932-d2ab-7142-d76a-8937eb76d99c@gmail.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <61ced18a-b23d-35f2-22f1-4364f83ee8f7@pengutronix.de>
Date: Wed, 5 Feb 2020 07:30:37 +0100
MIME-Version: 1.0
In-Reply-To: <180b0932-d2ab-7142-d76a-8937eb76d99c@gmail.com>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Uefi version with 'bare metal' drivers?
To: "aanno.trash" <aanno.trash@gmail.com>, barebox@lists.infradead.org

Hi,

On 26.10.19 11:28, aanno.trash wrote:
> Well,
> 
> I tried the uefi version of barebox on my lenovo miix 320. It is
> working, but it has the same problem like all the boot loaders I tried
> before: it does not recognize a SDCard that can be inserted into the
> display. On a running linux, it is recognized as 2nd eMMC (**not** as a
> USB device).
> 
> The uefi included with the device has the problem as well. So this is my
> question: When using the uefi version of barebox, is it possible to to
> include a 'bare metal' eMMC driver?

yes

> If it is, how to do that?

port a linux driver or write a new one for barebox. Depending on the bus (PCI or USB) you 
may need to add a bus driver.

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
