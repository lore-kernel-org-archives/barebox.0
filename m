Delivery-date: Thu, 21 Sep 2023 10:02:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjEeI-005dek-Rr
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 10:02:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjEeG-0001kd-JX
	for lore@pengutronix.de; Thu, 21 Sep 2023 10:02:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qCClq7K+5DHbHicgG0VTBLJ2lrfXF3GXAQRqSQm8hCI=; b=Xok5CB+CKAuwLIoB3jKBLpFjj0
	p6gdO+GM93eWp/YFGnjNu0GJJ2WYM5wmB8Ym5ueVFehueNbEq1YnIeCdph+xR6SsSPOW2MagqQmxk
	AKsYv/bn1MMsOGUCM5L8js8IRS00bMRRtoP2MtkjyB8xOpvG/SJ1TdVgbXTSzb9wQ1hfCR5roxOi4
	po0ccdceZgWBmZGAw8oh055qwDW4VqsbbtAhTzxdDtCLlKpKP08R7lRvET2zTavCi0HbXcmCmttKy
	EdK1Nj6BPrbDGTJqLMwLrQoFH5MwCuOD79pGU01kZRmucnwtmlz6FDWxISczi2CIlLd0LPA80cI41
	jkU84UUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEd7-005Qxm-21;
	Thu, 21 Sep 2023 08:01:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEd4-005Qwz-2h
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 08:01:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEd3-00016M-Ad; Thu, 21 Sep 2023 10:01:41 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEd2-007sHO-US; Thu, 21 Sep 2023 10:01:40 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEd2-00Af7W-S0; Thu, 21 Sep 2023 10:01:40 +0200
Date: Thu, 21 Sep 2023 10:01:40 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de, mfe@pengutronix.de
Message-ID: <20230921080140.GW637806@pengutronix.de>
References: <20230919141552.44037-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230919141552.44037-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_010142_875883_021067B5 
X-CRM114-Status: GOOD (  29.55  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: boards: imx: add some HAB documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Sep 19, 2023 at 04:15:52PM +0200, Ahmad Fatoum wrote:
> We could use some extra documentation on how to use the hab command to
> fuse a SoC and what output should be expected. Add this to the
> documentation. Procedure was done with HABv4 on i.MX8MM, which is not
> yet upstream[1], but should be equivalent for i.MX6.

Nice read! thanks, applied

Sascha

> 
> [1]: https://lore.barebox.org/barebox/20230705144219.504194-1-r.czerwinski@pengutronix.de/
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/boards/imx.rst | 47 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
> index 17465efdd9be..5a4f52b392d5 100644
> --- a/Documentation/boards/imx.rst
> +++ b/Documentation/boards/imx.rst
> @@ -178,6 +178,53 @@ It must be included in the board's flash header:
>  
>  Analogous to HABv4 options and a template exist for HABv3.
>  
> +To verify HAB working as intended, install the ``barebox-*-s.img`` onto the
> +boot medium and trigger a power-on reset. barebox will read the HAB log on
> +startup and report any errors it finds. A good unfused boot looks like this::
> +
> +  HABv4: Status: Operation completed successfully (0xf0)
> +  HABv4: Config: Non-secure IC (0xf0)
> +  HABv4: State: Non-secure state (0x66)
> +  HABv4: No HAB Failure Events Found!
> +
> +To have the bootrom verify the barebox binary, the SRK hash needs to be burnt
> +into the fuses. As fuses can't be unburnt, the ``hab`` command should be used
> +instead of direct device access to not risk writing unrelated fuses::
> +
> +  barebox$ hab -p -s SRK_1_2_3_4_fuse.bin
> +
> +Afterwards, images signed with a different key will trigger errors at barebox
> +startup, but system will still be able to boot to shell.
> +
> +To have the BootROM refuse booting differently signed images, the ``SRK_LOCK``
> +fuse needs to be burnt::
> +
> +  barebox$ hab -p -l
> +
> +On next startup, barebox will report that the system is now locked::
> +
> +  HABv4: Status: Operation completed successfully (0xf0)
> +  HABv4: Config: Secure IC (0xcc)
> +  HABv4: State: Trusted state (0x99)
> +  HABv4: No HAB Failure Events Found!
> +
> +This can also be seen with the ``hab -i`` command::
> +
> +  Current SRK hash: <some non-zero value>
> +  secure mode
> +
> +Similarly, on supported SoCs, the ``bootrom -l`` command will indicate that
> +device is closed. Example output after booting via ``imx-usb-loader``::
> +
> +
> +  [e0] Internal use
> +  [11] Boot mode is Boot from Serial Download
> +  [23] Secure config is Closed
> +  [41] FUSE_SEL_VALUE Fuse is blown
> +  [d0] Enters serial download processing
> +  [a0] Image authentication result: PASS (0x000000f0) @3506438144 ticks
> +  [00] End of list
> +
>  Secure Boot on i.MX6
>  ~~~~~~~~~~~~~~~~~~~~
>  
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


