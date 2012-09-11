Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBNrt-0001I3-3R
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 10:38:58 +0000
Received: by lbbgf7 with SMTP id gf7so268831lbb.36
 for <barebox@lists.infradead.org>; Tue, 11 Sep 2012 03:38:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120911073138.GE18243@pengutronix.de>
References: <1347341518-2779-1-git-send-email-alex.aring@gmail.com>
 <1347341518-2779-2-git-send-email-alex.aring@gmail.com>
 <20120911073138.GE18243@pengutronix.de>
Date: Tue, 11 Sep 2012 12:38:53 +0200
Message-ID: <CAB_54W69jr4hnoa54mNn76WRCX3BV35UJYb0BrpCqfJUYJ0yOw@mail.gmail.com>
From: Alexander Aring <alex.aring@googlemail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7651641085330596690=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] complete: abstract path complete
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============7651641085330596690==
Content-Type: multipart/alternative; boundary=f46d042f92ec3d6d7404c96aae6e

--f46d042f92ec3d6d7404c96aae6e
Content-Type: text/plain; charset=UTF-8

Hi,

I prefer this implementation than the older one, because it check on
executable(Maybe we add a attribute for that or check on shebang) file and
call found with the full path.
I was thinking about to put this as RFC..., because I don't have really a
usecase for this.
Some commands can do a autocompletion for files that are in $PATH, when
this is needed.

The naming things, I don't like the name, too. I was doing the naming like
the others functions.
I will send a v2 with a better name and functionheader

Regards
Alexander Aring

2012/9/11 Sascha Hauer <s.hauer@pengutronix.de>

> On Tue, Sep 11, 2012 at 07:31:58AM +0200, Alexander Aring wrote:
> > Rewritten path complete, to use it maybe
> > in another functions.
>
> Do you have a usecase for this?
>
> >
> > Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> > ---
> >  common/complete.c | 73
> +++++++++++++------------------------------------------
> >  include/libbb.h   |  2 ++
> >  lib/libbb.c       | 64 +++++++++++++++++++++++++++++++++++++++++++++++-
> >  3 files changed, 82 insertions(+), 57 deletions(-)
> >
> > diff --git a/common/complete.c b/common/complete.c
> > index 6a871ef..a06c070 100644
> > --- a/common/complete.c
> > +++ b/common/complete.c
> > @@ -25,6 +25,8 @@
> >  #include <libgen.h>
> >  #include <command.h>
> >  #include <environment.h>
> > +#include <errno.h>
> > +#include <libbb.h>
> >
> >  static int file_complete(struct string_list *sl, char *instr, int exec)
> >  {
> > @@ -70,65 +72,24 @@ out:
> >       return 0;
> >  }
> >
> > -static int path_command_complete(struct string_list *sl, char *instr)
> > +static int path_command_complete(char *name, void *priv)
> >  {
> > -     struct stat s;
> > -     DIR *dir;
> > -     struct dirent *d;
> > -     char tmp[PATH_MAX];
> > -     char *path, *p, *n;
> > -
> > -     p = path = strdup(getenv("PATH"));
> > -
> > -     if (!path)
> > -             return -1;
> > -
> > -     while (p) {
> > -             n = strchr(p, ':');
> > -             if (n)
> > -                     *n++ = '\0';
> > -             if (*p == '\0') {
> > -                     p = n;
> > -                     continue;
> > -             }
> > -             dir = opendir(p);
> > +     struct string_list *sl = priv;
> > +     char *filename;
> >
> > -             /* We need to check all PATH dirs, so if one failed,
> > -              * try next */
> > -             if (!dir) {
> > -                     p = n;
> > -                     continue;
> > -             }
> > +     filename = strrchr(name, '/') + 1;
> > +     if (!filename)
> > +             return -EINVAL;
> >
> > -             while ((d = readdir(dir))) {
> > -                     if (!strcmp(d->d_name, ".") ||
> > -                                     !strcmp(d->d_name, ".."))
> > -                             continue;
> > +     strcat(filename, " ");
> >
> > -                     if (!strncmp(instr, d->d_name, strlen(instr))) {
> > -                             strcpy(tmp, d->d_name);
> > -                             if (!stat(tmp, &s) &&
> > -                                             S_ISDIR(s.st_mode))
> > -                                     continue;
> > -                             else
> > -                                     strcat(tmp, " ");
> > -
> > -                             /* This function is called
> > -                              * after command_complete,
> > -                              * so we check if a double
> > -                              * entry exist */
> > -                             if (string_list_contains
> > -                                             (sl, tmp) == 0) {
> > -                                     string_list_add_sorted(sl, tmp);
> > -                             }
> > -                     }
> > -             }
> > -
> > -             closedir(dir);
> > -             p = n;
> > -     }
> > -
> > -     free(path);
> > +     /* This function is called
> > +      * after command_complete,
> > +      * so we check if a double
> > +      * entry exist */
> > +     if (!string_list_contains
> > +             (sl, filename))
> > +             string_list_add_sorted(sl, filename);
> >
> >       return 0;
> >  }
> > @@ -334,7 +295,7 @@ int complete(char *instr, char **outstr)
> >                       instr = t;
> >               } else {
> >                       command_complete(&sl, instr);
> > -                     path_command_complete(&sl, instr);
> > +                     find_execable_like(path_command_complete, instr,
> &sl);
> >                       env_param_complete(&sl, instr, 0);
> >               }
> >               if (*instr == '$')
> > diff --git a/include/libbb.h b/include/libbb.h
> > index 47b2e08..0ef702b 100644
> > --- a/include/libbb.h
> > +++ b/include/libbb.h
> > @@ -11,6 +11,8 @@ char *concat_subpath_file(const char *path, const char
> *f);
> >  int execable_file(const char *name);
> >  char *find_execable(const char *filename);
> >  char* last_char_is(const char *s, int c);
> > +int find_execable_like(int found(char *name, void *priv),
> > +             const char *likelyname, void *priv);
> >
> >  enum {
> >       ACTION_RECURSE     = (1 << 0),
> > diff --git a/lib/libbb.c b/lib/libbb.c
> > index e0d7481..daf77c7 100644
> > --- a/lib/libbb.c
> > +++ b/lib/libbb.c
> > @@ -14,6 +14,7 @@
> >  #include <xfuncs.h>
> >  #include <malloc.h>
> >  #include <environment.h>
> > +#include <errno.h>
> >
> >  /* concatenate path and file name to new allocation buffer,
> >   * not adding '/' if path name already has '/'
> > @@ -60,7 +61,6 @@ int execable_file(const char *name)
> >  }
> >  EXPORT_SYMBOL(execable_file);
> >
> > -
> >  /* search $PATH for an executable file;
> >   * return allocated string containing full path if found;
> >   * return NULL otherwise;
> > @@ -89,6 +89,68 @@ char *find_execable(const char *filename)
> >  }
> >  EXPORT_SYMBOL(find_execable);
> >
> > +/* search $PATH for an executable file which is
> > + * like the filename specified in likelyname;
> > + * A likelyname on match will call the found function;
> > + * Caller need to duplicate the name string in
> > + * found functionpointer, if he want to save it;
> > + * return 0 on success and <0 on error;
> > + */
> > +int find_execable_like(int found(char *name, void *priv),
> > +             const char *likelyname, void *priv)
>
> I don't like the name very much. Can we name it execable_complete?
> Also I would use the likelyname argument as first argument, because
> then it would read "on 'name' do call 'found'"
>
> (I always stumble over 'execable', it should rather be 'executable', but
> we have the former everywhere, so either change them all keep it here
> aswell)
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

--f46d042f92ec3d6d7404c96aae6e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I prefer this implementation than the older one, because it chec=
k on executable(Maybe we add a attribute for that or check on shebang) file=
 and call found with the full path.<br>I was thinking about to put this as =
RFC..., because I don&#39;t have really a usecase for this.<br>
Some commands can do a autocompletion for files that are in $PATH, when thi=
s is needed.<br><br>The naming things, I don&#39;t like the name, too. I wa=
s doing the naming like the others functions.<br>I will send a v2 with a be=
tter name and functionheader<br>
<br>Regards<br>Alexander Aring<br><br><div class=3D"gmail_quote">2012/9/11 =
Sascha Hauer <span dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pengutronix.de=
" target=3D"_blank">s.hauer@pengutronix.de</a>&gt;</span><br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">
<div class=3D"im">On Tue, Sep 11, 2012 at 07:31:58AM +0200, Alexander Aring=
 wrote:<br>
&gt; Rewritten path complete, to use it maybe<br>
&gt; in another functions.<br>
<br>
</div>Do you have a usecase for this?<br>
<div><div class=3D"h5"><br>
&gt;<br>
&gt; Signed-off-by: Alexander Aring &lt;<a href=3D"mailto:alex.aring@gmail.=
com">alex.aring@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; =C2=A0common/complete.c | 73 +++++++++++++----------------------------=
--------------<br>
&gt; =C2=A0include/libbb.h =C2=A0 | =C2=A02 ++<br>
&gt; =C2=A0lib/libbb.c =C2=A0 =C2=A0 =C2=A0 | 64 ++++++++++++++++++++++++++=
+++++++++++++++++++++-<br>
&gt; =C2=A03 files changed, 82 insertions(+), 57 deletions(-)<br>
&gt;<br>
&gt; diff --git a/common/complete.c b/common/complete.c<br>
&gt; index 6a871ef..a06c070 100644<br>
&gt; --- a/common/complete.c<br>
&gt; +++ b/common/complete.c<br>
&gt; @@ -25,6 +25,8 @@<br>
&gt; =C2=A0#include &lt;libgen.h&gt;<br>
&gt; =C2=A0#include &lt;command.h&gt;<br>
&gt; =C2=A0#include &lt;environment.h&gt;<br>
&gt; +#include &lt;errno.h&gt;<br>
&gt; +#include &lt;libbb.h&gt;<br>
&gt;<br>
&gt; =C2=A0static int file_complete(struct string_list *sl, char *instr, in=
t exec)<br>
&gt; =C2=A0{<br>
&gt; @@ -70,65 +72,24 @@ out:<br>
&gt; =C2=A0 =C2=A0 =C2=A0 return 0;<br>
&gt; =C2=A0}<br>
&gt;<br>
&gt; -static int path_command_complete(struct string_list *sl, char *instr)=
<br>
&gt; +static int path_command_complete(char *name, void *priv)<br>
&gt; =C2=A0{<br>
&gt; - =C2=A0 =C2=A0 struct stat s;<br>
&gt; - =C2=A0 =C2=A0 DIR *dir;<br>
&gt; - =C2=A0 =C2=A0 struct dirent *d;<br>
&gt; - =C2=A0 =C2=A0 char tmp[PATH_MAX];<br>
&gt; - =C2=A0 =C2=A0 char *path, *p, *n;<br>
&gt; -<br>
&gt; - =C2=A0 =C2=A0 p =3D path =3D strdup(getenv(&quot;PATH&quot;));<br>
&gt; -<br>
&gt; - =C2=A0 =C2=A0 if (!path)<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -1;<br>
&gt; -<br>
&gt; - =C2=A0 =C2=A0 while (p) {<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 n =3D strchr(p, &#39;:&#39=
;);<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (n)<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 *n++ =3D &#39;\0&#39;;<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (*p =3D=3D &#39;\0&#39;=
) {<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 p =3D n;<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 continue;<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dir =3D opendir(p);<br>
&gt; + =C2=A0 =C2=A0 struct string_list *sl =3D priv;<br>
&gt; + =C2=A0 =C2=A0 char *filename;<br>
&gt;<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* We need to check all PA=
TH dirs, so if one failed,<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* try next */<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!dir) {<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 p =3D n;<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 continue;<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt; + =C2=A0 =C2=A0 filename =3D strrchr(name, &#39;/&#39;) + 1;<br>
&gt; + =C2=A0 =C2=A0 if (!filename)<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EINVAL;<br>
&gt;<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 while ((d =3D readdir(dir)=
)) {<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if (!strcmp(d-&gt;d_name, &quot;.&quot;) ||<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 !strcmp(d-&gt;d=
_name, &quot;..&quot;))<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 continue;<br>
&gt; + =C2=A0 =C2=A0 strcat(filename, &quot; &quot;);<br>
&gt;<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if (!strncmp(instr, d-&gt;d_name, strlen(instr))) {<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 strcpy(tmp, d-&gt;d_name);<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!stat(tmp, &amp;s) &amp;&amp;<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 S_ISDIR(s.st_mode))<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 continue;<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 strcat(tmp, &qu=
ot; &quot;);<br>
&gt; -<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* This function is called<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* after command_complete,<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* so we check if a double<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* entry exist */<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (string_list_contains<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (sl, tmp) =3D=3D 0) {<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 string_list_add=
_sorted(sl, tmp);<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 }<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt; -<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 closedir(dir);<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 p =3D n;<br>
&gt; - =C2=A0 =C2=A0 }<br>
&gt; -<br>
&gt; - =C2=A0 =C2=A0 free(path);<br>
&gt; + =C2=A0 =C2=A0 /* This function is called<br>
&gt; + =C2=A0 =C2=A0 =C2=A0* after command_complete,<br>
&gt; + =C2=A0 =C2=A0 =C2=A0* so we check if a double<br>
&gt; + =C2=A0 =C2=A0 =C2=A0* entry exist */<br>
&gt; + =C2=A0 =C2=A0 if (!string_list_contains<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (sl, filename))<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 string_list_add_sorted(sl,=
 filename);<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 return 0;<br>
&gt; =C2=A0}<br>
&gt; @@ -334,7 +295,7 @@ int complete(char *instr, char **outstr)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 instr =3D t;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 command_complete(&amp;sl, instr);<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 path_command_complete(&amp;sl, instr);<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 find_execable_like(path_command_complete, instr, &amp;sl);<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 env_param_complete(&amp;sl, instr, 0);<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (*instr =3D=3D &#3=
9;$&#39;)<br>
&gt; diff --git a/include/libbb.h b/include/libbb.h<br>
&gt; index 47b2e08..0ef702b 100644<br>
&gt; --- a/include/libbb.h<br>
&gt; +++ b/include/libbb.h<br>
&gt; @@ -11,6 +11,8 @@ char *concat_subpath_file(const char *path, const ch=
ar *f);<br>
&gt; =C2=A0int execable_file(const char *name);<br>
&gt; =C2=A0char *find_execable(const char *filename);<br>
&gt; =C2=A0char* last_char_is(const char *s, int c);<br>
&gt; +int find_execable_like(int found(char *name, void *priv),<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const char *likelyname, vo=
id *priv);<br>
&gt;<br>
&gt; =C2=A0enum {<br>
&gt; =C2=A0 =C2=A0 =C2=A0 ACTION_RECURSE =C2=A0 =C2=A0 =3D (1 &lt;&lt; 0),<=
br>
&gt; diff --git a/lib/libbb.c b/lib/libbb.c<br>
&gt; index e0d7481..daf77c7 100644<br>
&gt; --- a/lib/libbb.c<br>
&gt; +++ b/lib/libbb.c<br>
&gt; @@ -14,6 +14,7 @@<br>
&gt; =C2=A0#include &lt;xfuncs.h&gt;<br>
&gt; =C2=A0#include &lt;malloc.h&gt;<br>
&gt; =C2=A0#include &lt;environment.h&gt;<br>
&gt; +#include &lt;errno.h&gt;<br>
&gt;<br>
&gt; =C2=A0/* concatenate path and file name to new allocation buffer,<br>
&gt; =C2=A0 * not adding &#39;/&#39; if path name already has &#39;/&#39;<b=
r>
&gt; @@ -60,7 +61,6 @@ int execable_file(const char *name)<br>
&gt; =C2=A0}<br>
&gt; =C2=A0EXPORT_SYMBOL(execable_file);<br>
&gt;<br>
&gt; -<br>
&gt; =C2=A0/* search $PATH for an executable file;<br>
&gt; =C2=A0 * return allocated string containing full path if found;<br>
&gt; =C2=A0 * return NULL otherwise;<br>
&gt; @@ -89,6 +89,68 @@ char *find_execable(const char *filename)<br>
&gt; =C2=A0}<br>
&gt; =C2=A0EXPORT_SYMBOL(find_execable);<br>
&gt;<br>
&gt; +/* search $PATH for an executable file which is<br>
&gt; + * like the filename specified in likelyname;<br>
&gt; + * A likelyname on match will call the found function;<br>
&gt; + * Caller need to duplicate the name string in<br>
&gt; + * found functionpointer, if he want to save it;<br>
&gt; + * return 0 on success and &lt;0 on error;<br>
&gt; + */<br>
&gt; +int find_execable_like(int found(char *name, void *priv),<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const char *likelyname, vo=
id *priv)<br>
<br>
</div></div>I don&#39;t like the name very much. Can we name it execable_co=
mplete?<br>
Also I would use the likelyname argument as first argument, because<br>
then it would read &quot;on &#39;name&#39; do call &#39;found&#39;&quot;<br=
>
<br>
(I always stumble over &#39;execable&#39;, it should rather be &#39;executa=
ble&#39;, but<br>
we have the former everywhere, so either change them all keep it here<br>
aswell)<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Sascha<br>
<br>
--<br>
Pengutronix e.K. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |<br>
Industrial Linux Solutions =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 | <a href=3D"http://www.pengutronix.de/" target=3D"_blank">http://w=
ww.pengutronix.de/</a> =C2=A0|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: <a href=3D"tel:%2B49-51=
21-206917-0" value=3D"+4951212069170">+49-5121-206917-0</a> =C2=A0 =C2=A0|<=
br>
Amtsgericht Hildesheim, HRA 2686 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | Fax: =
=C2=A0 <a href=3D"tel:%2B49-5121-206917-5555" value=3D"+4951212069175555">+=
49-5121-206917-5555</a> |<br>
</font></span></blockquote></div><br>

--f46d042f92ec3d6d7404c96aae6e--


--===============7651641085330596690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7651641085330596690==--
