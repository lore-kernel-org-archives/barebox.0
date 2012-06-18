Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sgg8R-0006e8-O5
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 17:53:08 +0000
Received: by yhjj52 with SMTP id j52so4422787yhj.36
 for <barebox@lists.infradead.org>; Mon, 18 Jun 2012 10:53:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1340030880-10062-2-git-send-email-js@sig21.net>
References: <1340030880-10062-1-git-send-email-js@sig21.net>
 <1340030880-10062-2-git-send-email-js@sig21.net>
From: Roberto Nibali <rnibali@gmail.com>
Date: Mon, 18 Jun 2012 19:52:44 +0200
Message-ID: <CAONxwYONy=A6pFp2hdupr6vsO4+Me4wuSe1i+YPKQsK6rkRs3Q@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7204043577796299369=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/6] miidev: fix auto negotiation
To: Johannes Stezenbach <js@sig21.net>
Cc: barebox@lists.infradead.org

--===============7204043577796299369==
Content-Type: multipart/alternative; boundary=14dae93408ab7f0f4204c2c2d69d

--14dae93408ab7f0f4204c2c2d69d
Content-Type: text/plain; charset=ISO-8859-1

Hi

On Mon, Jun 18, 2012 at 4:47 PM, Johannes Stezenbach <js@sig21.net> wrote:

> The auto negotiation result is the intersect
> of the advertised abilities and the link partner abilities.
>
> Signed-off-by: Johannes Stezenbach <js@sig21.net>
> ---
>  drivers/net/miidev.c |   16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
> index f47fc9e..272234e 100644
> --- a/drivers/net/miidev.c
> +++ b/drivers/net/miidev.c
> @@ -123,6 +123,7 @@ int miidev_wait_aneg(struct mii_device *mdev)
>
>  int miidev_get_status(struct mii_device *mdev)
>  {
> +       int ret, status, adv, lpa;
>        int ret, status;
>
>        ret = mii_read(mdev, mdev->address, MII_BMSR);
> @@ -136,13 +137,16 @@ int miidev_get_status(struct mii_device *mdev)
>                goto err_out;
>
>        if (ret & BMCR_ANENABLE) {
> -               ret = mii_read(mdev, mdev->address, MII_LPA);
> -               if (ret < 0)
> +               lpa = mii_read(mdev, mdev->address, MII_LPA);
> +               if (lpa < 0)
>                        goto err_out;
> -
> -               status |= ret & LPA_DUPLEX ? MIIDEV_STATUS_IS_FULL_DUPLEX
> : 0;
> -               status |= ret & LPA_100 ? MIIDEV_STATUS_IS_100MBIT :
> -                               MIIDEV_STATUS_IS_10MBIT;
> +               adv = mii_read(mdev, mdev->address, MII_ADVERTISE);
> +               if (adv < 0)
> +                       goto err_out;
> +               lpa &= adv;
>

Good catch and obviously correct. I reckon since nowadays most PHY's
advertise ADVERTISE_FULL or ADVERTISE_ALL, this has never been an issue for
anybody so far.

Best regards
Roberto

--14dae93408ab7f0f4204c2c2d69d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi<br><br><div class=3D"gmail_quote">On Mon, Jun 18, 2012 at 4:47 PM, Johan=
nes Stezenbach <span dir=3D"ltr">&lt;<a href=3D"mailto:js@sig21.net" target=
=3D"_blank">js@sig21.net</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">

The auto negotiation result is the intersect<br>
of the advertised abilities and the link partner abilities.<br>
<br>
Signed-off-by: Johannes Stezenbach &lt;<a href=3D"mailto:js@sig21.net">js@s=
ig21.net</a>&gt;<br>
---<br>
=A0drivers/net/miidev.c | =A0 16 ++++++++++------<br>
=A01 file changed, 10 insertions(+), 6 deletions(-)<br>
<br>
diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c<br>
index f47fc9e..272234e 100644<br>
--- a/drivers/net/miidev.c<br>
+++ b/drivers/net/miidev.c<br>
@@ -123,6 +123,7 @@ int miidev_wait_aneg(struct mii_device *mdev)<br>
<br>
=A0int miidev_get_status(struct mii_device *mdev)<br>
=A0{<br>
+ =A0 =A0 =A0 int ret, status, adv, lpa;<br>
 =A0 =A0 =A0 =A0int ret, status;<br>
<br>
 =A0 =A0 =A0 =A0ret =3D mii_read(mdev, mdev-&gt;address, MII_BMSR);<br>
@@ -136,13 +137,16 @@ int miidev_get_status(struct mii_device *mdev)<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0goto err_out;<br>
<br>
 =A0 =A0 =A0 =A0if (ret &amp; BMCR_ANENABLE) {<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 ret =3D mii_read(mdev, mdev-&gt;address, MII_=
LPA);<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (ret &lt; 0)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 lpa =3D mii_read(mdev, mdev-&gt;address, MII_=
LPA);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (lpa &lt; 0)<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0goto err_out;<br>
-<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 status |=3D ret &amp; LPA_DUPLEX ? MIIDEV_STA=
TUS_IS_FULL_DUPLEX : 0;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 status |=3D ret &amp; LPA_100 ? MIIDEV_STATUS=
_IS_100MBIT :<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 MIIDEV_STATUS=
_IS_10MBIT;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 adv =3D mii_read(mdev, mdev-&gt;address, MII_=
ADVERTISE);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (adv &lt; 0)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 goto err_out;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 lpa &amp;=3D adv;<br>
</blockquote><div><br></div><div>Good catch and obviously correct. I reckon=
 since nowadays most PHY&#39;s advertise=A0ADVERTISE_FULL or=A0ADVERTISE_AL=
L, this has never been an issue for anybody so far.</div><div><br></div><di=
v>

Best regards</div><div>Roberto</div></div>

--14dae93408ab7f0f4204c2c2d69d--


--===============7204043577796299369==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7204043577796299369==--
