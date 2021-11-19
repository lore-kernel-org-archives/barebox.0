Delivery-date: Fri, 19 Nov 2021 10:56:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo0dA-00012r-O3
	for lore@lore.pengutronix.de; Fri, 19 Nov 2021 10:56:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mo0d9-0006Sq-KB
	for lore@pengutronix.de; Fri, 19 Nov 2021 10:56:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eevWnfV7S5gMlmhiRDMDH+LxtI+BVhlKkp0TwlkV8aY=; b=jTj+jQAtY2jNCP
	SbrxCt7OsXhkuNErqoRRJf7NFsmjP7lDrpMTNP//Itj5ouabBf9f18q6Q62xewqW1N6EVQNAco3Yp
	QFQzPStxEQ6BDK5AHQDA5omNrReluKy/xeAytorpiOClg/suy6TR5FEC98OATUU1qIOwEqHeW61qj
	zArrRAZ5cBMFasQbLNU1l/J+16EnTHPdQ6/BweZRoAXs3205MEBKYcrpUPrt2j9c9tLtKu5zkFEeG
	K7N7+BonltrBj6mLDul3BDwXeMTRuPO4gk5ftn56RYE0lFtc0fuARMoFmWgQ+aw9Yx8TYQNM4/GOc
	6urZmihhtnX1VaOYK0Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo0bl-00A2cx-81; Fri, 19 Nov 2021 09:55:01 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo0bd-00A2ZG-1O
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 09:54:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IKTCXcbw1Ys5Jxhsf7B7ND2wQRt9HP12Tmcy53IhzS4=; b=p4u2GuGh2aFcNF2m9+56h/ug6W
 /uxd+pW2jObWIrocDwgSjTSWZfHf/7OFHJ1T+NRtZmpsBXeCIgRu0zMOfRcwgLj4PHHnzja4OJLt5
 gWsrCoxXkzqnM3oy/Ot71aTcS9fVHjEnWft6OzBll4lDp79KyxYE4PFD3OQxg/5oaqo9gW1mfvpS1
 axaRLk95I6EU64pXB7yoNCL1gPNhS7AXinzbmnes9zUzIXzUn09l0lHz0YyTeCCnAEcZl0Cwm9byM
 IZ1jjRplat1i+KyWfSB1FYo7mGeKjpI2mdYvL4MKDXQXo/AX5d4/t/v0U1mmu8i018JYKBymgmw3z
 SDUcVyrQ==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:53856
 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1mo0bM-00E4Y4-4e
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 10:54:44 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Date: Fri, 19 Nov 2021 10:54:23 +0100
Message-Id: <20211119095429.1905473-1-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_015453_481938_E874237B 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/6] PHYTEC patches to be mainlined
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

this patch series contains PHYTEC barebox patches which weren't yet
introduced to this mailing list (or at least not in this form).

 1. The first patch increases the stability during boot in extreme cold
 conditions.

 2. The second and third patch adds some missing configs (OCOTP write
 support and some OF commands).

 3. The last three patches (fourth, fifth and sixth) are meant as a
 fixup for patches that deleted the PMIC supply nodes. They were
 introduced because barebox doesn't support DA9063 PMIC regulator driver
 and instead prints ugly warnings (recently downgraded from error) like:

imx-esdhc 2194000.mmc@2194000.of: Failed to get 'vmmc' regulator (ignored).

 In either way, we rely on PMIC's reset default and use dummy
 regulators. Using barebox specific device-tree property
 ('barebox,allow-dummy-supply') shouldn't break booting Linux with
 barebox internal device-tree and allows using dummy regulators in
 bootloader where regulator support is limited. The complete solution
 would be porting DA9063 regulator driver to barebox, but let's add that
 to our "to-do" list for now and use this workaround instead.

Best regards,
Andrej

Changes in v2:
 - remove "PHYTEC specific" config patch. Drop removing IPUV3 driver and move
 enabled configs to default imx_v7_defconfig,
 - move "barebox,allow-dummy-supply" to be added to regulator provider

Andrej Picej (5):
  ARM: configs: imx_v7_defconfig: add OF commands
  ARM: configs: imx_v7_defconfig: add OCOTP write support
  regulator: allow use of dummy regulator
  ARM: dts: imx6qdl: pfla02: use dummy regulators
  documentation: regulator: add allow-dummy-supply

Stefan Riedmueller (1):
  flash-header-phytec-pcl063: Set SOC voltage to 1.25 V during boot

 .../bindings/regulator/regulator.rst          | 35 +++++++++++++++++++
 .../flash-header-phytec-pcl063.h              |  2 ++
 arch/arm/configs/imx_v7_defconfig             |  4 +++
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi       | 12 ++-----
 drivers/regulator/core.c                      | 20 +++++++++--
 5 files changed, 62 insertions(+), 11 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/regulator.rst

-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

