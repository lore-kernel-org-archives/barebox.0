Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEsz2-0008DJ-Or
 for barebox@lists.infradead.org; Thu, 08 Dec 2016 07:19:13 +0000
Received: by mail-wm0-x244.google.com with SMTP id a20so1593053wme.2
 for <barebox@lists.infradead.org>; Wed, 07 Dec 2016 23:18:51 -0800 (PST)
Date: Thu, 8 Dec 2016 10:24:22 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20161208102422.e800f0860f184a128c428ec6@gmail.com>
In-Reply-To: <20161207194755.54yayeuzdf3s2576@pengutronix.de>
References: <20161205094033.31569-1-antonynpavlov@gmail.com>
 <20161205094033.31569-5-antonynpavlov@gmail.com>
 <20161207194755.54yayeuzdf3s2576@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [RFC v2 4/8] import initial kexec stuff
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

On Wed, 7 Dec 2016 20:47:55 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Dec 05, 2016 at 12:40:29PM +0300, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> =

> The commit message could be a bit more verbose and at least mention
> where this code is derived from and from which version.
> =

> > +
> > +static int build_mem_ehdr(const char *buf, off_t len, struct mem_ehdr =
*ehdr)
> > +{
> > +	unsigned char e_ident[EI_NIDENT];
> > +	int result;
> > +
> > +	memset(ehdr, 0, sizeof(*ehdr));
> > +
> > +	if ((size_t)len < sizeof(e_ident)) {
> > +		printf("Buffer is too small to hold ELF e_ident\n");
> > +
> > +		return -1;
> > +	}
> > +
> > +	memcpy(e_ident, buf, sizeof(e_ident));
> > +
> > +	ehdr->ei_class   =3D e_ident[EI_CLASS];
> > +	ehdr->ei_data    =3D e_ident[EI_DATA];
> > +	if (	(ehdr->ei_class !=3D ELFCLASS32) &&
> > +		(ehdr->ei_class !=3D ELFCLASS64))
> > +	{
> > +		printf("Not a supported ELF class\n");
> > +		return -1;
> > +	}
> > +
> > +	if (	(ehdr->ei_data !=3D ELFDATA2LSB) &&
> > +		(ehdr->ei_data !=3D ELFDATA2MSB))
> > +	{
> > +		printf("Not a supported ELF data format\n");
> > +		return -1;
> > +	}
> > +
> > +	result =3D -1;
> > +	if (ehdr->ei_class =3D=3D ELFCLASS32) {
> > +		result =3D build_mem_elf32_ehdr(buf, len, ehdr);
> > +	}
> =

> The opening braces are sometimes on the same line and sometimees on a
> new line. Is this from the original code?

Yes, original code has some formatting problems. I have noted that fact in =
RFC v2 0/0 message.

> > +
> > +	/* Now walk and normalize the notes */
> > +	ehdr->e_note =3D xmalloc(sizeof(*ehdr->e_note) * ehdr->e_notenum);
> > +	for (i =3D 0, note =3D note_start; note < note_end;
> > +			note +=3D note_size, i++) {
> > +		const unsigned char *name, *desc;
> > +		ElfNN_Nhdr hdr;
> > +		read_nhdr(ehdr, &hdr, note);
> > +		note_size  =3D sizeof(hdr);
> > +		name       =3D note + note_size;
> > +		note_size +=3D (hdr.n_namesz + 3) & ~3;
> > +		desc       =3D note + note_size;
> > +		note_size +=3D (hdr.n_descsz + 3) & ~3;
> > +
> > +		if ((hdr.n_namesz !=3D 0) && (name[hdr.n_namesz -1] !=3D '\0')) {
> > +			/* If note name string is not null terminated, just
> > +			 * warn user about it and continue processing. This
> > +			 * allows us to parse /proc/kcore on older kernels
> > +			 * where /proc/kcore elf notes were not null
> > +			 * terminated. It has been fixed in 2.6.19.
> > +			 */
> > +			printf("Warning: Elf Note name is not null "
> > +					"terminated\n");
> > +		}
> =

> Is this relevant for barebox? We do not parse /proc/kcore.

Good shot! I'll drop this code.

> =

> > +		ehdr->e_note[i].n_type =3D hdr.n_type;
> > +		ehdr->e_note[i].n_name =3D (char *)name;
> > +		ehdr->e_note[i].n_desc =3D desc;
> > +		ehdr->e_note[i].n_descsz =3D hdr.n_descsz;
> > +
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> =

> Sascha
> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
