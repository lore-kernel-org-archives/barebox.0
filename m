Delivery-date: Fri, 11 Apr 2025 09:44:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u393o-00BA4Y-1o
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 09:44:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u393m-00066y-2e
	for lore@pengutronix.de; Fri, 11 Apr 2025 09:44:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CMSDoJmnUaqKmpZJOyYX6A6Dcnx6fLNua8JdSMbA4Mk=; b=taiYGGaU4sg932JeZ4O0WjSRKf
	YgLhYuD/kNwKP2O4wCJsHqkVXiUrBy1YILkv4QwMxu7ByKZIxlRsGd4bpoZXmlZlql326MMgjaYKA
	CA4FigU+0GU+80tPp8EvvtrbxFjuvesToO3OOAnnw5/yEXOvcMkjEqkRRiyHPT8TSoA3Fup0Ug2Yw
	lYomFsYLcMEMouM3pGBQpdZ7UHww7DFsMM3sI8hnYM6lnZJDOI6tGnA/JvwfHRhLaITu1uvQxbjrz
	NpyUfdxENKO9LEdfM12TicPHZbi/tf/b6/dM16ei+4oHAMbAp27MW0EnNjiGue5xLd28Nt33CqcQO
	danGnRGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u393G-0000000Cv7m-1Eae;
	Fri, 11 Apr 2025 07:43:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u390T-0000000CuLO-07yE
	for barebox@bombadil.infradead.org;
	Fri, 11 Apr 2025 07:40:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=CMSDoJmnUaqKmpZJOyYX6A6Dcnx6fLNua8JdSMbA4Mk=; b=raIhgeXOXZcVTk618p79fclqFo
	2nUURdctIgwqv+0joyZCGXJJvVtjcgztROerbe2AXHbYneUuVkTrePUfKa7GX4hW8GuLM0+l5h5on
	KNK9oObIhjfck2nZJAqLDTNuiqdEb8FtEwyk4DfttF6+mqrrdaWAUwhLuzFUq2dgE8d9xPylp1zuz
	SUAyYjWgiBjTaJShK95R27LEfx55BTYsMpveTS9BKuuRWVk8tPNlQLySNXcrFvCry6ttWqVCf+JME
	aJqRrtumonH9TuqoFu9UHJ/oiMoKnsY9TFpw3QRCzkuQv5mxCBTQaDwceOoo8Ox9XRuA6eOCBLPMP
	iNT1JN0w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u390M-00000008y0t-3xsm
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 07:40:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-0004uR-M9
	for barebox@lists.infradead.org; Fri, 11 Apr 2025 09:40:46 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-004OjB-1b
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 09:40:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-008WBo-1J
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 09:40:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 11 Apr 2025 09:40:35 +0200
Message-Id: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_084053_190837_9A2C1C53 
X-CRM114-Status: GOOD (  14.33  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/10] Add barebox TLV infrastructure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox TLV is a system to store and retrieve a device's (read-only)
meta-data from non-volatile memory.
It is intended to handle information that are usually only set in
the factory - like serial number, MAC-addresses, analog calibration
data, etc.
Data is stored in a tag-length-value format (hence the name) and read
from non-volatile memory during startup.

Unpacked values are fixed up into the devicetree ``chosen``-node
for consumption by the operating system.

This system has already been deployed in the field for a couple of years
now on the LXA TAC. The feature is given a generic name though, because
it's hoped it will be useful to a more general audience.

Nowadays, this could be implemented as a NVMEM layout in Linux.
The benefit of doing it in barebox is that, when signing is added
in the future, we preclude an attacker from showing barebox
and Linux different content.

Nevertheless, NVMEM layout infrastructure in barebox could be
useful, but our NVMEM support needs an overhaul to support layouts,
so fixed-partitions is the only supported binding for now.

Ahmad Fatoum (8):
  net: factor out eth_of_get_fixup_node
  net: export list of registered ethernet addresses
  common: add optional systemd.hostname generation
  common: add barebox TLV support
  commands: add TLV debugging command
  scripts: add bareboxtlv host/target tool
  boards: add decoder for LXA TLV v1 format
  ARM: stm32mp: lxa: enable TLV support for TAC & FairyTux2

Chris Fiege (2):
  scripts: Add Barebox TLV Generator Tooling
  doc: Add User-Documentation for Barebox TLV

 .../bindings/nvmem/barebox,tlv.yaml           |  60 ++++
 Documentation/user/barebox-tlv.rst            |  93 +++++
 Documentation/user/user-manual.rst            |   1 +
 arch/arm/boards/lxa-fairytux2/board.c         |   8 +
 arch/arm/boards/lxa-tac/board.c               |   8 +
 .../dts/stm32mp153c-lxa-fairytux2-gen2.dts    |   1 +
 arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi   |   1 +
 arch/arm/dts/stm32mp15xc-lxa-tac.dtsi         |   2 +
 arch/arm/mach-stm32mp/Kconfig                 |   2 +
 commands/Kconfig                              |  12 +
 commands/Makefile                             |   1 +
 commands/tlv.c                                |  55 +++
 common/Kconfig                                |  34 ++
 common/Makefile                               |   1 +
 common/boards/Kconfig                         |   5 +
 common/boards/Makefile                        |   1 +
 common/boards/lxa/Makefile                    |   2 +
 common/boards/lxa/factory-data.c              | 132 +++++++
 common/bootm.c                                |   9 +-
 common/tlv/Makefile                           |   4 +
 common/tlv/barebox.c                          | 183 ++++++++++
 common/tlv/bus.c                              | 133 ++++++++
 common/tlv/drv.c                              |  49 +++
 common/tlv/parser.c                           | 211 ++++++++++++
 common/tlv/register.c                         |  94 +++++
 include/net.h                                 |  21 ++
 include/string.h                              |   7 +
 include/tlv/format.h                          |  72 ++++
 include/tlv/tlv.h                             |  99 ++++++
 lib/string.c                                  |  21 ++
 net/eth.c                                     |  40 +--
 scripts/.gitignore                            |   2 +
 scripts/Makefile                              |   2 +
 .../bareboxtlv-generator.py                   | 321 ++++++++++++++++++
 .../bareboxtlv-generator/data-example.yaml    |  12 +
 scripts/bareboxtlv-generator/requirements.txt |   2 +
 .../bareboxtlv-generator/schema-example.yaml  |  48 +++
 scripts/bareboxtlv-target.c                   |   1 +
 scripts/bareboxtlv.c                          | 183 ++++++++++
 scripts/include/asm/unaligned.h               |  21 ++
 scripts/include/linux/build_bug.h             |   8 +
 scripts/include/linux/stringify.h             |  14 +
 test/self/Kconfig                             |   7 +
 test/self/Makefile                            |   1 +
 test/self/tlv.c                               |  89 +++++
 test/self/tlv.dts                             |  27 ++
 46 files changed, 2080 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml
 create mode 100644 Documentation/user/barebox-tlv.rst
 create mode 100644 commands/tlv.c
 create mode 100644 common/boards/lxa/Makefile
 create mode 100644 common/boards/lxa/factory-data.c
 create mode 100644 common/tlv/Makefile
 create mode 100644 common/tlv/barebox.c
 create mode 100644 common/tlv/bus.c
 create mode 100644 common/tlv/drv.c
 create mode 100644 common/tlv/parser.c
 create mode 100644 common/tlv/register.c
 create mode 100644 include/tlv/format.h
 create mode 100644 include/tlv/tlv.h
 create mode 100755 scripts/bareboxtlv-generator/bareboxtlv-generator.py
 create mode 100644 scripts/bareboxtlv-generator/data-example.yaml
 create mode 100644 scripts/bareboxtlv-generator/requirements.txt
 create mode 100644 scripts/bareboxtlv-generator/schema-example.yaml
 create mode 100644 scripts/bareboxtlv-target.c
 create mode 100644 scripts/bareboxtlv.c
 create mode 100644 scripts/include/asm/unaligned.h
 create mode 100644 scripts/include/linux/build_bug.h
 create mode 100644 scripts/include/linux/stringify.h
 create mode 100644 test/self/tlv.c
 create mode 100644 test/self/tlv.dts

-- 
2.39.5



