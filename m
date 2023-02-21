Delivery-date: Tue, 21 Feb 2023 10:25:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUOuE-00DixY-TE
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 10:25:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUOuD-00019Y-PX
	for lore@pengutronix.de; Tue, 21 Feb 2023 10:25:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xNuGkwAXO/WhneCBesL6BkBNuoZ4AhMuoLwY8fYflnw=; b=y42qtZeH9zp3Oj6B2hXYh48gOF
	9R7sTi+OBJ5sFBaZT8rs37275v2MaIeGkDBy6/kdoNQNRG5bqkRX/4bVrIzx5MS433ncl2UN9k4p0
	2E6z74sqaR9BOWmzStx2rrz5rjM4ucOtYIWeYG8L4VyyPAzffl7GTaB/aa2eIrJqoCsy8HT40qkX1
	zCD/Inh3xYGKyy9GWjxYJVnPiFOe+YB5WqXo134bxKpV9AnuLHR4zdkuq/rCaPIvtwnMTYXU2DU7e
	4zxr8/bUaUxbEvUNTQ7BXXOOoU2aIXsHYft+rXipbZ55zcV+RQHkde8HEWTqtRPb4MRoRD7PEntCd
	Gte877xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUOt8-007Bgt-10; Tue, 21 Feb 2023 09:24:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUOsz-007Bda-Lw
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 09:24:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUOsy-0000hL-AP; Tue, 21 Feb 2023 10:24:32 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUOsy-0006wt-0M; Tue, 21 Feb 2023 10:24:32 +0100
Date: Tue, 21 Feb 2023 10:24:31 +0100
To: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230221092431.GZ10447@pengutronix.de>
References: <20230220090615.4451-1-michael.kopfensteiner@vahle.com>
 <20230220090615.4451-2-michael.kopfensteiner@vahle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230220090615.4451-2-michael.kopfensteiner@vahle.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_012433_766918_A72C536F 
X-CRM114-Status: GOOD (  20.22  )
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
Subject: Re: [PATCH 2/3] ARM: IMX8MP: add initial support for Variscite
 DT8MCustomBoard with iMX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Feb 20, 2023 at 10:06:14AM +0100, Michael Kopfensteiner wrote:
> The Variscite DT8MCustomBoard is an eval board for the several Variscite
> SOMs of their "DART" product line. This commit adds support for that
> baseboard in combination with a DART-MX8M-PLUS SOM. The commit contains
> an adapted version of the vendors device tree [1] and the vendors DDR
> timings, taken from Variscite's public U-Boot sources [2].
> 
> Both files have been slightly changed to integrate well with barebox.
> 
> The boardsupport added with this commit does not yet support every
> feature of the DT8MCustomBoard. Yet it already supports all basic
> necessities to make use of barebox.
> 
> [1] https://github.com/varigit/linux-imx/tree/3f94f35bda827e8aa06beadb10c77358cfb6dad9
> [2] https://github.com/varigit/uboot-imx/tree/7cad2ff68a508c71c572151a85bc786711bab969
> 
> +
> +#include "imx8mp-var-dart.dtsi"
> +
> +/ {
> +	model = "Variscite DART-MX8M-PLUS on DT8MCustomBoard 2.x";
> +
> +	// use the memory controller instead
> +	/delete-node/ memory@40000000;
> +
> +	chosen {
> +		stdout-path = &uart1;
> +
> +		environment-sd {
> +			compatible = "barebox,environment";
> +			device-path = &usdhc2, "partname:0";
> +			status = "disabled";
> +		};
> +
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &usdhc2, "partname:0";
> +			status = "disabled";
> +		};
> +	};

usdhc2 can't be both SD and eMMC. "partname:0" is the first MBR
partition. Is that what you mean here? Normally we put the environment
in an unpartitioned area before the first partition.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


