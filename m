Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eizdO-00061B-AZ
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 09:33:52 +0000
Date: Tue, 6 Feb 2018 10:33:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180206093338.v5j5r2b3yha2ctju@pengutronix.de>
References: <20180202111442.12444-1-aleksander@aleksander.es>
 <20180202111442.12444-8-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180202111442.12444-8-aleksander@aleksander.es>
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
Subject: Re: [PATCH 07/10] ratp: implement ping as a standard ratp command
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Fri, Feb 02, 2018 at 12:14:39PM +0100, Aleksander Morgado wrote:
> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> ---
>  commands/Makefile    |  1 +
>  commands/ratp-ping.c | 38 ++++++++++++++++++++++++++++++++++++++
>  common/ratp.c        | 27 ---------------------------

Can we put the ratp commands to a separate directory like
common/ratp/commands/ or similar?
There doesn't seem to be very much code sharing between the regular
commands and their ratp correspondents. Most good commands are written
in the way that the functionality is in common code outside the command
file itself anyway.

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
