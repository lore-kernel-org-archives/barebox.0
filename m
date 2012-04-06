Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SFze8-00065r-Qm
 for barebox@lists.infradead.org; Fri, 06 Apr 2012 03:15:33 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 669F5FF87F4
 for <barebox@lists.infradead.org>; Fri,  6 Apr 2012 05:16:17 +0200 (CEST)
Date: Fri, 6 Apr 2012 04:59:13 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120406025913.GD16306@game.jcrosoft.org>
References: <CAD9ZU8BR35iyRxH1-eEioCdo_mcXeVS+GjiSCiahPSUvcDXgXw@mail.gmail.com>
 <20120405063322.GV3852@pengutronix.de>
 <CAD9ZU8ACc_p2bTq-QtwhHXWz6NP=J-VkKS=0O2vdHkO2oRQUDw@mail.gmail.com>
 <20120405065455.GW3852@pengutronix.de>
 <CAD9ZU8Ce_s5pq8Y6wm5dXo_rv-fg2pYx1O+T9bh+7Kq088ySFA@mail.gmail.com>
 <20120405092738.GB3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120405092738.GB3852@pengutronix.de>
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
Subject: Re: debugging on board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:27 Thu 05 Apr     , Sascha Hauer wrote:
> On Thu, Apr 05, 2012 at 09:06:30AM +0200, Gabriel Tisan wrote:
> > I use external boot mode from NAND. I choosed
> > CONFIG_NAND_IMX_BOOT_512_2K although I have a flash with 2k page size.
> 
> Try 'make barebox.S' and have a look at the resulting barebox.S file.
> Everything including
> 
> reset
> __mmu_cache_flush
> imx_nand_load_image
> 
> must fit into the first 2k of memory. We currently do not catch this
> (though we could using a seperate linker section for this). If your
> lowlevel init code is too big then you can easily exceed this
> limitation.
we can now I add an option for this

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
