Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiJoC-0001Wh-Em
 for barebox@lists.infradead.org; Fri, 31 May 2013 07:31:33 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 31 May 2013 09:30:08 +0200
References: <1369984443-8790-1-git-send-email-s.hauer@pengutronix.de>
 <1369984443-8790-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369984443-8790-2-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201305310930.08508.jbe@pengutronix.de>
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
Subject: Re: [PATCH 2/6] mci: do not limit clock to card capabilities
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Sascha Hauer wrote:
> No need to limit the clock to the cards capabilities since the values
> passed to mci_set_clock are based on the cards capabilities. This
> enables MMC high speed cards to operate at higher speeds since on
> this cards the csd field only holds the non highspeed maximum clock.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/mci-core.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 283df2f..895108f 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -664,10 +664,6 @@ static void mci_set_clock(struct mci *mci, unsigned clock)
>       if (clock < host->f_min) 
>  		clock = host->f_min;
>
> -	/* check against the limit at the card's side */
> -	if (mci->tran_speed != 0 && clock > mci->tran_speed)
> -		clock = mci->tran_speed;
> -
>  	host->clock = clock;	/* the new target frequency */
>  	mci_set_ios(mci);
>  }

I'm not sure. In mci_startup_sd() there is a very primitive decision for the
clock frequency.

	/* if possible, speed up the transfer */
	if (mci->card_caps & MMC_MODE_HS)
		mci_set_clock(mci, 50000000);
	else
		mci_set_clock(mci, 25000000);

And yes, the spec tells us, there are two cards at 3.3 V available: 25 MHz and
50 MHz. But theoretically a vendor can limit the max transfer speed to a
different value. I'm confused about the spec here, as the card reports a max
transfer speed *and* a standard/high speed bit. Which one is reliable?

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
