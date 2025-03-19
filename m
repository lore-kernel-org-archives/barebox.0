Delivery-date: Wed, 19 Mar 2025 09:42:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tup0L-001O13-0b
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 09:42:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tup0K-0007Lh-25
	for lore@pengutronix.de; Wed, 19 Mar 2025 09:42:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lySv8SSvLRZTVkKoQbmPVPdo5YpveNSihLV0T5aihO4=; b=rZO1eHI5xCG3zpb8s2d3RCMyOM
	HpybAgcdFSZ4YCFKsc0ki8J5ahO9hvru+JrAll1r9rJbButu5s3R6CYf0AYxnBWOznwof7RR2rdRQ
	1rKEr4+acZoLuTTyBOwcvqKTZHShOX4ivDQqC/RLccTccY5d00SPh9f8zMcMWeqgSJlflc5GD6cQP
	PveVylRZd7nwMLums8JAODHVCHI4ZjbB4LGA+6Y9s3khfTdbxESSuOHo8oBT6T1xwYc6ftKbZSk4Y
	bRw9f3SuHQKhK5nZR8HFLl4+F7bAwx3aNNfjh2DadyvGqKNJgT+l79t9kvIf8TqKNoU8W60TbaAt/
	iek6VMzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuozr-00000008NhY-2IrD;
	Wed, 19 Mar 2025 08:41:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuozo-00000008Ngx-2eTT
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 08:41:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tuozn-0007GN-A2; Wed, 19 Mar 2025 09:41:51 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tuozm-000Z3Q-1m;
	Wed, 19 Mar 2025 09:41:50 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tuozm-004pJ5-2o;
	Wed, 19 Mar 2025 09:41:50 +0100
Date: Wed, 19 Mar 2025 09:41:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <Z9qDTuzVEeRNHRqn@pengutronix.de>
References: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
 <CAP1tNvQokH9TTSANKNADzo5Nie2SzjAyM08ix0D8gbL6TPxBuw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvQokH9TTSANKNADzo5Nie2SzjAyM08ix0D8gbL6TPxBuw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_014152_669750_FA762794 
X-CRM114-Status: GOOD (  17.65  )
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
Subject: Re: [PATCH 0/7] filetype: Some size reduction patches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On Tue, Mar 18, 2025 at 06:01:19PM +0300, Alexander Shiyan wrote:
> Hello Sascha!
> 
> I've been using a separate config for this board for a long time :)
> Maybe you can take something from my working configuration that
> has been working for several years:
> https://github.com/shcgit/barebox/blob/milas/arch/arm/configs/mm_am335x_mlo_defconfig

Thanks, I extracted some more unneeded options from that. You disabled
the board support which we want to keep. Also you disabled SPI boot
which I think we'll need for some boards. However, these are indeed
not needed:

- CONFIG_BOARD_GENERIC_DT
- CONFIG_MTD_NAND_ECC_SW_HAMMING.
- CONFIG_BANNER

With my series and these options disabled the beaglebone MLO is now down
to 108836 bytes from originally 111956 bytes. The maximim size is 111616
bytes so we now have another 2780 bytes for future bloat before we are
in the same situation again ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


