Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMgB4-0000ZT-RP
	for barebox@lists.infradead.org; Thu, 10 Jun 2010 11:44:08 +0000
Date: Thu, 10 Jun 2010 13:44:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100610114405.GL20799@pengutronix.de>
References: <1276156332-7160-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1276156332-7160-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] eukrea_cpuimx25: add compressed logo support
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 10, 2010 at 09:52:11AM +0200, Eric B=E9nard wrote:
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  board/eukrea_cpuimx25/env/bin/init |    3 +++
>  1 files changed, 3 insertions(+), 0 deletions(-)
> =

> diff --git a/board/eukrea_cpuimx25/env/bin/init b/board/eukrea_cpuimx25/e=
nv/bin/init
> index 8bcc732..335d7ae 100644
> --- a/board/eukrea_cpuimx25/env/bin/init
> +++ b/board/eukrea_cpuimx25/env/bin/init
> @@ -14,6 +14,9 @@ fi
>  =

>  if [ -f /env/logo.bmp ]; then
>  	bmp /env/logo.bmp
> +elif [ -f /env/logo.bmp.lzo ]; then
> +	unlzo /env/logo.bmp.lzo /logo.bmp
> +	bmp /logo.bmp
>  fi

So the lzo support also is of other use than only for the kernel.
Nice :)

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
