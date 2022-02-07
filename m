Delivery-date: Mon, 07 Feb 2022 09:01:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGyy8-0083f0-N0
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 09:01:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGyy7-0003Q6-37
	for lore@pengutronix.de; Mon, 07 Feb 2022 09:01:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jUceOk6/e+bijVscDYOleEs9DqdUz2j1FEpEe8sTatw=; b=mOIaFkLiv3b6KC8ovDK8VNcGEz
	x83wVStZ7DByFZ2RqdGr3Bg4iwAHXxkpCndKUDCyzyKxySH/B0/5cq/P7ARLGvustAFsr/Xtvn+1O
	rct/e9GROw+9y3jjndueHpoF8SlpOuqWQM4GMQqd8ltnRmhwXwQFG4dmS07JaHjP/ow92hYIv22OO
	2GtVQ1Me+bW5ebGUVTZSrY6CnQ5NzBlYYveAYkFHhBJw7ckSSyY64NhxLKdLwRRpcK9zDhSvRUUbq
	i0udq7PMRiqxSqwqy5GEl8i8dfzoMoGn6tCobnmkIlmU+23h0NCR8k8kAbM5F+Txkbw6f7+q7Og2j
	CXq00RGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGywy-009I97-2r; Mon, 07 Feb 2022 08:00:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGyws-009I8m-UW
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 08:00:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nGywr-0003Ey-Ng; Mon, 07 Feb 2022 09:00:33 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nGywq-0003SA-5c; Mon, 07 Feb 2022 09:00:32 +0100
Date: Mon, 7 Feb 2022 09:00:32 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
Message-ID: <20220207080032.GO23490@pengutronix.de>
References: <20220205231930.2948516-1-ahmad@a3f.at>
 <20220205231930.2948516-2-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220205231930.2948516-2-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:58:40 up 58 days, 16:44, 70 users,  load average: 0.18, 0.16, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_000035_012013_8F0FCD1F 
X-CRM114-Status: GOOD (  28.61  )
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

On Sun, Feb 06, 2022 at 12:19:30AM +0100, Ahmad Fatoum wrote:
> Most users interested in chainloading barebox will probably want to use
> the generic DT format for that: It will pass the checks the boot command
> may have and it will ensure the system is in the correct state, e.g.
> that caches are disabled.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  Documentation/user/barebox.rst | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
> index 8634d8e48eef..4abcf79c6d2a 100644
> --- a/Documentation/user/barebox.rst
> +++ b/Documentation/user/barebox.rst
> @@ -203,9 +203,21 @@ Starting barebox
>  Bringing barebox to a board for the first time is highly board specific, see your
>  board documentation for initial bringup.
>  
> -barebox binaries are, where possible, designed to be startable second stage from another
> -bootloader. For example, if you have U-Boot running on your board, you can start barebox
> -with U-Boot's ``bootm`` command:
> +For ARM and RISC-V, the barebox build can additionally generate a generic DT image
> +(enable ``CONFIG_BOARD_ARM_GENERIC_DT`` or ``CONFIG_BOARD_RISCV_GENERIC_DT``,
> +respectively). The resulting ``images/barebox-dt-2nd.img`` can be booted just
> +like a Linux kernel that is passed an external device tree. For example:
> +
> +.. code-block:: console
> +
> +  U-Boot: tftp $kernel_addr barebox-dt-2nd.img
> +  U-Boot: tftp $fdt_addr my-board.dtb
> +  U-Boot: booti $kernel_addr - $fdt_addr
> +
> +For non-DT enabled-bootloaders or other architectures, often the normal barebox
> +binaries can also be used as they are designed to be startable second stage
> +from another bootloader, where possible. For example, if you have U-Boot running
> +on your board, you can start barebox with U-Boot's ``bootm`` command:

Hm, that seems wrong. U-Boot's bootm command starts images generated
with U-Boot's mkimage tool. A raw barebox image cannot be started with
this command, one has to create a uImage from it before.

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

