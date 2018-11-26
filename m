Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRHLN-0002YF-Ss
 for barebox@lists.infradead.org; Mon, 26 Nov 2018 13:54:35 +0000
References: <20181126091807.19398-1-o.rempel@pengutronix.de>
 <20181126091807.19398-9-o.rempel@pengutronix.de>
 <20181126160136.d6d8a30dc4086ef2a04be2b9@gmail.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <02814821-f042-06db-4cda-778e5a722273@pengutronix.de>
Date: Mon, 26 Nov 2018 14:54:17 +0100
MIME-Version: 1.0
In-Reply-To: <20181126160136.d6d8a30dc4086ef2a04be2b9@gmail.com>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 08/10] MIPS: port all mach* to multiimage
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 26.11.18 14:01, Antony Pavlov wrote:
> On Mon, 26 Nov 2018 10:18:05 +0100
> Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> 
> Hi!
> 
> I can't apply this patch.
> Here is 'git am' log:
> 
> Applying: MIPS: port all mach* to multiimage
> .git/rebase-apply/patch:1291: trailing whitespace.
> pbl-dtb-$(CONFIG_BOARD_8DEVICES_LIMA) += qca4531-8devices-lima.dtb.o
> .git/rebase-apply/patch:1292: trailing whitespace.
> pbl-dtb-$(CONFIG_BOARD_BLACK_SWIFT) += black-swift.dtb.o
> .git/rebase-apply/patch:1294: trailing whitespace.
> pbl-dtb-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE) += ar9331-dptechnics-dpt-module.dtb.o
> .git/rebase-apply/patch:1298: trailing whitespace.
> pbl-dtb-$(CONFIG_BOARD_TPLINK_MR3020) += tplink-mr3020.dtb.o
> .git/rebase-apply/patch:1299: trailing whitespace.
> pbl-dtb-$(CONFIG_BOARD_TPLINK_WDR4300) += ar9344-tl-wdr4300-v1.7.dtb.o
> error: patch failed: images/Makefile:53
> error: images/Makefile: patch does not apply
> Patch failed at 0001 MIPS: port all mach* to multiimage
> hint: Use 'git am --show-current-patch' to see the failed patch
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".

I pushed it to my github,
https://github.com/olerem/barebox/tree/v2018.11.0/board/ath79-multiimage-20181126.1

My patches + missing Sachas patches. It compiles and works at least on 
boards I was able to test.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
