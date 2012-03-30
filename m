Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SDXtU-000091-Ju
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 09:13:18 +0000
Date: Fri, 30 Mar 2012 11:12:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120330091255.GX3852@pengutronix.de>
References: <20120330042713.GX444@game.jcrosoft.org>
 <1333081913-19168-7-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1333081913-19168-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 7/8] net: dns: export resolved ip to var resolved_ip
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 30, 2012 at 06:31:52AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This will allow to use it in scripting.
> 
>  {
>  	IPaddr_t ip;
>  
> +	setenv("resolved_ip", "");
> +
>  	if (argc != 2)
>  		return COMMAND_ERROR_USAGE;
>  
> @@ -248,6 +251,7 @@ static int do_host(int argc, char *argv[])
>  		printf("%s is at ", argv[1]);
>  		print_IPaddr(ip);
>  		printf("\n");
> +		setenv_ip("resolved_ip", ip);

I smell complex environment scripts here. Maybe we should rather
integrate dns into getenv_ip. This will help all commands using ip
addresses instead of putting the burden of resolving a host name into
the environment.

Sascha

>  	}
>  
>  	return 0;
> @@ -262,3 +266,4 @@ BAREBOX_CMD_START(host)
>  	BAREBOX_CMD_HELP(cmd_host_help)
>  BAREBOX_CMD_END
>  
> +BAREBOX_MAGICVAR(resolved_ip, "Resolved IP");
> -- 
> 1.7.9.1
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
