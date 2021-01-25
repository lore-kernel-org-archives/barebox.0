Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l3xNZ-0002FW-1I
 for barebox@lists.infradead.org; Mon, 25 Jan 2021 08:37:46 +0000
References: <CAP1tNvT79QvYYTL9O+V+HR=XVTKHS=UxJtc1ZvNaMu1yQZns9w@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <a8d24265-a9e7-c521-c0b1-cc8e0691d636@pengutronix.de>
Date: Mon, 25 Jan 2021 09:37:41 +0100
MIME-Version: 1.0
In-Reply-To: <CAP1tNvT79QvYYTL9O+V+HR=XVTKHS=UxJtc1ZvNaMu1yQZns9w@mail.gmail.com>
Content-Language: en-US
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
Subject: Re: AM335x NAND write hungs
To: Alexander Shiyan <eagle.alexander923@gmail.com>, barebox@lists.infradead.org

Hello,

On 25.01.21 09:20, Alexander Shiyan wrote:
> Hello.
> 
> I recently upgraded my barebox from 2020.11 to 2021.01 for a custom board
> based on TI AM335x processor.
> The update revealed the inoperability of writing to NAND. When trying to write,
> the bootloader hangs forever.
> Reverting the commit "mtd: nand: omap_gpmc: Fix wrong length check" helps
> to solve the problem.

What happens when changing the condition to len > 0?

> Does anyone have similar problems?
> 
> Thanks!
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
