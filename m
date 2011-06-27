Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qb8IX-00039t-OH
	for barebox@lists.infradead.org; Mon, 27 Jun 2011 09:40:06 +0000
Date: Mon, 27 Jun 2011 11:39:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110627093957.GW6069@pengutronix.de>
References: <BANLkTi=brEnBzO_PityzMz6J5-JMwPa+xQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTi=brEnBzO_PityzMz6J5-JMwPa+xQ@mail.gmail.com>
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
Subject: Re: can't send patch to maillist
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

Hi Antony,

On Mon, Jun 27, 2011 at 11:49:05AM +0400, Antony Pavlov wrote:
> Hi!
> 
>  I have sent two patches to maillist via git send-email:
>    0001-include-linux-stat.h-make-MIPS-arch-possible.patch
>    0002-Add-MIPS-arch-support-to-barebox.patch
> 
>  The first patch is small (<2 K), but the second is grand (>100 K).
> The first patch received successfully, but the second is not.
> My second attempt to send the patches has the same result.

Mips support. Nice ;)

The list limit is at 100k. Maybe you move arch/mips/include/asm/mipsregs.h
to a seperate patch. This should make the results small enough.

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
