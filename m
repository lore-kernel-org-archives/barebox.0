Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TPEaV-00054y-Ob
 for barebox@lists.infradead.org; Fri, 19 Oct 2012 15:34:16 +0000
Date: Fri, 19 Oct 2012 17:34:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121019153414.GS27665@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
 <1350507817-7819-26-git-send-email-s.hauer@pengutronix.de>
 <20121018072331.GA22418@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121018072331.GA22418@game.jcrosoft.org>
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
Subject: Re: [PATCH 25/28] ARM pbl: always copy piggydata
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 18, 2012 at 09:23:31AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 23:03 Wed 17 Oct     , Sascha Hauer wrote:
> > For now this is meant to make the code simpler. Copying the binary
> > is not very expensive and later either the MMU can be enabled before
> > relocating the binary, or relocatable code makes copying unnecessary
> > anyway.
> 
> no I add this for nand boot on at91 I does not have it I must not copy it
> later code will

I don't know what you are doing, but hooking up into that place is not a
good idea.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
