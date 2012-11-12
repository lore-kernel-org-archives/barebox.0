Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TXpVD-00011B-TA
 for barebox@lists.infradead.org; Mon, 12 Nov 2012 08:36:22 +0000
Date: Mon, 12 Nov 2012 09:36:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121112083615.GR10369@pengutronix.de>
References: <1352409401-3333-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1352409401-3333-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH v3 1/2] commands: change Y-Modem implementation
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Thu, Nov 08, 2012 at 10:16:40PM +0100, Robert Jarzmik wrote:
> The current Y-Modem implementation has some limitations:
>  - Y-Modem/G protocol is not supported
>  - Multiple files (aka. batch) transfers are not supported
>  - Transfer speed over fast lines (USB console) is slow
>  - Code is not trivial to maintain (personnal opinion)
> 
> This implementation tries to address all these points by
> introducing loady2 command.
> 
> The effects are :
>  - transfer speed for Y-Modem over USB jumps from 2kBytes/s
>    to 180kBytes/s
>  - transfer speed for Y-Modem/G jumps to 200kBytes/s
>  - multiple file transfers are possible
> 
> This command was tested on a USB console and UART 9600bps
> serial line :
>  - NAKs (and retransmissions) were tested for faulty
>    serial lines
>  - multiple file transfers were tested
>  - Y-Modem, Y-Modem/G and X-Modem transfers were tested
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> Tested-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

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
