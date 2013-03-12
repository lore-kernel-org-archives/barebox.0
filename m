Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFMA4-0007ZI-Tt
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 10:10:25 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 12 Mar 2013 11:08:47 +0100
References: <1363080597-10510-1-git-send-email-s.hauer@pengutronix.de>
 <201303121048.16318.jbe@pengutronix.de>
 <20130312100518.GQ1906@pengutronix.de>
In-Reply-To: <20130312100518.GQ1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201303121108.47844.jbe@pengutronix.de>
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
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> On Tue, Mar 12, 2013 at 10:48:16AM +0100, Juergen Beisert wrote:
> > Sascha Hauer wrote:
> > > [...]
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (size_available < 0)=
 {
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0printf("device is too small\n");
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0ret =3D -ENOSPC;
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0goto out;
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0}
> > > [...]
> >
> > As the user only sees bad block info when DEBUG is enabled, you should
> > output more info here.
> > The device (or better partition?) can be too small in general, or it can
> > be too small due to many bad blocks inside. IMHO it would be helpful to
> > see more info here why it failed.
>
> Ok. I reworded this to:
>
> 	printf("device is too small.\n"
> 			"raw partition size: 0x%08llx\n"
> 			"partition size w/o bad blocks: 0x%08llx\n"
> 			"size needed: 0x%08x\n",
> 			s.st_size,
> 			s.st_size - num_bb * blocksize,
> 			data->len);

ACK.

jbe

-- =

Pengutronix e.K.                              | Juergen Beisert            =
 |
Linux Solutions for Science and Industry      | Phone: +49-5121-206917-5128=
 |
Peiner Str. 6-8, 31137 Hildesheim, Germany    | Fax:   +49-5121-206917-5555=
 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/ =
 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
