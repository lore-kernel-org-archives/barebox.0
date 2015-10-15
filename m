Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from down.free-electrons.com ([37.187.137.238]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zmf61-000134-Vs
 for barebox@lists.infradead.org; Thu, 15 Oct 2015 09:45:14 +0000
Date: Thu, 15 Oct 2015 11:44:52 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20151015114452.33d8e46f@free-electrons.com>
In-Reply-To: <561F7212.1010205@gmail.com>
References: <1444897136-25028-1-git-send-email-s.hauer@pengutronix.de>
 <1444897136-25028-3-git-send-email-s.hauer@pengutronix.de>
 <20151015110037.7bfef9ab@free-electrons.com>
 <561F7212.1010205@gmail.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH 2/3] scripts/kwbimage: Make BINARY files relative to
 config file
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hello,

On Thu, 15 Oct 2015 11:29:54 +0200, Sebastian Hesselbarth wrote:

> >   - http://git.denx.de/?p=u-boot.git;a=tree;f=arch/arm/mach-mvebu/serdes
> >     for the SERDES lane initialization
> 
> ... I don't see why SERDES init is important that early (for production
> use). I think SERDES init should be/stay part of the PHY init code we
> already have.

Agreed. It's done this way in U-Boot because it was done this way in
the vendor U-Boot. But it is obviously not the best/proper way of doing
things.

Note I'm also working on making the kernel SERDES/PHY aware, so that
we can turn on/off the unused SERDES lanes (and save power).

Best regards,

Thomas
-- 
Thomas Petazzoni, CTO, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
