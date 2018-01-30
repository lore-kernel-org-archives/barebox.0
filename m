Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egPpL-0005KC-T4
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 06:55:33 +0000
Date: Tue, 30 Jan 2018 07:55:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180130065519.wgk25lafzu7aarfi@pengutronix.de>
References: <20180128103326.16447-1-aleksander@aleksander.es>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180128103326.16447-1-aleksander@aleksander.es>
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
Subject: Re: [PATCH] bbremote: rename command subparser variables
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Sun, Jan 28, 2018 at 11:33:26AM +0100, Aleksander Morgado wrote:
> Don't reuse unrelated subparser variables for new command subparsers,
> make each subparser have its own variable.
> 
> Just for consistency really, not a bugfix.
> 
> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> ---
>  scripts/remote/main.py | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/remote/main.py b/scripts/remote/main.py
> index bd304723b..79203df05 100644
> --- a/scripts/remote/main.py
> +++ b/scripts/remote/main.py
> @@ -139,15 +139,15 @@ parser_run.set_defaults(func=handle_run)
>  parser_ping = subparsers.add_parser('ping', help="test connection")
>  parser_ping.set_defaults(func=handle_ping)
>  
> -parser_ping = subparsers.add_parser('getenv', help="get a barebox environment variable")
> -parser_ping.add_argument('arg', nargs='+', help="variable name")
> -parser_ping.set_defaults(func=handle_getenv)
> +parser_getenv = subparsers.add_parser('getenv', help="get a barebox environment variable")
> +parser_getenv.add_argument('arg', nargs='+', help="variable name")
> +parser_getenv.set_defaults(func=handle_getenv)
>  
> -parser_run = subparsers.add_parser('listen', help="listen for an incoming connection")
> -parser_run.set_defaults(func=handle_listen)
> +parser_listen = subparsers.add_parser('listen', help="listen for an incoming connection")
> +parser_listen.set_defaults(func=handle_listen)
>  
> -parser_run = subparsers.add_parser('console', help="connect to the console")
> -parser_run.set_defaults(func=handle_console)
> +parser_console = subparsers.add_parser('console', help="connect to the console")
> +parser_console.set_defaults(func=handle_console)
>  
>  args = parser.parse_args()
>  logging.basicConfig(level=VERBOSITY[args.verbose],
> -- 
> 2.15.1
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
