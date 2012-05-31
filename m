Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gh0-f171.google.com ([209.85.160.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sa4lX-0005lf-C9
 for barebox@lists.infradead.org; Thu, 31 May 2012 12:46:12 +0000
Received: by ghy10 with SMTP id 10so842910ghy.16
 for <barebox@lists.infradead.org>; Thu, 31 May 2012 05:46:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1338355875-18830-1-git-send-email-s.hauer@pengutronix.de>
References: <1338355875-18830-1-git-send-email-s.hauer@pengutronix.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Thu, 31 May 2012 14:45:49 +0200
Message-ID: <CAONxwYNJuqiQh9LRkvSsQxExboDrpYQ0HLF9-REf9yLu507MEw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0146096208745377687=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] block: propagate error code from block_get
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============0146096208745377687==
Content-Type: multipart/alternative; boundary=14dae93409a3b4864c04c154738b

--14dae93409a3b4864c04c154738b
Content-Type: text/plain; charset=ISO-8859-1

Hi Sascha

On Wed, May 30, 2012 at 7:31 AM, Sascha Hauer <s.hauer@pengutronix.de>wrote:

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/block.c |   26 +++++++++++++-------------
>  1 file changed, 13 insertions(+), 13 deletions(-)
>
> diff --git a/common/block.c b/common/block.c
> index 4253fc4..437dc95 100644
> --- a/common/block.c
> +++ b/common/block.c
> @@ -161,7 +161,7 @@ static void *block_get(struct block_device *blk, int
> block)
>        int ret;
>
>        if (block >= blk->num_blocks)
> -               return NULL;
> +               return ERR_PTR(-ENXIO);
>
>        outdata = block_get_cached(blk, block);
>        if (outdata)
> @@ -169,7 +169,7 @@ static void *block_get(struct block_device *blk, int
> block)
>
>        ret = block_cache(blk, block);
>        if (ret)
> -               return NULL;
> +               return ERR_PTR(ret);
>
>        outdata = block_get_cached(blk, block);
>        if (!outdata)
> @@ -191,8 +191,8 @@ static ssize_t block_read(struct cdev *cdev, void
> *buf, size_t count,
>                size_t now = BLOCKSIZE(blk) - (offset & mask);
>                void *iobuf = block_get(blk, block);
>
> -               if (!iobuf)
> -                       return -EIO;
> +               if (IS_ERR(iobuf))
> +                       return PTR_ERR(iobuf);
>
>                now = min(count, now);
>
> @@ -207,8 +207,8 @@ static ssize_t block_read(struct cdev *cdev, void
> *buf, size_t count,
>        while (blocks) {
>                void *iobuf = block_get(blk, block);
>
> -               if (!iobuf)
> -                       return -EIO;
> +               if (IS_ERR(iobuf))
> +                       return PTR_ERR(iobuf);
>
>                memcpy(buf, iobuf, BLOCKSIZE(blk));
>                buf += BLOCKSIZE(blk);
> @@ -220,8 +220,8 @@ static ssize_t block_read(struct cdev *cdev, void
> *buf, size_t count,
>        if (count) {
>                void *iobuf = block_get(blk, block);
>
> -               if (!iobuf)
> -                       return -EIO;
> +               if (IS_ERR(iobuf))
> +                       return PTR_ERR(iobuf);
>
>                memcpy(buf, iobuf, count);
>        }
> @@ -244,7 +244,7 @@ static int block_put(struct block_device *blk, const
> void *buf, int block)
>                return -EINVAL;
>
>        data = block_get(blk, block);
> -       if (!data)
> +       if (IS_ERR(data))
>                BUG();
>
>        memcpy(data, buf, 1 << blk->blockbits);
> @@ -270,8 +270,8 @@ static ssize_t block_write(struct cdev *cdev, const
> void *buf, size_t count,
>
>                now = min(count, now);
>
> -               if (!iobuf)
> -                       return -EIO;
> +               if (IS_ERR(iobuf))
> +                       return PTR_ERR(iobuf);
>
>                memcpy(iobuf + (offset & mask), buf, now);
>                ret = block_put(blk, iobuf, block);
> @@ -299,8 +299,8 @@ static ssize_t block_write(struct cdev *cdev, const
> void *buf, size_t count,
>        if (count) {
>                void *iobuf = block_get(blk, block);
>
> -               if (!iobuf)
> -                       return -EIO;
> +               if (IS_ERR(iobuf))
> +                       return PTR_ERR(iobuf);
>
>                memcpy(iobuf, buf, count);
>                ret = block_put(blk, iobuf, block);
> --
> 1.7.10
>
>
Compile and run-time tested; results in a proper error message propagated
by the block layer:

imx-esdhc@imx-esdhc0: timeout 1
mci@mci0: Reading block 2560 failed with -110
block_cache: blk->ops->read returned -110

Therefore:

Tested-by: Roberto Nibali <rnibali@gmail.com>
Acked-by: Roberto Nibali <rnibali@gmail.com>

Cheers
Roberto

--14dae93409a3b4864c04c154738b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Sascha<br><br><div class=3D"gmail_quote">On Wed, May 30, 2012 at 7:31 AM=
, Sascha Hauer <span dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pengutronix.=
de" target=3D"_blank">s.hauer@pengutronix.de</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">

Signed-off-by: Sascha Hauer &lt;<a href=3D"mailto:s.hauer@pengutronix.de">s=
.hauer@pengutronix.de</a>&gt;<br>
---<br>
=A0common/block.c | =A0 26 +++++++++++++-------------<br>
=A01 file changed, 13 insertions(+), 13 deletions(-)<br>
<br>
diff --git a/common/block.c b/common/block.c<br>
index 4253fc4..437dc95 100644<br>
--- a/common/block.c<br>
+++ b/common/block.c<br>
@@ -161,7 +161,7 @@ static void *block_get(struct block_device *blk, int bl=
ock)<br>
 =A0 =A0 =A0 =A0int ret;<br>
<br>
 =A0 =A0 =A0 =A0if (block &gt;=3D blk-&gt;num_blocks)<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 return NULL;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 return ERR_PTR(-ENXIO);<br>
<br>
 =A0 =A0 =A0 =A0outdata =3D block_get_cached(blk, block);<br>
 =A0 =A0 =A0 =A0if (outdata)<br>
@@ -169,7 +169,7 @@ static void *block_get(struct block_device *blk, int bl=
ock)<br>
<br>
 =A0 =A0 =A0 =A0ret =3D block_cache(blk, block);<br>
 =A0 =A0 =A0 =A0if (ret)<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 return NULL;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 return ERR_PTR(ret);<br>
<br>
 =A0 =A0 =A0 =A0outdata =3D block_get_cached(blk, block);<br>
 =A0 =A0 =A0 =A0if (!outdata)<br>
@@ -191,8 +191,8 @@ static ssize_t block_read(struct cdev *cdev, void *buf,=
 size_t count,<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0size_t now =3D BLOCKSIZE(blk) - (offset &am=
p; mask);<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0void *iobuf =3D block_get(blk, block);<br>
<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!iobuf)<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -EIO;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (IS_ERR(iobuf))<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return PTR_ERR(iobuf);<br>
<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0now =3D min(count, now);<br>
<br>
@@ -207,8 +207,8 @@ static ssize_t block_read(struct cdev *cdev, void *buf,=
 size_t count,<br>
 =A0 =A0 =A0 =A0while (blocks) {<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0void *iobuf =3D block_get(blk, block);<br>
<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!iobuf)<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -EIO;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (IS_ERR(iobuf))<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return PTR_ERR(iobuf);<br>
<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0memcpy(buf, iobuf, BLOCKSIZE(blk));<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0buf +=3D BLOCKSIZE(blk);<br>
@@ -220,8 +220,8 @@ static ssize_t block_read(struct cdev *cdev, void *buf,=
 size_t count,<br>
 =A0 =A0 =A0 =A0if (count) {<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0void *iobuf =3D block_get(blk, block);<br>
<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!iobuf)<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -EIO;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (IS_ERR(iobuf))<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return PTR_ERR(iobuf);<br>
<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0memcpy(buf, iobuf, count);<br>
 =A0 =A0 =A0 =A0}<br>
@@ -244,7 +244,7 @@ static int block_put(struct block_device *blk, const vo=
id *buf, int block)<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0return -EINVAL;<br>
<br>
 =A0 =A0 =A0 =A0data =3D block_get(blk, block);<br>
- =A0 =A0 =A0 if (!data)<br>
+ =A0 =A0 =A0 if (IS_ERR(data))<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0BUG();<br>
<br>
 =A0 =A0 =A0 =A0memcpy(data, buf, 1 &lt;&lt; blk-&gt;blockbits);<br>
@@ -270,8 +270,8 @@ static ssize_t block_write(struct cdev *cdev, const voi=
d *buf, size_t count,<br>
<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0now =3D min(count, now);<br>
<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!iobuf)<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -EIO;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (IS_ERR(iobuf))<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return PTR_ERR(iobuf);<br>
<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0memcpy(iobuf + (offset &amp; mask), buf, no=
w);<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ret =3D block_put(blk, iobuf, block);<br>
@@ -299,8 +299,8 @@ static ssize_t block_write(struct cdev *cdev, const voi=
d *buf, size_t count,<br>
 =A0 =A0 =A0 =A0if (count) {<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0void *iobuf =3D block_get(blk, block);<br>
<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!iobuf)<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -EIO;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (IS_ERR(iobuf))<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return PTR_ERR(iobuf);<br>
<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0memcpy(iobuf, buf, count);<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ret =3D block_put(blk, iobuf, block);<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.10<br>
<br>
</font></span></blockquote></div><br><div>Compile and run-time tested; resu=
lts in a proper error message propagated by the block layer:</div><div><br>=
</div><div><div>imx-esdhc@imx-esdhc0: timeout 1</div><div>mci@mci0: Reading=
 block 2560 failed with -110</div>

<div>block_cache: blk-&gt;ops-&gt;read returned -110</div></div><div><br></=
div><div>Therefore:</div><div><br></div><div>Tested-by: Roberto Nibali &lt;=
<a href=3D"mailto:rnibali@gmail.com">rnibali@gmail.com</a>&gt;</div><div>

Acked-by: Roberto Nibali &lt;<a href=3D"mailto:rnibali@gmail.com">rnibali@g=
mail.com</a>&gt;</div><div><br></div><div>Cheers</div><div>Roberto</div>

--14dae93409a3b4864c04c154738b--


--===============0146096208745377687==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0146096208745377687==--
