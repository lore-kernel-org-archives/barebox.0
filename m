Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yx0-f177.google.com ([209.85.213.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sa4m6-0005ms-5Z
 for barebox@lists.infradead.org; Thu, 31 May 2012 12:46:46 +0000
Received: by yenr9 with SMTP id r9so847714yen.36
 for <barebox@lists.infradead.org>; Thu, 31 May 2012 05:46:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1338355875-18830-2-git-send-email-s.hauer@pengutronix.de>
References: <1338355875-18830-1-git-send-email-s.hauer@pengutronix.de>
 <1338355875-18830-2-git-send-email-s.hauer@pengutronix.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Thu, 31 May 2012 14:46:24 +0200
Message-ID: <CAONxwYMAQQ+XJujoBpFeDB-v2AtUptH7inrE6ddyHckuoW1nuw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1066204641177313092=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] block: do not BUG() on failed block_get
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============1066204641177313092==
Content-Type: multipart/alternative; boundary=e89a8f3bac1fd03f9704c1547539

--e89a8f3bac1fd03f9704c1547539
Content-Type: text/plain; charset=ISO-8859-1

Hi

On Wed, May 30, 2012 at 7:31 AM, Sascha Hauer <s.hauer@pengutronix.de>wrote:

> It does not necessarily means a bug when block_get fails here,
> this can also be a failure on the underlying device.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/block.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/common/block.c b/common/block.c
> index 437dc95..5983171 100644
> --- a/common/block.c
> +++ b/common/block.c
> @@ -245,7 +245,7 @@ static int block_put(struct block_device *blk, const
> void *buf, int block)
>
>        data = block_get(blk, block);
>        if (IS_ERR(data))
> -               BUG();
> +               return PTR_ERR(data);
>
>        memcpy(data, buf, 1 << blk->blockbits);
>
> --
> 1.7.10
>
>
Tested-by: Roberto Nibali <rnibali@gmail.com>
Acked-by: Roberto Nibali <rnibali@gmail.com>

--e89a8f3bac1fd03f9704c1547539
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi<br><br><div class=3D"gmail_quote">On Wed, May 30, 2012 at 7:31 AM, Sasch=
a Hauer <span dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pengutronix.de" tar=
get=3D"_blank">s.hauer@pengutronix.de</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">

It does not necessarily means a bug when block_get fails here,<br>
this can also be a failure on the underlying device.<br>
<br>
Signed-off-by: Sascha Hauer &lt;<a href=3D"mailto:s.hauer@pengutronix.de">s=
.hauer@pengutronix.de</a>&gt;<br>
---<br>
=A0common/block.c | =A0 =A02 +-<br>
=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/common/block.c b/common/block.c<br>
index 437dc95..5983171 100644<br>
--- a/common/block.c<br>
+++ b/common/block.c<br>
@@ -245,7 +245,7 @@ static int block_put(struct block_device *blk, const vo=
id *buf, int block)<br>
<br>
 =A0 =A0 =A0 =A0data =3D block_get(blk, block);<br>
 =A0 =A0 =A0 =A0if (IS_ERR(data))<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 BUG();<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 return PTR_ERR(data);<br>
<br>
 =A0 =A0 =A0 =A0memcpy(data, buf, 1 &lt;&lt; blk-&gt;blockbits);<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
1.7.10<br>
<br></font></span></blockquote><div><br></div><div>Tested-by: Roberto Nibal=
i &lt;<a href=3D"mailto:rnibali@gmail.com">rnibali@gmail.com</a>&gt;</div><=
div>Acked-by: Roberto Nibali &lt;<a href=3D"mailto:rnibali@gmail.com">rniba=
li@gmail.com</a>&gt;</div>

<div><br></div><div>=A0</div></div><br>

--e89a8f3bac1fd03f9704c1547539--


--===============1066204641177313092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1066204641177313092==--
