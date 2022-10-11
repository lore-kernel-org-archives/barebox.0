Delivery-date: Tue, 11 Oct 2022 18:12:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiHs6-004m3w-4O
	for lore@lore.pengutronix.de; Tue, 11 Oct 2022 18:12:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiHs3-0000Az-A4
	for lore@pengutronix.de; Tue, 11 Oct 2022 18:12:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I2zfBEovHips2+PaT8/HZpZEoIVfscdawBMaOpt/0Qg=; b=HaVbwdW9Gxpv/lhFc2JgBG6gSW
	clNZ1evs/O/JkR0oQLNdE/PPUGExshbkMT1Jd7S/oHEOLSPf4l6LqRCXm7Mha0m6DM7KfGuMFqMRU
	9nA6i6ZJf1WoeZq7MT7dSPcKSqe1E6zZ5Lm+EZWRz6WrzoKTnnLRZ7tUlLFoQDU8nM6nNlzItVPoN
	BW3CMr6hOPy4wuSiY1h+OktXOZy1w7Un0wSxiZF5oqSmikfK1LW+KxDzuBGCFhgB8zgGvMpiTdCPn
	nvqiX/ttijBcTBnGs01qURsLr9ZYGsHKWIWrUj3Qva8JW9mcyU2+Hnp1Zdhey/AOMzSKmArCMpFju
	0viaEGDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiHqF-0055Ex-I8; Tue, 11 Oct 2022 16:10:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiGld-004d8X-Us
	for barebox@lists.infradead.org; Tue, 11 Oct 2022 15:02:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oiGlc-0004bh-CS; Tue, 11 Oct 2022 17:02:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oiGlc-0002MZ-5E; Tue, 11 Oct 2022 17:02:00 +0200
Date: Tue, 11 Oct 2022 17:02:00 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221011150200.GJ986@pengutronix.de>
References: <20221010061437.2085412-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221010061437.2085412-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_080202_026352_4CFF026F 
X-CRM114-Status: GOOD (  19.16  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] test: self: change CONFIG_CMD_SELFTEST default to y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 10, 2022 at 08:14:34AM +0200, Ahmad Fatoum wrote:
> If a user enables CONFIG_SELFTEST, there's a fair chance, they don't
> mind having a selftest command to exercise the enabled test.
> Thus enable this by default.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  test/self/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/test/self/Kconfig b/test/self/Kconfig
> index 680196a4fe29..5d984e30b226 100644
> --- a/test/self/Kconfig
> +++ b/test/self/Kconfig
> @@ -10,6 +10,7 @@ if SELFTEST
>  config CMD_SELFTEST
>  	bool "selftest command"
>  	depends on COMMAND_SUPPORT
> +	default y
>  	help
>  	  Command to run enabled barebox self-tests.
>  	  If run without arguments, all tests are run
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


