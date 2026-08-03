Delivery-date: Mon, 03 Aug 2026 23:34:39 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wr0Iw-0060BT-2d
	for lore@lore.pengutronix.de;
	Mon, 03 Aug 2026 23:34:39 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 377222006B6
	for <lore@pengutronix.de>; Mon, 03 Aug 2026 23:34:35 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MSKHHPMw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=CsbszNqsxYWSU6e4zPJxgBiRhxNiZsRwbzp3ELnHGWQ=; b=MSKHHPMwqckbhdZfWFIhZv0YYn
	7+EkmziXtxvq2gG5rvVhGQKnxplgLnJUkgNUzuJIo5tF8uxyDy+dPyp1QNQ+DLFLxfIBgU/a9HBbp
	4ydzMDmhGmXB8UGryFtjYT8zUayi9puk13KR6Rl5Nofu/tqqcxXaniFnqf6AUlyUzgfL9WxkyY06D
	/riKtbFRoae0oWDTUSraK5ckGzzvUvkzfhbPZnp4s3sKn7vJ0Gj1t3NOgJ7zyTvEuDxbWhj1hU/5g
	pLKumUtZYfUn7up0Qc7JVmOAARIFqibGdqiDb0mMInacqriJvqYJhOHaMAlv39rcSrM7ZmFcxM/5P
	On5J6IPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr0HZ-00000000Y9D-3SOW;
	Mon, 03 Aug 2026 21:33:13 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr0HW-00000000Y8s-0Kok
	for barebox@lists.infradead.org;
	Mon, 03 Aug 2026 21:33:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0CA772006B4;
	Mon, 03 Aug 2026 23:33:04 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wr0HP-002l6c-38;
	Mon, 03 Aug 2026 23:33:03 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wr0HP-00000007wC4-3fVV;
	Mon, 03 Aug 2026 23:33:03 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v3 09/15] ata: ahci: add PCI AHCI and Marvell 9170
 controller support
To: "Luca Lauro via B4 Relay" <devnull+famlauro93l.gmail.com@kernel.org>
In-Reply-To: <20260802-rn102-rn104-series-v3-9-f7685a279fb5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 03 Aug 2026 21:33:03 +0000
Message-Id: <E1wr0HP-00000007wC4-3fVV@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_143310_290595_FB4FD2FC 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-02 15:16, Luca Lauro via B4 Relay wrote: > From:
    Luca Lauro <famlauro93l@gmail.com> > > Barebox previously supported only
   memory-mapped AHCI controllers. > Some devices expose their AHCI co [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>, Luca Lauro <famlauro93l@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-3.01 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	CC_EXCESS_BASE64(1.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+famlauro93l.gmail.com@kernel.org,m:barebox@lists.infradead.org,m:famlauro93l@gmail.com,m:devnull@kernel.org,s:lore@pengutronix.de];
	DMARC_NA(0.00)[pengutronix.de];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_RCPT(0.00)[famlauro93l.gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 377222006B6
X-Stat-Signature: dkg7ad9f6nbzhnudr3j9oq8b15srbsqm

On 2026-08-02 15:16, Luca Lauro via B4 Relay wrote:
> From: Luca Lauro <famlauro93l@gmail.com>
>=20
> Barebox previously supported only memory-mapped AHCI controllers.
> Some devices expose their AHCI controller through PCI BARs, such as the
> Marvell 9170 controller found in Netgear RN102/RN104 NAS devices,
> requiring a dedicated probing path and MMIO mapping.
> This patch extends the barebox AHCI driver with full support for
> PCI-based AHCI controllers, adding:
>=20
> - A PCI probe path that enables AHCI initialization via
> pci_enable_device(), pci_iomap() and ahci_add_host().
>=20
> - A small device list to keep track of PCI AHCI instances.
>=20
> Changes are based on the upstream Linux driver, with some adaptations.
>=20
> Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
> ---
>  drivers/ata/ahci.c | 54 ++++++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  drivers/ata/ahci.h |  1 +
>  2 files changed, 55 insertions(+)
>=20
> diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
> index 819dc37b3e..0ac1a9dead 100644
> --- a/drivers/ata/ahci.c
> +++ b/drivers/ata/ahci.c
> @@ -19,6 +19,7 @@
>  #include <disks.h>
>  #include <ata_drive.h>
>  #include <linux/sizes.h>
> +#include <linux/pci.h>
>  #include <clock.h>
> =20
>  #include "ahci.h"
> @@ -47,6 +48,51 @@
>  #define ahci_debug(ahci, fmt, arg...) \
>  	dev_dbg(ahci->dev, fmt, ##arg)
> =20
> +#ifndef PCI_VENDOR_ID_MARVELL_EXT
> +#define PCI_VENDOR_ID_MARVELL_EXT 0x1b4b
> +#endif

This is defined in include/linux/pci_ids.h already. Please use it.

> +
> +static LIST_HEAD(ahci_devices);

This list is only added to, but not used here. If it's used in a later
patch please move this there.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


