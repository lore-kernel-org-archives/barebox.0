Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZSHj-0004Bx-Q9
 for barebox@lists.infradead.org; Mon, 06 May 2013 20:45:24 +0000
Date: Mon, 6 May 2013 22:44:56 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130506224456.3d32284d@skate>
In-Reply-To: <20130506203540.GC30509@game.jcrosoft.org>
References: <20130506155352.15f23d3a@skate>
 <20130506135435.GL13393@game.jcrosoft.org>
 <20130506160614.054b5e1a@skate>
 <20130506140439.GM13393@game.jcrosoft.org>
 <20130506161329.74d58c37@skate>
 <20130506141447.GO13393@game.jcrosoft.org>
 <20130506143113.GB22505@1wt.eu>
 <20130506193422.GA30509@game.jcrosoft.org>
 <20130506195359.GK22505@1wt.eu> <20130506222104.7ea22be0@skate>
 <20130506203540.GC30509@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, Jason Cooper <jason@lakedaemon.net>

Dear Jean-Christophe PLAGNIOL-VILLARD,

On Mon, 6 May 2013 22:35:40 +0200, Jean-Christophe PLAGNIOL-VILLARD
wrote:

> this is where it's wrong, you does not need such binary at all, barebox update
> will handle this by himself and will never requiere one image per media
> 
> As barebox does not care wheren it boot from or where the dev is stored. we
> choose is at runtime not at compile time
> 
> Barebox update will generate the correct image for the storagemedia at
> runtime

What is "Barebox update" ?

On my board, I currently have nothing, no bootloader, no nothing. How do
I bring Barebox on it if I can't build a UART bootable image ?

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
