Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TS5OD-0001fp-Jl
 for barebox@lists.infradead.org; Sat, 27 Oct 2012 12:21:22 +0000
Date: Sat, 27 Oct 2012 14:21:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121027122118.GD1641@pengutronix.de>
References: <1351278011-26982-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351278011-26982-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [RFC PATCH] commands: change Y-Modem implementation
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

Hi Robert,

On Fri, Oct 26, 2012 at 09:00:11PM +0200, Robert Jarzmik wrote:
> The current Y-Modem implementation has some limitations:
>  - Y-Modem/G protocol is not supported
>  - Multiple files (aka. batch) transfers are not supported
>  - Transfer speed over fast lines (USB console) is slow
>  - Code is not trivial to maintain (personnal opinion)

This is my personal opinion aswell.

From a first sight your code looks much better. When the problems are
solved we should go and replace the old code.

If you continue on this it would be nice to separate the protocol
implemention from the command so that it can be used from C code aswell
rather than only from the command.

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
