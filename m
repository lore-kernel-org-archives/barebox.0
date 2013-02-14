Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5u11-0006aK-An
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 08:18:00 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 14 Feb 2013 09:16:36 +0100
References: <1360773918-10663-1-git-send-email-maxime.ripard@free-electrons.com>
 <1360773918-10663-2-git-send-email-maxime.ripard@free-electrons.com>
In-Reply-To: <1360773918-10663-2-git-send-email-maxime.ripard@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201302140916.36347.jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/2] cfa-10036: Use the second MMC partition to store the
 environment
To: barebox@lists.infradead.org
Cc: Maxime Ripard <maxime.ripard@free-electrons.com>, Brian Lilly <brian@crystalfontz.com>

Maxime Ripard wrote:
> Since the only storage medium on the cfa-10036 is the MMC card, we need
> to have a registered environment partition on it if we want to be able
> to modify at runtime.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
> ---
>  arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |   44
> +++++++++++++++++++++- 1 file changed, 43 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
> index b59dbab..1821b10 100644 
> --- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
> +++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
> @@ -97,9 +97,46 @@ static int cfa10036_mem_init(void)
>  }
>  mem_initcall(cfa10036_mem_init);
>
> +/**
> + * Try to register an environment storage on the attached MCI card
> + * @return 0 on success
> + *
> + * We rely on the existence of a usable SD card, already attached to
> + * our system, to get something like a persistent memory for our environment.
> + * If this SD card is also the boot media, we can use the second partition
> + * for our environment purpose (if present!). 
> + */
> +static int register_persistant_environment(void)

register_persist*e*nt_environment

Seems a copy from my typo in the falconwing. I really should fix it :))

> [...]

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
