Delivery-date: Tue, 01 Apr 2025 09:46:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzWJu-006uCH-0V
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 09:46:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzWJt-0007YO-EC
	for lore@pengutronix.de; Tue, 01 Apr 2025 09:46:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3wwvlFBBBn/h6SrDVgA8AX11MlTS/6YVKR0dLurGqjE=; b=LWwNwE7s0MQGeyRGkslMPb2Fqs
	xnpbhAQMEh8/j5roSmPOq4yo0m7f3DoFg7Seqvd70q0NTJqftFKxn68sH/zmB4M0o7iADnVS83/M7
	D06GntpQg18ymQpDhv4yvscyzbDMV3fQYU70AT2ldzUjyg7HxytsRwLBWFE3tZGBLKLlp1gSRI7R4
	RDiHnOQjNnIXnh9x/YNHW131JurhRauF+00v3NNELcD9BuBiz7QSvIIzyxdIDa5CMmYD2GBbw9dEA
	+0BYYn2qet8wU8go0KVT/1USspEqDF6UgbYOzYlL77hFqZZMBmRoiEJ6jiJqOtsCbcj1XCh9/mdlx
	K4D2UCNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzWJ1-00000002E4J-2TaA;
	Tue, 01 Apr 2025 07:45:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzWIy-00000002E31-3Gw8
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 07:45:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tzWIv-0007KF-Fs; Tue, 01 Apr 2025 09:45:01 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tzWIv-002j98-0P;
	Tue, 01 Apr 2025 09:45:01 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tzWIv-00B2m6-06;
	Tue, 01 Apr 2025 09:45:01 +0200
Date: Tue, 1 Apr 2025 09:45:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z-uZfXkw7pCkeD_4@pengutronix.de>
References: <CAP1tNvQiAqipRwBp9MBcOrPEQnbtqxr5GVZQ0vWhOnzhn3Wijw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvQiAqipRwBp9MBcOrPEQnbtqxr5GVZQ0vWhOnzhn3Wijw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_004504_821592_EE373E20 
X-CRM114-Status: GOOD (  20.69  )
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
Subject: Re: NOR damage problem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On Tue, Apr 01, 2025 at 09:20:31AM +0300, Alexander Shiyan wrote:
> Hello All!
> 
> Found NOR partition damage after use ubiformat.
> There is a NOR memory (256M) connected via atmel-qspi.
> First partition is RAW, the other for use via UBI.
> 
> partition@0 {
> label = "bootstrap";
> reg = <0 0x20000>;
> };
> ...
> partition@e0000 {
> label = "system";
> reg = <0xe0000 0>;
> };
> 
> barebox@Mega-Milas Informer SAMA5D2:/ md -s /dev/m25p0.bootstrap
> m25p80 flash@00: from 0x00000000, len 256
> 00000000: ea000012 eafffffe eafffffe eafffffe                ................
> 00000010: eafffffe 00004144 eafffffe eafffffe                ....DA..........
> 00000020: 65726162 00786f62 00000000 000040b8                barebox......@..
> 00000030: 55555555 55555555 55555555 55555555                UUUUUUUUUUUUUUUU
> 00000040: 55555555 55555555 55555555 55555555                UUUUUUUUUUUUUUUU
> 00000050: eb000c4b e1a00004 eb0008ca e1a0200e                K............ ..
> 00000060: e1a0300d eb000c8d e10fc000 e22cc01a                .0............,.
> 00000070: e31c001f e3ccc01f e38cc0d3 1a000004                ................
> 00000080: e38ccc01 e28fe00c e16ff00c e12ef30e                ..........o.....
> 00000090: e160006e e121f00c ee07cf15 ee07cf9a                n.`...!.........
> 000000a0: ee07cf95 ee11cf10 e3ccc085 e3cccc23                ............#...
> 000000b0: e38cca01 e38cc501 e3ccc002 ee01cf10                ................
> 000000c0: e1a0d003 e1a0f002 ee11cf30 e38cc040                ........0...@...
> 000000d0: ee01cf30 e1a0f00e e24f0008 e59f1004                0.........O.....
> 000000e0: e0500001 e12fff1e 000000d8 e3510000                ..P.../.......Q.
> 000000f0: 13a03000 15813000 e5d021ff e5d031fe                .0...0...!...1..
> 
> So, at this time all OK. Next, format with UBI.
> 
> barebox@Mega-Milas Informer SAMA5D2:/ ubiformat /dev/m25p0.system -y
> ubiformat: m25p0.system (nor), size 267517952 bytes (255.1 MiB),
> 4082 eraseblocks of 65536 bytes (64 KiB), min. I/O size 1 bytes
> ^Mlibscan: scanning eraseblock 0 --  0 % complete
> m25p80 flash@00: from 0x000e0000, len 64
> m25p80 flash@00: from 0x000f0000, len 64
> ...
> m25p80 flash@00: from 0x0ffe0000, len 64
> libscan: scanning eraseblock 4081 -- 100 % complete
> m25p80 flash@00: from 0x0fff0000, len 64
> 
> ubiformat: 7 eraseblocks have valid erase counter, mean value is 0
> ubiformat: 4069 eraseblocks are supposedly empty
> ubiformat: warning!: 6 of 4082 eraseblocks contain non-ubifs data
> ubiformat: warning!: only 7 of 4082 eraseblocks have valid erase counter
> ubiformat: erase counter 0 will be used for all eraseblocks
> ubiformat: note, arbitrary erase counter value may be specified using -e option
> ubiformat: use erase counter 0 for all eraseblocks
> ubiformat: formatting eraseblock 0 --  0 % complete
> m25p80 flash@00: at 0xe0000, len 65536
> m25p80 flash@00: at 0xf0000, len 65536
> m25p80 flash@00: at 0x100000, len 65536
> m25p80 flash@00: to 0x00100000, len 64
> ...
> m25p80 flash@00: to 0x000f0000, len 65536
> 
> Then check first partition:
> barebox@Mega-Milas Informer SAMA5D2:/ md -s /dev/m25p0.bootstrap
> m25p80 flash@00: from 0x00000000, len 256
> 00000000: 22000010 00000000 00000000 00000000                ..."............
> 00000010: 40000000 00000000 60dc9950 00000000                ...@....P..`....
> 00000020: 00000000 00000000 00000000 00000000                ................
> 00000030: 00000000 00000000 00000000 50040051                ............Q..P
> 00000040: 55555555 55555555 55555555 55555555                UUUUUUUUUUUUUUUU
> 00000050: eb000c4b e1a00004 eb0008ca e1a0200e                K............ ..
> 00000060: e1a0300d eb000c8d e10fc000 e22cc01a                .0............,.
> 00000070: e31c001f e3ccc01f e38cc0d3 1a000004                ................
> 00000080: e38ccc01 e28fe00c e16ff00c e12ef30e                ..........o.....
> 00000090: e160006e e121f00c ee07cf15 ee07cf9a                n.`...!.........
> 000000a0: ee07cf95 ee11cf10 e3ccc085 e3cccc23                ............#...
> 000000b0: e38cca01 e38cc501 e3ccc002 ee01cf10                ................
> 000000c0: e1a0d003 e1a0f002 ee11cf30 e38cc040                ........0...@...
> 000000d0: ee01cf30 e1a0f00e e24f0008 e59f1004                0.........O.....
> 000000e0: e0500001 e12fff1e 000000d8 e3510000                ..P.../.......Q.
> 000000f0: 13a03000 15813000 e5d021ff e5d031fe                .0...0...!...1..

The messages above say that 64bytes were written which matches the
number of bytes that are corrupted here. Maybe this can be a starting
point where to look at. Also the 64 bytes were written without the block
being erased. You could erase the block manually before calling
ubiformat, then you could see what the code really tried to write here.

Just an idea: Is the size of your Flash correctly detected? When writing
past the device then the write operations could roll over to the first
block.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


