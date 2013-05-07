Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZeeX-00082j-Qx
 for barebox@lists.infradead.org; Tue, 07 May 2013 09:57:46 +0000
Date: Tue, 7 May 2013 11:57:20 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130507115720.39251acf@skate>
In-Reply-To: <20130507094752.GQ32299@pengutronix.de>
References: <20130506141447.GO13393@game.jcrosoft.org>
 <20130506143113.GB22505@1wt.eu>
 <20130506193422.GA30509@game.jcrosoft.org>
 <20130506195359.GK22505@1wt.eu> <20130506222104.7ea22be0@skate>
 <20130506203540.GC30509@game.jcrosoft.org>
 <20130506224456.3d32284d@skate>
 <20130506205631.GM32299@pengutronix.de>
 <20130506230337.30516881@skate>
 <20130507093324.GA1884@game.jcrosoft.org>
 <20130507094752.GQ32299@pengutronix.de>
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
Subject: Re: [PATCH 2/7] scripts: new kwbimage manipulation tool for Marvell
 SoC boot images
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, Willy Tarreau <w@1wt.eu>

Dear Sascha Hauer,

On Tue, 7 May 2013 11:47:52 +0200, Sascha Hauer wrote:

> > yes you need to construct the image at *runtime* and drop this madness of 1
> > image per media to generate. As this will create 1 defconfig per target device
> > 
> > which duplicate the defconfig and make the maintainance a nightmare
> 
> That's the way we currently do it. Don't expect from Thomas to do it
> differently as long there is not even a single example in the tree how
> to do it.

The Barebox image (barebox.bin) itself is *completely* independent from
the post-processing done by kwbimage. I.e, if I'm able to generate a
multiplatform barebox.bin that works on all Armada 370/XP boards, then
a single defconfig will be needed for all Armada 370/XP boards. This
defconfig will generate one single barebox.bin that works on all Armada
370/XP boards. Only the post-processing step to be done with kwbimage
will be board-specific, and this post-processing does not affect the
defconfig in any way. Of course, it remains to be defined how Barebox
will guess on which platform it runs (I suppose the idea is to somehow
bundle a DTB with Barebox, but I don't know).

Furthermore, the boot media is not selected in the Barebox
configuration, but only when running the kwbimage. So there is only one
barebox.bin per board, and one defconfig per board. Just like Barebox
is doing for all supported platforms at the moment.

So I'm not sure to see the connection between the number of defconfig
and the kwbimage tool. There is really no connection at all.

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
