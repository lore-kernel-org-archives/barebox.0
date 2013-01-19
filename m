Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f179.google.com ([209.85.212.179])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TwcmE-0005sR-SX
 for barebox@lists.infradead.org; Sat, 19 Jan 2013 18:04:23 +0000
Received: by mail-wi0-f179.google.com with SMTP id o1so3857467wic.12
 for <barebox@lists.infradead.org>; Sat, 19 Jan 2013 10:04:20 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1358613446-1168-2-git-send-email-plagnioj@jcrosoft.com>
References: <20130119163524.GC26329@game.jcrosoft.org>
 <1358613446-1168-1-git-send-email-plagnioj@jcrosoft.com>
 <1358613446-1168-2-git-send-email-plagnioj@jcrosoft.com>
Date: Sat, 19 Jan 2013 19:04:20 +0100
Message-ID: <CAB_54W4Ay1rxtZrJZM5JR8gjA7KxKsZupLpdoxB732+y_CuOsA@mail.gmail.com>
From: Alexander Aring <alex.aring@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3681389520356403990=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/9] filetype: add is_barebox_head
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox <barebox@lists.infradead.org>

--===============3681389520356403990==
Content-Type: multipart/alternative; boundary=f46d043be0d2a1871004d3a80e76

--f46d043be0d2a1871004d3a80e76
Content-Type: text/plain; charset=UTF-8

Hi


2013/1/19 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

> to detect if it's a barebox for the current running arch
>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  include/filetype.h |    5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/include/filetype.h b/include/filetype.h
> index c2af917..05b0f5c 100644
> --- a/include/filetype.h
> +++ b/include/filetype.h
> @@ -66,4 +66,9 @@ static inline int is_barebox_mips_head(const char *head)
>  }
>  #endif
>
> +static inline int is_barebox_head(const char *head)
> +{
> +       return is_barebox_mips_head(head) || is_barebox_mips_head(head);
>

Is this not the same like:
return is_barebox_mips_head(head); ?

Or is there some side effects during the first call of
is_barebox_mips_head(head)?

Regards
Alex

> +}
> +
>  #endif /* __FILE_TYPE_H */
> --
> 1.7.10.4
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>

--f46d043be0d2a1871004d3a80e76
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<br><div class=3D"gmail_extra"><br><br><div class=3D"gma=
il_quote">2013/1/19 Jean-Christophe PLAGNIOL-VILLARD <span dir=3D"ltr">&lt;=
<a href=3D"mailto:plagnioj@jcrosoft.com" target=3D"_blank">plagnioj@jcrosof=
t.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">to detect if it&#39;s a b=
arebox for the current running arch<br>
<br>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD &lt;<a href=3D"mailto:plagn=
ioj@jcrosoft.com">plagnioj@jcrosoft.com</a>&gt;<br>
---<br>
=C2=A0include/filetype.h | =C2=A0 =C2=A05 +++++<br>
=C2=A01 file changed, 5 insertions(+)<br>
<br>
diff --git a/include/filetype.h b/include/filetype.h<br>
index c2af917..05b0f5c 100644<br>
--- a/include/filetype.h<br>
+++ b/include/filetype.h<br>
@@ -66,4 +66,9 @@ static inline int is_barebox_mips_head(const char *head)<=
br>
=C2=A0}<br>
=C2=A0#endif<br>
<br>
+static inline int is_barebox_head(const char *head)<br>
+{<br>
+ =C2=A0 =C2=A0 =C2=A0 return is_barebox_mips_head(head) || is_barebox_mips=
_head(head);<br></blockquote><div><br>Is this not the same like:<br>return =
is_barebox_mips_head(head); ?<br><br>Or is there some side effects during t=
he first call of is_barebox_mips_head(head)?<br>
<br>Regards<br>Alex<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">
+}<br>
+<br>
=C2=A0#endif /* __FILE_TYPE_H */<br>
<span class=3D""><font color=3D"#888888">--<br>
1.7.10.4<br>
<br>
<br>
_______________________________________________<br>
barebox mailing list<br>
<a href=3D"mailto:barebox@lists.infradead.org">barebox@lists.infradead.org<=
/a><br>
<a href=3D"http://lists.infradead.org/mailman/listinfo/barebox" target=3D"_=
blank">http://lists.infradead.org/mailman/listinfo/barebox</a><br>
</font></span></blockquote></div><br></div></div>

--f46d043be0d2a1871004d3a80e76--


--===============3681389520356403990==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3681389520356403990==--
