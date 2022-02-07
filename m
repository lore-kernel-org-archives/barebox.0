Delivery-date: Mon, 07 Feb 2022 09:36:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzVC-0085G1-Fa
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 09:36:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzVA-0000QH-VQ
	for lore@pengutronix.de; Mon, 07 Feb 2022 09:36:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EwU4iR/D8Bw21rVuSMC/Av3uk0rG0+h5RrxoU93xGXs=; b=ntK0WceIneskDV
	U9PcBD78oGvrv1hLXoLpH39eCgWlWiEG/ZwW366CrPB5OxRzUiMMWjvj3JpwtSOWNSkiXO0X/PhMT
	wdOiL9jvhRQv8ol59tlF7hbPUbQEvT2b2DcrFUphwQGuQvN0CngS3UXomGC2wjVu59pJ26LWnktc4
	KrhnEk7jPA5iJ+JBHjpHOYdgyJ6cr6s3x42ALli1icM891MGD0KYinwzRw9n4wkuSf8EETWyV3j/A
	BN4sG8HCFITKjRAaf8CqPBUxobuKhXItkpRZulFL8+D+vkLRENTzKiEWyMBEP3JKr3+R3u58UqO1G
	uatf9AqjWChRkXAsKUTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGzU0-009Mg8-Ba; Mon, 07 Feb 2022 08:34:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGzTu-009MeI-Mu
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 08:34:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nGzTt-00006l-8v; Mon, 07 Feb 2022 09:34:41 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nGzTs-0006qe-Pv; Mon, 07 Feb 2022 09:34:40 +0100
Date: Mon, 7 Feb 2022 09:34:40 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <ahmad@a3f.at>, barebox@lists.infradead.org,
 Frank Wunderlich <frank-w@public-files.de>
Message-ID: <20220207083440.GD18637@pengutronix.de>
References: <20220205231930.2948516-1-ahmad@a3f.at>
 <20220205231930.2948516-2-ahmad@a3f.at>
 <20220207080032.GO23490@pengutronix.de>
 <7dbece94-3df4-a613-30ae-07c9a9fdb284@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7dbece94-3df4-a613-30ae-07c9a9fdb284@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:23:20 up 58 days, 17:08, 79 users,  load average: 0.06, 0.16, 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_003442_785043_95BE5792 
X-CRM114-Status: GOOD (  36.48  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] Documentation: user: barebox: mention generic dt 2nd
 stage support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Feb 07, 2022 at 09:14:51AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 07.02.22 09:00, Sascha Hauer wrote:
> > On Sun, Feb 06, 2022 at 12:19:30AM +0100, Ahmad Fatoum wrote:
> >> Most users interested in chainloading barebox will probably want to use
> >> the generic DT format for that: It will pass the checks the boot command
> >> may have and it will ensure the system is in the correct state, e.g.
> >> that caches are disabled.
> >>
> >> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> >> ---
> >>  Documentation/user/barebox.rst | 18 +++++++++++++++---
> >>  1 file changed, 15 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
> >> index 8634d8e48eef..4abcf79c6d2a 100644
> >> --- a/Documentation/user/barebox.rst
> >> +++ b/Documentation/user/barebox.rst
> >> @@ -203,9 +203,21 @@ Starting barebox
> >>  Bringing barebox to a board for the first time is highly board specific, see your
> >>  board documentation for initial bringup.
> >>  
> >> -barebox binaries are, where possible, designed to be startable second stage from another
> >> -bootloader. For example, if you have U-Boot running on your board, you can start barebox
> >> -with U-Boot's ``bootm`` command:
> >> +For ARM and RISC-V, the barebox build can additionally generate a generic DT image
> >> +(enable ``CONFIG_BOARD_ARM_GENERIC_DT`` or ``CONFIG_BOARD_RISCV_GENERIC_DT``,
> >> +respectively). The resulting ``images/barebox-dt-2nd.img`` can be booted just
> >> +like a Linux kernel that is passed an external device tree. For example:
> >> +
> >> +.. code-block:: console
> >> +
> >> +  U-Boot: tftp $kernel_addr barebox-dt-2nd.img
> >> +  U-Boot: tftp $fdt_addr my-board.dtb
> >> +  U-Boot: booti $kernel_addr - $fdt_addr
> >> +
> >> +For non-DT enabled-bootloaders or other architectures, often the normal barebox
> >> +binaries can also be used as they are designed to be startable second stage
> >> +from another bootloader, where possible. For example, if you have U-Boot running
> >> +on your board, you can start barebox with U-Boot's ``bootm`` command:
> > 
> > Hm, that seems wrong. U-Boot's bootm command starts images generated
> > with U-Boot's mkimage tool. A raw barebox image cannot be started with
> > this command, one has to create a uImage from it before.
> 
> This is what the documentation is saying right now. It only appeared
> in the diff, because I rephrased the start a bit. I don't have a
> 32-bit ARM U-Boot here to test, so I'd rather not rewrite that part
> myself.

Well you've introduced the part to use the bootm command yourself :)

commit 3a14fb79153af84323fee8308989011cd05c7d96
Author: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date:   Mon Jun 17 16:18:46 2019 +0200

However, I obviously failed to review this properly. I'll create a patch
for that.

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

