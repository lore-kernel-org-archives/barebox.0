Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiJr5-0001Zz-Qs
 for barebox@lists.infradead.org; Fri, 31 May 2013 07:34:32 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 31 May 2013 09:33:09 +0200
References: <1369984443-8790-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369984443-8790-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201305310933.09632.jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/6] mci: print current clock in info
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> When printing the cards information the actual clock is much
> more interesting than what the card could support.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/mci-core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 416168f..283df2f 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1395,7 +1395,7 @@ static void mci_info(struct device_d *dev)
>  		mci->cid[2], mci->cid[3]);
>  	printf("   CSD: %08X-%08X-%08X-%08X\n", mci->csd[0], mci->csd[1],
>  		mci->csd[2], mci->csd[3]);
> -	printf("  Max. transfer speed: %u Hz\n", mci->tran_speed);
> +	printf("  clock: %u Hz\n", mci->host->clock);
>  	printf("  Manufacturer ID: %02X\n", extract_mid(mci));
>  	printf("  OEM/Application ID: %04X\n", extract_oid(mci));
>  	printf("  Product name: '%c%c%c%c%c'\n", mci->cid[0] & 0xff,

But here you ask for the card itself. If you want to know the currently *used* 
transfer speed you must ask the interface.

Please keep this information available, as it helps others to get some 
information about the used card and might help to debug.

jbe
-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
