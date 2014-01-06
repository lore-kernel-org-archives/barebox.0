Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W060b-000450-AD
 for barebox@lists.infradead.org; Mon, 06 Jan 2014 08:58:06 +0000
Date: Mon, 6 Jan 2014 09:52:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140106085242.GC24559@pengutronix.de>
References: <1387957805-1532-1-git-send-email-antonynpavlov@gmail.com>
 <1387957805-1532-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1387957805-1532-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/5] miitool: change behaviour closer to linux' mii-tool
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Dec 25, 2013 at 11:50:01AM +0400, Antony Pavlov wrote:
> miitool without arguments will try to show status for all phys.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> +static void mdiobus_show(struct device_d *dev, char *phydevname, int verbose)
> +{
> +	struct mii_bus *mii = to_mii_bus(dev);
> +	int i, ret;

Applied this series with this unused variable removed...

> @@ -227,9 +244,6 @@ static int do_miitool(int argc, char *argv[])
>  		case 'v':
>  			verbose++;
>  			break;
> -		case 's':
> -			scan = 1;
> -			break;

...and also removed 's' from the options string.

This behaviour looks definitely better than what I did with the
additional 's' option.

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
