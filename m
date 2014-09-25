Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XXFqy-0005sk-Pf
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 20:41:29 +0000
Message-ID: <1411678015.2207.2.camel@tellur.intern.lynxeye.de>
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 25 Sep 2014 22:46:55 +0200
In-Reply-To: <20140925230238.18b41a52be8f3d5cc45d9bc7@gmail.com>
References: <1411664709-13699-1-git-send-email-dev@lynxeye.de>
 <20140925230238.18b41a52be8f3d5cc45d9bc7@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 00/15] PCI bridges and Tegra PCI stuff
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Am Donnerstag, den 25.09.2014, 23:02 +0400 schrieb Antony Pavlov:
> On Thu, 25 Sep 2014 19:04:54 +0200
> Lucas Stach <dev@lynxeye.de> wrote:
> 
> > Ok, I'm sending this out before it gathers any more dust.
> > 
> > This still doesn't work on Tegra K1 and I also haven't got
> > around to finish the rtl8169 network driver, but it seems
> > this pile is already a worthwile improvement.
> > 
> > First 7 patches are general barebox PCI improvements for
> > better tracking of PCI resources and handling bridge setup.
> 
> I have tryed this series.
> 
> I have got several 
>   'BAR does not fit within bus IO res'
> messages on qemu-malta. So not all available pci devices were registered.
> 
I think that's because patch 2 fixes a problem where IO resources would
be populated from the host controllers MEM resource. IO resources are
now properly accounted.

From a quick look at the code it seems you aren't properly assigning the
resource.end for the IO region on malta. Can you please check this?
Otherwise please post the PCI debug messages.

Regards,
Lucas



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
