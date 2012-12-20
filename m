Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-da0-f48.google.com ([209.85.210.48])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TloI8-0003xG-7j
 for barebox@lists.infradead.org; Thu, 20 Dec 2012 22:08:37 +0000
Received: by mail-da0-f48.google.com with SMTP id k18so1743527dae.21
 for <barebox@lists.infradead.org>; Thu, 20 Dec 2012 14:08:34 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Fri, 21 Dec 2012 09:06:04 +1100
Message-ID: <5677378.zGTgKWBU2t@dev1.cpdesign>
In-Reply-To: <1355415502-30673-1-git-send-email-w.sang@pengutronix.de>
References: <1355415502-30673-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Reply-To: Marc Reilly <marc@cpdesign.com.au>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/2] allow scrubbing (erasing of bad blocks)
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Hi,


On Thursday, December 13, 2012 05:18:20 PM Wolfram Sang wrote:
> This patch series first adds a flag to mtd devices which disables special
> treatment for bad blocks. That means, they are handled like every other good
> block. The second one then adds a scrub command which is basically a simple
> erase, only that bad blocks are treated like good blocks and are trying to
> be erased (which may succeed or not). This is really *not recommended*,
> except for certain development use cases!


Much nicer than the hacks I did to clear the BBT !

(unfortunately, don't have any boards that I can test on at the moment).

Cheers,
Marc

> 
> Wolfram Sang (2):
>   mtd: nand: add flag to allow erasing of bad blocks
>   commands: add scrub
> 
>  commands/Kconfig              |    8 +++++
>  commands/flash.c              |   68
> ++++++++++++++++++++++++++++++++++++++++- drivers/mtd/core.c            |  
>  9 +++++-
>  drivers/mtd/nand/nand_write.c |   37 +++++++++++-----------
>  include/linux/mtd/mtd-abi.h   |    2 ++
>  5 files changed, 105 insertions(+), 19 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
