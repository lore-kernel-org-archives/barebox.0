Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEiCP-0008Ts-B1
 for barebox@lists.infradead.org; Wed, 07 Dec 2016 19:48:18 +0000
Date: Wed, 7 Dec 2016 20:47:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161207194755.54yayeuzdf3s2576@pengutronix.de>
References: <20161205094033.31569-1-antonynpavlov@gmail.com>
 <20161205094033.31569-5-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161205094033.31569-5-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC v2 4/8] import initial kexec stuff
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

On Mon, Dec 05, 2016 at 12:40:29PM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>

The commit message could be a bit more verbose and at least mention
where this code is derived from and from which version.

> +
> +static int build_mem_ehdr(const char *buf, off_t len, struct mem_ehdr *ehdr)
> +{
> +	unsigned char e_ident[EI_NIDENT];
> +	int result;
> +
> +	memset(ehdr, 0, sizeof(*ehdr));
> +
> +	if ((size_t)len < sizeof(e_ident)) {
> +		printf("Buffer is too small to hold ELF e_ident\n");
> +
> +		return -1;
> +	}
> +
> +	memcpy(e_ident, buf, sizeof(e_ident));
> +
> +	ehdr->ei_class   = e_ident[EI_CLASS];
> +	ehdr->ei_data    = e_ident[EI_DATA];
> +	if (	(ehdr->ei_class != ELFCLASS32) &&
> +		(ehdr->ei_class != ELFCLASS64))
> +	{
> +		printf("Not a supported ELF class\n");
> +		return -1;
> +	}
> +
> +	if (	(ehdr->ei_data != ELFDATA2LSB) &&
> +		(ehdr->ei_data != ELFDATA2MSB))
> +	{
> +		printf("Not a supported ELF data format\n");
> +		return -1;
> +	}
> +
> +	result = -1;
> +	if (ehdr->ei_class == ELFCLASS32) {
> +		result = build_mem_elf32_ehdr(buf, len, ehdr);
> +	}

The opening braces are sometimes on the same line and sometimees on a
new line. Is this from the original code?

> +
> +	/* Now walk and normalize the notes */
> +	ehdr->e_note = xmalloc(sizeof(*ehdr->e_note) * ehdr->e_notenum);
> +	for (i = 0, note = note_start; note < note_end;
> +			note += note_size, i++) {
> +		const unsigned char *name, *desc;
> +		ElfNN_Nhdr hdr;
> +		read_nhdr(ehdr, &hdr, note);
> +		note_size  = sizeof(hdr);
> +		name       = note + note_size;
> +		note_size += (hdr.n_namesz + 3) & ~3;
> +		desc       = note + note_size;
> +		note_size += (hdr.n_descsz + 3) & ~3;
> +
> +		if ((hdr.n_namesz != 0) && (name[hdr.n_namesz -1] != '\0')) {
> +			/* If note name string is not null terminated, just
> +			 * warn user about it and continue processing. This
> +			 * allows us to parse /proc/kcore on older kernels
> +			 * where /proc/kcore elf notes were not null
> +			 * terminated. It has been fixed in 2.6.19.
> +			 */
> +			printf("Warning: Elf Note name is not null "
> +					"terminated\n");
> +		}

Is this relevant for barebox? We do not parse /proc/kcore.

> +		ehdr->e_note[i].n_type = hdr.n_type;
> +		ehdr->e_note[i].n_name = (char *)name;
> +		ehdr->e_note[i].n_desc = desc;
> +		ehdr->e_note[i].n_descsz = hdr.n_descsz;
> +
> +	}
> +
> +	return 0;
> +}
> +

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
