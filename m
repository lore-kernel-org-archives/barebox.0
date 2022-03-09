Delivery-date: Wed, 09 Mar 2022 09:55:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRs6N-005SoE-FZ
	for lore@lore.pengutronix.de; Wed, 09 Mar 2022 09:55:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRs6M-0004eB-5L
	for lore@pengutronix.de; Wed, 09 Mar 2022 09:55:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1SOmr9jsnOw8q2SHUp++gRYKrq2gS556yTyiiZHy7Cc=; b=TkwoxzW9fvW8r5qK9a0D8mRizf
	u/A9xivpTJDpc9vOL3O9WPi/UcmYe3BgQmBIa097yV8sf/hpOpnKA2rFJ7IzmYn+QMBZxptEoEe9R
	OdW1P3pprwt1L+esPYnzjE1iAgiMxbtkR/vwsRlm2j2ORvwAc/HE4GjZOaULTE8gjRyx1r4KeyeGd
	+SbVUXRGXq0jpJyh5TY1d9CFgPi803CzHv+/dSMHeOJNfavPkCtVf+sd/NmWOs5XDQTfpOK78Qi+E
	Kt5nsa52iHBPv5HrfCZd5bjlUmI1Vumuax5EIxwhttoQAPIUqnTBqSa2jL8pNpVMkZo9yTUW7/8Ly
	cxyuQxqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRs52-007nYY-CT; Wed, 09 Mar 2022 08:54:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRs4x-007nXp-2J
 for barebox@lists.infradead.org; Wed, 09 Mar 2022 08:53:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRs4v-0004UE-FM; Wed, 09 Mar 2022 09:53:53 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRs4p-0000TC-Ne; Wed, 09 Mar 2022 09:53:47 +0100
Date: Wed, 9 Mar 2022 09:53:47 +0100
To: Joacim Zetterling <joacim.zetterling@westermo.com>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de
Message-ID: <20220309085347.GJ405@pengutronix.de>
References: <20220308160801.782206-1-joacim.zetterling@westermo.com>
 <20220308160801.782206-4-joacim.zetterling@westermo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220308160801.782206-4-joacim.zetterling@westermo.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:49:26 up 88 days, 17:35, 85 users,  load average: 0.00, 0.06, 0.07
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_005355_131294_D4E7F866 
X-CRM114-Status: GOOD (  27.94  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] arch: arm: imx: spi: Add QSPI boot option to the
 IMX8MN-EVK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 08, 2022 at 05:08:01PM +0100, Joacim Zetterling wrote:
> Add lowlevel board functionality to be able to boot from
> a QSPI device.
> 
> Also added configuration parameters for a QSPI device to be
> included in a final QSPI boot image.
> All configuration for a QSPI boot image are controlled within
> the board flash header configuration file.
> 
> Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
> ---
>  .../nxp-imx8mn-evk/bb-cfg-param-imx8mn-evk.bin    | Bin 0 -> 512 bytes
>  .../nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg |   5 +++++
>  arch/arm/boards/nxp-imx8mn-evk/lowlevel.c         |   3 +++
>  3 files changed, 8 insertions(+)
>  create mode 100644 arch/arm/boards/nxp-imx8mn-evk/bb-cfg-param-imx8mn-evk.bin
> 
> diff --git a/arch/arm/boards/nxp-imx8mn-evk/bb-cfg-param-imx8mn-evk.bin b/arch/arm/boards/nxp-imx8mn-evk/bb-cfg-param-imx8mn-evk.bin

Looking into the file the content doesn't look very complicated. Can't
we just create it from parameters in the imx-image tool itself?

That would save us from adding another input binary file.

> new file mode 100644
> index 0000000000000000000000000000000000000000..b39e85b8442f27660eb8d797233cdcc02759bc0e
> GIT binary patch
> literal 512
> zcmZ>Bc5`B2U<_jb0cK_}MJmC_$b_s#0GUIG&CMdg!C}CnLP*`HJb@5k1j&O50t!*3
> E0ni%)6aWAK
> 
> literal 0
> HcmV?d00001
> 
> diff --git a/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg b/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
> index 27a2138e4322..232ce5f59bdf 100644
> --- a/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
> +++ b/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
> @@ -5,3 +5,8 @@ soc imx8mn
>  loadaddr 0x912000
>  max_load_size 0x3f000
>  ivtofs 0x0
> +
> +# Uncomment the following for QSPI boot
> +# header_gap 0x1000
> +# bb_cfg_ofs 0x400
> +# bb_cfg_file "arch/arm/boards/nxp-imx8mn-evk/bb-cfg-param-imx8mn-evk.bin"

It would be nice to just create both images, then the user would not
have to change the sourcecode.

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

