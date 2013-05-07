Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1wt.eu ([62.212.114.60])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZeTi-0007hj-5C
 for barebox@lists.infradead.org; Tue, 07 May 2013 09:46:35 +0000
Date: Tue, 7 May 2013 11:46:07 +0200
From: Willy Tarreau <w@1wt.eu>
Message-ID: <20130507094607.GD465@1wt.eu>
References: <20130506141447.GO13393@game.jcrosoft.org>
 <20130506143113.GB22505@1wt.eu> <20130506193422.GA30509@game.jcrosoft.org>
 <20130506195359.GK22505@1wt.eu> <20130506222104.7ea22be0@skate>
 <20130506203540.GC30509@game.jcrosoft.org> <20130506224456.3d32284d@skate>
 <20130506205631.GM32299@pengutronix.de> <20130506230337.30516881@skate>
 <20130507093324.GA1884@game.jcrosoft.org>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130507093324.GA1884@game.jcrosoft.org>
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
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Lior Amsalem <alior@marvell.com>, Jason Cooper <jason@lakedaemon.net>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On Tue, May 07, 2013 at 11:33:24AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> no you do not need to generate an image (file) you just need to upload it

I disagree with you on this. While this can generally be true, I (as a user)
absolutely want to have an image that I can upload using various tools, as I
had several issues while trying to upload the image on the mirabox the first
time, leading me to try several different tools.

Also, please note that Xmodem is commonly supported by many terminal servers
on many platforms and does not require that you try to build your code on
these platforms.

In my opinion, the C code should provide a portable, multi-platform binary,
and an external tool should transform it to the finally uploadable binary
image for your specific board or CPU. That way you can ship pre-compiled
binary barebox code if you want, and have the end user adapt it to his own
board.

I don't see how this could be a problem.

Willy


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
