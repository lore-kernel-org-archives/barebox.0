Delivery-date: Tue, 21 Feb 2023 11:26:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUPrH-00Dn3H-BZ
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 11:26:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUPrG-0001Sw-80
	for lore@pengutronix.de; Tue, 21 Feb 2023 11:26:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BxRRC+pB0zefTUQUJrrLhDAuQRmkEY2FX32ULed+u+g=; b=jRWHgF3HQqySTaL+SVW+tG64qs
	0iFLwOrQHOrovb4QnXB95ltGnjRI5v4i0dSBrMgeGqQjpAgZxR31E5de7QxKdfRZuVwHCWl2X37Db
	zfT0OHLIqMSgL5mdyBvj4AUJ57dQyhsxeMMANgiersLE3Idz/4ApdRvFCTqWsj55aQuaQtIYYhO5F
	Qfh2couhE2tzzX7a5LztRN8sLqQx0JLs9UwW4zFt3I7Qk/V7hMua/rwGukeeDTije+CmGKD/Hyem+
	AolsHOopGP2eeULjbiPiNq9zuPX3jnmWocyeTespNCeUUlNG4N2HjRtBNnWH1p9zfhNNLiuensCZ+
	fXCmaYpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUPpq-007NLT-KS; Tue, 21 Feb 2023 10:25:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUPpk-007NJC-Sg
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 10:25:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUPpa-00011o-F2; Tue, 21 Feb 2023 11:25:06 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUPpa-0004uy-5x; Tue, 21 Feb 2023 11:25:06 +0100
Date: Tue, 21 Feb 2023 11:25:06 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230221102506.GE10447@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_022516_949338_3BB00077 
X-CRM114-Status: GOOD (  21.79  )
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
Subject: Re: [PATCH v1 00/20] dts: avoid DT breakage new fancy DTC v1.7.0
 syntax
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 17, 2023 at 06:30:37PM +0100, Ahmad Fatoum wrote:
> The fresh v1.7.0 release of the device tree compiler now contains
> fancy new syntax:
> 
>   &{i2c1/at24@50} {
> 	partitions {
> 		/* something */
> 	};
>   };
> 
> instead of &{/soc/bus1/bus2/i2c@12345678/at24@50}, which is overly
> verbose or &i2c1 { at24@50 }, which will break once someone renames
> it upstream to please the schema checker.
> 
> Let's update to this new DTC release and change a lot of non-portable DT
> we have to use this new syntax or use existing labels if available or
> just absolute paths. This also fixes some breakage, but most of it is
> future-proofing.
> 
> I did some build testing and fixed the fallout, but Sascha's build of all
> configs may turn up some breakage too, which I would fix for v2.
> 
> Ahmad Fatoum (20):
>   scripts/dtc: Update to upstream version v1.7.0
>   scripts/dtc: update-dts-source.sh: don't fail if libfdt/ exists
>   Documentation: devicetree: describe new label-relative-path syntax
>   ARM: dts: use DT labels instead of paths where possible
>   MIPS: dts: ath79: ar9331: use path references when extending nodes
>   ARM: dts: tegra: switch to path and label references
>   ARM: i.MX51: ccmx51: support newer device trees
>   ARM: i.MX6: gw54xx: rename watchdog nodes
>   ARM: i.MX6: karo-tx6x: fix now renamed DT nodes
>   ARM: dts: zii: use phandle-relative paths for extending nodes
>   ARM: dts: AT91: use label-relative paths for extending nodes
>   ARM: dts: Layerscape: drop unneeded EEPROM node overriding
>   ARM: dts: Layerscape: use label-relative paths references
>   ARM: dts: vf610-zii-cfu1: remove duplicate LED
>   ARM: dts: i.MX53: ccxmx53: remove unused /memory
>   ARM: dts: i.MX: use label-relative references
>   ARM: dts: i.MX: delete now renamed memory nodes as well.
>   ARM: dts: socfpga: cut down on NAND node duplication
>   ARM: dts: i.MX8MN: evk: use upstream flash node definition
>   ARM: dts: i.MX8MN: evk: reduce duplication in barebox-added nodes

Applied all patches that apply on master, so all except "ARM: dts: i.MX:
use label-relative references"

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


