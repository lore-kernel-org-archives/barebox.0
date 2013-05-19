Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ue8Y8-00065d-HB
 for barebox@lists.infradead.org; Sun, 19 May 2013 18:41:41 +0000
Date: Sun, 19 May 2013 20:41:06 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130519204106.6ce2d109@skate>
In-Reply-To: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 00/11] arm: mvebu: SoC consolidation
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Dear Sebastian Hesselbarth,

On Sun, 19 May 2013 20:23:44 +0200, Sebastian Hesselbarth wrote:
> After power-up, Marvell EBU SoCs are common enough to justify common
> init code. All SoCs start up with internal registers mapped at 0xd0000000
> and Linux wants them remapped to 0xf1000000 which gives ~512M contiguous
> address space. As internal registers base address is remapped from within
> internal registers itself, we do this remap as soon as possible.
> 
> This patch set consolidates lowlevel init for all MVEBU SoCs which is
> currently performed on every board supported. Also common console UART
> is created. Then Dove, Armada 370/XP, and Kirkwood are moved to use
> common init functions, and finally all board specific init is removed
> to its bare minimum.
> 
> The patch set has been tested on CuBox (Dove), Guruplug (Kirkwood),
> Mirabox and OpenBlocks AX3 (Armada 370) by either me or Thomas Petazzoni.

Minor comment: OpenBlocks AX3 is an Armada XP machine.

Best regards,

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
