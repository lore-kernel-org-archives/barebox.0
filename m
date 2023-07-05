Delivery-date: Wed, 05 Jul 2023 17:12:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH4Aw-00GNT3-W8
	for lore@lore.pengutronix.de; Wed, 05 Jul 2023 17:12:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH4Au-0005WH-Q0
	for lore@pengutronix.de; Wed, 05 Jul 2023 17:12:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QJgHNIHXvPYWendvZyXJgwzMxJf87IRBiS/8eLNfK1o=; b=lpZm1KXPKENn6mIDFokS/JimZw
	8cB4ypSKapFdtDRhmenWqtY72cSWBLUGLgaVdgrIN+c6s8JMlNNZ9Er3v3P+lYT6kZw7yEajagR1K
	vrdet2WpwlZ9pT1BqTzThlO/nvMNF8eKCB1TEpIczYyTG/JzekvU4dlH9ATY6sx/tCNtTIKEj8Odv
	DYH2mzLsnxujACfe1Otzvgjd48tHIOwuJcgl03Ap+mquLVrlNpDE10SmeJiIDRbMA9S1+fSYFGEXg
	lc90oQceEHWjs5yGQWojGMffcJcK1UCkY+L6Kn6mfwPha2huCRDtUCzwLjgJ3zIeeyKE85VQW2i+8
	m2U26YAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH49o-00GHli-0I;
	Wed, 05 Jul 2023 15:11:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH49k-00GHkc-1D
	for barebox@lists.infradead.org;
	Wed, 05 Jul 2023 15:11:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=drumknott)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1qH49i-0005Q6-95
	for barebox@lists.infradead.org; Wed, 05 Jul 2023 17:10:58 +0200
Date: Wed, 5 Jul 2023 17:10:56 +0200
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <20230705171056.352794bb@drumknott>
In-Reply-To: <20230705144219.504194-1-r.czerwinski@pengutronix.de>
References: <20230705144219.504194-1-r.czerwinski@pengutronix.de>
Organization: Pengutronix e.K.
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_081100_415300_60636A16 
X-CRM114-Status: GOOD (  11.51  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/6] kbuild: clean start*_*.{p,ps}imximg files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Wed,  5 Jul 2023 16:42:14 +0200
Rouven Czerwinski <r.czerwinski@pengutronix.de> wrote:

> Cleanup files build during i.MX8M image generation.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  images/Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/images/Makefile b/images/Makefile
> index c1cb56f5b1..85e5f0503c 100644
> --- a/images/Makefile
> +++ b/images/Makefile
> @@ -221,5 +221,6 @@ $(flash-list): $(image-y-path)
>  clean-files := *.pbl *.pblb *.map start_*.imximg *.img barebox.z
> start_*.kwbimg \ start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img
> *.t20img.cfg *.t30img \ *.t30img.cfg *.t124img *.t124img.cfg *.mlospi
> *.mlo *.mxsbs *.mxssd *.rkimg \
> -	start_*.simximg start_*.usimximg *.zynqimg *.image *.swapped
> *.missing-firmware
> +	start_*.simximg start_*.usimximg start_*.pimximg
> start_*.psimximg *.zynqimg \
> +        *.image *.swapped *.missing-firmware
>  clean-files += pbl.lds

Please disregard this series for now. There still seem to be bugs which
only revealed themselves after the send.

Best regards,
Rouven


