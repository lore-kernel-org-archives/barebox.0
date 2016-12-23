Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cKNGo-0004Fv-J0
 for barebox@lists.infradead.org; Fri, 23 Dec 2016 10:40:15 +0000
Date: Fri, 23 Dec 2016 11:39:47 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20161223103947.GA11937@ravnborg.org>
References: <1482356321-19996-1-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1482356321-19996-1-git-send-email-c.hemp@phytec.de>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: nand_mxs: fix NAND error when change clk rate
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 21, 2016 at 10:38:41PM +0100, Christian Hemp wrote:
> The function "nand_enable_edo_mode" changed the NAND clk rate, without turning
> it off. In this case it is posible to get the following errors:
>     MXS NAND: Error sending command
>     MXS NAND: Error sending command
>     MXS NAND: DMA read error
> 
> This can be fixed if the NAND clk is disabled before we change the clk
> rate.
> 
> Tested with:
> nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron
> MT29F4G08ABADAWP), 512MiB, page size: 2048, OOB size: 64
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
Tested-by: Sam Ravnborg <sam@ravnborg.org>

We had it running over night - not a single DMA error.
Tested with 16 different targets in an ON/OFF test.
I do not have numbers for the ON/OFF cycles but it is more than 10 each.
Previously we had a high frequency of these.
And tonight there was none.

Christian - if we ever meet in person I owe you a beer!

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
