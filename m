Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbwLD-00021I-Ny
 for barebox@lists.infradead.org; Mon, 13 May 2013 17:15:16 +0000
Date: Mon, 13 May 2013 19:14:47 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130513191447.21181904@skate>
In-Reply-To: <51911971.2040303@gmail.com>
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de>
 <5190AFA1.1080503@gmail.com>
 <20130513105722.GP32299@pengutronix.de>
 <5190E56F.9080903@gmail.com> <20130513162313.4f5849a9@skate>
 <519110D0.5040801@gmail.com> <20130513182141.12af9b31@skate>
 <51911510.8050207@gmail.com> <20130513183418.4f9ce9e2@skate>
 <51911971.2040303@gmail.com>
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

On Mon, 13 May 2013 18:48:49 +0200, Sebastian Hesselbarth wrote:

> Turned out to be easier than I thought!
> 
> You can always read from 0xd0020080 (REG_BASE_REMAP) without lockup.
> 
> So if that what you read equals 0xd0000000, you are still on boot-up
> reg bases. If not, and as long as we only remap to 0xf1000000 you are
> remapped to 0xf1000000.

Are you sure this is safe? Imagine you have 4 GB of RAM. Once registers
are remapped to 0xf1000000, what you read at 0xd0020080 is RAM.

And, what happens if by chance (or lack therefore), what the RAM
contains at 0xd0020080 is 0xd0000000 ? You'll believe you're still
mapped at the old location.

Now that I think of it, not sure of what will happen though, you will
write 0xf1000000 at this address, and then continue with the rest of
boot. Would that be a problem?

Thanks,

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
