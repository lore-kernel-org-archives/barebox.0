Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dGKZV-0006iS-F3
 for barebox@lists.infradead.org; Thu, 01 Jun 2017 07:31:07 +0000
Date: Thu, 1 Jun 2017 09:30:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170601073043.3r6cbj3ib3sjv72o@pengutronix.de>
References: <20170530214634.6768-1-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170530214634.6768-1-aleksander@aleksander.es>
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
Subject: Re: [PATCH] Documentation: remote-control: fix typo
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Tue, May 30, 2017 at 11:46:34PM +0200, Aleksander Morgado wrote:
> Correctly reference `--port` instead of	`--baudrate` when explaining
> how to specify the port.
> 
> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> ---
>  Documentation/user/remote-control.rst | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/remote-control.rst b/Documentation/user/remote-control.rst
> index 99c2181df..217251429 100644
> --- a/Documentation/user/remote-control.rst
> +++ b/Documentation/user/remote-control.rst
> @@ -53,9 +53,9 @@ configuring bbremote
>  ^^^^^^^^^^^^^^^^^^^^
>  
>  bbremote needs the port and possibly the baudrate to access the remote
> -barebox. The port can be configured with the ``--baudrate`` option or
> -with the ``BBREMOTE_PORT`` environment variable. The port can either be
> -the device special file if it's a local port or if it's a remote port a
> +barebox. The port can be configured with the ``--port`` option or with
> +the ``BBREMOTE_PORT`` environment variable. The port can either be the
> +device special file if it's a local port or if it's a remote port a
>  string of the form: ``rfc2217://host:port``. The baudrate can be given
>  with the ``--baudrate`` option or the ``BBREMOTE_BAUDRATE`` environment
>  variable. For the rest of this document it is assumed that ``bbremote``
> @@ -131,4 +131,3 @@ This can be mounted on barebox using the regular mount command using
>    bbremote --export=somedir console
>    mkdir -p /ratpfs; mount -t ratpfs none /ratpfs
>    ls /ratpfs
> -
> -- 
> 2.12.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
