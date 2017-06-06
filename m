Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dI8N5-0004co-Ox
 for barebox@lists.infradead.org; Tue, 06 Jun 2017 06:53:45 +0000
Date: Tue, 6 Jun 2017 08:53:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170606065321.rlogztxfb4l4ap5e@pengutronix.de>
References: <20170602120105.20663-1-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170602120105.20663-1-aleksander@aleksander.es>
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
Subject: Re: [PATCH] sandbox: new --stdinout option to enable a bidirectional
 console
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Fri, Jun 02, 2017 at 02:01:05PM +0200, Aleksander Morgado wrote:
> In addition to allowing read-only and write-only consoles with --stdin
> and --stdout, we now allow bidirectional read/write consoles with FIFO
> files. This is e.g. to allow doing RATP over the FIFO based consoles.
> 
> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> ---
>  arch/sandbox/os/common.c | 53 ++++++++++++++++++++++++++++++++++++++----------
>  1 file changed, 42 insertions(+), 11 deletions(-)

Applied, thanks.

Have you tried RATP over the FIFO consoles? Does it work as expected?

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
