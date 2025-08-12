Delivery-date: Tue, 12 Aug 2025 18:20:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulrjg-009iy7-11
	for lore@lore.pengutronix.de;
	Tue, 12 Aug 2025 18:20:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulrjf-000628-MJ
	for lore@pengutronix.de; Tue, 12 Aug 2025 18:20:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JMFigqwKaSd/v8ixKQJRx2DNhayIHrhbhRN/emfDR/s=; b=X0OONX7iTusPeR4IPD0xbwL5iw
	2ejjTYlkQmrs9J2kh5bRDNgmxdQDuGZFCMFKe7ox2kJfqhURcCwZ+kV2GTASvgjTbMYfK6gnrhju/
	lqjr1xzsvOK09U4rmWcvp9KP2Zcdn0Twu59Xl/gPbGUbKzt/7udKmZXzyT96QI0u2qY3gbMkhX2o3
	bxlTZXuFup8tNpE2x9SrYAUHGkwQIhz3R0UKw9CqKCPKT40ozds2F5sx3BDDVGp1RZ5CdCtgf0pcY
	q7JT+FQ8s/VfAoog0fx/hu1G4ohKheq6pG/jWYyw7ZBnIM4N69BPjApRoJY68B81ohQLcASFNLIeo
	ZwEALAoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulrj8-0000000BJ8s-1ehG;
	Tue, 12 Aug 2025 16:19:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulmQ8-0000000AWLu-0WYO
	for barebox@lists.infradead.org;
	Tue, 12 Aug 2025 10:39:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ulmQ6-0000it-5v; Tue, 12 Aug 2025 12:39:54 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ulmQ5-00DBQU-0I;
	Tue, 12 Aug 2025 12:39:53 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ulmQ4-006v5b-3C;
	Tue, 12 Aug 2025 12:39:53 +0200
Date: Tue, 12 Aug 2025 12:39:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <aJsZ-ESfR2_y-via@pengutronix.de>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
 <20250811122824.1667791-44-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250811122824.1667791-44-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_033956_193782_98906A4B 
X-CRM114-Status: GOOD (  17.20  )
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
Subject: Re: [PATCH 43/44] commands: introduce bfetch command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Aug 11, 2025 at 02:28:23PM +0200, Ahmad Fatoum wrote:
> Inspired by U-Boot's addition of the ufetch command and the neofetch
> utility for Linux[1], add a similar command to barebox.
> 
> The command is meant to simplify showing off a barebox port with some
> colored ASCII art. The usual alternative is a screenshot of a barebox
> boot up and prompt, which for a fresh port usually will contain some
> >= warning messages, which is not as pleasant to look at compared to:
> 
> :##:                                   :##: none@virt64
> -%%:  =#####.                          :%%- -----------
>       #@@@@@.                               Kernel: barebox 2025.07.0-<snip>
>       *@@@@@.                               Model: ARM QEMU virt64 (linux,dummy-virt)
>       *@@@@@.                               Config: arm64 multi_v8_defconfig
>       *@@@@@.      :=##=.                   CPU: Cortex-A57 r1p0 at EL1
>       *@@@@@.   :+%@@@@@@#+:                Memory: 1 GiB
>       *@@@@@:-*@@@@@@@@@@@@@%*-.            Uptime: 1 second
>       *@@@@@@@@@@@@@@%%@@@@@@@@@#=.         Shell: Hush with 155 commands and 8 aliases
>       *@@@@@@@@@@@%**+=+*%@@@@@@@@@%+.      Consoles: input0 cs0 netconsole-1
>       *@@@@@@@%#*++++++===+*#%@@@@@@@+      Features: FW_CFG HWRNG PCI VIRTIO
>       *@@@@@#*+++++++++++++===+#@@@@@+       barebox: /dev 9P BTHREAD DEEP RATP W^X
>       *@@@@@*+++++++++++++++++=*@@@@@+      Network: 1 interface, 1 up
>       *@@@@@*+++++++++++++++++=*@@@@@+        eth0: 0.0.0.0/0
>       *@@@@@*+++++++++++++++++=*@@@@@+      Hardening: init-stack
>       *@@@@@*+++++++++++++++++=*@@@@@+      Devices: 85 with 17 bound
>       *@@@@@*++++++++++++++++==*@@@@@+      Drivers: 220 drivers across 16 busses
>       *@@@@@%#*+++++++++++===+*%@@@@@+      Storage: 1x MTD (128 MiB)
>       *@@@@@@@@%#*++++===+*#%@@@@@@@@+      Environment: 28 bytes
>        -*%@@@@@@@@@%*++*%@@@@@@@@@%+:       Firmware:
>           :+#@@@@@@@@@@@@@@@@@@#=:            PSCI: v1.1 over hvc
>              .=*@@@@@@@@@@@%*-.
>                  -+%@@@@%+:
> -@@-                :==.               :@@-
> :**.                                   .**:

Commands like cpuinfo and uptime are not selected by bfetch, but used
unconditionally, so we might get some not-so-fancy

cpuinfo: No such file or directory
uptime: No such file or directory

messages in the bfetch output.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


