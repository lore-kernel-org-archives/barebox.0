Delivery-date: Mon, 13 Apr 2026 16:22:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIBS-00BkFn-31
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 16:22:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIBS-0007Dc-DK
	for lore@pengutronix.de; Mon, 13 Apr 2026 16:22:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VBo83UvYbYf0yHEheEGX31gXA9zfc2s9q5c2Ey+b8Oo=; b=xyPytzuyzhxA3Bhf9bYCEBdcqY
	e5yFHnJ/p81IDyErvtrNT8MN2T50ebCkTnkITSJPYwZRAOu0eKgdsHcMn1/wciSsrRVoJ8rLeYu+F
	uLXvSbtXBU+gyNE3oj8l3yO/Qg5ruN2JKwZBAWZlPHdBMy7Qv2b1Vd6aw5tZdDnYIQ29bxUJSEpgz
	7zX6frzpd6MKR43SDzXcAXxpYm23Msz6h1zwAnr631lktJumIfuF8ABJMaJVOwV3o7+bxhj0hTEAs
	qZJPgMmzPM6GL7Hg0yf+Plh/8klb9T9KjKq6bbo4XYeFxgcfCuB+F5wL3u9+1VKlOw58axmLJPw4B
	DxNtD89Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIAx-0000000FrTp-2q4o;
	Mon, 13 Apr 2026 14:22:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIAv-0000000FrSz-26LA
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 14:22:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1wCIAt-00077e-BO; Mon, 13 Apr 2026 16:22:03 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1wCIAs-005BeT-2h;
	Mon, 13 Apr 2026 16:22:02 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1wCIAs-00000007Vnq-35EM;
	Mon, 13 Apr 2026 16:22:02 +0200
Date: Mon, 13 Apr 2026 16:22:02 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Message-ID: <swgwnzw2j6qsmqq7kbwlfawp4ay2u3wq3fpvyvyt76reyexfyq@2s7q2lqbqiup>
References: <20260413134422.3562639-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260413134422.3562639-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_072205_572887_AF59A0C7 
X-CRM114-Status: GOOD (  10.61  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] environment: support DT-compatible-specific
 overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-04-13, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <a.fatoum@barebox.org>
> 
> Board-specific environments are registered from board code via
> defaultenv_append_directory(), but this isn't possible when using
> CONFIG_DEFAULT_ENVIRONMENT_PATH with an external environment.
> 
> Add support for a match.of_compatible/ directory convention within
> the default environment. Subdirectories named after DT root compatible
> strings are overlaid onto /env from most generic to most specific
> after the default environment is loaded. The match.of_compatible/
> directory is removed afterwards to keep /env clean.
> 
> Example layout in CONFIG_DEFAULT_ENVIRONMENT_PATH:
> 
>   barebox-defaultenv/
>     nv/boot.default
>     match.of_compatible/
>       fsl,imx8mm/
>         nv/boot.default
>       fsl,imx8mm-evk/
>         nv/boot.default
> 
> For compatible = "fsl,imx8mm-evk", "fsl,imx8mm":
>   1. fsl,imx8mm/     overlay applied first  (most generic)
>   2. fsl,imx8mm-evk/ overlay applied second (most specific)
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


