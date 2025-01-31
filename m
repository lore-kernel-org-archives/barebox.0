Delivery-date: Fri, 31 Jan 2025 14:03:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdqgT-006kb2-39
	for lore@lore.pengutronix.de;
	Fri, 31 Jan 2025 14:03:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdqgU-0005JK-2W
	for lore@pengutronix.de; Fri, 31 Jan 2025 14:03:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LLOZxHsodgb5mPW514nvc/hEVwwpHMGGmHhlD2jcej8=; b=Hh/YoNhWEXsL58FY81i+2w5wwE
	1ncjanRdlp+668YkydqclMynZzb0vepDQBTETQ/lNg+6ALlk+TsP8ihln+mpqsTTK1bEWF6rdnxxj
	/H5xao42xRp06UAHRCi//WhalgEsc6GDodnps/frw/QiC0UgOQp4zvpkklUsBFqqeF1iFQNyFtJKB
	jipeo0pzDgQx6Yv3kslXXUnjsd5YEaHXAXPMIgzLbRWKDzMvDoWlBVaOB7vqKXMvL30dnBEbVZRg/
	RwTphej00/Zomimj2ghA21TS2I3tpndxOZwuEFvRa7874NPdDSSlSV0+tu0GNNuYo81S9feYQkloV
	8bjsulOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdqfz-0000000Aeeb-43wA;
	Fri, 31 Jan 2025 13:03:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdqfx-0000000Aedn-1iIv
	for barebox@lists.infradead.org;
	Fri, 31 Jan 2025 13:03:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tdqfw-00056p-4z; Fri, 31 Jan 2025 14:03:12 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tdqfv-002nhj-34;
	Fri, 31 Jan 2025 14:03:11 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tdqfv-006Rk9-2j;
	Fri, 31 Jan 2025 14:03:11 +0100
Date: Fri, 31 Jan 2025 14:03:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z5zKD-5ovqoQfDzu@pengutronix.de>
References: <20250130120814.1053382-1-o.rempel@pengutronix.de>
 <20250130120814.1053382-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250130120814.1053382-2-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250131_050313_443095_F5F52DB1 
X-CRM114-Status: GOOD (  17.76  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 2/2] Documentation: user: Add OTP support and
 parameter descriptions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jan 30, 2025 at 01:08:14PM +0100, Oleksij Rempel wrote:
> Provide an overview of OTP support in Barebox.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  Documentation/user/otp.rst         | 199 +++++++++++++++++++++++++++++
>  Documentation/user/user-manual.rst |   1 +
>  2 files changed, 200 insertions(+)
>  create mode 100644 Documentation/user/otp.rst
> 
> diff --git a/Documentation/user/otp.rst b/Documentation/user/otp.rst

...

> +    bsec0.permanent_write_enable=1
> +
> +    # Write directly to an OTP register (bypasses shadow)
> +    mw -l -d /dev/stm32-bsec 0x00000170+4 0x12345678
> +
> +    # Disable OTP write mode (future writes go to shadow, if available)
> +    bsec0.permanent_write_enable=0
> +
> +Example 2: Using Shadow Memory Without Committing
> +::
> +
> +    # Ensure shadow writes are enabled
> +    bsec0.permanent_write_enable=0
> +
> +    # Write to shadow memory (not permanent yet)
> +    mw -l -d /dev/imx-ocotp 0x20+4 0xAABBCCDD

Please drop the '+4' from the mw commands. The length is detected from
the number of words written and the '+4' has no meaning for mw.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


