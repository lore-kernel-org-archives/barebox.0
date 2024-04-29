Delivery-date: Mon, 29 Apr 2024 20:08:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1VQe-0085Bm-1R
	for lore@lore.pengutronix.de;
	Mon, 29 Apr 2024 20:08:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1VQd-0005l6-QA
	for lore@pengutronix.de; Mon, 29 Apr 2024 20:08:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8prRd+90eJwtI9NdeFFZTtUteH0pEOTgMSByHtrAJMQ=; b=OTl3niFlqERAdgBrDqGGOIpm2Z
	Al8EJvfLSB3vzrta4XgrMNDK+WJsw0bO+RLrPlFdx2/tsN35PHIpDYt/JryKwE1lmcOACcCcdzMfe
	B57DYiExlQrlVflTt81D/qU+W9MYnCV8MTCePJ/PK3POPHskxzpXFD6s/pt7e3ByR8kaON8FXDvIO
	Ld/wMvj2XSWYyXd1Y+lob9ZCAlx3P9dzd7GUbjlOdS1iRNGt3t8enf5lyJFMoEKIyz4lqA8T/D6v3
	KUtOiDukElSmTdRxnIP6HpQNk1fg9/QLkClH88NNDsucVIz7B2rMWfzphcgfRbjnikAuuGCKz4YzP
	asHTxJtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1VQ9-00000003pnI-1YFY;
	Mon, 29 Apr 2024 18:08:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1VQ6-00000003pmg-2d5R
	for barebox@lists.infradead.org;
	Mon, 29 Apr 2024 18:08:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1VQ4-0005Z5-Fd; Mon, 29 Apr 2024 20:08:04 +0200
Message-ID: <cb35b168-70ec-4d83-8db4-829211a6a767@pengutronix.de>
Date: Mon, 29 Apr 2024 20:08:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <BYAPR07MB6837F4F0FE5C6F7569DE3E59EC1B2@BYAPR07MB6837.namprd07.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <BYAPR07MB6837F4F0FE5C6F7569DE3E59EC1B2@BYAPR07MB6837.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_110806_892808_8FAB3C8A 
X-CRM114-Status: GOOD (  15.14  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: tlsf failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Renaud,

On 29.04.24 18:40, Renaud Barbier wrote:
> We have a prototype board with a LS1026A processor (LS1046A). The system has a primary SPI NOR and recovery SPI NOR.
> From the recovery, I attempt to program the primary NOR.
> 
> 
> I have the following error while calling our command below. This command switch NOR selection and calls barebox_update through run_command
> 
> OWBOOT> / oft recovery openware-core-prometheus-ls1046a-20240412112207-OWC-2022-09.0-prometheus-6.8.0-EA1-0_nor.img
> Programming primary NOR device
> oft_storage_program: cmd = barebox_update -t nor openware-core-prometheus-ls1046a-20240412112207-OWC-2022-09.0-prometheus-6.8.0-EA1-0_nor.img
> DEBUG: block_size smaller than size : 0, 32
> block_size(block) >= sizecommon/tlsf.c 598
> Call trace:
> [<fbd7db68>] (unwind_backtrace+0x0/0x88) from [<fbd0944c>] (block_locate_free+0x144/0x158)
> [<fbd0944c>] (block_locate_free+0x144/0x158) from [<fbd09738>] (tlsf_malloc+0x2c/0x44)
> [<fbd09738>] (tlsf_malloc+0x2c/0x44) from [<fbd08b0c>] (malloc+0x20/0x3c)
> [<fbd08b0c>] (malloc+0x20/0x3c) from [<fbd517cc>] (xmalloc+0x14/0x2c)
> [<fbd517cc>] (xmalloc+0x14/0x2c) from [<fbd51824>] (xzalloc+0x14/0x34)
> [<fbd51824>] (xzalloc+0x14/0x34) from [<fbd0bcdc>] (initialize_context+0x20/0x48)
> [<fbd0bcdc>] (initialize_context+0x20/0x48) from [<fbd0d204>] (run_command+0x30/0x4c)
> [<fbd0d204>] (run_command+0x30/0x4c) from [<fbd78158>] (oft_storage_program+0x70/0xa4)
> [<fbd78158>] (oft_storage_program+0x70/0xa4) from [<fbd78270>] (do_oft_recovery+0xe4/0x154)
> 
> If I call Barebox_update directly, there is no  problem.:
> OWBOOT> / barebox_update -t nor openware-core-prometheus-ls1046a-20240412112207-OWC-2022-09.0-prometheus-6.8.0-EA1-0_nor.img
> Image Metadata:
>   build: #1 Fri Apr 12 11:21:46 UTC 2024
>   buildsystem version:
>   release: 2022.03.0-g06e02c3d98.prometh-00008-g06e02c3d98ea
>   of_compatible: fsl,ls1046a owc,SWE550S owc,SWE450S
>   model: owc-swe550s
> bbu: Devicetree compatible "fsl,ls1046a" matches current machine
> update barebox from openware-core-prometheus-ls1046a-20240412112207-OWC-2022-09.0-prometheus-6.8.0-EA1-0_nor.img using handler nor to /dev/m25p0 (y/n)?
> 
> 
> The image being burned is 64MIB. We have also a NAND image 2.5 bigger and this error do not appear when calling our wrapper command.
> 
> Any clue why this would happen?

This looks like memory corruption. Could it be that your command is
overflowing some buffer? Enabling CONFIG_KASAN may aid in debugging this.

Cheers,
Ahmad


> 
> Cheers,
> Renaud
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



