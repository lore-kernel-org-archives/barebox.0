Delivery-date: Tue, 21 Mar 2023 09:14:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peX90-008wZc-VM
	for lore@lore.pengutronix.de; Tue, 21 Mar 2023 09:14:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peX90-0005YQ-TE
	for lore@pengutronix.de; Tue, 21 Mar 2023 09:14:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uCi76GrNpNMWPQvRCy3Gx/r8AeV2yPlmgsHQHRkO780=; b=A5C4UsMgLEGW50J2+6zJBPhPBZ
	gEowRHDZDfTfYnj+6zOU3IwtDbEL5DUVZx2BGIWGZIRXTDtymplE1LhbB4sDOJqJfnXWlWWhEwH5H
	xrg3YkQBVhkxs3nY3uBKwNYohChYrSh2rqwtavVCJ/3ntMtN3/t+Rrov2KMCZInF+DL2/0guLz8qY
	uwOx0OoAcYfBAnsZ4GNerf3LOPeSHWyJdedi/VgXQdibfcXPQPgP29Z4OOot37p5WaXLZuODlCPEb
	ojRiZYz0CWjk3ogcRgLzu6Ed3Sx+FymTswaK/BPgY4+y/4ATVaQfnLAg/J7sn2UjMhMdnfieEm4TL
	9yFLa48A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peX7u-00Bdqd-1B;
	Tue, 21 Mar 2023 08:13:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peX7r-00BdpS-0I
	for barebox@lists.infradead.org;
	Tue, 21 Mar 2023 08:13:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peX7p-0005MP-Ph; Tue, 21 Mar 2023 09:13:45 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peX7p-00055b-Id; Tue, 21 Mar 2023 09:13:45 +0100
Date: Tue, 21 Mar 2023 09:13:45 +0100
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230321081345.GH7446@pengutronix.de>
References: <20230320114123.2202362-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230320114123.2202362-1-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_011347_126544_6B089682 
X-CRM114-Status: GOOD (  21.48  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: imx: improve reboot mode section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 20, 2023 at 12:41:23PM +0100, Roland Hieber wrote:
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  Documentation/boards/imx.rst | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
> index 6c16923340a8..6fbf1554d10e 100644
> --- a/Documentation/boards/imx.rst
> +++ b/Documentation/boards/imx.rst
> @@ -86,8 +86,8 @@ The images can also always be started as second stage on the target:
>  BootROM Reboot mode codes (bmode)
>  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>  
> -For select SoCs, barebox supports communicating an alternative boot medium
> -that BootROM should select after a warm reset::
> +For selected SoCs, barebox supports communicating an alternative boot medium
> +that the BootROM should select after a warm reset::
>  
>    barebox@FSL i.MX8MM EVK board:/ devinfo gpr.reboot_mode
>    Driver: syscon-reboot-mode
> @@ -107,10 +107,17 @@ that BootROM should select after a warm reset::
>  
>    barebox@FSL i.MX8MM EVK board:/ gpr.reboot_mode.next=serial reset -w
>  
> -This will cause barebox to fall into serial download mode on an i.MX8MM.
> +The example above will cause barebox to jump back into serial download mode on
> +an i.MX8MM by writing 0x10 into the *SRC_GPR9* register (offset 0x30390094) and
> +0x40000000 into the *SRC_GPR10* register (offset 0x30390098), and then issuing a
> +warm :ref:`reset <command_reset>`.
>  
>  Different SoCs may have more possible reboot modes available.
> -See the section on :ref:`Reboot modes<reboot_mode>` for more information.
> +Look for documentation of the *SRC_SBMR* and *SRC_GPR* registers in the
> +Reference Manual of your SoC; the values for the ``mode-*`` properties often
> +correspond directly to the boot fusemap settings.
> +
> +See the section on :ref:`Reboot modes<reboot_mode>` for general information.
>  
>  High Assurance Boot
>  ^^^^^^^^^^^^^^^^^^^
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


