Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbZvq-0005hr-SQ
 for barebox@lists.infradead.org; Sun, 12 May 2013 17:19:35 +0000
Date: Sun, 12 May 2013 19:19:09 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130512191909.754566fc@skate>
In-Reply-To: <518FC8A2.20309@gmail.com>
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130512184935.29bce329@skate> <518FC8A2.20309@gmail.com>
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
Subject: Re: [PATCH 3/5] arm: initial support for Marvell Dove SoCs
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Dear Sebastian Hesselbarth,

On Sun, 12 May 2013 18:51:46 +0200, Sebastian Hesselbarth wrote:

> > How does the remapping of the registers plays with the debug_ll code in
> > arch/arm/mach-mvebu/include/mach/debug_ll.h, which assumes the UART is
> > at 0xd0012000 ?
> 
> Thomas, currently it does not play with debug_ll. That's why I don't
> remap registers yet. I rather suggest to have a pre-linux boot hook in
> barebox to allow to tweak platform specific things before control is
> handed over to linux kernel.

Ok. I guess we have a choice: either we do the remapping very early,
and we execute everything at 0xf1. Or we do the remapping very late
(right before jumping into Linux), and Barebox lives with 0xd0.

I'm not sure what the best way to proceed.

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
