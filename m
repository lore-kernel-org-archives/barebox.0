Delivery-date: Wed, 29 Jul 2026 16:50:25 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wp5c0-004AjU-35
	for lore@lore.pengutronix.de;
	Wed, 29 Jul 2026 16:50:25 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CB984201C24
	for <lore@pengutronix.de>; Wed, 29 Jul 2026 16:50:20 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MfoJjAMr;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l+g2Af14SstG9U7GAnVOGJ21ivQsrsTlLTfk4pqCjic=; b=MfoJjAMr13g4RB9z3oA0QFdag+
	5npgFyZpyw9ndS3bOpAlHLTutEHOK9zGXJwQ2AB2RDMxxCecn6xE6Juwfw/JDqacmyvbItWdC65bP
	ezq6ze+qW2F2jC82v4Zb4CAUBP0jTkE0JJmGHR1I3pWy/HMvpqSqxw1FDIjhp06N1IM2YRVtHe/Yf
	2uSjbFLTK2zoopA8j777gxWSO1/CuiUhvPS0BBZxiqtlUnxJr0J3eba8ajpNU2MJh82ku8wu9qIZi
	qykR0k3U6O1FEBIZEFvZMMUu59nLoOLKrwT7gz2oz7IsDQu02xYe3oAB5kMao8HMBw2qwpLvu9CZB
	dnxWYYRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp5aM-00000008I7b-2MhL;
	Wed, 29 Jul 2026 14:48:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp5aI-00000008I6n-2ZrX
	for barebox@lists.infradead.org;
	Wed, 29 Jul 2026 14:48:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wp5aF-0006fC-J9; Wed, 29 Jul 2026 16:48:35 +0200
Message-ID: <3d8e7caea2d1c3ce759cda12ba02de0b44f00479.camel@pengutronix.de>
Subject: Re: [PATCH v2 10/10] ata: ahci: add PCI AHCI support and
 Marvell-specific fixes
From: Lucas Stach <l.stach@pengutronix.de>
To: famlauro93l@gmail.com, Sascha Hauer <s.hauer@pengutronix.de>, "open
 list:BAREBOX" <barebox@lists.infradead.org>
Date: Wed, 29 Jul 2026 16:48:35 +0200
In-Reply-To: <20260728-rn102-rn104-series-v2-10-ae31f55b7bc8@gmail.com>
References: <20260728-rn102-rn104-series-v2-0-ae31f55b7bc8@gmail.com>
	 <20260728-rn102-rn104-series-v2-10-ae31f55b7bc8@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.60.1 (3.60.1-1.fc44) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_074838_980109_703A9329 
X-CRM114-Status: GOOD (  38.17  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Luca, Am Dienstag, dem 28.07.2026 um 19:43 +0200 schrieb
    Luca Lauro via B4 Relay: > From: Luca Lauro <famlauro93l@gmail.com> > > This
    patch extends the barebox AHCI driver with full support for > PCI-based [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 4nxee3urcqazjdw6sgui8fjfrw3cmr56
X-Spamd-Result: default: False [-6.51 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[l.stach@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,pengutronix.de,lists.infradead.org];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[l.stach@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: CB984201C24

Hi Luca,

Am Dienstag, dem 28.07.2026 um 19:43 +0200 schrieb Luca Lauro via B4
Relay:
> From: Luca Lauro <famlauro93l@gmail.com>
>=20
> This patch extends the barebox AHCI driver with full support for
> PCI-based AHCI controllers, required for Marvell Armada 3700/XP/AC5
> platforms used in the Netgear RN102/RN104 NAS devices.
>=20
> Barebox previously supported only memory-mapped AHCI controllers.
> Marvell exposes its AHCI controller through PCI BARs, requiring a
> dedicated probing path and MMIO mapping via pci_iomap(). The new
> ahci_pci_probe() function integrates PCI AHCI devices with the existing
> ahci_add_host() infrastructure.
>=20
> In addition to PCI support, several functional fixes are required for
> Marvell AHCI to operate reliably:
>=20
> - Correct DMA handling for zero-length buffers in ahci_io()
>   (avoid invalid DMA mappings and sg entries).
>=20
> - Implement a Marvell-compatible COMRESET sequence:
>   DET=3D1 =E2=86=92 delay =E2=86=92 DET=3D0, followed by PHY-ready pollin=
g.
>=20
> - Improve port disable logic by clearing START/FIS_RX/LIST_ON and
>   waiting for FR/CR to drop to zero.
>=20
> - Clear PORT_SCR_ERR before reinitializing the port.
>=20
> - Program command list and FIS base addresses correctly, including
>   HOST_CAP_64 handling.
>=20
Most of those should probably be individual patches, so they can be
reviewed independently.

> The patch also introduces several improvements:
>=20
> - Add ahci_ata_nodata(), a helper for ATA commands without data
>   (e.g. FLUSH EXT, STANDBY NOW).
>=20
> - Add definitions for ATA_CMD_FLUSH_EXT and ATA_CMD_STANDBYNOW1.
>=20
> - Add an AHCI poweroff handler that flushes and parks all disks before
>   shutdown, improving reliability on NAS devices.
>=20
The word "also" in a commit description is a strong hint that those
changes should definitely be split out into individual patches.

> These changes are required for reliable SATA enumeration and operation
> on Marvell-based NAS devices. Other AHCI platforms are unaffected, as
> the new logic is only exercised when PCI AHCI is present.
>=20
> Whitespace-only changes should have been removed.

Clearly there are still a lot of whitespace changes all over the file.
E.g. the changes to ahci_io(), aside from the zero length DMA handling,
are pure whitespace changes.

This submission smells a lot like overzealous LLM usage. While LLM
usage is fine as long as you clearly state this, the whitespace changes
are something that you should have validated yourself by looking at the
patch _before_ sending it onto the mailinglist and burdening the
maintainers by having to reject the patch again on trivial grounds.

Please make sure that _you_ have understood and validated the code you
are submitting before expecting others to invest time for a review.

Regards,
Lucas
=20
>=20
> Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
> ---
>  drivers/ata/ahci.c | 656 ++++++++++++++++++++++++++++++-----------------=
------
>  drivers/ata/ahci.h |   1 +
>  2 files changed, 374 insertions(+), 283 deletions(-)
>=20
> diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
> index 819dc37b3e..6c32393959 100644
> --- a/drivers/ata/ahci.c
> +++ b/drivers/ata/ahci.c
> @@ -19,7 +19,9 @@
>  #include <disks.h>
>  #include <ata_drive.h>
>  #include <linux/sizes.h>
> +#include <linux/pci.h>
>  #include <clock.h>
> +#include <poweroff.h>
> =20
>  #include "ahci.h"
> =20
> @@ -47,6 +49,54 @@
>  #define ahci_debug(ahci, fmt, arg...) \
>  	dev_dbg(ahci->dev, fmt, ##arg)
> =20
> +#define ATA_CMD_FLUSH_EXT 0xEA
> +#define ATA_CMD_STANDBYNOW1 0xE0
> +
> +#ifndef PCI_VENDOR_ID_MARVELL_EXT
> +#define PCI_VENDOR_ID_MARVELL_EXT 0x1b4b
> +#endif
> +
> +static LIST_HEAD(ahci_devices);
> +
> +static const struct pci_device_id ahci_pci_tbl[] =3D {
> +    { PCI_DEVICE(PCI_VENDOR_ID_MARVELL_EXT, 0x9170) },
> +    { 0, }
> +};
> +
> +static int ahci_pci_probe(struct pci_dev *pdev, const struct pci_device_=
id *id)
> +{
> +    struct ahci_device *ahci;
> +    void __iomem *mmio;
> +    int ret;
> +
> +    dev_info(&pdev->dev, "ahci: PCI probe %04x:%04x rev %02x\n",
> +         pdev->vendor, pdev->device, pdev->revision);
> +
> +    ret =3D pci_enable_device(pdev);
> +    if (ret)
> +        return ret;
> +
> +    pci_set_master(pdev);
> +
> +    mmio =3D pci_iomap(pdev, 5);
> +    if (!mmio)
> +        return -ENODEV;
> +
> +    ahci =3D xzalloc(sizeof(*ahci));
> +    ahci->dev =3D &pdev->dev;
> +    ahci->mmio_base =3D mmio;
> +    pdev->dev.priv =3D ahci;
> +
> +    ret =3D ahci_add_host(ahci);
> +    if (ret) {
> +        free(ahci);
> +        pdev->dev.priv =3D NULL;
> +        return ret;
> +    }
> +
> +    return 0;
> +}
> +
>  struct ahci_cmd_hdr {
>  	u32	opts;
>  	u32	status;
> @@ -148,45 +198,63 @@ static int ahci_fill_sg(struct ahci_port *ahci_port=
, dma_addr_t buf_dma, int buf
>  	return sg_count;
>  }
> =20
> -static int ahci_io(struct ahci_port *ahci_port, u8 *fis, int fis_len, vo=
id *rbuf,
> -		const void *wbuf, int buf_len)
> +static int ahci_io(struct ahci_port *ahci_port, u8 *fis, int fis_len,
> +                   void *rbuf, const void *wbuf, int buf_len)
>  {
> -	u32 opts;
> -	int sg_count;
> -	int ret;
> -	void *buf;
> -	dma_addr_t buf_dma;
> -	enum dma_data_direction dma_dir;
> +    u32 opts;
> +    int sg_count =3D 0;
> +    int ret;
> +    void *buf =3D NULL;
> +    dma_addr_t buf_dma =3D 0;
> +    enum dma_data_direction dma_dir =3D DMA_NONE;
> =20
> -	if (!ahci_link_ok(ahci_port, 1))
> -		return -EIO;
> +    if (!ahci_link_ok(ahci_port, 1))
> +        return -EIO;
> =20
> -	if (wbuf) {
> -		buf =3D (void *)wbuf;
> -		dma_dir =3D DMA_TO_DEVICE;
> -	} else {
> -		buf =3D rbuf;
> -		dma_dir =3D DMA_FROM_DEVICE;
> -	}
> +    if (buf_len > 0) {
> +        if (wbuf) {
> +            buf =3D (void *)wbuf;
> +            dma_dir =3D DMA_TO_DEVICE;
> +        } else {
> +            buf =3D rbuf;
> +            dma_dir =3D DMA_FROM_DEVICE;
> +        }
> =20
> -	buf_dma =3D dma_map_single(ahci_port->ahci->dev, buf, buf_len, dma_dir)=
;
> +        buf_dma =3D dma_map_single(ahci_port->ahci->dev, buf, buf_len, d=
ma_dir);
> +        sg_count =3D ahci_fill_sg(ahci_port, buf_dma, buf_len);
> +    }
> =20
> -	memcpy(ahci_port->cmd_tbl, fis, fis_len);
> +    memcpy(ahci_port->cmd_tbl, fis, fis_len);
> =20
> -	sg_count =3D ahci_fill_sg(ahci_port, buf_dma, buf_len);
> -	opts =3D (fis_len >> 2) | (sg_count << 16);
> -	if (wbuf)
> -		opts |=3D CMD_LIST_OPTS_WRITE;
> -	ahci_fill_cmd_slot(ahci_port, opts);
> +    opts =3D (fis_len >> 2) | (sg_count << 16);
> +    if (wbuf && buf_len > 0)
> +        opts |=3D CMD_LIST_OPTS_WRITE;
> +    ahci_fill_cmd_slot(ahci_port, opts);
> =20
> -	ahci_port_write_f(ahci_port, PORT_CMD_ISSUE, 1);
> +    ahci_port_write_f(ahci_port, PORT_CMD_ISSUE, 1);
> =20
> -	ret =3D wait_on_timeout(WAIT_DATAIO,
> -			(ahci_port_read(ahci_port, PORT_CMD_ISSUE) & 0x1) =3D=3D 0);
> +    ret =3D wait_on_timeout(WAIT_DATAIO,
> +            (ahci_port_read(ahci_port, PORT_CMD_ISSUE) & 0x1) =3D=3D 0);
> =20
> -	dma_unmap_single(ahci_port->ahci->dev, buf_dma, buf_len, dma_dir);
> +    if (buf_len > 0)
> +        dma_unmap_single(ahci_port->ahci->dev, buf_dma, buf_len, dma_dir=
);
> =20
> -	return ret;
> +    return ret;
> +}
> +
> +static int ahci_ata_nodata(struct ahci_port *ahci, u8 command, u8 featur=
e)
> +{
> +    u8 fis[20] =3D {
> +        0x27,        /* Host to device FIS */
> +        1 << 7,      /* Command FIS */
> +        command,     /* Command */
> +        feature,     /* Features */
> +    };
> +
> +    if (!ahci_link_ok(ahci, 0))
> +        return -ENODEV;
> +
> +    return ahci_io(ahci, fis, sizeof(fis), NULL, NULL, 0);
>  }
> =20
>  /*
> @@ -272,152 +340,88 @@ static int ahci_write(struct ata_port *ata, const =
void *buf, sector_t block,
> =20
>  static int ahci_init_port(struct ahci_port *ahci_port)
>  {
> -	u32 val, cmd;
> -	void *mem;
> -	dma_addr_t mem_dma;
> -	int ret;
> -
> -	/* make sure port is not active */
> -	val =3D ahci_port_read(ahci_port, PORT_CMD);
> -	if (val & (PORT_CMD_LIST_ON | PORT_CMD_FIS_ON | PORT_CMD_FIS_RX | PORT_=
CMD_START)) {
> -		ahci_port_debug(ahci_port, "Port is active. Deactivating.\n");
> -		val &=3D ~(PORT_CMD_LIST_ON | PORT_CMD_FIS_ON |
> -			 PORT_CMD_FIS_RX | PORT_CMD_START);
> -		ahci_port_write(ahci_port, PORT_CMD, val);
> -
> -		/*
> -		 * spec says 500 msecs for each bit, so
> -		 * this is slightly incorrect.
> -		 */
> -		mdelay(500);
> -	}
> -
> -	mem =3D dma_alloc_coherent(DMA_DEVICE_BROKEN,
> -				 AHCI_PORT_PRIV_DMA_SZ, &mem_dma);
> -	if (!mem) {
> -		return -ENOMEM;
> -	}
> -
> -	/*
> -	 * First item in chunk of DMA memory: 32-slot command list,
> -	 * 32 bytes each in size
> -	 */
> -	ahci_port->cmd_slot =3D mem;
> -	ahci_port->cmd_slot_dma =3D mem_dma;
> -
> -	ahci_port_debug(ahci_port, "cmd_slot =3D 0x%p (0x%pad)\n",
> -			ahci_port->cmd_slot, &ahci_port->cmd_slot_dma);
> -
> -	/*
> -	 * Second item: Received-FIS area
> -	 */
> -	ahci_port->rx_fis =3D mem + AHCI_CMD_LIST_SZ;
> -	ahci_port->rx_fis_dma =3D mem_dma + AHCI_CMD_LIST_SZ;
> -
> -	/*
> -	 * Third item: data area for storing a single command
> -	 * and its scatter-gather table
> -	 */
> -	ahci_port->cmd_tbl =3D mem + AHCI_CMD_LIST_SZ + AHCI_RX_FIS_SZ;
> -	ahci_port->cmd_tbl_dma =3D mem_dma + AHCI_CMD_LIST_SZ + AHCI_RX_FIS_SZ;
> -
> -	ahci_port_debug(ahci_port, "cmd_tbl =3D 0x%p (0x%pad)\n",
> -			ahci_port->cmd_tbl, &ahci_port->cmd_tbl_dma);
> -
> -	ahci_port->cmd_tbl_sg =3D ahci_port->cmd_tbl + AHCI_CMD_TBL_HDR_SZ;
> -
> -	ahci_port_write_f(ahci_port, PORT_LST_ADDR, lower_32_bits(ahci_port->cm=
d_slot_dma));
> -	if (ahci_port->ahci->cap & HOST_CAP_64)
> -		ahci_port_write_f(ahci_port, PORT_LST_ADDR_HI, upper_32_bits(ahci_port=
->cmd_slot_dma));
> -	ahci_port_write_f(ahci_port, PORT_FIS_ADDR, lower_32_bits(ahci_port->rx=
_fis_dma));
> -	if (ahci_port->ahci->cap & HOST_CAP_64)
> -		ahci_port_write_f(ahci_port, PORT_FIS_ADDR_HI, upper_32_bits(ahci_port=
->rx_fis_dma));
> -
> -	/*
> -	 * Add the spinup command to whatever mode bits may
> -	 * already be on in the command register.
> -	 */
> -	cmd =3D ahci_port_read(ahci_port, PORT_CMD);
> -	cmd |=3D PORT_CMD_FIS_RX;
> -	cmd |=3D PORT_CMD_SPIN_UP;
> -	cmd |=3D PORT_CMD_ICC_ACTIVE;
> -	ahci_port_write_f(ahci_port, PORT_CMD, cmd);
> -
> -	mdelay(10);
> -
> -	cmd =3D ahci_port_read(ahci_port, PORT_CMD);
> -	cmd |=3D PORT_CMD_START;
> -	ahci_port_write_f(ahci_port, PORT_CMD, cmd);
> -
> -	/*
> -	 * Bring up SATA link.
> -	 * SATA link bringup time is usually less than 1 ms; only very
> -	 * rarely has it taken between 1-2 ms. Never seen it above 2 ms.
> -	 */
> -	ret =3D wait_on_timeout(WAIT_LINKUP,
> -			(ahci_port_read(ahci_port, PORT_SCR_STAT) & PORT_SCR_STAT_DET) =3D=3D=
 0x3);
> -	if (ret) {
> -		ahci_port_info(ahci_port, "SATA link timeout\n");
> -		ret =3D -ETIMEDOUT;
> -		goto err_init;
> -	}
> -
> -	ahci_port_info(ahci_port, "SATA link ok\n");
> -
> -	/* Clear error status */
> -	val =3D ahci_port_read(ahci_port, PORT_SCR_ERR);
> -	if (val)
> -		ahci_port_write(ahci_port, PORT_SCR_ERR, val);
> -
> -	ahci_port_info(ahci_port, "Spinning up device...\n");
> -
> -	ret =3D wait_on_timeout(WAIT_SPINUP,
> -			((ahci_port_read(ahci_port, PORT_TFDATA) &
> -			 (ATA_STATUS_BUSY | ATA_STATUS_DRQ)) =3D=3D 0) ||
> -			((ahci_port_read(ahci_port, PORT_SCR_STAT) &
> -			 PORT_SCR_STAT_DET) =3D=3D 1));
> -	if (ret) {
> -		ahci_port_info(ahci_port, "timeout.\n");
> -		ret =3D -ENODEV;
> -		goto err_init;
> -	}
> -
> -	if ((ahci_port_read(ahci_port, PORT_SCR_STAT) & PORT_SCR_STAT_DET) =3D=
=3D 1) {
> -		ahci_port_info(ahci_port, "down.\n");
> -		ret =3D -ENODEV;
> -		goto err_init;
> -	}
> -
> -	ahci_port_info(ahci_port, "ok.\n");
> -
> -	val =3D ahci_port_read(ahci_port, PORT_SCR_ERR);
> -
> -	ahci_port_write(ahci_port, PORT_SCR_ERR, val);
> -
> -	/* ack any pending irq events for this port */
> -	val =3D ahci_port_read(ahci_port, PORT_IRQ_STAT);
> -	if (val)
> -		ahci_port_write(ahci_port, PORT_IRQ_STAT, val);
> -
> -	ahci_iowrite(ahci_port->ahci, HOST_IRQ_STAT, 1 << ahci_port->num);
> -
> -	/* set irq mask (enables interrupts) */
> -	ahci_port_write(ahci_port, PORT_IRQ_MASK, DEF_PORT_IRQ);
> -
> -	/* register linkup ports */
> -	val =3D ahci_port_read(ahci_port, PORT_SCR_STAT);
> -
> -	ahci_port_debug(ahci_port, "status: 0x%08x\n", val);
> -
> -	if ((val & PORT_SCR_STAT_DET) =3D=3D 0x3)
> -		return 0;
> -
> -	ret =3D -ENODEV;
> -
> -err_init:
> -	dma_free_coherent(DMA_DEVICE_BROKEN,
> -			  mem, mem_dma, AHCI_PORT_PRIV_DMA_SZ);
> -	return ret;
> +    u32 cmd, val;
> +    void *mem;
> +    dma_addr_t mem_dma;
> +    int ret;
> +
> +    /* 1. Disable port (clear ST, FRE) */
> +    cmd =3D ahci_port_read(ahci_port, PORT_CMD);
> +    cmd &=3D ~(PORT_CMD_START | PORT_CMD_FIS_RX | PORT_CMD_FIS_ON |
> +             PORT_CMD_LIST_ON | PORT_CMD_SPIN_UP);
> +    ahci_port_write_f(ahci_port, PORT_CMD, cmd);
> +
> +    /* Wait for FR=3D0 and CR=3D0 */
> +    ret =3D wait_on_timeout(SECOND,
> +        !(ahci_port_read(ahci_port, PORT_CMD) &
> +          (PORT_CMD_FIS_ON | PORT_CMD_LIST_ON)));
> +    if (ret)
> +        dev_warn(ahci_port->ahci->dev, "timeout waiting for port disable=
\n");
> +
> +    /* 2. Clear errors */
> +    val =3D ahci_port_read(ahci_port, PORT_SCR_ERR);
> +    if (val)
> +        ahci_port_write(ahci_port, PORT_SCR_ERR, val);
> +
> +    /* 3. COMRESET: write DET=3D1 then DET=3D0 */
> +    ahci_port_write(ahci_port, PORT_SCR_CTL, 1);
> +    udelay(1000);
> +    ahci_port_write(ahci_port, PORT_SCR_CTL, 0);
> +
> +    /* 4. Wait for PHY ready */
> +    ret =3D wait_on_timeout(SECOND,
> +        (ahci_port_read(ahci_port, PORT_SCR_STAT) & PORT_SCR_STAT_DET) =
=3D=3D 0x3);
> +    if (ret) {
> +        ahci_port_info(ahci_port, "PHY not ready after COMRESET\n");
> +        return -ETIMEDOUT;
> +    }
> +
> +    /* 5. Allocate DMA memory (unchanged) */
> +    mem =3D dma_alloc_coherent(DMA_DEVICE_BROKEN,
> +                 AHCI_PORT_PRIV_DMA_SZ, &mem_dma);
> +    if (!mem)
> +        return -ENOMEM;
> +
> +    ahci_port->cmd_slot =3D mem;
> +    ahci_port->cmd_slot_dma =3D mem_dma;
> +    ahci_port->rx_fis =3D mem + AHCI_CMD_LIST_SZ;
> +    ahci_port->rx_fis_dma =3D mem_dma + AHCI_CMD_LIST_SZ;
> +    ahci_port->cmd_tbl =3D mem + AHCI_CMD_LIST_SZ + AHCI_RX_FIS_SZ;
> +    ahci_port->cmd_tbl_dma =3D mem_dma + AHCI_CMD_LIST_SZ + AHCI_RX_FIS_=
SZ;
> +    ahci_port->cmd_tbl_sg =3D ahci_port->cmd_tbl + AHCI_CMD_TBL_HDR_SZ;
> +
> +    /* 6. Program command list + FIS base addresses */
> +    ahci_port_write_f(ahci_port, PORT_LST_ADDR,
> +        lower_32_bits(ahci_port->cmd_slot_dma));
> +    if (ahci_port->ahci->cap & HOST_CAP_64)
> +        ahci_port_write_f(ahci_port, PORT_LST_ADDR_HI,
> +            upper_32_bits(ahci_port->cmd_slot_dma));
> +
> +    ahci_port_write_f(ahci_port, PORT_FIS_ADDR,
> +        lower_32_bits(ahci_port->rx_fis_dma));
> +    if (ahci_port->ahci->cap & HOST_CAP_64)
> +        ahci_port_write_f(ahci_port, PORT_FIS_ADDR_HI,
> +            upper_32_bits(ahci_port->rx_fis_dma));
> +
> +    /* 7. Enable FIS receive engine */
> +    cmd =3D ahci_port_read(ahci_port, PORT_CMD);
> +    cmd |=3D PORT_CMD_FIS_RX;
> +    ahci_port_write_f(ahci_port, PORT_CMD, cmd);
> +
> +    /* 8. Enable port start */
> +    cmd |=3D PORT_CMD_START;
> +    ahci_port_write_f(ahci_port, PORT_CMD, cmd);
> +
> +    /* 9. Wait for device ready (TFDATA not BUSY) */
> +    ret =3D wait_on_timeout(WAIT_SPINUP,
> +        !(ahci_port_read(ahci_port, PORT_TFDATA) &
> +          (ATA_STATUS_BUSY | ATA_STATUS_DRQ)));
> +    if (ret) {
> +        ahci_port_info(ahci_port, "device not ready\n");
> +        return -ENODEV;
> +    }
> +
> +    return 0;
>  }
> =20
>  static int ahci_port_start(struct ata_port *ata_port)
> @@ -441,49 +445,12 @@ static int ahci_port_start(struct ata_port *ata_por=
t)
>  }
> =20
>  static struct ata_port_operations ahci_ops =3D {
> -	.init =3D ahci_port_start,
> -	.read_id =3D ahci_read_id,
> -	.read =3D ahci_read,
> -	.write =3D ahci_write,
> +    .init       =3D ahci_port_start,
> +    .read_id    =3D ahci_read_id,
> +    .read       =3D ahci_read,
> +    .write      =3D ahci_write,
>  };
> =20
> -#if 0
> -/*
> - * In the general case of generic rotating media it makes sense to have =
a
> - * flush capability. It probably even makes sense in the case of SSDs be=
cause
> - * one cannot always know for sure what kind of internal cache/flush mec=
hanism
> - * is embodied therein. At first it was planned to invoke this after the=
 last
> - * write to disk and before rebooting. In practice, knowing, a priori, w=
hich
> - * is the last write is difficult. Because writing to the disk in u-boot=
 is
> - * very rare, this flush command will be invoked after every block write=
.
> - */
> -static int ata_io_flush(u8 port)
> -{
> -	u8 fis[20];
> -	struct ahci_ioports *pp =3D &(probe_ent->port[port]);
> -	volatile u8 *port_mmio =3D (volatile u8 *)pp->port_mmio;
> -	u32 cmd_fis_len =3D 5;	/* five dwords */
> -
> -	/* Preset the FIS */
> -	memset(fis, 0, 20);
> -	fis[0] =3D 0x27;		 /* Host to device FIS. */
> -	fis[1] =3D 1 << 7;	 /* Command FIS. */
> -	fis[2] =3D ATA_CMD_FLUSH_EXT;
> -
> -	memcpy((unsigned char *)pp->cmd_tbl, fis, 20);
> -	ahci_fill_cmd_slot(pp, cmd_fis_len);
> -	mywritel_with_flush(1, port_mmio + PORT_CMD_ISSUE);
> -
> -	if (waiting_for_cmd_completed(port_mmio + PORT_CMD_ISSUE,
> -			WAIT_MS_FLUSH, 0x1)) {
> -		debug("scsi_ahci: flush command timeout on port %d.\n", port);
> -		return -EIO;
> -	}
> -
> -	return 0;
> -}
> -#endif
> -
>  void ahci_print_info(struct ahci_device *ahci)
>  {
>  	u32 vers, cap, cap2, impl, speed;
> @@ -570,73 +537,71 @@ static int ahci_detect(struct device *dev)
> =20
>  int ahci_add_host(struct ahci_device *ahci)
>  {
> -	u32 tmp, cap_save;
> -	int n_ports, i, ret;
> -
> -	ahci->host_flags =3D ATA_FLAG_SATA
> -				| ATA_FLAG_NO_LEGACY
> -				| ATA_FLAG_MMIO
> -				| ATA_FLAG_PIO_DMA
> -				| ATA_FLAG_NO_ATAPI;
> -	ahci->pio_mask =3D 0x1f;
> -	ahci->udma_mask =3D 0x7f;	/* FIXME: assume to support UDMA6 */
> -
> -	ahci_debug(ahci, "ahci_host_init: start\n");
> -
> -	cap_save =3D ahci_ioread(ahci, HOST_CAP);
> -	cap_save &=3D (HOST_CAP_SMPS | HOST_CAP_SPM);
> -	cap_save |=3D HOST_CAP_SSS;  /* Staggered Spin-up. Not needed. */
> -
> -	/* global controller reset */
> -	tmp =3D ahci_ioread(ahci, HOST_CTL);
> -	if ((tmp & HOST_RESET) =3D=3D 0)
> -		ahci_iowrite_f(ahci, HOST_CTL, tmp | HOST_RESET);
> -
> -	/*
> -	 * reset must complete within 1 second, or
> -	 * the hardware should be considered fried.
> -	 */
> -	ret =3D wait_on_timeout(SECOND, (ahci_ioread(ahci, HOST_CTL) & HOST_RES=
ET) =3D=3D 0);
> -	if (ret) {
> -		ahci_debug(ahci, "controller reset failed (0x%x)\n", tmp);
> -		return -ENODEV;
> -	}
> -
> -	ahci_iowrite_f(ahci, HOST_CTL, HOST_AHCI_EN);
> -	ahci_iowrite(ahci, HOST_CAP, cap_save);
> -	ahci_iowrite_f(ahci, HOST_PORTS_IMPL, 0xf);
> -
> -	ahci->cap =3D ahci_ioread(ahci, HOST_CAP);
> -	ahci->port_map =3D ahci_ioread(ahci, HOST_PORTS_IMPL);
> -	ahci->n_ports =3D (ahci->cap & HOST_CAP_NP) + 1;
> -
> -	ahci_debug(ahci, "cap 0x%x  port_map 0x%x  n_ports %d\n",
> -	      ahci->cap, ahci->port_map, ahci->n_ports);
> -
> -	n_ports =3D max_t(int, ahci->n_ports, fls(ahci->port_map));
> -
> -	for (i =3D 0; i < n_ports; i++) {
> -		struct ahci_port *ahci_port =3D &ahci->ports[i];
> -
> -		if (!(ahci->port_map & (1 << i)))
> -			continue;
> -
> -		ahci_port->num =3D i;
> -		ahci_port->ahci =3D ahci;
> -		ahci_port->ata.dev =3D ahci->dev;
> -		ahci_port->port_mmio =3D ahci_port_base(ahci->mmio_base, i);
> -		ahci_port->ata.ops =3D &ahci_ops;
> -		ahci_port->ata.ahci =3D true;
> -		ata_port_register(&ahci_port->ata);
> -	}
> -
> -	tmp =3D ahci_ioread(ahci, HOST_CTL);
> -	ahci_iowrite(ahci, HOST_CTL, tmp | HOST_IRQ_EN);
> -	tmp =3D ahci_ioread(ahci, HOST_CTL);
> -
> -	ahci->dev->detect =3D ahci_detect;
> -
> -	return 0;
> +    u32 tmp;
> +    int n_ports, i, ret;
> +
> +    ahci->host_flags =3D ATA_FLAG_SATA
> +                | ATA_FLAG_NO_LEGACY
> +                | ATA_FLAG_MMIO
> +                | ATA_FLAG_PIO_DMA
> +                | ATA_FLAG_NO_ATAPI;
> +    ahci->pio_mask =3D 0x1f;
> +    ahci->udma_mask =3D 0x7f; /* FIXME: assume to support UDMA6 */
> +
> +    ahci_debug(ahci, "ahci_host_init: start\n");
> +
> +    /*
> +     * Global controller reset: forziamo sempre il bit HOST_RESET,
> +     * come fa il kernel Linux, e aspettiamo che torni a 0.
> +     */
> +    tmp =3D ahci_ioread(ahci, HOST_CTL);
> +    ahci_iowrite_f(ahci, HOST_CTL, tmp | HOST_RESET);
> +
> +    ret =3D wait_on_timeout(SECOND,
> +                  (ahci_ioread(ahci, HOST_CTL) & HOST_RESET) =3D=3D 0);
> +    if (ret) {
> +        ahci_debug(ahci, "controller reset failed (HOST_CTL=3D0x%x)\n",
> +               ahci_ioread(ahci, HOST_CTL));
> +        return -ENODEV;
> +    }
> +
> +
> +    tmp =3D ahci_ioread(ahci, HOST_CTL);
> +    tmp |=3D HOST_AHCI_EN;
> +    ahci_iowrite_f(ahci, HOST_CTL, tmp);
> +
> +    ahci->cap =3D ahci_ioread(ahci, HOST_CAP);
> +    ahci->port_map =3D ahci_ioread(ahci, HOST_PORTS_IMPL);
> +    ahci->n_ports =3D (ahci->cap & HOST_CAP_NP) + 1;
> +
> +    ahci_debug(ahci, "cap 0x%x  port_map 0x%x  n_ports %d\n",
> +           ahci->cap, ahci->port_map, ahci->n_ports);
> +
> +    n_ports =3D max_t(int, ahci->n_ports, fls(ahci->port_map));
> +
> +    for (i =3D 0; i < n_ports; i++) {
> +        struct ahci_port *ahci_port =3D &ahci->ports[i];
> +
> +        if (!(ahci->port_map & (1 << i)))
> +            continue;
> +
> +        ahci_port->num =3D i;
> +        ahci_port->ahci =3D ahci;
> +        ahci_port->ata.dev =3D ahci->dev;
> +        ahci_port->port_mmio =3D ahci_port_base(ahci->mmio_base, i);
> +        ahci_port->ata.ops =3D &ahci_ops;
> +        ahci_port->ata.ahci =3D true;
> +        ata_port_register(&ahci_port->ata);
> +    }
> +
> +    /* enable HBA level interrupts */
> +    tmp =3D ahci_ioread(ahci, HOST_CTL);
> +    ahci_iowrite(ahci, HOST_CTL, tmp | HOST_IRQ_EN);
> +
> +    ahci->dev->detect =3D ahci_detect;
> +	list_add(&ahci->list, &ahci_devices);
> +
> +    return 0;
>  }
> =20
>  static int ahci_probe(struct device *dev)
> @@ -665,6 +630,124 @@ static int ahci_probe(struct device *dev)
>  	return ret;
>  }
> =20
> +/* ---------------------------------------------------------------------=
----- */
> +/*                       AHCI shutdown helpers (kernel-like)            =
      */
> +/* ---------------------------------------------------------------------=
----- */
> +
> +/* Stop DMA engine (clear START, wait LIST_ON=3D0) */
> +static int ahci_stop_engine(struct ahci_port *port)
> +{
> +    u32 cmd;
> +
> +    cmd =3D ahci_port_read(port, PORT_CMD);
> +
> +    /* Already stopped? */
> +    if (!(cmd & (PORT_CMD_START | PORT_CMD_LIST_ON)))
> +        return 0;
> +
> +    /* Clear START */
> +    cmd &=3D ~PORT_CMD_START;
> +    ahci_port_write_f(port, PORT_CMD, cmd);
> +
> +    /* Wait for LIST_ON to clear */
> +    return wait_on_timeout(500 * MSECOND,
> +        !(ahci_port_read(port, PORT_CMD) & PORT_CMD_LIST_ON));
> +}
> +
> +/* Stop FIS receive engine (clear FIS_RX, wait FIS_ON=3D0) */
> +static int ahci_stop_fis_rx(struct ahci_port *port)
> +{
> +    u32 cmd;
> +
> +    cmd =3D ahci_port_read(port, PORT_CMD);
> +    cmd &=3D ~PORT_CMD_FIS_RX;
> +    ahci_port_write_f(port, PORT_CMD, cmd);
> +
> +    /* Wait for FIS_ON to clear */
> +    return wait_on_timeout(1000 * MSECOND,
> +        !(ahci_port_read(port, PORT_CMD) & PORT_CMD_FIS_ON));
> +}
> +
> +/* Stop all ports (libata_pci_shutdown_one equivalent) */
> +static void __maybe_unused ahci_shutdown_host(struct ahci_device *ahci)
> +{
> +    int i, n_ports;
> +
> +    n_ports =3D max_t(int, ahci->n_ports, fls(ahci->port_map));
> +
> +    for (i =3D 0; i < n_ports; i++) {
> +        struct ahci_port *port =3D &ahci->ports[i];
> +
> +        if (!(ahci->port_map & (1 << i)))
> +            continue;
> +
> +        /* Stop DMA engine */
> +        ahci_stop_engine(port);
> +
> +        /* Stop FIS receive engine */
> +        ahci_stop_fis_rx(port);
> +    }
> +}
> +
> +/* Issue FLUSH EXT + STANDBY IMMEDIATE */
> +static void ahci_port_shutdown(struct ahci_port *port)
> +{
> +    if (!port->cmd_tbl || !port->cmd_slot)
> +        return;
> +
> +    if (!ahci_link_ok(port, 0))
> +        return;
> +
> +    if (ahci_ata_nodata(port, ATA_CMD_FLUSH_EXT, 0))
> +        ahci_port_info(port, "FLUSH EXT failed\n");
> +
> +    if (ahci_ata_nodata(port, ATA_CMD_STANDBYNOW1, 0))
> +        ahci_port_info(port, "STANDBY IMMEDIATE failed\n");
> +}
> +
> +/* Full poweroff sequence */
> +static void ahci_poweroff(struct poweroff_handler *handler, unsigned lon=
g flags)
> +{
> +    struct ahci_device *ahci;
> +    int i, n_ports;
> +
> +    list_for_each_entry(ahci, &ahci_devices, list) {
> +
> +        if (!ahci->mmio_base)
> +            continue;
> +
> +        /* 1. FLUSH + STANDBY su tutte le porte attive */
> +        n_ports =3D max_t(int, ahci->n_ports, fls(ahci->port_map));
> +
> +        for (i =3D 0; i < n_ports; i++) {
> +            struct ahci_port *port =3D &ahci->ports[i];
> +
> +            if (!(ahci->port_map & (1 << i)))
> +                continue;
> +
> +            ahci_port_shutdown(port);
> +        }
> +
> +        /* 2. (opzionale) spegnere il controller dopo i comandi
> +         *    Se vuoi tenerlo, fallo SOLO dopo i comandi:
> +         *
> +         * ahci_shutdown_host(ahci);
> +         */
> +    }
> +}
> +
> +static struct poweroff_handler ahci_po_handler =3D {
> +    .poweroff =3D ahci_poweroff,
> +    .priority =3D 200,   /* pi=C3=B9 alto di gpio-poweroff */
> +};
> +
> +static int ahci_register_poweroff(void)
> +{
> +    poweroff_handler_register(&ahci_po_handler);
> +    return 0;
> +}
> +postcore_initcall(ahci_register_poweroff);
> +
>  static __maybe_unused struct of_device_id ahci_dt_ids[] =3D {
>  	{
>  		.compatible =3D "calxeda,hb-ahci",
> @@ -674,6 +757,13 @@ static __maybe_unused struct of_device_id ahci_dt_id=
s[] =3D {
>  };
>  MODULE_DEVICE_TABLE(of, ahci_dt_ids);
> =20
> +static struct pci_driver ahci_pci_driver =3D {
> +	.name =3D "ahci-pci",
> +	.id_table =3D ahci_pci_tbl,
> +	.probe =3D ahci_pci_probe,
> +};
> +device_pci_driver(ahci_pci_driver);
> +
>  static struct driver ahci_driver =3D {
>  	.name   =3D "ahci",
>  	.probe  =3D ahci_probe,
> diff --git a/drivers/ata/ahci.h b/drivers/ata/ahci.h
> index 196bde73c2..d2a19f4648 100644
> --- a/drivers/ata/ahci.h
> +++ b/drivers/ata/ahci.h
> @@ -184,6 +184,7 @@ struct ahci_port {
>  };
> =20
>  struct ahci_device {
> +	struct list_head list;
>  	struct device		*dev;
>  	struct ahci_port	ports[AHCI_MAX_PORTS];
>  	u32			n_ports;


