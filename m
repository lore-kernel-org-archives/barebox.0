Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5vJE-0007l7-EY
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 09:40:53 +0000
Message-ID: <511CB116.8050705@free-electrons.com>
Date: Thu, 14 Feb 2013 10:40:38 +0100
From: Maxime Ripard <maxime.ripard@free-electrons.com>
MIME-Version: 1.0
References: <1360774211-10983-1-git-send-email-maxime.ripard@free-electrons.com>
 <1360775819-5411-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1360775819-5411-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] Add warning above get_ram_size
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le 13/02/2013 18:16, Sascha Hauer a =E9crit :
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/memsize.c |    3 +++
>  1 file changed, 3 insertions(+)
> =

> diff --git a/common/memsize.c b/common/memsize.c
> index d149e41..ef6381b 100644
> --- a/common/memsize.c
> +++ b/common/memsize.c
> @@ -33,6 +33,9 @@
>   * Check memory range for valid RAM. A simple memory test determines
>   * the actually available RAM size between addresses `base' and
>   * `base + maxsize'.
> + *
> + * This function modifies the RAM. Do not use it if you're running from
> + * the RAM you are going to detect!
>   */

Actually, I don't see how it modifies the RAM, at least permanently. The
values it erase are backed up, and there's no concurrency at barebox
level, so we are sure that the value saved will still be the one that
would need to be backed up at the end of the function, right?

Maxime

-- =

Maxime Ripard, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
