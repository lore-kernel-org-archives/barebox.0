Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBhWc-0000AD-JZ
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 09:15:07 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 7 Feb 2014 10:17:28 +0100
References: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
 <1391762936-2747-15-git-send-email-dev@lynxeye.de>
In-Reply-To: <1391762936-2747-15-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201402071017.28531.jbe@pengutronix.de>
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
Subject: Re: [PATCH 14/14] don't cast negative error codes to unsigned size_t
To: barebox@lists.infradead.org

On Friday 07 February 2014 09:48:56 Lucas Stach wrote:
> The cast prevents us from doing proper error checking.
>
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  common/uimage.c | 6 +++---
>  include/image.h | 2 +-
>  2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/common/uimage.c b/common/uimage.c
> index 7fbef86..4296359 100644
> --- a/common/uimage.c
> +++ b/common/uimage.c
> @@ -74,7 +74,7 @@ void uimage_print_contents(struct uimage_handle *handle)
>  }
>  EXPORT_SYMBOL(uimage_print_contents);
>
> -size_t uimage_get_size(struct uimage_handle *handle, unsigned int image_=
no)
> +int uimage_get_size(struct uimage_handle *handle, unsigned int image_no)

What about "ssize_t"?

jbe

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Beisert =A0 =A0 =A0 =A0 =A0 =A0 |
Linux Solutions for Science and Industry =A0 =A0 =A0| http://www.pengutroni=
x.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
