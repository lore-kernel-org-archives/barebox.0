Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XhBJx-00048t-Fl
 for barebox@lists.infradead.org; Thu, 23 Oct 2014 05:52:26 +0000
Date: Thu, 23 Oct 2014 07:52:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141023055202.GE14443@pengutronix.de>
References: <1413199640-6317-1-git-send-email-embedded24@evers-fischer.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1413199640-6317-1-git-send-email-embedded24@evers-fischer.de>
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
Subject: Re: [PATCH] lib: parameter: fixed doku renamed ip -> ipaddr
To: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 13, 2014 at 01:27:20PM +0200, Rolf Evers-Fischer wrote:
> Long time ago all ".ip" parameters have been replaced with ".ipaddr".
> 
> Signed-off-by: Rolf Evers-Fischer <embedded24@evers-fischer.de>

Applied, thanks

Sascha

> ---
>  lib/parameter.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/lib/parameter.c b/lib/parameter.c
> index 84a632c..c4c30ca 100644
> --- a/lib/parameter.c
> +++ b/lib/parameter.c
> @@ -776,8 +776,8 @@ with device paramters. Device parameters are always strings, although there
>  are functions to interpret them as something else. 'hush' users can access
>  parameters as a local variable which have a dot (.) in them. So setting the
>  IP address of the first ethernet device is a matter of typing
> -'eth0.ip=192.168.0.7' on the console and can then be read back with
> -'echo $eth0.ip'. The @ref devinfo_command command shows a summary about all
> +'eth0.ipaddr=192.168.0.7' on the console and can then be read back with
> +'echo $eth0.ipaddr'. The @ref devinfo_command command shows a summary about all
>  devices currently present. If called with a device id as parameter it shows the
>  parameters available for a device.
>  
> -- 
> 1.9.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
