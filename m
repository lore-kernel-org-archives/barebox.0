Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x244.google.com ([2a00:1450:4010:c04::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abW7g-0003Dm-OP
 for barebox@lists.infradead.org; Thu, 03 Mar 2016 16:29:09 +0000
Received: by mail-lb0-x244.google.com with SMTP id bc4so2286427lbc.0
 for <barebox@lists.infradead.org>; Thu, 03 Mar 2016 08:28:48 -0800 (PST)
Date: Thu, 3 Mar 2016 19:54:54 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160303195454.77b98e451fb5934675fcd864@gmail.com>
In-Reply-To: <1457018230-4554-1-git-send-email-rndfax@yandex.ru>
References: <1457018230-4554-1-git-send-email-rndfax@yandex.ru>
Mime-Version: 1.0
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
Subject: Re: [PATCH 1/2] poller: allow safely remove pollers in any time
To: Aleksey Kuleshov <rndfax@yandex.ru>
Cc: barebox@lists.infradead.org

On Thu,  3 Mar 2016 18:17:09 +0300
Aleksey Kuleshov <rndfax@yandex.ru> wrote:

Please add 'Signed-off-by' to your patches.

> ---
>  common/poller.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> =

> diff --git a/common/poller.c b/common/poller.c
> index 32795b6..7cec5d4 100644
> --- a/common/poller.c
> +++ b/common/poller.c
> @@ -15,6 +15,7 @@
>  =

>  static LIST_HEAD(poller_list);
>  static int poller_active;
> +static struct poller_struct *next;
>  =

>  int poller_register(struct poller_struct *poller)
>  {
> @@ -33,6 +34,10 @@ int poller_unregister(struct poller_struct *poller)
>  		return -ENODEV;
>  =

>  =

> +	if (&next->list =3D=3D &poller->list) {
> +		next =3D list_entry(next->list.next, struct poller_struct, list);
> +	}
> +
>  	list_del(&poller->list);
>  	poller->registered =3D 0;
>  =

> @@ -107,14 +112,14 @@ int poller_async_unregister(struct poller_async *pa)
>  =

>  void poller_call(void)
>  {
> -	struct poller_struct *poller, *tmp;
> +	struct poller_struct *poller;
>  =

>  	if (poller_active)
>  		return;
>  =

>  	poller_active =3D 1;
>  =

> -	list_for_each_entry_safe(poller, tmp, &poller_list, list)
> +	list_for_each_entry_safe(poller, next, &poller_list, list)
>  		poller->func(poller);
>  =

>  	poller_active =3D 0;
> -- =

> 2.6.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
