Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WcuSG-0004wD-JC
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 10:31:05 +0000
Date: Wed, 23 Apr 2014 12:30:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140423103042.GR5858@pengutronix.de>
References: <1398244766-5843-1-git-send-email-jbe@pengutronix.de>
 <1398244766-5843-2-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398244766-5843-2-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/3] net/ifup.c: don't fail silently
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 23, 2014 at 11:19:24AM +0200, Juergen Borleis wrote:
> Since commit a162dfe50345d3461010759f8a0e79f7e388c140 the ifup command is implemented in C and runs up to two external scripts.
> If one of these scripts return with an error code, the command terminates silently. This can confuse a user because there is
> no hint about the reason why it fails. Add error messages to avoid this case.
> 
> Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
> ---
>  net/ifup.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/net/ifup.c b/net/ifup.c
> index 7b63136..c74120c 100644
> --- a/net/ifup.c
> +++ b/net/ifup.c
> @@ -70,14 +70,18 @@ int ifup(const char *name, unsigned flags)
>  	cmd_discover = asprintf("/env/network/%s-discover", name);
>  
>  	ret = run_command(cmd);
> -	if (ret)
> +	if (ret) {
> +		pr_err("Running '%s' fails\n", cmd);

It failed, not it fails. Also, please print the error code along with
the message.

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
