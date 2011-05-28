Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QQPCW-0004sh-7b
	for barebox@lists.infradead.org; Sat, 28 May 2011 19:29:32 +0000
Date: Sat, 28 May 2011 21:29:30 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20110528192930.GM9907@pengutronix.de>
References: <201105262139.12927.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201105262139.12927.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [Patch/master] pr_warn() must be pr_warning() instead
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, May 26, 2011 at 09:39:12PM +0200, Juergen Beisert wrote:
> Fixing the following warning and error message:
> [...]
> drivers/mci/mci-core.c: In function 'mci_card_probe':
> drivers/mci/mci-core.c:1195:3: warning: implicit declaration of function =
'pr_warn'
> [...]
> drivers/built-in.o: In function `mci_card_probe':
> /home/jb/work/Pengutronix/barebox-development/barebox-git/drivers/mci/mci=
-core.c:1195: undefined reference to `pr_warn'
> =

> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index a06c997..79c5e82 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1192,7 +1192,7 @@ static int mci_card_probe(struct device_d *mci_dev)
>  	/* reset the card */
>  	rc =3D mci_go_idle(mci_dev);
>  	if (rc) {
> -		pr_warn("Cannot reset the SD/MMC card\n");
> +		pr_warning("Cannot reset the SD/MMC card\n");
The kernel has
#define pr_warn pr_warning

Maybe barebox should get that, too?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
