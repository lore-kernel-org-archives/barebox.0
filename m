Delivery-date: Tue, 15 Jun 2021 19:22:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCm7-0002uR-FE
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 19:22:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCm5-0000rg-J7
	for lore@pengutronix.de; Tue, 15 Jun 2021 19:22:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H9W7tqYkZ/6VC8Aqd4KsJmX/IdpANL0Qx011bSWBSVA=; b=Lpe8yclt9SbOmCh0owqKhT8UNV
	NnOBFRVB2cJGj6S0nVsv5BAe5jT6RM+oEwhmGRicRU4KGrG/8E+onBFhlw51/BqRqsE3BQ1SmB1Sh
	5xnoyUxl7ZAHjJ8o0HfTxds/SJHO9jg9inYWxFwAJHWGFVE3jC3+KcAjuyr5aQnfSvUuSYebRZJbs
	mm+0CILoWJMlnLtHTQUPmpa7wWn6wF73xpSWuOSg7LzukBbeNMdDkf739YOTh5U3ayUITiZicpkMU
	4JWsy1stQzcVYa9DqfLLEyi3TdQYajx7GtlzeYo+XoNowIC7A5njR4xAf/TU7gXXS01ez9ujuPOqx
	xIvgZSUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltCk5-001gUV-TY; Tue, 15 Jun 2021 17:20:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9J2-000DwX-IB
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 13:40:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=0wGxWWeBMWvQC2Y+kXHMKSMSTHZ73Ctrnnpj7Oc9vPY=; b=dfMSqUEK6uExcg3hHxnCEaj6N2
 NavcQbyGa9ve036TVh74D9d2DUQZrzrreQ5ZB1Vq2oS1oX4Blwiq4qzvUPpbtsJfME9gr5lvc5anO
 NdUHuN+UIewYf2SphmoTB+OJBx/QLobYelYBKUi79YpxLwgndJY22eUUOdNKgRzqEiqzswSbIhfOv
 OPrNj9p0n7FJSUMfksQ72M7OvNGxzeVf1R7aWEmOl8t991ImYrMCFyueG9mepYS/kq38JvtNIES/c
 p5rmTR5zV6tT+HVXi4cNl6aQL0itJ5L+YIgD0kT4qFsSuwtCi5Kvs1hIJvInBGyoaCOxjEyzOBF+r
 PXPTjGgQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt4l5-007Wut-4U
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 08:49:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt4l9-0002Td-HD; Tue, 15 Jun 2021 10:49:23 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt4l8-0004p9-F8; Tue, 15 Jun 2021 10:49:22 +0200
Date: Tue, 15 Jun 2021 10:49:22 +0200
To: "Barbier, Renaud" <renaud.barbier@abaco.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Message-ID: <20210615084922.GC9782@pengutronix.de>
References: <MN2PR16MB31351CB3C8DDCAA07DB9E25591359@MN2PR16MB3135.namprd16.prod.outlook.com>
 <ad0091c0-2919-de80-01d5-41cea68d5550@pengutronix.de>
 <MN2PR16MB3135E10CC5F4B532EDA547D291319@MN2PR16MB3135.namprd16.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MN2PR16MB3135E10CC5F4B532EDA547D291319@MN2PR16MB3135.namprd16.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:30:38 up 117 days, 11:54, 119 users,  load average: 0.30, 0.19,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_094926_029306_A7FB9789 
X-CRM114-Status: GOOD (  27.32  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: NXP Layerscape
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 14, 2021 at 03:16:27PM +0000, Barbier, Renaud wrote:
> I am a bit confused on how the QSPI image is built.
> From images/Makefile.layerscape
> $(obj)/barebox-ls1046ardb-qspi.image: $(obj)/start_ls1046ardb.pblb \
>           $(board)/ls1046ardb/ls1046ardb_rcw_qspi.cfg \
>          $(board)/ls1046ardb/ls1046ardb_pbi.cfg
> 
> It makes use of the file ls1046ardb/ls1046ardb_pbi.cfg not ls1046ardb/ls1046ardb_qspi_pbi.cfg. 
> ls1046a_qspi_pbi.cfg contains an endian swap that I can see in the U-boot rcw+pbi data.
> 
> When I take an hex dump of the barebox-ls1046ardb-qspi.image, I see that the scratchpad register 2 (BOOTLOCPTR) in the PBI section points to 0x10000000 (as in the PBI file), not the PBL address start address.
> How can this work?

Let's have a look at the differences between both files:

> --- arch/arm/boards/ls1046ardb/ls1046ardb_pbi.cfg       2021-05-04 10:21:05.961665227 +0200
> +++ arch/arm/boards/ls1046ardb/ls1046ardb_qspi_pbi.cfg  2021-05-04 10:21:05.961665227 +0200
> @@ -1,3 +1,5 @@
> +#QSPI clk
> +0957015c 40100000

Not sure about this one. It might be not necessary because the SPI clock
must have a sane value without it, in the end this data has just been
read from SPI flash.

>  #Configure Scratch register
>  09570600 00000000
>  09570604 10000000
> @@ -20,3 +22,5 @@
>  09570158 00001000
>  #flush PBI data
>  096100c0 000fffff
> +#Change endianness
> +09550000 000f400c

This is the weird one. The QSPI read data is memory mapped in some SRAM
where it is directly executed. Now the snippet above changes the
endianess of the read data, so that beginning after the line above the
rest of the data must be written to flash with a different endianess. In
barebox we do that differently. Instead of changing the endianess of the
controller we change the endianess of the data written to flash. This
type of image is generated with the -s option to the pblimage tool.
This means we don't need a special QSPI variant for the PBI file.
arch/arm/boards/ls1046ardb/ls1046ardb_qspi_pbi.cfg could be removed,
it's there as a leftover from the files imported from U-Boot.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

