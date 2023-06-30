Delivery-date: Fri, 30 Jun 2023 10:59:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qF9yV-009Quk-Q1
	for lore@lore.pengutronix.de; Fri, 30 Jun 2023 10:59:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qF9yT-0007wx-Dr
	for lore@pengutronix.de; Fri, 30 Jun 2023 10:59:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mb7BuFN3LJPe37eoG8C9tVBvJ703aTfGxyKtY5mavhE=; b=egHBCqJuYrR+WaF+1yvrNiFpDM
	+pktNS30B7ffgPPZ3DjVeFjrLhRpaEGsGmuTOjsIRB6/aSV92RRY0kS3KuJWKlvcOkNdwCkKdcLZw
	2+wWG0NyVFrpW0YoqMFQrFxTqvXvDe/WLWRBtEX1MnQRjiwZj18FSB26u9Z/lgJLdILUqi2wq2gOn
	Pt7CyIHGm0GqU7wYrb2UAQ1cIez1VIRN9P1JO3RuCMBVdpCab7gNAnxawcXeqfahmTpLWi2hOfS/J
	lJfAPzpCT+OBKAfOsTI1zFWti6iRE7EiB8tUFCp7Vcbe4Bgh260J1Fg7dY3IdIZKgRkEnc6n+RQce
	jCMbcdiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qF9x1-003Ft8-1x;
	Fri, 30 Jun 2023 08:57:59 +0000
Received: from smtp90.iad3b.emailsrvr.com ([146.20.161.90])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qF9wy-003FsY-0I
	for barebox@lists.infradead.org;
	Fri, 30 Jun 2023 08:57:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20221208-6x11dpa4; t=1688115471;
	bh=PqukeQc858GN2S4wM/zY3HhooSXEr33FL9rrf5HTfDY=;
	h=Date:Subject:To:From:From;
	b=dDPh7rOdsy2tee9q6e3Q6DwMao9j+0nUKprQgjuc2CJ18rckyQ0VtOK35DjJK5uGy
	 5P+BKd18kEvh3JsubPB3o46rVd/BxYcYc9xwtcBIOZ9MFPsvbRIYnDapnkJDDgs+Dt
	 geou6PhHVXZTX+V6pBUYlfYHU/xiV5jdH6Q6cdoM=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp4.relay.iad3b.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 3A88A2009D
	for <barebox@lists.infradead.org>; Fri, 30 Jun 2023 04:57:51 -0400 (EDT)
Message-ID: <2174e39f-3e29-bd33-ab15-ba0eb86a58f5@mev.co.uk>
Date: Fri, 30 Jun 2023 09:57:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: barebox@lists.infradead.org
References: <20230629201446.16679-1-denorl2009@gmail.com>
Content-Language: en-GB
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <20230629201446.16679-1-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Classification-ID: 50536765-6c51-4a6c-828c-7f7958080aff-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230630_015756_433736_078F3B18 
X-CRM114-Status: GOOD (  13.58  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] nios2: remove arch remains from drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 29/06/2023 21:13, Denis Orlov wrote:
> The architecture was removed back in the commit efccc13513, however some
> drivers that were available exclusively for NIOS2 were left over. As it
> has been impossible to compile those since then, it seems reasonable to
> just get rid of them.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>   drivers/serial/Kconfig              |  10 --
>   drivers/serial/Makefile             |   2 -
>   drivers/serial/serial_altera.c      |  94 -----------
>   drivers/serial/serial_altera_jtag.c |  99 ------------
>   drivers/spi/Kconfig                 |   4 -
>   drivers/spi/Makefile                |   1 -
>   drivers/spi/altera_spi.c            | 236 ----------------------------
>   7 files changed, 446 deletions(-)
>   delete mode 100644 drivers/serial/serial_altera.c
>   delete mode 100644 drivers/serial/serial_altera_jtag.c
>   delete mode 100644 drivers/spi/altera_spi.c

As a point of interest, none of those drivers should really depend on 
NIOS2.  They are usable on an ARM SoCFPGA system if the FPGA logic 
contains the corresponding Altera/Intel IP components.

Whether or not anyone needs them in barebox is another matter, but I 
have certainly used them in ARM SoCFPGA Linux systems booted from barebox.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-



