Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VbTZY-0007hV-GZ
 for barebox@lists.infradead.org; Wed, 30 Oct 2013 11:04:25 +0000
Received: from thebe.hi.pengutronix.de ([2001:6f8:1178:2:5e26:aff:fe2b:7cc4])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1VbTZB-0003eC-9J
 for barebox@lists.infradead.org; Wed, 30 Oct 2013 12:04:01 +0100
From: =?iso-8859-1?q?J=FCrgen_Beisert?= <jbe@pengutronix.de>
Date: Wed, 30 Oct 2013 12:05:51 +0100
References: <1383129475-20448-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1383129475-20448-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201310301205.51054.jbe@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] blspec: Fix crash with menu disabled
To: barebox@lists.infradead.org

On Wednesday 30 October 2013 11:37:55 Sascha Hauer wrote:
> blspec->menu is only valid when menu support is enabled. Check for it
> before dereferencing the pointer.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  include/blspec.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/include/blspec.h b/include/blspec.h
> index 8422e5b..aa836e6 100644
> --- a/include/blspec.h
> +++ b/include/blspec.h
> @@ -84,7 +84,8 @@ static inline void blspec_free(struct blspec *blspec)
>
>  	list_for_each_entry_safe(entry, tmp, &blspec->entries, list)
>  		blspec_entry_free(entry);
> -	free(blspec->menu->display);
> +	if (blspec->menu)
> +		free(blspec->menu->display);
>  	free(blspec->menu);
>  	free(blspec);
>  }

Tested-by: Juergen Beisert <jbe@pengutronix.de>

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Beisert =A0 =A0 =A0 =A0 =A0 =A0 |
Linux Solutions for Science and Industry =A0 =A0 =A0| http://www.pengutroni=
x.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
