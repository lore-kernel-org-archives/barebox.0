Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbCeM-00045O-2q
 for barebox@lists.infradead.org; Sat, 11 May 2013 16:27:58 +0000
Date: Sat, 11 May 2013 18:27:31 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130511182731.239bab4c@skate>
In-Reply-To: <20130511152716.GR32299@pengutronix.de>
References: <1368093171-17845-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130511152716.GR32299@pengutronix.de>
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
Subject: Re: [PATCH v3 0/7] Basic support for Armada 370/XP SOCs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Dear Sascha Hauer,

On Sat, 11 May 2013 17:27:16 +0200, Sascha Hauer wrote:
> On Thu, May 09, 2013 at 11:52:44AM +0200, Thomas Petazzoni wrote:
> > 
> > Thomas Petazzoni (7):
> >   scripts: new kwbimage manipulation tool for Marvell SoC boot images
> >   scripts: add kwboot tool
> >   arm: initial support for Marvell Armada 370/XP SoCs
> >   arm: integrate kwbimage in the image generation
> >   arm: add basic support for Armada XP OpenBlocks AX3 platform
> >   arm: add basic support for the Armada 370 Mirabox platform
> >   arm: add basic support for the Armada XP GP platform
> > 
> 
> Applied all.
> 
> Regarding the commit id from which the kwboot tool has been taken from I
> decided to ignore it since the tool hasn't been changed in U-Boot since
> the original commit adding it.

Ok, thanks!

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
