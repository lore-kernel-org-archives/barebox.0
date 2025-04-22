Delivery-date: Tue, 22 Apr 2025 14:47:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7D1p-0043WK-1X
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 14:47:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7D1o-0003sU-O6
	for lore@pengutronix.de; Tue, 22 Apr 2025 14:47:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LQuWVRp6eD8GVL6J2Eu+XgZ6ZVIFf9ttmB0wwOP8Tyc=; b=S8HCtPqgy+mmKmfwE3+ycD8UEk
	Iay9mm309WLtRRy+mtvHhKsGk9C9kCSNQ6F3IZAEw2K8Wq0xvPOProSdeQoBqNoZmBZb23Rtd2llU
	hmctSQmXAgDtMfYqqWNkuC8SSZIQT7AG7EVZBFECTKMHzDz/ALxesqHbivRGl1YzGdru92PucFwpz
	fmBGmEVcV1V2nEiVHSrHeGfOc7IPUEfUXIGAhSbynuPLnpIpiMMnv0G/xXo9PjjR4R2QC5rM9vEAX
	o0zmABPkHaTDK3CdTf8whn9Vawj59v2wofoipzLhu8w5D0IwsIHTnGbzHm4g5UyK5d95cQZ5rPKM8
	huraRjoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7D1Q-00000007B24-2MUO;
	Tue, 22 Apr 2025 12:46:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Bze-00000006zGy-0oK0
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 11:40:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u7Bzc-0007N3-TM
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 13:40:48 +0200
Message-ID: <fbb93a0e-a189-4a80-afa5-0e4335c34317@pengutronix.de>
Date: Tue, 22 Apr 2025 13:40:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
References: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_044050_236739_4DDB6A15 
X-CRM114-Status: GOOD (  23.15  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/10] Add barebox TLV infrastructure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

Could the first three patches that are applicable on their own be applied?

Thanks,

On 4/11/25 09:40, Ahmad Fatoum wrote:
> barebox TLV is a system to store and retrieve a device's (read-only)
> meta-data from non-volatile memory.
> It is intended to handle information that are usually only set in
> the factory - like serial number, MAC-addresses, analog calibration
> data, etc.
> Data is stored in a tag-length-value format (hence the name) and read
> from non-volatile memory during startup.
> 
> Unpacked values are fixed up into the devicetree ``chosen``-node
> for consumption by the operating system.
> 
> This system has already been deployed in the field for a couple of years
> now on the LXA TAC. The feature is given a generic name though, because
> it's hoped it will be useful to a more general audience.
> 
> Nowadays, this could be implemented as a NVMEM layout in Linux.
> The benefit of doing it in barebox is that, when signing is added
> in the future, we preclude an attacker from showing barebox
> and Linux different content.
> 
> Nevertheless, NVMEM layout infrastructure in barebox could be
> useful, but our NVMEM support needs an overhaul to support layouts,
> so fixed-partitions is the only supported binding for now.
> 
> Ahmad Fatoum (8):
>   net: factor out eth_of_get_fixup_node
>   net: export list of registered ethernet addresses
>   common: add optional systemd.hostname generation
>   common: add barebox TLV support
>   commands: add TLV debugging command
>   scripts: add bareboxtlv host/target tool
>   boards: add decoder for LXA TLV v1 format
>   ARM: stm32mp: lxa: enable TLV support for TAC & FairyTux2
> 
> Chris Fiege (2):
>   scripts: Add Barebox TLV Generator Tooling
>   doc: Add User-Documentation for Barebox TLV
> 
>  .../bindings/nvmem/barebox,tlv.yaml           |  60 ++++
>  Documentation/user/barebox-tlv.rst            |  93 +++++
>  Documentation/user/user-manual.rst            |   1 +
>  arch/arm/boards/lxa-fairytux2/board.c         |   8 +
>  arch/arm/boards/lxa-tac/board.c               |   8 +
>  .../dts/stm32mp153c-lxa-fairytux2-gen2.dts    |   1 +
>  arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi   |   1 +
>  arch/arm/dts/stm32mp15xc-lxa-tac.dtsi         |   2 +
>  arch/arm/mach-stm32mp/Kconfig                 |   2 +
>  commands/Kconfig                              |  12 +
>  commands/Makefile                             |   1 +
>  commands/tlv.c                                |  55 +++
>  common/Kconfig                                |  34 ++
>  common/Makefile                               |   1 +
>  common/boards/Kconfig                         |   5 +
>  common/boards/Makefile                        |   1 +
>  common/boards/lxa/Makefile                    |   2 +
>  common/boards/lxa/factory-data.c              | 132 +++++++
>  common/bootm.c                                |   9 +-
>  common/tlv/Makefile                           |   4 +
>  common/tlv/barebox.c                          | 183 ++++++++++
>  common/tlv/bus.c                              | 133 ++++++++
>  common/tlv/drv.c                              |  49 +++
>  common/tlv/parser.c                           | 211 ++++++++++++
>  common/tlv/register.c                         |  94 +++++
>  include/net.h                                 |  21 ++
>  include/string.h                              |   7 +
>  include/tlv/format.h                          |  72 ++++
>  include/tlv/tlv.h                             |  99 ++++++
>  lib/string.c                                  |  21 ++
>  net/eth.c                                     |  40 +--
>  scripts/.gitignore                            |   2 +
>  scripts/Makefile                              |   2 +
>  .../bareboxtlv-generator.py                   | 321 ++++++++++++++++++
>  .../bareboxtlv-generator/data-example.yaml    |  12 +
>  scripts/bareboxtlv-generator/requirements.txt |   2 +
>  .../bareboxtlv-generator/schema-example.yaml  |  48 +++
>  scripts/bareboxtlv-target.c                   |   1 +
>  scripts/bareboxtlv.c                          | 183 ++++++++++
>  scripts/include/asm/unaligned.h               |  21 ++
>  scripts/include/linux/build_bug.h             |   8 +
>  scripts/include/linux/stringify.h             |  14 +
>  test/self/Kconfig                             |   7 +
>  test/self/Makefile                            |   1 +
>  test/self/tlv.c                               |  89 +++++
>  test/self/tlv.dts                             |  27 ++
>  46 files changed, 2080 insertions(+), 20 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml
>  create mode 100644 Documentation/user/barebox-tlv.rst
>  create mode 100644 commands/tlv.c
>  create mode 100644 common/boards/lxa/Makefile
>  create mode 100644 common/boards/lxa/factory-data.c
>  create mode 100644 common/tlv/Makefile
>  create mode 100644 common/tlv/barebox.c
>  create mode 100644 common/tlv/bus.c
>  create mode 100644 common/tlv/drv.c
>  create mode 100644 common/tlv/parser.c
>  create mode 100644 common/tlv/register.c
>  create mode 100644 include/tlv/format.h
>  create mode 100644 include/tlv/tlv.h
>  create mode 100755 scripts/bareboxtlv-generator/bareboxtlv-generator.py
>  create mode 100644 scripts/bareboxtlv-generator/data-example.yaml
>  create mode 100644 scripts/bareboxtlv-generator/requirements.txt
>  create mode 100644 scripts/bareboxtlv-generator/schema-example.yaml
>  create mode 100644 scripts/bareboxtlv-target.c
>  create mode 100644 scripts/bareboxtlv.c
>  create mode 100644 scripts/include/asm/unaligned.h
>  create mode 100644 scripts/include/linux/build_bug.h
>  create mode 100644 scripts/include/linux/stringify.h
>  create mode 100644 test/self/tlv.c
>  create mode 100644 test/self/tlv.dts
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



