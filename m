Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1au3yU-0000zu-2P
 for barebox@lists.infradead.org; Sat, 23 Apr 2016 20:16:18 +0000
Date: Sat, 23 Apr 2016 22:15:49 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20160423201549.GA12096@ravnborg.org>
References: <CAOMZO5ADNbiVyOxvrqJyOWUv4NpoXDi4tqQ3kXBqxbmPqHQtMA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5ADNbiVyOxvrqJyOWUv4NpoXDi4tqQ3kXBqxbmPqHQtMA@mail.gmail.com>
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
Subject: Re: mx6qsabresd: Cannot boot after 'saveenv'
To: Fabio Estevam <festevam@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Fabio.

> After running the 'saveenv' command on a mx6qsabresd board, I can no
> longer boot Barebox:

You may be hit by the issue described here:
http://lists.infradead.org/pipermail/barebox/2016-April/026781.html

In short saveenv fails, because erase() fails.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
