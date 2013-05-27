Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og112.obsmtp.com ([64.18.0.24])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgvR3-0005Eg-Uq
 for barebox@lists.infradead.org; Mon, 27 May 2013 11:17:54 +0000
Message-ID: <51A340C7.4050704@ge.com>
Date: Mon, 27 May 2013 12:17:27 +0100
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <1369643920-20604-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369643920-20604-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] mtd: call mtd_erase with complete area if possible
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 27/05/2013 09:38, Sascha Hauer wrote:
> If a device does not have bad blocks loop over the eraseblocks
> in the driver instead of the core. This allows the mtd_dataflash
> driver to erase blocks instead of pages to gain more speed during
> erasing. Also the mtd_dataflash driver modifies the erase_info
> struct which causes the outer loop in the core to never end.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>
> Renaud, you recently sent a patch to fix erase on non uniform
> flashes. This patch should fix this (by accident) aswell (or maybe
> it causes other problems ;). Could you please test this one?
>
> Thanks
>   Sascha


It does work.
If I define /dev/env0 to be 64KB i.e two sectors, then data in both 
sector has been erased.

barebox> / unprotect /dev/env0
barebox> / erase /dev/env0
mtd_op_erase = 65536
cfi_erase: erase 0x00000000 (size 65536)
intel_flash_erase_one:sect = 0
intel_flash_erase_one:sect = 1





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
