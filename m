Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zs5RF-0001CE-F5
 for barebox@lists.infradead.org; Fri, 30 Oct 2015 08:53:34 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 30 Oct 2015 09:53:50 +0100
References: <20151029160409.2ad22e14@berta>
 <20151030073104.GZ25308@pengutronix.de>
In-Reply-To: <20151030073104.GZ25308@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201510300953.50440.jbe@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [BUG] ata: disk_ata_drive: SSD drive doesn't pass check for ata
 id validity
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

On Friday 30 October 2015 08:31:04 Sascha Hauer wrote:
> On Thu, Oct 29, 2015 at 04:04:09PM +0300, Peter Mamonov wrote:
> > Hi!
> >
> > Barebox refuses to deal with OCZ-VERTEX4 ssd sata drive, because:
> > 	ata1: ata id invalid
> >
> > This error is triggered by the following piece of code :
> >
> > static int ata_id_is_valid(const uint16_t *id)
> > {
> > 	if ((id[ATA_ID_FIELD_VALID] & 1) =3D=3D 0) {
> > 		pr_debug("Drive's ID seems invalid\n");
> > 		return -EINVAL;
> > 	}
> >
> > 	return 0;
> > }
> >
> > The "id" is a sector-sized block of bytes, received after
> > issuing ATA_CMD_ID_ATA command.
> >
> > If I remove this check, the drive works fine.
> >
> > Can someone with better knowledge of ATA standard comment on this
> > issue?
>
> Juergen, do you have an idea what this check is for? Neither U-Boot nor
> the Kernel seem to ever check for bit 0 in this field.

Seems this bit was meaningful in earlier days: it marked the ID member in t=
he =

structure returned by the disk as valid (=3D1) or invalid (=3D0). In the me=
antime =

it seems obsolete. The last occurrence I found is in the Linux kernel in =

file "drivers/block/mg_disk.c". All other code which checks this register =

content just check bits 1 and 2. I vote for removing this piece of code.

jbe

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| http://=
www.pengutronix.de/ =A0|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
