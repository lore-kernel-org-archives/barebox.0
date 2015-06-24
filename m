Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z7fQb-00071G-Dh
 for barebox@lists.infradead.org; Wed, 24 Jun 2015 07:49:02 +0000
Received: by lagx9 with SMTP id x9so20894215lag.1
 for <barebox@lists.infradead.org>; Wed, 24 Jun 2015 00:48:39 -0700 (PDT)
Date: Wed, 24 Jun 2015 10:55:05 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150624105505.fa8de50f52b6f76dbfd7008a@gmail.com>
In-Reply-To: <1435087839-15939-1-git-send-email-dev@lynxeye.de>
References: <1435087839-15939-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/2] PCI: rework BAR size calculation
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Tue, 23 Jun 2015 21:30:38 +0200
Lucas Stach <dev@lynxeye.de> wrote:

> The probe code now does a much better job at detecting bad BARs.
> Also make sure to preserve any previous content of the BAR
> registers if we don't relocate them.
>
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
> I hope this fixes the problems seen with new versions of QEMU on
> MIPS malta.

I have just tested this patchseries. The qemu problems are fixed, thanks!

> ---
>  drivers/pci/pci.c | 39 ++++++++++++++++++++++++++++++++++-----
>  1 file changed, 34 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> index 3a0e7a5..1e45907 100644
> --- a/drivers/pci/pci.c
> +++ b/drivers/pci/pci.c
> @@ -129,10 +129,24 @@ static struct pci_dev *alloc_pci_dev(void)
>  	return dev;
>  }
>  =

> +static u32 pci_size(u32 base, u32 maxbase, u32 mask)
> +{
> +	u32 size =3D maxbase & mask;
> +	if (!size)
> +		return 0;
> +
> +	size =3D (size & ~(size-1)) - 1;
> +
> +	if (base =3D=3D maxbase && ((base | size) & mask) !=3D mask)
> +		return 0;
> +
> +	return size + 1;
> +}
> +
> +
>  static void setup_device(struct pci_dev *dev, int max_bar)
>  {
> -	int bar, size;
> -	u32 mask;
> +	int bar;
>  	u8 cmd;
>  =

>  	pci_read_config_byte(dev, PCI_COMMAND, &cmd);
> @@ -141,9 +155,12 @@ static void setup_device(struct pci_dev *dev, int ma=
x_bar)
>  =

>  	for (bar =3D 0; bar < max_bar; bar++) {
>  		resource_size_t last_addr;
> +		u32 orig, mask, size;
>  =

> +		pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &orig);
>  		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, 0xfffffffe);
>  		pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &mask);
> +		pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, orig);
>  =

>  		if (mask =3D=3D 0 || mask =3D=3D 0xffffffff) {
>  			pr_debug("pbar%d set bad mask\n", bar);
> @@ -151,7 +168,11 @@ static void setup_device(struct pci_dev *dev, int ma=
x_bar)
>  		}
>  =

>  		if (mask & 0x01) { /* IO */
> -			size =3D ((~(mask & 0xfffffffe)) & 0xffff) + 1;
> +			size =3D pci_size(orig, mask, 0xfffffffe);
> +			if (!size) {
> +				pr_debug("pbar%d bad IO mask\n", bar);
> +				continue;
> +			}
>  			pr_debug("pbar%d: mask=3D%08x io %d bytes\n", bar, mask, size);
>  			if (last_io + size >
>  			    dev->bus->resource[PCI_BUS_RESOURCE_IO]->end) {
> @@ -164,7 +185,11 @@ static void setup_device(struct pci_dev *dev, int ma=
x_bar)
>  			last_io +=3D size;
>  		} else if ((mask & PCI_BASE_ADDRESS_MEM_PREFETCH) &&
>  		           last_mem_pref) /* prefetchable MEM */ {
> -			size =3D (~(mask & 0xfffffff0)) + 1;
> +			size =3D pci_size(orig, mask, 0xfffffff0);
> +			if (!size) {
> +				pr_debug("pbar%d bad P-MEM mask\n", bar);
> +				continue;
> +			}
>  			pr_debug("pbar%d: mask=3D%08x P memory %d bytes\n",
>  			    bar, mask, size);
>  			if (last_mem_pref + size >
> @@ -178,7 +203,11 @@ static void setup_device(struct pci_dev *dev, int ma=
x_bar)
>  			last_addr =3D last_mem_pref;
>  			last_mem_pref +=3D size;
>  		} else { /* non-prefetch MEM */
> -			size =3D (~(mask & 0xfffffff0)) + 1;
> +			size =3D pci_size(orig, mask, 0xfffffff0);
> +			if (!size) {
> +				pr_debug("pbar%d bad NP-MEM mask\n", bar);
> +				continue;
> +			}
>  			pr_debug("pbar%d: mask=3D%08x NP memory %d bytes\n",
>  			    bar, mask, size);
>  			if (last_mem + size >
> -- =

> 2.1.0
> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
