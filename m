Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baKXf-0004if-AO
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 10:27:22 +0000
Date: Thu, 18 Aug 2016 12:26:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160818102656.GP20657@pengutronix.de>
References: <1471420687-14367-1-git-send-email-rndfax@yandex.ru>
 <1471420687-14367-3-git-send-email-rndfax@yandex.ru>
 <20160818071159.GG20657@pengutronix.de>
 <208911471512989@web9j.yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <208911471512989@web9j.yandex.ru>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] rework menu so that it can support multiline titles
To: Aleksey Kuleshov <rndfax@yandex.ru>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Aug 18, 2016 at 12:36:29PM +0300, Aleksey Kuleshov wrote:
> >> =A0@@ -234,12 +237,19 @@ static void print_menu(struct menu *m)
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0struct menu_entry *me;
> >>
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0clear();
> >> =A0- gotoXY(2, 1);
> >> =A0- if(m->display) {
> >> =A0- __print_entry(m->display);
> >> =A0+ if (m->display) {
> >> =A0+ int i;
> >> =A0+ for (i =3D 0; i < m->display_lines; i++) {
> >> =A0+ gotoXY(2, 1 + i);
> >> =A0+ __print_entry(m->display[i]);
> >> =A0+ }
> >> =A0+ m->skip_lines =3D 0;
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0} else {
> >> =A0+ gotoXY(2, 1);
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0puts("Menu : ");
> >> =A0- puts(m->name);
> >> =A0+ if (m->name)
> >> =A0+ puts(m->name);
> >> =A0+ m->skip_lines =3D 1;
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0}
> >
> > We could add this to menu_add():
> >
> > =A0=A0=A0=A0=A0=A0=A0if (!m->display)
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0m->display =3D xasprintf("=
Menu : %s", m->name);
> >
> > Then we wouldn't need the if(m->display) here. Would that simplify the
> > code?
> =

> Yes. But all title things are go into menu_add_titile, so how about this:
> =

> diff --git a/common/menu.c b/common/menu.c
> index 1f23e45..636c2b8 100644
> --- a/common/menu.c
> +++ b/common/menu.c
> @@ -235,21 +235,12 @@ EXPORT_SYMBOL(menu_set_auto_select);
>  static void print_menu(struct menu *m)
>  {
>         struct menu_entry *me;
> +       int i;
> =

>         clear();
> -       if (m->display) {
> -               int i;
> -               for (i =3D 0; i < m->display_lines; i++) {
> -                       gotoXY(2, 1 + i);
> -                       __print_entry(m->display[i]);
> -               }
> -               m->skip_lines =3D 0;
> -       } else {
> -               gotoXY(2, 1);
> -               puts("Menu : ");
> -               if (m->name)
> -                       puts(m->name);
> -               m->skip_lines =3D 1;
> +       for (i =3D 0; i < m->display_lines; i++) {
> +               gotoXY(2, 1 + i);
> +               __print_entry(m->display[i]);
>         }
> =

>         list_for_each_entry(me, &m->entries, list) {
> @@ -538,8 +529,12 @@ void menu_add_title(struct menu *m, const char *disp=
lay, char *(*parser)(char *s
>         int lines =3D 1;
>         int i;
> =

> -       if (!strlen(display))
> +       if (!strlen(display)) {
> +               m->display_lines =3D 1;
> +               m->display =3D xzalloc(sizeof(*m->display));
> +               m->display[0] =3D xasprintf("Menu : %s", m->name ? m->nam=
e : "");
>                 return;
> +       }

Ok, looks good.

> > What's the reason for running parser() over the separated strings? Can't
> > you run parser() over the original multiline string instead?
> =

> I wanted to consume more CPU cycles so that the Earth will suffer from po=
wer starvation. But you ruined my evil plan, clap-clap-clap.

Yes, strike! ;)

> >>
> >> =A0- display =3D read_file_line("%s/title", path);
> >> =A0+ globpath =3D basprintf("%s/title", path);
> >> =A0+ display =3D read_file(globpath, &size);
> >> =A0+ /* Remove trailing whitespaces */
> >> =A0+ while (size > 0 && isspace(display[size - 1]))
> >> =A0+ size--;
> >
> > We have the strim() function for this purpose.
> =

>  * strim - Removes leading and trailing whitespace from @s.
> =

> And mine does only:
> >>  + /* Remove trailing whitespaces */

You can use strim for both cases:

	str =3D strim(str);

removes both leading and trailing whitespaces, but without reassigning
str to the return value of strim() you only remove trailing whitespaces.

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
