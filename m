Delivery-date: Thu, 17 Mar 2022 08:48:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nUkrx-00EPbd-Ie
	for lore@lore.pengutronix.de; Thu, 17 Mar 2022 08:48:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nUkrw-0001O4-4e
	for lore@pengutronix.de; Thu, 17 Mar 2022 08:48:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7390mHbsi/yLjqmj46s//v0LsMwhRwtTkekcEMMP7qM=; b=fOmC2vhp0spZvRnLzhZYX9hO5E
	buEaPcNR3aOUQiRpmnVTJrTrYwN7sr4tCB6anPiGVqGHLSroYojWZVydpgDAolw9B1Tjz6MiHo3nu
	NZOjIFNNvjnTbyPyGQ+YMcUVTH8lnqNXlrV9cYCQyN5Y1ejGeOC3EU1HqMTbpItA1MvKuMT645MFQ
	nVgecD2f9VUDM74R48BV6DrKhppGpMkDhcy4S6ThgiKpwH4gxArDbOeF5Qd/hypDGm/bcVmZB13Jf
	fK4+cwGohmG409wvfIoy0km8VhWM73AVmFemFkt8db44JuH7NVbncOO5IJFeUSLR9UBn9uRfb7I1b
	tInzQXKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUkqE-00FCrm-DB; Thu, 17 Mar 2022 07:46:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUkq8-00FCqJ-Qu
 for barebox@lists.infradead.org; Thu, 17 Mar 2022 07:46:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nUkq5-0001AS-GQ; Thu, 17 Mar 2022 08:46:29 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nUkq4-0001A8-SP; Thu, 17 Mar 2022 08:46:28 +0100
Date: Thu, 17 Mar 2022 08:46:28 +0100
To: Tibault Damman <tibault.damman@basalte.be>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20220317074628.GT405@pengutronix.de>
References: <DB7PR04MB424951EBC916B7A1E0A1B274E8119@DB7PR04MB4249.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR04MB424951EBC916B7A1E0A1B274E8119@DB7PR04MB4249.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:36:19 up 96 days, 16:21, 71 users,  load average: 0.27, 0.33, 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220317_004632_897457_FDC9F83A 
X-CRM114-Status: GOOD (  27.12  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: nand "BCH decoding failed" when using bch8_hw_romcode ecc mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Wed, Mar 16, 2022 at 01:45:31PM +0000, Tibault Damman wrote:
> Hi all
> 
> Due to component shortages, I'm trying to move an old board from a Phytec Phycore omap4430 with 8bit nand (Micron MT29F4G08ABBDAH4) to an omap4460 variant with 16bit nand (Micron MT29F8G16ADBDAH4).
> 
> To be compatible with Linux 5.4, the rootfs nand (ubi) partition needs to be in BCH8_HW_ROMCODE ecc mode instead of the default BCH8_HW.
> When I use ubiformat or ubiattach from barebox in this mode though, I get a bazillion "BCH decoding failed" prints (which I did not get on the omap4430)
> 
> > barebox@Phytec phyCORE-OMAP4460:/ ubiattach -O 2048 /dev/nand0.sys
> > ...
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > nand0.root: error -74 (ECC error) while reading 512 bytes from PEB 887:0
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > nand0.root: error -74 (ECC error) while reading 512 bytes from PEB 888:0
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > BCH decoding failed
> > ...
> 
> I tried these combinations:
> * omap4430 (8bit nand) + BCH8_HW ecc: works (but not compatible with Linux)
> * omap4430 (8bit nand) + BCH8_HW_ROMCODE ecc: works
> * omap4460 (16bit nand) + BCH8_HW ecc: works (but not compatible with Linux)
> * omap4460 (16bit nand) + BCH8_HW_ROMCODE ecc: does not work
> 
> I've reproduced this on the following barebox versions:
> * phytec's 2013.06 fork
> * 2019.07.0 (which I've been (successfully) using for omap4430)
> * the latest 2020.03.0
> 
> Any clues what could be going wrong here?

No clue, just some things you could test:

- in BCH8_HW_ROMCODE barebox can't read what it has written itself,
  right?
- Can barebox read what Linux has written in this mode?
- Use Linux to write known data to a page:
  seq 10000 > foo
  flash_erase /dev/mtdx 0 0
  nandwrite /dev/mtdx foo
- Read the same page in raw mode in barebox:
  md -s /dev/nand0.raw 0+2112
- Write the same data with barebox
- Read again:
  md -s /dev/nand0.raw 0+2112
- Compare the results

You could also just return successfully in chien() when the result would
fail and see what you read.

Use plain NAND accesses for now, i.e. no UBI.

Playing with these things should give us a starting point where to look
at.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

