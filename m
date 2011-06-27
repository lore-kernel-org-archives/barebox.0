Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iw0-f177.google.com ([209.85.214.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qb6Pq-00021d-7H
	for barebox@lists.infradead.org; Mon, 27 Jun 2011 07:39:31 +0000
Received: by iwn35 with SMTP id 35so4774072iwn.36
	for <barebox@lists.infradead.org>; Mon, 27 Jun 2011 00:39:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1309158909-19978-1-git-send-email-antonynpavlov@gmail.com>
References: <1309158909-19978-1-git-send-email-antonynpavlov@gmail.com>
Date: Mon, 27 Jun 2011 09:39:20 +0200
Message-ID: <BANLkTikpaw68MdQVWC197dpBL6QfXoxHnA@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0706537073=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] include/linux/stat.h: make MIPS arch possible.
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

--===============0706537073==
Content-Type: multipart/alternative; boundary=001485f914a039b7ff04a6aca68a

--001485f914a039b7ff04a6aca68a
Content-Type: text/plain; charset=ISO-8859-1

Hello,

2011/6/27 Antony Pavlov <antonynpavlov@gmail.com>

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  include/linux/stat.h |   56
> ++++++++++++++++++++++++-------------------------
>  1 files changed, 27 insertions(+), 29 deletions(-)
>
> diff --git a/include/linux/stat.h b/include/linux/stat.h
> index 10103d4..c12ff57 100644
> --- a/include/linux/stat.h
> +++ b/include/linux/stat.h
> @@ -65,34 +65,7 @@ struct stat {
>        unsigned long   __unused5;
>  };
>
> -#else
> -
> -struct stat {
> -       unsigned short st_dev;
> -       unsigned short __pad1;
> -       unsigned long st_ino;
> -       unsigned short st_mode;
> -       unsigned short st_nlink;
> -       unsigned short st_uid;
> -       unsigned short st_gid;
> -       unsigned short st_rdev;
> -       unsigned short __pad2;
> -       unsigned long  st_size;
> -       unsigned long  st_blksize;
> -       unsigned long  st_blocks;
> -       unsigned long  st_atime;
> -       unsigned long  __unused1;
> -       unsigned long  st_mtime;
> -       unsigned long  __unused2;
> -       unsigned long  st_ctime;
> -       unsigned long  __unused3;
> -       unsigned long  __unused4;
> -       unsigned long  __unused5;
> -};
> -
> -#endif /* __ARM__ */
> -
> -#if defined (__MIPS__)
> +#elif defined(__MIPS__)
>
>  struct stat {
>        dev_t           st_dev;
> @@ -121,7 +94,32 @@ struct stat {
>        long            st_pad4[14];
>  };
>
> -#endif /* __MIPS__ */
> +#else
> +
> +struct stat {
> +       unsigned short st_dev;
> +       unsigned short __pad1;
> +       unsigned long st_ino;
> +       unsigned short st_mode;
> +       unsigned short st_nlink;
> +       unsigned short st_uid;
> +       unsigned short st_gid;
> +       unsigned short st_rdev;
> +       unsigned short __pad2;
> +       unsigned long  st_size;
> +       unsigned long  st_blksize;
> +       unsigned long  st_blocks;
> +       unsigned long  st_atime;
> +       unsigned long  __unused1;
> +       unsigned long  st_mtime;
> +       unsigned long  __unused2;
> +       unsigned long  st_ctime;
> +       unsigned long  __unused3;
> +       unsigned long  __unused4;
> +       unsigned long  __unused5;
> +};
> +
> +#endif /* __ARM__ */
>
>  #ifdef __cplusplus
>  }
> --
> 1.7.5.4
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



 There is still only one patch :)

--001485f914a039b7ff04a6aca68a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br><br><div class=3D"gmail_quote">2011/6/27 Antony Pavlov <span dir=
=3D"ltr">&lt;<a href=3D"mailto:antonynpavlov@gmail.com">antonynpavlov@gmail=
.com</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">
Signed-off-by: Antony Pavlov &lt;<a href=3D"mailto:antonynpavlov@gmail.com"=
>antonynpavlov@gmail.com</a>&gt;<br>
---<br>
=A0include/linux/stat.h | =A0 56 ++++++++++++++++++++++++------------------=
-------<br>
=A01 files changed, 27 insertions(+), 29 deletions(-)<br>
<br>
diff --git a/include/linux/stat.h b/include/linux/stat.h<br>
index 10103d4..c12ff57 100644<br>
--- a/include/linux/stat.h<br>
+++ b/include/linux/stat.h<br>
@@ -65,34 +65,7 @@ struct stat {<br>
 =A0 =A0 =A0 =A0unsigned long =A0 __unused5;<br>
=A0};<br>
<br>
-#else<br>
-<br>
-struct stat {<br>
- =A0 =A0 =A0 unsigned short st_dev;<br>
- =A0 =A0 =A0 unsigned short __pad1;<br>
- =A0 =A0 =A0 unsigned long st_ino;<br>
- =A0 =A0 =A0 unsigned short st_mode;<br>
- =A0 =A0 =A0 unsigned short st_nlink;<br>
- =A0 =A0 =A0 unsigned short st_uid;<br>
- =A0 =A0 =A0 unsigned short st_gid;<br>
- =A0 =A0 =A0 unsigned short st_rdev;<br>
- =A0 =A0 =A0 unsigned short __pad2;<br>
- =A0 =A0 =A0 unsigned long =A0st_size;<br>
- =A0 =A0 =A0 unsigned long =A0st_blksize;<br>
- =A0 =A0 =A0 unsigned long =A0st_blocks;<br>
- =A0 =A0 =A0 unsigned long =A0st_atime;<br>
- =A0 =A0 =A0 unsigned long =A0__unused1;<br>
- =A0 =A0 =A0 unsigned long =A0st_mtime;<br>
- =A0 =A0 =A0 unsigned long =A0__unused2;<br>
- =A0 =A0 =A0 unsigned long =A0st_ctime;<br>
- =A0 =A0 =A0 unsigned long =A0__unused3;<br>
- =A0 =A0 =A0 unsigned long =A0__unused4;<br>
- =A0 =A0 =A0 unsigned long =A0__unused5;<br>
-};<br>
-<br>
-#endif /* __ARM__ */<br>
-<br>
-#if defined (__MIPS__)<br>
+#elif defined(__MIPS__)<br>
<br>
=A0struct stat {<br>
 =A0 =A0 =A0 =A0dev_t =A0 =A0 =A0 =A0 =A0 st_dev;<br>
@@ -121,7 +94,32 @@ struct stat {<br>
 =A0 =A0 =A0 =A0long =A0 =A0 =A0 =A0 =A0 =A0st_pad4[14];<br>
=A0};<br>
<br>
-#endif /* __MIPS__ */<br>
+#else<br>
+<br>
+struct stat {<br>
+ =A0 =A0 =A0 unsigned short st_dev;<br>
+ =A0 =A0 =A0 unsigned short __pad1;<br>
+ =A0 =A0 =A0 unsigned long st_ino;<br>
+ =A0 =A0 =A0 unsigned short st_mode;<br>
+ =A0 =A0 =A0 unsigned short st_nlink;<br>
+ =A0 =A0 =A0 unsigned short st_uid;<br>
+ =A0 =A0 =A0 unsigned short st_gid;<br>
+ =A0 =A0 =A0 unsigned short st_rdev;<br>
+ =A0 =A0 =A0 unsigned short __pad2;<br>
+ =A0 =A0 =A0 unsigned long =A0st_size;<br>
+ =A0 =A0 =A0 unsigned long =A0st_blksize;<br>
+ =A0 =A0 =A0 unsigned long =A0st_blocks;<br>
+ =A0 =A0 =A0 unsigned long =A0st_atime;<br>
+ =A0 =A0 =A0 unsigned long =A0__unused1;<br>
+ =A0 =A0 =A0 unsigned long =A0st_mtime;<br>
+ =A0 =A0 =A0 unsigned long =A0__unused2;<br>
+ =A0 =A0 =A0 unsigned long =A0st_ctime;<br>
+ =A0 =A0 =A0 unsigned long =A0__unused3;<br>
+ =A0 =A0 =A0 unsigned long =A0__unused4;<br>
+ =A0 =A0 =A0 unsigned long =A0__unused5;<br>
+};<br>
+<br>
+#endif /* __ARM__ */<br>
<br>
=A0#ifdef __cplusplus<br>
=A0}<br>
<font color=3D"#888888">--<br>
1.7.5.4<br>
<br>
<br>
_______________________________________________<br>
barebox mailing list<br>
<a href=3D"mailto:barebox@lists.infradead.org">barebox@lists.infradead.org<=
/a><br>
<a href=3D"http://lists.infradead.org/mailman/listinfo/barebox" target=3D"_=
blank">http://lists.infradead.org/mailman/listinfo/barebox</a></font></bloc=
kquote><div><br></div><div><br></div><div>=A0There is still only one patch =
:)=A0</div>
</div><br>

--001485f914a039b7ff04a6aca68a--


--===============0706537073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0706537073==--
