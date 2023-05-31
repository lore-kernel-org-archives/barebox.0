Delivery-date: Wed, 31 May 2023 09:29:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4GH2-003wfs-JK
	for lore@lore.pengutronix.de; Wed, 31 May 2023 09:29:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4GGz-0007O1-HL
	for lore@pengutronix.de; Wed, 31 May 2023 09:29:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K7KpG/m/vKXvxxqbOkNInd0A1ZE92OEhY5XlABnpgf4=; b=N4+GxrknT+tdLMYK0hwcbdRqZI
	el/2nOOepOGXSY1pZqrQBv7mSDltrqf+BiZ29MR60ri/D4aod0Suiw9QwJzuneJ0wsTilwKYVCPl6
	MiWJm/Al89yVoNLqqqdYszgOW75G00pRGp+arjehPD2lzPJbhyLcx5E2Y6qZ22LiTW95OWfK5lfXD
	R9I4vHMid+jmywFsoqMHu9dk8ooqezrAjNhi9t2q2ASMeSB4+tb1CohtKeVdJdZ71D75CDoDW7Mem
	qZivK9sF39hjBIKy2PmgqT3c8OMqQRoQEv8Y/WVZruS7kBAggqQhjc1z1Yyauuf9ya1W8gWpjBeB1
	2SPqawkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4GG2-00GRI9-0V;
	Wed, 31 May 2023 07:28:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4GFy-00GRGz-3A
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 07:28:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4GFx-0007DR-9w; Wed, 31 May 2023 09:28:29 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4GFw-00020F-W3; Wed, 31 May 2023 09:28:28 +0200
Date: Wed, 31 May 2023 09:28:28 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230531072828.GF17518@pengutronix.de>
References: <20230531062703.670521-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531062703.670521-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_002831_019657_62B30701 
X-CRM114-Status: GOOD (  18.71  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 1/3] ARM: rockchip: pine64-quartz64: add
 sdram-init.bin to .gitignore
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 31, 2023 at 08:27:01AM +0200, Ahmad Fatoum wrote:
> Other boards already have sdram-init.bin in their .gitignore, so have
> quartz64 follow suit.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/arm/boards/pine64-quartz64/.gitignore | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 arch/arm/boards/pine64-quartz64/.gitignore

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/pine64-quartz64/.gitignore b/arch/arm/boards/pine64-quartz64/.gitignore
> new file mode 100644
> index 000000000000..f458f794b54c
> --- /dev/null
> +++ b/arch/arm/boards/pine64-quartz64/.gitignore
> @@ -0,0 +1 @@
> +sdram-init.bin
> -- 
> 2.38.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


