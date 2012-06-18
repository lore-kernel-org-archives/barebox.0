Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yx0-f177.google.com ([209.85.213.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sggfi-0000OA-8m
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 18:27:30 +0000
Received: by yenr9 with SMTP id r9so4409586yen.36
 for <barebox@lists.infradead.org>; Mon, 18 Jun 2012 11:27:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1340030880-10062-3-git-send-email-js@sig21.net>
References: <1340030880-10062-1-git-send-email-js@sig21.net>
 <1340030880-10062-3-git-send-email-js@sig21.net>
From: Roberto Nibali <rnibali@gmail.com>
Date: Mon, 18 Jun 2012 20:27:08 +0200
Message-ID: <CAONxwYPRvOL0FL1PfuQ7MjCr+vY7g6OnR_m8v38y+71EvsHmhw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3613286128819704691=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/6] miidev: actually probe the PHY
To: Johannes Stezenbach <js@sig21.net>
Cc: barebox@lists.infradead.org

--===============3613286128819704691==
Content-Type: multipart/alternative; boundary=bcaec539650c86155504c2c35141

--bcaec539650c86155504c2c35141
Content-Type: text/plain; charset=ISO-8859-1

Hi

On Mon, Jun 18, 2012 at 4:47 PM, Johannes Stezenbach <js@sig21.net> wrote:

> Check if the PHY is really accessible (e.g. the
> PHY address is correct) during probe.
>
> Signed-off-by: Johannes Stezenbach <js@sig21.net>
> ---
>  drivers/net/miidev.c |   12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
> index 272234e..3545889 100644
> --- a/drivers/net/miidev.c
> +++ b/drivers/net/miidev.c
> @@ -225,6 +225,14 @@ static struct file_operations miidev_ops = {
>  static int miidev_probe(struct device_d *dev)
>  {
>        struct mii_device *mdev = dev->priv;
> +       int val;
> +
> +       val = mii_read(mdev, mdev->address, MII_PHYSID1);
> +       if (val < 0 || val == 0xffff)
> +               goto err_out;
> +       val = mii_read(mdev, mdev->address, MII_PHYSID2);
> +       if (val < 0 || val == 0xffff)
> +               goto err_out;
>
>
Suppose this has no influence on drivers/net/fec_imx.c:fec_set_hwaddr()
returning -1?

Otherwise I believe this is fine.

Cheers
Roberto

--bcaec539650c86155504c2c35141
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi<br><br><div class=3D"gmail_quote">On Mon, Jun 18, 2012 at 4:47 PM, Johan=
nes Stezenbach <span dir=3D"ltr">&lt;<a href=3D"mailto:js@sig21.net" target=
=3D"_blank">js@sig21.net</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">

Check if the PHY is really accessible (e.g. the<br>
PHY address is correct) during probe.<br>
<br>
Signed-off-by: Johannes Stezenbach &lt;<a href=3D"mailto:js@sig21.net">js@s=
ig21.net</a>&gt;<br>
---<br>
=A0drivers/net/miidev.c | =A0 12 ++++++++++++<br>
=A01 file changed, 12 insertions(+)<br>
<br>
diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c<br>
index 272234e..3545889 100644<br>
--- a/drivers/net/miidev.c<br>
+++ b/drivers/net/miidev.c<br>
@@ -225,6 +225,14 @@ static struct file_operations miidev_ops =3D {<br>
=A0static int miidev_probe(struct device_d *dev)<br>
=A0{<br>
 =A0 =A0 =A0 =A0struct mii_device *mdev =3D dev-&gt;priv;<br>
+ =A0 =A0 =A0 int val;<br>
+<br>
+ =A0 =A0 =A0 val =3D mii_read(mdev, mdev-&gt;address, MII_PHYSID1);<br>
+ =A0 =A0 =A0 if (val &lt; 0 || val =3D=3D 0xffff)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 goto err_out;<br>
+ =A0 =A0 =A0 val =3D mii_read(mdev, mdev-&gt;address, MII_PHYSID2);<br>
+ =A0 =A0 =A0 if (val &lt; 0 || val =3D=3D 0xffff)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 goto err_out;<br>
<br></blockquote><div><br></div><div>Suppose this has no influence on=A0dri=
vers/net/fec_imx.c:fec_set_hwaddr() returning -1?</div><div><br></div><div>=
Otherwise I believe this is fine.</div><div><br></div><div>Cheers</div><div=
>

Roberto</div></div>

--bcaec539650c86155504c2c35141--


--===============3613286128819704691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3613286128819704691==--
