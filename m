Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cJpOR-0004sN-5e
 for barebox@lists.infradead.org; Wed, 21 Dec 2016 22:29:52 +0000
Date: Wed, 21 Dec 2016 23:29:23 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20161221222923.GB24177@ravnborg.org>
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

Hi Christian.

On Wed, Dec 21, 2016 at 10:38:41PM +0100, Christian Hemp wrote:
> The function "nand_enable_edo_mode" changed the NAND clk rate, without turning
> it off. In this case it is posible to get the following errors:
>     MXS NAND: Error sending command
>     MXS NAND: Error sending command
>     MXS NAND: DMA read error
> 
> This can be fixed if the NAND clk is disabled before we change the clk
> rate.
Very interesting.
I have ~50 targets and a few of these are used for power cycle tests.
On one of these targets I have seen this exact same pattern - once...

Can you give any hints that makes it simpler to verify your fix or anything?


This is a board with i.MX6 SoloCore - where we have 2 GiB FLASH + 512 MB RAM.

Anyway - it saved my day to see this landing on the mailing list!

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
