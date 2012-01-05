Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qy0-f177.google.com ([209.85.216.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rirkk-0002m4-3o
 for barebox@lists.infradead.org; Thu, 05 Jan 2012 18:09:26 +0000
Received: by qcsc1 with SMTP id c1so486430qcs.36
 for <barebox@lists.infradead.org>; Thu, 05 Jan 2012 10:09:23 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1325770433-10243-1-git-send-email-plagnioj@jcrosoft.com>
References: <1325770433-10243-1-git-send-email-plagnioj@jcrosoft.com>
Date: Thu, 5 Jan 2012 19:09:22 +0100
Message-ID: <CAJfOKBzChNf0xX=7nFSiCisoA0y2xo7jJnhOyQ2japt=b4b5zQ@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] mci_spi: specify hw_dev
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

2012/1/5 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> =A0drivers/mci/mci_spi.c | =A0 =A01 +
> =A01 files changed, 1 insertions(+), 0 deletions(-)
>
> diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
> index 653910b..54b2a91 100644
> --- a/drivers/mci/mci_spi.c
> +++ b/drivers/mci/mci_spi.c
> @@ -387,6 +387,7 @@ static int spi_mci_probe(struct device_d *dev)
> =A0 =A0 =A0 =A0host->mci.send_cmd =3D mmc_spi_request;
> =A0 =A0 =A0 =A0host->mci.set_ios =3D mmc_spi_set_ios;
> =A0 =A0 =A0 =A0host->mci.init =3D mmc_spi_init;
> + =A0 =A0 =A0 host->mci.hw_dev =3D dev;
>
> =A0 =A0 =A0 =A0host->dev =3D dev;
> =A0 =A0 =A0 =A0host->spi =3D spi;
> --
> 1.7.7
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


Did you get the driver to work on your platform ?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
