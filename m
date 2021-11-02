Delivery-date: Tue, 02 Nov 2021 15:24:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhuiQ-000699-6q
	for lore@lore.pengutronix.de; Tue, 02 Nov 2021 15:24:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhuiO-0005KW-V1
	for lore@pengutronix.de; Tue, 02 Nov 2021 15:24:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xE/9LSO7b4e689/VS+J3U/BN35swiSjOc6xiKlbMyT4=; b=omGS60h3qUhGcb
	YeBZpRYDLtxPl3FP9w40nWwoZTl76ZKBiVDvS7gaWm0E5YX3Y/JcpDMLb1xod/0cLqQlttvOngxS5
	bZ8Xx2SUoyYuPwh+TC3oLVDRGR9HJTAb8NtavQ/Xrj9Ggpzjaxe4hDYJdQxBsEejAhqGc/iz+pPBd
	gP2X4pJmGC9CTCmz7h2HWpGia8q1UqA80Pe0juStcQxCgY5IV5Y06tD31N1pRNJjAJWLPQnXVUnAr
	n/QLbyQE0N9iK6uNOef9J/hCdwprFOa2bC9uzRHXChz7bRm1jmOZQQGQDp5RD8cjjrg/tmFd3ulKx
	i+gDY61IxPE/QcawHoZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhugp-001wBy-LO; Tue, 02 Nov 2021 14:23:03 +0000
Received: from smtp120.ord1c.emailsrvr.com ([108.166.43.120])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhugk-001wBR-DR
 for barebox@lists.infradead.org; Tue, 02 Nov 2021 14:22:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1635862977;
 bh=CjN+DKKyayzKfzI4CSd+ZuqciRpcJVq5NAjtgwhy+GM=;
 h=To:From:Subject:Date:From;
 b=hUYUu70UJlV73/FiDG9bEX5exjC9JXCcprxaMBlbuHdgdMyBLKmf/47LACE5cZPWf
 bPXX3bNo0qDNGeVPfNHCWg4QFA+IbYlDPpd8/7OECle3CBnN8kzSyzNQaYV3miO7xy
 OFWX55cSN49q/rFIKu4ofsYdnwW1A1fzsRp6EccU=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp16.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id BA6ACC01CD
 for <barebox@lists.infradead.org>; Tue,  2 Nov 2021 10:22:56 -0400 (EDT)
To: barebox@lists.infradead.org
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <ee2d159c-4f0f-e81f-baca-343b846ee62e@mev.co.uk>
Date: Tue, 2 Nov 2021 14:22:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
Content-Language: en-GB
X-Classification-ID: 43748739-b2f4-4b67-8af8-c1963ccf4ce4-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_072258_578992_E5AC0A23 
X-CRM114-Status: GOOD (  10.44  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Inconsistent "compatible" string for Terasic DE0-Nano-SoC / Atlas SoC
 Kit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi there!

I have a slight issue getting BootLoaderSpec entries for Terasic 
DE0-Nano-SoC to work:

barebox@Terasic DE0-Nano-SoC/Atlas-SoC Kit:/ boot mmc0
blspec: ignoring entry with incompatible devicetree "terasic,de0-atlas"
Nothing bootable found on 'mmc0'
Nothing bootable found

 From the (recent) Linux kernel sources 
"arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts":

	model = "Terasic DE-0(Atlas)";
	compatible = "terasic,de0-atlas", "altr,socfpga-cyclone5", "altr,socfpga";

Of course, the above compatible string matches the barebox source 
"dts/src/arm/socfpga_cyclone5_de0_nano_soc.dts" file.

However the "model" and "compatible" strings get overridden by the 
barebox source "arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts":

	model = "Terasic DE0-Nano-SoC/Atlas-SoC Kit";
	compatible = "terasic,de0-nano-soc","altr,socfpga-cyclone5", 
"altr,socfpga";

The socfpga_init() function in 
"arch/arm/boards/terasic-de0-nano-soc/board.c" also checks the 
"compatible" string for registering a PHY fixup:

static int socfpga_init(void)
{
	if (!of_machine_is_compatible("terasic,de0-nano-soc"))
		return 0;

	if (IS_ENABLED(CONFIG_PHYLIB))
		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK, phy_fixup);

	return 0;
}

I think I can get everything working by changing barebox's "compatible" 
string to the following:

	compatible = "terasic,de0-atlas", "terasic,de0-nano-soc", 
"altr,socfpga-cyclone5", "altr,socfpga";

Then the socfpga_init() function and the blspec loader should both be happy.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

