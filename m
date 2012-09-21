Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo5.mail-out.ovh.net ([46.105.47.167]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TF3AR-0006gH-53
 for barebox@lists.infradead.org; Fri, 21 Sep 2012 13:21:16 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 3917E10001FB
 for <barebox@lists.infradead.org>; Fri, 21 Sep 2012 15:27:06 +0200 (CEST)
Date: Fri, 21 Sep 2012 15:18:42 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120921131842.GN26553@game.jcrosoft.org>
References: <1344781832-17978-1-git-send-email-s.hauer@pengutronix.de>
 <1344781832-17978-4-git-send-email-s.hauer@pengutronix.de>
 <20120812180947.GL6271@game.jcrosoft.org>
 <20120813182950.GN1451@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120813182950.GN1451@pengutronix.de>
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
Subject: Re: [PATCH 3/4] ARM pbl: enable MMU during decompression
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 20:29 Mon 13 Aug     , Sascha Hauer wrote:
> On Sun, Aug 12, 2012 at 08:09:47PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > I really do not like it as I do want to be able to use nand flash as the same
> > time or other controller so we need a better to handle it
> > 
> 
> 8<---------------------------------------------------
> 
> [PATCH] ARM pbl: enable MMU during decompression
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/Makefile    |    4 +++
>  arch/arm/cpu/start-pbl.c |   71 ++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 75 insertions(+)
>
this does not work on at91

dhcp && nfs
/opt/work/barebox/build/sam9m10g45ek-compressed/arch/arm/pbl/zbarebox.bin &&
bootm zbarebox.bin

fail

btu the previous version forbiddenme to use uart or nand in the decompressor
which I need on at91

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
