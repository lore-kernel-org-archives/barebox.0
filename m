Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo5.mail-out.ovh.net ([178.32.119.138]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TF3FA-00082V-Tp
 for barebox@lists.infradead.org; Fri, 21 Sep 2012 13:26:09 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 9591D1024086
 for <barebox@lists.infradead.org>; Fri, 21 Sep 2012 15:31:59 +0200 (CEST)
Date: Fri, 21 Sep 2012 15:23:36 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120921132336.GO26553@game.jcrosoft.org>
References: <1344781832-17978-1-git-send-email-s.hauer@pengutronix.de>
 <20120920185243.GK26553@game.jcrosoft.org>
 <20120920195618.GT6180@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120920195618.GT6180@pengutronix.de>
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
Subject: Re: [PATCH] ARM: enable MMU in pbl
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 21:56 Thu 20 Sep     , Sascha Hauer wrote:
> On Thu, Sep 20, 2012 at 08:52:43PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 16:30 Sun 12 Aug     , Sascha Hauer wrote:
> > > The following enables the MMU during decompression which speeds up
> > > things significantly.
> > 
> > Atmel board does not boot
> > 
> > barebox@Atmel at91sam9m10g45-ek:/ dhcp && nfs
> > /opt/work/barebox/build/sam9m10g45ek-compressed/arch/arm/pbl/zbarebox.bin &&
> > bootm zbarebox.bin
> > phy0: Link is up - 100/Full
> > DHCP client bound to address 192.168.200.43
> > 
> > Filename
> > '/opt/work/barebox/build/sam9m10g45ek-compressed/arch/arm/pbl/zbarebox.bin'.
> > 	[#################################################################]
> > 
> > without MMU boot fine
> 
> does it work with the v1 version of this patch?
work but can use nand :(

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
