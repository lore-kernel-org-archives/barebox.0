Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eifM9-00010I-AL
 for barebox@lists.infradead.org; Mon, 05 Feb 2018 11:54:43 +0000
Message-ID: <1517831666.6988.3.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 05 Feb 2018 12:54:26 +0100
In-Reply-To: <7694566d-60bb-27be-7026-4aa2b7670db7@arcor.de>
References: <7694566d-60bb-27be-7026-4aa2b7670db7@arcor.de>
Mime-Version: 1.0
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
Subject: Re: barebox support for the TI IDK board
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>, barebox@lists.infradead.org

Hi,

On Sun, 2018-02-04 at 13:16 +0100, Giorgio Dal Molin wrote:
> I've recently received the Industrial Development Kit TMDXIDK5728
> from Texas Instruments, with the AM5728 soc on it, and would like to
> boot a linux kernel with barebox.
> I had a look through the barebox git repo and found the dts and dtsi
> files for the IDK board, ported from the linux kernel repo.
> 
> My question is: is this board/soc really supported by barebox ?

No, barebox currently only supports the AM335x from the industrial IT
SoC series (found for example on the beaglebone). There is no code for
the AM4* and AM5* SoCs.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
