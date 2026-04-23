Delivery-date: Thu, 23 Apr 2026 14:13:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFswM-00FU6u-1O
	for lore@lore.pengutronix.de;
	Thu, 23 Apr 2026 14:13:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFswI-00089R-UN
	for lore@pengutronix.de; Thu, 23 Apr 2026 14:13:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:Cc:To:From:MIME-Version:Date:Message-ID:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OGtWP619IZIs+AijJ9Q9m30zD+f02gKFKnrWf4Q8Hao=; b=IV5uvi3aS36ZwHUHSfkm7jSsg+
	NqNRJ2p17PTbdPE8ssqWqANGWDexWySbtiTZ3CdBlX2j8WqILenSDAlZkNkPOXtS/Vtn9RfTCbSw/
	Xq6lcaVKjz2N41vrWR0L12XPXuyIC8cLMns7xfYzIqA3QkAadjKp8jCgktoY0F6KE07v2ZwQ+Npdb
	OARfGckN/arAXLb795BUQQZgE401i+WECW89WVS/uIrZ0k/5bRezhAXo81LX8bEAcZ6LegN0zQlGH
	/0+/j9IUDn9mt5UBl/GF0NkV8v8/FER4CLamiEi71gMoWfOMQ1O9x8eXuSQ5U8RorqIj4Tg64VknG
	rIR2uILg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFsvN-0000000Baz6-2IAI;
	Thu, 23 Apr 2026 12:12:53 +0000
Received: from cczrelay01.in2p3.fr ([134.158.66.151] helo=cczrelay03.in2p3.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFsvI-0000000Baxy-3zcO
	for barebox@lists.infradead.org;
	Thu, 23 Apr 2026 12:12:52 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay03.in2p3.fr (Postfix) with ESMTPSA id 2F6011800799;
	Thu, 23 Apr 2026 14:00:13 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 cczrelay03.in2p3.fr 2F6011800799
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=in2p3.fr;
	s=20260401; t=1776945613;
	bh=OGtWP619IZIs+AijJ9Q9m30zD+f02gKFKnrWf4Q8Hao=;
	h=Date:From:To:Cc:Subject:From;
	b=JrAslTvo88GguhqBjR7++XuF5eRBk/yBEMNmrYBpB88PVFZ44OTI9nRLnhfZ4bgsx
	 HA5wBn5+8GQrt2q6ktETZVnME4hhRhZY1dl0WLQrzKLR9fAA8AoX6weRZStYAtnW9l
	 oLf0UrONZwIHxGlTFDaHiSebrKaA1BbOYW3hG8M4O4mfa+Z0Urhp1SgoiS7qRHN78M
	 79ALYnbZcuVL4K9mXvngNE8gofXVobzp0sQ4IwT4OzXraBvlNC/UgcPpXvPbgn2NMF
	 AsFnkw0ebNCXDvZlE6L0oC21OdyQz6aSi+cvyXpqCphkc3mJPXcf6u3PllzEmxbn9/
	 LcG7JsRgAyFkA==
Message-ID: <aeaec45e-ef30-462b-a28f-53d2b82d6387@clermont.in2p3.fr>
Date: Thu, 23 Apr 2026 14:00:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: David Picard <david.picard@clermont.in2p3.fr>
Content-Language: en-US
To: ML_Barebox <barebox@lists.infradead.org>
Cc: s.trumtrar@pengutronix.de, abbotti@mev.co.uk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260423_051249_388036_423BBBB6 
X-CRM114-Status: UNSURE (   8.76  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: ARM: socfpga: enclustra-sa2: issue with I2C1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

@Stephen and Ian: I Cc you since I spotted you authored commits related 
to Intel SoC FPGA pin muxing.

I'm trying to enable the I2C1 bus on a Cyclone V-base module, mounted on 
a base board. The I2C1 lines connect to a 2.54mm header, on which I 
attached a I²C device with pull-up resistors at address 0x40.
https://www.enclustra.com/en/products/system-on-chip-modules/mercury-sa2/

I can't detect the I²C device, nor can I see any pulse on the SCL line, 
which is constantly at +3.3V.

I changed the pin muxing in Quartus, updated the handoff files, changed 
the devicetree. The I2C1 bus is visible in Barebox and Linux. More 
detail here:
https://community.altera.com/discussions/fpga-device/cyclone-v-hps-i2c1-issue-no-activity-on-bus/352583

As documented on the Barebox website, I generated the BSP files with the 
Quartus script bsp-create-settings and copied the handoff files to the 
Barebox build directory. After that, I could see that 
iocsr_config_cyclone5.c and pinmux_config.c had changed.
https://www.barebox.org/doc/2025.05.0/boards/socfpga.html#updating-handoff-files
https://www.intel.com/content/www/us/en/docs/programmable/683187/20-1/bsp-create-settings.html

If someone could give me some hint, that would be really great!

David


