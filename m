Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vr1Lc-0004ti-6V
 for barebox@lists.infradead.org; Thu, 12 Dec 2013 08:10:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Vr1LG-0002bj-JJ
 for barebox@lists.infradead.org; Thu, 12 Dec 2013 09:09:54 +0100
Date: Thu, 12 Dec 2013 09:09:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131212080954.GF24559@pengutronix.de>
References: <1386685809-21530-1-git-send-email-y>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1386685809-21530-1-git-send-email-y>
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
Subject: Re: [PATCH 1/3] net: cpsw: Fix gmii_sel config
To: y@numalfix.phytec.de
Cc: barebox@lists.infradead.org

On Tue, Dec 10, 2013 at 03:30:07PM +0100, y@numalfix.phytec.de wrote:
> From: Jan Weitzel <j.weitzel@phytec.de>
> 
> Prober slave_num is needed by cpsw_gmii_sel_am335x to calc reg value.
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied, thanks

Sascha

> ---
>  drivers/net/cpsw.c |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
> index 5e68e1b..52adf50 100644
> --- a/drivers/net/cpsw.c
> +++ b/drivers/net/cpsw.c
> @@ -1074,6 +1074,7 @@ static int cpsw_probe_dt(struct cpsw_priv *priv)
>  
>  			slave->phy_id = phy_id[1];
>  			slave->phy_if = of_get_phy_mode(child);
> +			slave->slave_num = i;
>  
>  			i++;
>  		}
> -- 
> 1.7.0.4
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
