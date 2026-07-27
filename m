Delivery-date: Mon, 27 Jul 2026 16:17:06 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1woM8g-003SYf-0o
	for lore@lore.pengutronix.de;
	Mon, 27 Jul 2026 16:17:06 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 14499202057
	for <lore@pengutronix.de>; Mon, 27 Jul 2026 16:17:02 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GJzsIg9G;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=0fZOvK33IbXCjXXJvnh7RaUWamcvrH67hQd6vdJaKUA=; b=GJzsIg9GL5CLbic7TjNdpJC2wH
	QXgQWF0cnUuk97M/XnWM8DgrzCPCrLGxENLLyDnpJSoevgCFSWB8D0ked7Q0FpqFx8Ibq7G/vzxSw
	b83+pHZfF0fKnVLeNOlM1tZvNWQb4gBSGDtgo82s1os6lyKhygtRpPlxynvATqj8IRJvfrlLlnX7c
	m1GfeqeMmkFtGX+N5hbQmDS5soe5lyCypxvoRKS73G7wkDWG6mWxZyLXsi0kG1izQ/kUVFsQgXR39
	mqbf+zNlWlN/erxSGzJDlgsHQiDWhQfk9eWvwGvU/+Ir+Rg+PVMjHKceRzEszyahvlDHXcaL86CbU
	/v0ZZcvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woM7G-00000002xHJ-1SOO;
	Mon, 27 Jul 2026 14:15:38 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woM7C-00000002xGD-0nKD
	for barebox@lists.infradead.org;
	Mon, 27 Jul 2026 14:15:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2953B202228;
	Mon, 27 Jul 2026 16:15:28 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1woM76-001ZI1-0G;
	Mon, 27 Jul 2026 16:15:28 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1woM75-00000007J1x-44yp;
	Mon, 27 Jul 2026 16:15:27 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 18/19] ata: ahci: fixes and updates for Marvell SATA
 controller
To: "Luca Lauro via B4 Relay" <devnull+famlauro93l.gmail.com@kernel.org>
In-Reply-To: <20260723-rn102-rn104-series-v1-18-7698d25df866@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Jul 2026 14:15:27 +0000
Message-Id: <E1woM75-00000007J1x-44yp@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_071534_548128_C15A5B73 
X-CRM114-Status: GOOD (  32.59  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This patch basically rewrites the whole file. It seems most
    changes are whitespace only. Please rework in a way that makes the changes
    visible. After that we'll likely need a discussion why we need it [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>, Luca Lauro <famlauro93l@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-2.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	CC_EXCESS_BASE64(1.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+famlauro93l.gmail.com@kernel.org,m:barebox@lists.infradead.org,m:famlauro93l@gmail.com,m:devnull@kernel.org,s:lore@pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[famlauro93l.gmail.com];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 14499202057
X-Rspamd-Server: mx1
X-Stat-Signature: u9r7durf1benhiyyr4fjxo4krzrhsrw5

This patch basically rewrites the whole file. It seems most changes are
whitespace only. Please rework in a way that makes the changes visible.
After that we'll likely need a discussion why we need it and how we
integrate it without breaking others.

Sascha

On 2026-07-23 15:57, Luca Lauro via B4 Relay wrote:
> From: Luca Lauro <famlauro93l@gmail.com>
>=20
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
> -	buf_dma =3D dma_map_single(ahci_port->ahci->dev, buf, buf_len, dma_dir);
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
> - * In the general case of generic rotating media it makes sense to have a
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
> - * very rare, this flush command will be invoked after every block write.
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
>=20
> --=20
> 2.47.3
>=20
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


