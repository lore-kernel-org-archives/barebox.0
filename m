Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9Srn-0003tN-LL
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 05:44:01 +0000
Date: Tue, 22 Jul 2014 07:43:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140722054337.GW23235@pengutronix.de>
References: <20140721213737.GA6300@amd.pavel.ucw.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140721213737.GA6300@amd.pavel.ucw.cz>
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
Subject: Re: tftp: more helpful help text
To: Pavel Machek <pavel@ucw.cz>
Cc: barebox@lists.infradead.org

On Mon, Jul 21, 2014 at 11:37:37PM +0200, Pavel Machek wrote:
> 
> It took me a while to figure out syntax of tftp command, document that 
> server address is taken from environment.
> 
> Signed-off-by: Pavel Machek <pavel@ucw.cz>

Applied, thanks

Sascha

> 
> diff --git a/commands/tftp.c b/commands/tftp.c
> index c066631..62b9424 100644
> --- a/commands/tftp.c
> +++ b/commands/tftp.c
> @@ -92,7 +92,8 @@ err_free:
>  }
>  
>  BAREBOX_CMD_HELP_START(tftp)
> -BAREBOX_CMD_HELP_TEXT("Load (or save) a file via TFTP.")
> +BAREBOX_CMD_HELP_TEXT("Load (or save) a file via TFTP. SOURCE is a path on server,")
> +BAREBOX_CMD_HELP_TEXT("server address is taken from the environment (ethX.serverip).")
>  BAREBOX_CMD_HELP_TEXT("")
>  BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT ("-p", "push to TFTP server")
> 
> -- 
> (english) http://www.livejournal.com/~pavelmachek
> (cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
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
