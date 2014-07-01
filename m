Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X1rxY-00044E-1a
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 06:54:32 +0000
Date: Tue, 1 Jul 2014 08:54:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140701065409.GO14257@pengutronix.de>
References: <1502046103.916753.1404130899228.open-xchange@oxbsltgw09.schlund.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1502046103.916753.1404130899228.open-xchange@oxbsltgw09.schlund.de>
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
Subject: Re: [PATCH] boot: show all boot sources
To: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 30, 2014 at 02:21:39PM +0200, Rolf Evers-Fischer wrote:
> This patch fixes the presentation of all bootsources with 'boot -m' and
> 'boot -l' command.
> =

> Signed-off-by: Rolf Evers-Fischer <embedded24@evers-fischer.de>
> ---
> =A0commands/boot.c |=A0 =A0 4 ++--
> =A01 files changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/commands/boot.c b/commands/boot.c
> index c8eae10..1a1856d 100644
> --- a/commands/boot.c
> +++ b/commands/boot.c
> @@ -433,12 +433,12 @@ static int do_boot(int argc, char *argv[])
> =A0 =A0 =A0 =A0 }
> =

> =A0 =A0 =A0 =A0 if (do_list) {
> -=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bootsources_list(sources, num_sources);
> +=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bootsources_list(&argv[optind], argc - op=
tind);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 goto out;
> =A0 =A0 =A0 =A0 }
> =

> =A0 =A0 =A0 =A0 if (do_menu) {
> -=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bootsources_menu(sources, num_sources);
> +=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bootsources_menu(&argv[optind], argc - op=
tind);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 goto out;
> =A0 =A0 =A0 =A0 }

What exactly fixes this? Looking at the code we have:

	if (optind < argc) {
		num_sources =3D argc - optind;
		sources =3D xmemdup(&argv[optind], sizeof(char *) *num_sources);
	} else {
		...
	}

Which should do what you want. On which barebox version are you?

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
