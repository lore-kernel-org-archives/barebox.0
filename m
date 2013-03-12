Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFM59-00064f-Tj
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 10:05:20 +0000
Date: Tue, 12 Mar 2013 11:05:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130312100518.GQ1906@pengutronix.de>
References: <1363080597-10510-1-git-send-email-s.hauer@pengutronix.de>
 <1363080597-10510-4-git-send-email-s.hauer@pengutronix.de>
 <201303121048.16318.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201303121048.16318.jbe@pengutronix.de>
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
Subject: Re: [PATCH 3/4] ARM: i.MX: Add bbu handler for external NAND boot
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 12, 2013 at 10:48:16AM +0100, Juergen Beisert wrote:
> Sascha Hauer wrote:
> > [...]
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (size_available < 0) {
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0p=
rintf("device is too small\n");
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0r=
et =3D -ENOSPC;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0g=
oto out;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0}
> > [...]
> =

> As the user only sees bad block info when DEBUG is enabled, you should ou=
tput =

> more info here.
> The device (or better partition?) can be too small in general, or it can =
be =

> too small due to many bad blocks inside. IMHO it would be helpful to see =
more =

> info here why it failed.

Ok. I reworded this to:

	printf("device is too small.\n"
			"raw partition size: 0x%08llx\n"
			"partition size w/o bad blocks: 0x%08llx\n"
			"size needed: 0x%08x\n",
			s.st_size,
			s.st_size - num_bb * blocksize,
			data->len);

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
