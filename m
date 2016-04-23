Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1au575-0003kr-LT
 for barebox@lists.infradead.org; Sat, 23 Apr 2016 21:29:16 +0000
Date: Sat, 23 Apr 2016 23:28:50 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20160423212849.GA12179@ravnborg.org>
References: <CAOMZO5ADNbiVyOxvrqJyOWUv4NpoXDi4tqQ3kXBqxbmPqHQtMA@mail.gmail.com>
 <20160423201549.GA12096@ravnborg.org>
 <CAOMZO5D2QX-ReExBM5SRZOwnhAn_rt24TFWZj1vLFVJ4pZu2hA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5D2QX-ReExBM5SRZOwnhAn_rt24TFWZj1vLFVJ4pZu2hA@mail.gmail.com>
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

On Sat, Apr 23, 2016 at 05:30:27PM -0300, Fabio Estevam wrote:
> Hi Sam,
> 
> On Sat, Apr 23, 2016 at 5:15 PM, Sam Ravnborg <sam@ravnborg.org> wrote:
> > Hi Fabio.
> >
> >> After running the 'saveenv' command on a mx6qsabresd board, I can no
> >> longer boot Barebox:
> >
> > You may be hit by the issue described here:
> > http://lists.infradead.org/pipermail/barebox/2016-April/026781.html
> 
> Thanks for the hint, but I am using top of tree Barebox, which already
> contains the fix from Sascha from that thread:

Just a random saturday night wild wrong guess.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
