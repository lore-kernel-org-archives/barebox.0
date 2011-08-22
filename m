Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QvOTF-0000T8-6U
	for barebox@lists.infradead.org; Mon, 22 Aug 2011 06:58:54 +0000
Date: Mon, 22 Aug 2011 08:58:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110822065844.GW31404@pengutronix.de>
References: <1313953720-31008-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1313953720-31008-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC-PATCH] Fix loads command
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Sun, Aug 21, 2011 at 11:08:40PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  commands/Kconfig  |    7 +-
>  commands/Makefile |    1 -
>  commands/loads.c  |  295 ++++++++++++++++++++++++++++++-----------------------
>  common/Makefile   |    1 +
>  4 files changed, 171 insertions(+), 133 deletions(-)

There seem to be many whitespace cleanups in this patch. Can you please
post a seperate patch for these for easier review?
I think the baudrate change can be made in unconditionally.

I don't know if you are interested in doing this and I don't mind at
all if you don't, but for a full fixing of these commands I would
suggest the following:

- There should be an internal C API for each load/save function for
  noninteractive use.
- Instead of writing to some sdram offset the commands should write
  to a file descriptor.
- There should be no more than one positional argument to each command.

A good start would be to cleanup the coding style and to make it compile
again.

I just saw that you copied baudrate switching code from loadb.c. It
tries to get the current baudrate with:

(int)simple_strtoul(dev_get_param(&cdev->class_dev, "baudrate"), NULL, 10);

I wonder if it wouldn't be simpler not to change the baudrate when
no baudrate change is requested.

Another thing: since the loads stuff depends on broken and obviously was
never used since U-Boot it would also be acceptable to remove it
completely and to do a fresh start.

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
