Delivery-date: Tue, 07 Jan 2025 08:46:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4Ho-000EEx-01
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 08:46:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4Hk-00077l-B0
	for lore@pengutronix.de; Tue, 07 Jan 2025 08:46:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=19vJuZfP9TMEHjDgvBttijdLpWWVObWoXz/vO0yxcdg=; b=x/+N+DEtpjMn0y1JWtWmejg+r5
	3CdjQKKW1Ud+nKosK7xbLdG8YTrKBG7amDgVhCezhbwVn9YBSbtVLQxl7CEqUyfsnXNsXPRqrr1bv
	4MLX2MgOr4yPIlg/PGjlcb3q2EliaL7K0K6+/aRuhkqhxijkgJXBuDI51k7MDVvU4DzcDCeuV9XB1
	LLHlGRYDvPkma+lgbzEtq/1Y9p6S8AIcRYs6SHily0SXCMxESluEgXIzMmHfVLtm4r0zaniaXncRG
	iFt8jdYss60t0bbE7FzBsQVfxCzoYmw7YDaEYVjxCGAdZH9p7Z8IJKeIazUJZAO82FlsPI0XEGl4U
	ZlGWQZFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4H8-00000003n5t-3N8m;
	Tue, 07 Jan 2025 07:45:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4Ft-00000003myu-3nRk
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 07:44:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tV4Fs-0006qP-DK; Tue, 07 Jan 2025 08:44:00 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tV4Fr-007IoB-1T;
	Tue, 07 Jan 2025 08:44:00 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tV4Fs-009SYd-0R;
	Tue, 07 Jan 2025 08:44:00 +0100
Date: Tue, 7 Jan 2025 08:44:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <Z3zbQOQ80tSMLmT8@pengutronix.de>
References: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
 <20250106-k3-r5-v2-18-9de6270089ef@pengutronix.de>
 <eb9a9d27-ca97-4bc5-b7c3-b6f4ea37b3b6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eb9a9d27-ca97-4bc5-b7c3-b6f4ea37b3b6@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_234401_942594_AC808EA7 
X-CRM114-Status: GOOD (  25.98  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 18/22] ARM: beagleplay: add binary files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 06, 2025 at 03:33:16PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 06.01.25 14:47, Sascha Hauer wrote:
> > These files are generated from yaml files in U-Boot. Ideally we would
> > use these yaml files and convert them ourselves, but for now just use
> > the binary files and leave the conversion for later patches.
> > 
> 
> What do these blobs do?

They contain various configuration options evaluated by the ROM.
There are four yaml files: board-cfg.yaml, pm-cfg.yaml, rm-cfg.yaml and
sec-cfg.yaml. An example board-cfg.yaml looks like this:

board-cfg:
    rev:
        boardcfg_abi_maj: 0x0
        boardcfg_abi_min: 0x1
    control:
        subhdr:
            magic: 0xC1D3
            size: 7
        main_isolation_enable: 0x5A
        main_isolation_hostid: 0x2
    secproxy:
        subhdr:
            magic: 0x1207
            size: 7
        scaling_factor: 0x1
        scaling_profile: 0x1
        disable_main_nav_secure_proxy: 0
    msmc:
        subhdr:
            magic: 0xA5C3
            size: 5
        msmc_cache_size: 0x0
    debug_cfg:
        subhdr:
            magic: 0x020C
            size: 8
        trace_dst_enables: 0x00
        trace_src_enables: 0x00

These files are loaded and evaluated against a schema and then
serialized. The yaml files are added for each board in U-Boot, many of
them are identical and hardly ever touched once added to the U-Boot
tree.

I haven't yet found any TI documentation about the binaries.

> 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boards/beagleplay/combined-dm-cfg.bin    | Bin 0 -> 1346 bytes
> >  arch/arm/boards/beagleplay/combined-sysfw-cfg.bin | Bin 0 -> 1740 bytes
> >  2 files changed, 0 insertions(+), 0 deletions(-)
> > 
> > diff --git a/arch/arm/boards/beagleplay/combined-dm-cfg.bin b/arch/arm/boards/beagleplay/combined-dm-cfg.bin
> > new file mode 100644
> > index 0000000000..83fb5ee925
> > Binary files /dev/null and b/arch/arm/boards/beagleplay/combined-dm-cfg.bin differ
> > diff --git a/arch/arm/boards/beagleplay/combined-sysfw-cfg.bin b/arch/arm/boards/beagleplay/combined-sysfw-cfg.bin
> > new file mode 100644
> > index 0000000000..25f35d46ce
> > Binary files /dev/null and b/arch/arm/boards/beagleplay/combined-sysfw-cfg.bin differ
> 
> We haven't had any binary files in barebox' git so far. Do we want to start now?
> 
> Can we make these firmware/ blobs, until the YAML tooling is imported?

By that you mean just move them from the board directory to firmware/ or
something else?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


