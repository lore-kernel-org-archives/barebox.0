Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGOel-0004XQ-PY
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 06:30:11 +0000
Date: Tue, 25 Sep 2012 08:30:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120925063005.GW1322@pengutronix.de>
References: <1348517762-30088-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348517762-30088-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [For next PATCH 1/1] defaultenv: fix typo in dhco bootp oftree
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 24, 2012 at 10:16:02PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> it's global.dhcp.oftree

Applied, thanks

Sascha

> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  defaultenv/bin/boot |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
> index 4e2056e..c17ccdb 100644
> --- a/defaultenv/bin/boot
> +++ b/defaultenv/bin/boot
> @@ -51,7 +51,7 @@ if [ x$ip = xdhcp -o x$ip = "xdhcp-barebox" ]; then
>  			kernelimage=${global.dhcp.bootfile}
>  		fi
>  		if [ x$global.dhcp.oftree_file} != x ]; then
> -			oftreeimage=${global.dhcp_oftree_file}
> +			oftreeimage=${global.dhcp.oftree_file}
>  		fi
>  	fi
>  fi
> -- 
> 1.7.10.4
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
